# Localization of Godot Engine documentation

This repository contains the localization templates and catalogs for the
[official documentation](https://docs.godotengine.org) of the
[Godot Engine](https://godotengine.org) project.

The source strings are extracted by sphinx-gettext from the
[godot-docs](https://github.com/godotengine/godot-docs) repository.

The translations are contributed through [Hosted
Weblate](https://hosted.weblate.org/projects/godot-engine/godot-docs/) and
synced manually in this repository.

## How to

This repository is meant to be used by Godot Engine documentation
maintainers, here's the workflow for reference:

### Pull from Hosted Weblate

- Commit all pending translations
- Lock the repository
- Pull translations locally in a clone of the Weblate working repository
- Run `list-authors.sh <commit hash>` to list all new authors
- Add them to the header of their respective `weblate/*.po` files

### Commit to "production" repo

- Copy `weblate/*.po` files from Weblate working repository
- Run `update.sh -wo` to format Weblate .po files as expected by the script,
  commit
- Pull `docs` submodule, update `templates_list.txt` if there are any changes
  in the table of contents (new/removed/moved pages)
- Run `update.sh -st` to update Sphinx templates, commit
- Run `update.sh -wt` to update the Weblate monolithic template based on
  Sphinx ones, commit
- Run `update.sh -wo` to merge Weblate .po files with the updated template,
  commit
- If any new locale has reached a satisfactory completion level, add it to
  `build_langs.txt`
- Run `update.sh -so` to extract Sphinx per-page .po files from the
  monolithic Weblate .po files (slow process), commit
- Push to GitHub

### Unlock Hosted Weblate

- Reset Weblate repo to updated production repo (slow process)
- Unlock the repository

## License

All the translation content of this repository (`msgid`, `msgstr`) is
licensed under the Creative Commons Attribution 3.0 Unported license
([CC BY 3.0](https://creativecommons.org/licenses/by/3.0/)) and is to be
attributed to "Juan Linietsky, Ariel Manzur and the Godot community".

See [LICENSE.txt](/LICENSE.txt) for details.

The shell scripts are in the public domain.
