:github_url: hide

.. _class_EditorExportPreset:

EditorExportPreset
==================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

匯出預設設定。

.. rst-class:: classref-introduction-group

說明
----

表示由編輯器的匯出對話框建立的匯出預設的設定。\ **EditorExportPreset** 實例旨在用作在匯出專案時傳遞給 :ref:`EditorExportPlatform<class_EditorExportPlatform>` 方法的只讀設定。

.. rst-class:: classref-reftable-group

方法
----

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
   | :ref:`PackedByteArray<class_PackedByteArray>`                     | :ref:`resolve_encryption_key<class_EditorExportPreset_method_resolve_encryption_key>`\ (\ )                                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_EditorExportPreset_ExportFilter:

.. rst-class:: classref-enumeration

enum **ExportFilter**: :ref:`🔗<enum_EditorExportPreset_ExportFilter>`

.. _class_EditorExportPreset_constant_EXPORT_ALL_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_ALL_RESOURCES** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXPORT_SELECTED_SCENES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_SELECTED_SCENES** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXPORT_SELECTED_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_SELECTED_RESOURCES** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXCLUDE_SELECTED_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXCLUDE_SELECTED_RESOURCES** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXPORT_CUSTOMIZED:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_CUSTOMIZED** = ``4``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. rst-class:: classref-item-separator

----

.. _enum_EditorExportPreset_FileExportMode:

.. rst-class:: classref-enumeration

enum **FileExportMode**: :ref:`🔗<enum_EditorExportPreset_FileExportMode>`

.. _class_EditorExportPreset_constant_MODE_FILE_NOT_CUSTOMIZED:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_NOT_CUSTOMIZED** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_FILE_STRIP:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_STRIP** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_FILE_KEEP:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_KEEP** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_FILE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_REMOVE** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. rst-class:: classref-item-separator

----

.. _enum_EditorExportPreset_ScriptExportMode:

.. rst-class:: classref-enumeration

enum **ScriptExportMode**: :ref:`🔗<enum_EditorExportPreset_ScriptExportMode>`

.. _class_EditorExportPreset_constant_MODE_SCRIPT_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **MODE_SCRIPT_TEXT** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_SCRIPT_BINARY_TOKENS:

.. rst-class:: classref-enumeration-constant

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **MODE_SCRIPT_BINARY_TOKENS** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_SCRIPT_BINARY_TOKENS_COMPRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **MODE_SCRIPT_BINARY_TOKENS_COMPRESSED** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorExportPreset_method_are_advanced_options_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **are_advanced_options_enabled**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_are_advanced_options_enabled>`

如果匯出對話框中打開了“進階”開關，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_custom_features:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_custom_features**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_custom_features>`

回傳新增至該預設的自訂特性清單，是一個用英文逗號分隔的字串。詳見《\ :doc:`特性標籤 <../tutorials/export/feature_tags>`\ 》文件。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_customized_files:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_customized_files**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_customized_files>`

回傳在匯出對話框“資源”分頁中選中的所有檔案，是一個字典。字典的鍵是檔名，值是對應的匯出模式 ：\ ``"strip"``\ 、\ ``"keep"`` 或 ``"remove"``\ 。另見 :ref:`get_file_export_mode()<class_EditorExportPreset_method_get_file_export_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_customized_files_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_customized_files_count**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_customized_files_count>`

回傳在匯出對話框“資源”分頁中選中的檔案數。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encrypt_directory:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_encrypt_directory**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encrypt_directory>`

如果匯出對話框中啟用了 PCK 目錄加密，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encrypt_pck:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_encrypt_pck**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encrypt_pck>`

如果匯出對話框中啟用了 PCK 加密，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encryption_ex_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_encryption_ex_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encryption_ex_filter>`

回傳 PCK 加密時需要排除的檔案過濾器。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encryption_in_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_encryption_in_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encryption_in_filter>`

回傳 PCK 加密時需要包含的檔案過濾器。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encryption_key:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_encryption_key**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encryption_key>`

Returns PCK encryption key. This will only return the value set in the export preset and not the value of the ``GODOT_SCRIPT_ENCRYPTION_KEY`` environment variable. See also :ref:`resolve_encryption_key()<class_EditorExportPreset_method_resolve_encryption_key>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_exclude_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_exclude_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_exclude_filter>`

回傳匯出時需要排除的檔案過濾器。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_export_filter:

.. rst-class:: classref-method

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **get_export_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_export_filter>`

回傳匯出對話框“資源”分頁中選中的匯出檔案過濾模式。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_export_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_export_path**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_export_path>`

回傳匯出目標的路徑。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_file_export_mode:

.. rst-class:: classref-method

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **get_file_export_mode**\ (\ path\: :ref:`String<class_String>`, default\: :ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` = 0\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_file_export_mode>`

回傳指定檔案的檔案匯出模式。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_files_to_export:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files_to_export**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_files_to_export>`

回傳要匯出的檔案陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_include_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_include_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_include_filter>`

回傳匯出時需要包含的檔案過濾器。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_or_env:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_or_env**\ (\ name\: :ref:`StringName<class_StringName>`, env_var\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_or_env>`

回傳匯出選項的值，如果設定了環境變數則回傳環境變數的值。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_patches:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_patches**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_patches>`

回傳匯出補丁時用作基礎的包的清單。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_preset_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_preset_name**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_preset_name>`

回傳匯出預設的名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_project_setting:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_project_setting**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorExportPreset_method_get_project_setting>`

回傳名為 ``name`` 的設定項的值，會使用匯出預設特性標籤覆蓋，不使用目前作業系統的特性。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_script_export_mode:

.. rst-class:: classref-method

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **get_script_export_mode**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_script_export_mode>`

回傳 GDScript 檔案的匯出模式。\ ``0`` 表示“文字”，\ ``1`` 表示“二進位標記”，\ ``2`` 表示“壓縮二進位標記（檔案較小）”。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_version:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_version**\ (\ name\: :ref:`StringName<class_StringName>`, windows_version\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_version>`

返回預設的版本號，如果為空字串則回退至 :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>` 專案設定。

如果 ``windows_version`` 為 ``true``\ ，則會對返回的版本號進行格式化，讓其與 Windows 可執行檔中繼資料相容。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorExportPreset_method_has>`

如果預設中存在名為 ``property`` 的屬性，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_has_export_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_export_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPreset_method_has_export_file>`

如果會匯出路徑為 ``path`` 的檔案，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_is_dedicated_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_dedicated_server**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_is_dedicated_server>`

如果匯出對話框中選擇了專用伺服器匯出模式，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_is_runnable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_runnable**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_is_runnable>`

如果為匯出對話框中打開了“可執行”開關，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_resolve_encryption_key:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **resolve_encryption_key**\ (\ ) :ref:`🔗<class_EditorExportPreset_method_resolve_encryption_key>`

Returns PCK encryption key as a :ref:`PackedByteArray<class_PackedByteArray>`. If the ``GODOT_SCRIPT_ENCRYPTION_KEY`` environment variable is set, this will return that key instead of the key set in the export preset. See also :ref:`get_encryption_key()<class_EditorExportPreset_method_get_encryption_key>`.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
