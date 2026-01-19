:github_url: hide

.. _class_EditorExportPreset:

EditorExportPreset
==================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configuration de préreglage d'export.

.. rst-class:: classref-introduction-group

Description
-----------

Represents the configuration of an export preset, as created by the editor's export dialog. An **EditorExportPreset** instance is intended to be used a read-only configuration passed to the :ref:`EditorExportPlatform<class_EditorExportPlatform>` methods when exporting the project.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`are_advanced_options_enabled<class_EditorExportPreset_method_are_advanced_options_enabled>`\ (\ ) |const|                                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_custom_features<class_EditorExportPreset_method_get_custom_features>`\ (\ ) |const|                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                               | :ref:`get_customized_files<class_EditorExportPreset_method_get_customized_files>`\ (\ ) |const|                                                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_customized_files_count<class_EditorExportPreset_method_get_customized_files_count>`\ (\ ) |const|                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`get_encrypt_directory<class_EditorExportPreset_method_get_encrypt_directory>`\ (\ ) |const|                                                                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`get_encrypt_pck<class_EditorExportPreset_method_get_encrypt_pck>`\ (\ ) |const|                                                                                                                            |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_encryption_ex_filter<class_EditorExportPreset_method_get_encryption_ex_filter>`\ (\ ) |const|                                                                                                          |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_encryption_in_filter<class_EditorExportPreset_method_get_encryption_in_filter>`\ (\ ) |const|                                                                                                          |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_encryption_key<class_EditorExportPreset_method_get_encryption_key>`\ (\ ) |const|                                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_exclude_filter<class_EditorExportPreset_method_get_exclude_filter>`\ (\ ) |const|                                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>`         | :ref:`get_export_filter<class_EditorExportPreset_method_get_export_filter>`\ (\ ) |const|                                                                                                                        |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_export_path<class_EditorExportPreset_method_get_export_path>`\ (\ ) |const|                                                                                                                            |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>`     | :ref:`get_file_export_mode<class_EditorExportPreset_method_get_file_export_mode>`\ (\ path\: :ref:`String<class_String>`, default\: :ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` = 0\ ) |const| |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                 | :ref:`get_files_to_export<class_EditorExportPreset_method_get_files_to_export>`\ (\ ) |const|                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_include_filter<class_EditorExportPreset_method_get_include_filter>`\ (\ ) |const|                                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                     | :ref:`get_or_env<class_EditorExportPreset_method_get_or_env>`\ (\ name\: :ref:`StringName<class_StringName>`, env_var\: :ref:`String<class_String>`\ ) |const|                                                   |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                 | :ref:`get_patches<class_EditorExportPreset_method_get_patches>`\ (\ ) |const|                                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_preset_name<class_EditorExportPreset_method_get_preset_name>`\ (\ ) |const|                                                                                                                            |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                     | :ref:`get_project_setting<class_EditorExportPreset_method_get_project_setting>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` | :ref:`get_script_export_mode<class_EditorExportPreset_method_get_script_export_mode>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_version<class_EditorExportPreset_method_get_version>`\ (\ name\: :ref:`StringName<class_StringName>`, windows_version\: :ref:`bool<class_bool>`\ ) |const|                                             |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`has<class_EditorExportPreset_method_has>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`has_export_file<class_EditorExportPreset_method_has_export_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`is_dedicated_server<class_EditorExportPreset_method_is_dedicated_server>`\ (\ ) |const|                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`is_runnable<class_EditorExportPreset_method_is_runnable>`\ (\ ) |const|                                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_EditorExportPreset_ExportFilter:

.. rst-class:: classref-enumeration

enum **ExportFilter**: :ref:`🔗<enum_EditorExportPreset_ExportFilter>`

.. _class_EditorExportPreset_constant_EXPORT_ALL_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_ALL_RESOURCES** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXPORT_SELECTED_SCENES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_SELECTED_SCENES** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXPORT_SELECTED_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_SELECTED_RESOURCES** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXCLUDE_SELECTED_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXCLUDE_SELECTED_RESOURCES** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXPORT_CUSTOMIZED:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_CUSTOMIZED** = ``4``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-item-separator

----

.. _enum_EditorExportPreset_FileExportMode:

.. rst-class:: classref-enumeration

enum **FileExportMode**: :ref:`🔗<enum_EditorExportPreset_FileExportMode>`

.. _class_EditorExportPreset_constant_MODE_FILE_NOT_CUSTOMIZED:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_NOT_CUSTOMIZED** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_FILE_STRIP:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_STRIP** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_FILE_KEEP:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_KEEP** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_FILE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_REMOVE** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-item-separator

----

.. _enum_EditorExportPreset_ScriptExportMode:

.. rst-class:: classref-enumeration

enum **ScriptExportMode**: :ref:`🔗<enum_EditorExportPreset_ScriptExportMode>`

.. _class_EditorExportPreset_constant_MODE_SCRIPT_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **MODE_SCRIPT_TEXT** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_SCRIPT_BINARY_TOKENS:

.. rst-class:: classref-enumeration-constant

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **MODE_SCRIPT_BINARY_TOKENS** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_SCRIPT_BINARY_TOKENS_COMPRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **MODE_SCRIPT_BINARY_TOKENS_COMPRESSED** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorExportPreset_method_are_advanced_options_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **are_advanced_options_enabled**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_are_advanced_options_enabled>`

Returns ``true`` if the "Advanced" toggle is enabled in the export dialog.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_custom_features:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_custom_features**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_custom_features>`

Returns a comma-separated list of custom features added to this preset, as a string. See :doc:`Feature tags <../tutorials/export/feature_tags>` in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_customized_files:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_customized_files**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_customized_files>`

Returns a dictionary of files selected in the "Resources" tab of the export dialog. The dictionary's keys are file paths, and its values are the corresponding export modes: ``"strip"``, ``"keep"``, or ``"remove"``. See also :ref:`get_file_export_mode()<class_EditorExportPreset_method_get_file_export_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_customized_files_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_customized_files_count**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_customized_files_count>`

Returns the number of files selected in the "Resources" tab of the export dialog.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encrypt_directory:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_encrypt_directory**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encrypt_directory>`

Returns ``true`` if PCK directory encryption is enabled in the export dialog.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encrypt_pck:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_encrypt_pck**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encrypt_pck>`

Returns ``true`` if PCK encryption is enabled in the export dialog.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encryption_ex_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_encryption_ex_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encryption_ex_filter>`

Returns file filters to exclude during PCK encryption.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encryption_in_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_encryption_in_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encryption_in_filter>`

Returns file filters to include during PCK encryption.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encryption_key:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_encryption_key**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encryption_key>`

Renvoie la clé de cryptage PCK.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_exclude_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_exclude_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_exclude_filter>`

Returns file filters to exclude during export.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_export_filter:

.. rst-class:: classref-method

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **get_export_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_export_filter>`

Returns export file filter mode selected in the "Resources" tab of the export dialog.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_export_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_export_path**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_export_path>`

Renvoie le chemin de la cible d'export.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_file_export_mode:

.. rst-class:: classref-method

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **get_file_export_mode**\ (\ path\: :ref:`String<class_String>`, default\: :ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` = 0\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_file_export_mode>`

Returns file export mode for the specified file.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_files_to_export:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files_to_export**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_files_to_export>`

Returns array of files to export.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_include_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_include_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_include_filter>`

Returns file filters to include during export.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_or_env:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_or_env**\ (\ name\: :ref:`StringName<class_StringName>`, env_var\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_or_env>`

Returns export option value or value of environment variable if it is set.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_patches:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_patches**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_patches>`

Returns the list of packs on which to base a patch export on.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_preset_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_preset_name**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_preset_name>`

Renvoie le nom de ce pré-réglage d'export.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_project_setting:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_project_setting**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorExportPreset_method_get_project_setting>`

Retourne la valeur du paramètre spécifié par ``name`` en utilisant la fonctionnalité préréglée d'exportation au lieu des fonctions OS actuelles.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_script_export_mode:

.. rst-class:: classref-method

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **get_script_export_mode**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_script_export_mode>`

Returns the export mode used by GDScript files. ``0`` for "Text", ``1`` for "Binary tokens", and ``2`` for "Compressed binary tokens (smaller files)".

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_version:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_version**\ (\ name\: :ref:`StringName<class_StringName>`, windows_version\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_version>`

Returns the preset's version number, or fall back to the :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>` project setting if set to an empty string.

If ``windows_version`` is ``true``, formats the returned version number to be compatible with Windows executable metadata.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorExportPreset_method_has>`

Returns ``true`` if the preset has the property named ``property``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_has_export_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_export_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPreset_method_has_export_file>`

Returns ``true`` if the file at the specified ``path`` will be exported.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_is_dedicated_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_dedicated_server**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_is_dedicated_server>`

Returns ``true`` if the dedicated server export mode is selected in the export dialog.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_is_runnable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_runnable**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_is_runnable>`

Returns ``true`` if the "Runnable" toggle is enabled in the export dialog.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
