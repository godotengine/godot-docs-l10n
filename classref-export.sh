#/bin/bash

: ${GODOT_BIN:="./bin/godot.linuxbsd.editor.dev.x86_64"}
: ${GODOT_DOCS_L10N:="../../godot-docs-l10n"}
: ${EXPORT_LANGS:="es fr it ru uk zh_Hans zh_Hant"}

if [ ! -f "${GODOT_BIN}" ]; then
  echo "Couldn't locate Godot binary '${GODOT_BIN}'. This script must be run from a compiled Godot repo, and GODOT_BIN passed as environment variable if needed."
  exit 1
fi

if [ ! -d "${GODOT_DOCS_L10N}" ]; then
  echo "Couldn't locate godot-docs-l10n clone at '${GODOT_DOCS_L10N}'. Clone it in that location or override the path GODOT_DOCS_L10N passed as environment variable."
  exit 1
fi

declare -A lang_remap=(
 ["zh_Hans"]="zh_CN"
 ["zh_Hant"]="zh_TW"
)

mkdir -p ${GODOT_DOCS_L10N}/classes

for lang in ${EXPORT_LANGS}; do
  rtd_lang=$lang
  if [ "${lang_remap[$lang]+found}" ]; then
    rtd_lang=${lang_remap[$lang]}
  fi
  echo -e "\n✨ Exporting classref translations for $lang (RTD: $rtd_lang).\n"
  rm -rf ${GODOT_DOCS_L10N}/$rtd_lang
  ${GODOT_BIN} --doctool -l $lang
  make -C doc rst LANGARG=$lang || true
  rm -rf ${GODOT_DOCS_L10N}/classes/$rtd_lang
  cp -r doc/_build/rst/ ${GODOT_DOCS_L10N}/classes/$rtd_lang
  git checkout .
done
