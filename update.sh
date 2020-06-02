#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

# Defines
SOURCE_DIR="docs"
SPHINX_TEMPLATES_DIR="sphinx/templates"
mkdir -p "$SPHINX_TEMPLATES_DIR/classes"
# This variant comes ordered alphabetically instead of following the TOC, not nice for translators
#SPHINX_TEMPLATES=$(find $SPHINX_TEMPLATES_DIR -type f -name "*.pot")
# This one is manually maintained, see --templates-list switch
SPHINX_TEMPLATES_DOCS=$(sed -e 's@^@'$SPHINX_TEMPLATES_DIR'/@' templates_list.txt)
SPHINX_TEMPLATES_CLASSES=$(find "$SPHINX_TEMPLATES_DIR/classes" -type f -name "*.pot")
SPHINX_PO_DIR="sphinx/po"
SPHINX_BUILD_LANGS=$(cat build_langs.txt)

WEBLATE_DIR="weblate/docs"
WEBLATE_TEMPLATE="$WEBLATE_DIR/docs.pot"
WEBLATE_POFILES=$(find $WEBLATE_DIR -type f -name "*.po" | sort)

CLASSES_DIR="weblate/classes"
CLASSES_POFILES=$(find $CLASSES_DIR -type f -name "*.po" | sort)

# Used only for --add-langs - languages will mostly be added via Weblate directly
LANGS="es fr zh_CN"

# Options
make_templates_list=false
update_sphinx_pot=false
update_sphinx_po=false
update_weblate_pot=false
update_weblate_po=false
add_langs=false

# Command line arguments
while [ $# -gt 0 ]; do
  case "$1" in
    --templates-list|-tl)
      make_templates_list=true
      ;;
    --sphinx-pot|-st)
      update_sphinx_pot=true
      ;;
    --sphinx-po|-so)
      update_sphinx_po=true
      ;;
    --sphinx|-s)
      update_sphinx_pot=true
      update_sphinx_po=true
      ;;
    --weblate-pot|-wt)
      update_weblate_pot=true
      ;;
    --weblate-po|-wo)
      update_weblate_po=true
      ;;
    --weblate|-w)
      update_weblate_pot=true
      update_weblate_po=true
      ;;
    --all|-a)
      update_sphinx_pot=true
      update_sphinx_po=true
      update_weblate_pot=true
      update_weblate_po=true
      ;;
    --add-langs|-l)
      add_langs=true
      ;;
    *)
      echo "Invalid argument."
  esac
  shift
done

# Make ordered list of Sphinx templates based on table of contents in index.html
# This requires having run `make html` in the docs repo and copied the main
# `index.html` over next to this script.
if [ "$make_templates_list" = true ]; then
  echo "=== Making ordered list of Sphinx templates based on table of contents ==="
  find $SOURCE_DIR -type f -name "*.rst" > templates_list.txt
  sed -i 's|.rst|.pot|g' templates_list.txt
  sed -i "s|$SOURCE_DIR/||g" templates_list.txt
fi

# Generate/Update Sphinx template from rst files
if [ "$update_sphinx_pot" = true ]; then
  echo "=== Updating Sphinx templates from source rst files ==="
  rm -rf $SPHINX_TEMPLATES_DIR
  make -C $SOURCE_DIR gettext
  SPHINX_TEMPLATES_DOCS=$(sed -e 's@^@'$SPHINX_TEMPLATES_DIR'/@' templates_list.txt)
  SPHINX_TEMPLATES_CLASSES=$(find "$SPHINX_TEMPLATES_DIR/classes" -type f -name "*.pot")
fi

# Generate/Update Weblate monolithic template from Sphinx template
if [ "$update_weblate_pot" = true ]; then
  echo "=== Updating Weblate monolithic template from Sphinx templates ==="
  if [ ! -d "$SPHINX_TEMPLATES_DIR" ]; then
    echo "Sphinx templates are missing, please run with --sphinx-pot."
    exit 1
  fi
  if [ ! -d "$WEBLATE_DIR" ]; then
    mkdir $WEBLATE_DIR
  fi
  msgcat -o $WEBLATE_TEMPLATE $SPHINX_TEMPLATES_DOCS
  sed -i 's@Report-Msgid-Bugs-To: [^"]*@Report-Msgid-Bugs-To: https://github.com/godotengine/godot-docs-l10n\\n@' $WEBLATE_TEMPLATE
fi

# Merge Weblate PO files with Weblate template
if [ "$update_weblate_po" = true ]; then
  echo "=== Merging Weblate PO files with Weblate template ==="
  for po in $WEBLATE_POFILES; do
    echo "Merging $po..."
    msgmerge -w 79 "$po" $WEBLATE_TEMPLATE > "$po".new
    mv -f "$po".new "$po"
  done
fi

# Manual method to generate new Weblate PO files to bootstrap a lang
if [ "$add_langs" = true ]; then
  for lang in $LANGS; do
    if [ ! -f "$WEBLATE_DIR/$lang.po" ]; then
      msginit --no-translator -i $WEBLATE_TEMPLATE -o "$WEBLATE_DIR/$lang.po";
    fi
  done
  WEBLATE_POFILES=$(find $WEBLATE_DIR -type f -name "*.po")
fi

# Generate/Merge Sphinx PO files from Weblate PO files
if [ "$update_sphinx_po" = true ]; then
  echo "=== Merging Sphinx PO files with their template and Weblate PO files ==="
  # First clean previous folder to take into account potentially removed files
  rm -rf $SPHINX_PO_DIR
  mkdir $SPHINX_PO_DIR
  for lang in $SPHINX_BUILD_LANGS; do
    langdir="$SPHINX_PO_DIR/$lang/LC_MESSAGES"
    mkdir -p "$langdir"

    po_docs=$WEBLATE_DIR"/$lang.po"
    echo "Merging $po_docs..."
    for template in $SPHINX_TEMPLATES_DOCS; do
      page=$(basename "$template" .pot)
      dirpath=$(dirname "$template" | sed -e 's@'$SPHINX_TEMPLATES_DIR'@'"$langdir"'@')
      mkdir -p "$dirpath"
      output="$dirpath/$page.po"
      msgmerge --lang="$lang" -C "$po_docs" "$template" "$template" -o "$output"
    done

    po_classes=$CLASSES_DIR"/$lang.po"
    if [ ! -f "$po_classes" ]; then
      echo "No file at $po_classes, skipping."
      continue
    fi
    echo "Merging $po_classes..."
    for template in $SPHINX_TEMPLATES_CLASSES; do
      page=$(basename "$template" .pot)
      dirpath=$(dirname "$template" | sed -e 's@'$SPHINX_TEMPLATES_DIR'@'"$langdir"'@')
      mkdir -p "$dirpath"
      output="$dirpath/$page.po"
      msgmerge --lang="$lang" -C "$po_classes" "$template" "$template" -o "$output"
    done
  done
fi
