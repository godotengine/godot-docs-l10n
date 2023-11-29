#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

# Defines
SOURCE_DIR="docs"
SPHINX_TEMPLATES_DIR="sphinx/templates"
# This variant comes ordered alphabetically instead of following the TOC, not nice for translators
#SPHINX_TEMPLATES=$(find $SPHINX_TEMPLATES_DIR -type f -name "*.pot")
# This one is manually maintained, see --templates-list switch
SPHINX_TEMPLATES=$(sed -e 's@^@'$SPHINX_TEMPLATES_DIR'/@' templates_list.txt)
SPHINX_PO_DIR="sphinx/po"
SPHINX_BUILD_LANGS=$(cat build_langs.txt)

WEBLATE_DIR="weblate"
WEBLATE_TEMPLATE="$WEBLATE_DIR/docs.pot"
WEBLATE_POFILES=$(find $WEBLATE_DIR -type f -name "*.po" | sort)

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
  if [ ! -f "index.html" ]; then
    echo "Main 'index.html' file is missing, build it with 'make html' and copy it here."
    exit 1
  fi
  # The strings we are interested in are of the form:
  # <li class="toctree-l1"><a class="reference internal" href="about/index.html">About</a><ul>
  toc=$(grep "<li class=\"toctree-.*href=\".*.html\">.*" index.html)
  templates=$(echo "$toc" | sed -e 's@^.*href="\(.*\)\.html".*@\1.pot@' | awk '!x[$0]++')
  echo -e "index.pot\n$templates" > templates_list.txt
fi

# Generate/Update Sphinx template from rst files
if [ "$update_sphinx_pot" = true ]; then
  echo "=== Updating Sphinx templates from source rst files ==="
  rm -rf $SPHINX_TEMPLATES_DIR
  make -C $SOURCE_DIR gettext
  # We don't translate the class reference this way.
  rm -rf $SPHINX_TEMPLATES_DIR/classes
  SPHINX_TEMPLATES=$(find $SPHINX_TEMPLATES_DIR -type f -name "*.pot")
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
  msgcat -o $WEBLATE_TEMPLATE $SPHINX_TEMPLATES
  sed -i 's@Report-Msgid-Bugs-To: [^"]*@Report-Msgid-Bugs-To: https://github.com/godotengine/godot-docs-l10n\\n@' $WEBLATE_TEMPLATE
fi

# Merge Weblate PO files with Weblate template
if [ "$update_weblate_po" = true ]; then
  echo "=== Merging Weblate PO files with Weblate template ==="
  for po in $WEBLATE_POFILES; do
    echo "Merging $po..."
    msgmerge -w 79 "$po" $WEBLATE_TEMPLATE > "$po".new
    mv -f "$po".new "$po"
    msgattrib --output-file=$po --no-obsolete $po
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

# Generate/Merge Sphinx PO files from Weblate PO file
merge_sphinx_po() {
  po=$WEBLATE_DIR"/$1.po"
  echo "Merging $po..."
  langdir="$SPHINX_PO_DIR/$lang/LC_MESSAGES"
  mkdir -p "$langdir"
  for template in $SPHINX_TEMPLATES; do
    page=$(basename "$template" .pot)
    dirpath=$(dirname "$template" | sed -e 's@'$SPHINX_TEMPLATES_DIR'@'"$langdir"'@')
    mkdir -p "$dirpath"
    output="$dirpath/$page.po"
    msgmerge --lang="$lang" --no-location -C "$po" "$template" "$template" -o "$output"
  done
}

if [ "$update_sphinx_po" = true ]; then
  echo "=== Merging Sphinx PO files with their template and Weblate PO file ==="
  # First clean previous folder to take into account potentially removed files
  rm -rf $SPHINX_PO_DIR
  mkdir $SPHINX_PO_DIR
  for lang in $SPHINX_BUILD_LANGS; do
    merge_sphinx_po $lang &
  done
fi
