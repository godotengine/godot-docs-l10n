:github_url: hide

.. _class_EditorExportPlatformExtension:

EditorExportPlatformExtension
=============================

**繼承：** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

自訂 :ref:`EditorExportPlatform<class_EditorExportPlatform>` 實作（外掛）的基底類別。

.. rst-class:: classref-introduction-group

說明
----

外部 :ref:`EditorExportPlatform<class_EditorExportPlatform>` 實作應當繼承自該類。

要使用 :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ，請先使用 :ref:`EditorPlugin.add_export_platform()<class_EditorPlugin_method_add_export_platform>` 方法注冊。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_can_export<class_EditorExportPlatformExtension_private_method__can_export>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                                                                                                                       |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_cleanup<class_EditorExportPlatformExtension_private_method__cleanup>`\ (\ ) |virtual|                                                                                                                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_pack<class_EditorExportPlatformExtension_private_method__export_pack>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual|                                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_pack_patch<class_EditorExportPlatformExtension_private_method__export_pack_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_project<class_EditorExportPlatformExtension_private_method__export_project>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| |required|                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_zip<class_EditorExportPlatformExtension_private_method__export_zip>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual|                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_export_zip_patch<class_EditorExportPlatformExtension_private_method__export_zip_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual|   |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_binary_extensions<class_EditorExportPlatformExtension_private_method__get_binary_extensions>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const|                                                                                                                                                                                       |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_debug_protocol<class_EditorExportPlatformExtension_private_method__get_debug_protocol>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_device_architecture<class_EditorExportPlatformExtension_private_method__get_device_architecture>`\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_get_export_option_visibility<class_EditorExportPlatformExtension_private_method__get_export_option_visibility>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_export_option_warning<class_EditorExportPlatformExtension_private_method__get_export_option_warning>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_export_options<class_EditorExportPlatformExtension_private_method__get_export_options>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                | :ref:`_get_logo<class_EditorExportPlatformExtension_private_method__get_logo>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                               |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_name<class_EditorExportPlatformExtension_private_method__get_name>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                               |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                | :ref:`_get_option_icon<class_EditorExportPlatformExtension_private_method__get_option_icon>`\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_option_label<class_EditorExportPlatformExtension_private_method__get_option_label>`\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_option_tooltip<class_EditorExportPlatformExtension_private_method__get_option_tooltip>`\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_options_count<class_EditorExportPlatformExtension_private_method__get_options_count>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_options_tooltip<class_EditorExportPlatformExtension_private_method__get_options_tooltip>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_os_name<class_EditorExportPlatformExtension_private_method__get_os_name>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_platform_features<class_EditorExportPlatformExtension_private_method__get_platform_features>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                     |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_preset_features<class_EditorExportPlatformExtension_private_method__get_preset_features>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const|                                                                                                                                                                                           |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                                | :ref:`_get_run_icon<class_EditorExportPlatformExtension_private_method__get_run_icon>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_valid_export_configuration<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |required| |const|                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_valid_project_configuration<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const|                                                                                                                                                                   |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_initialize<class_EditorExportPlatformExtension_private_method__initialize>`\ (\ ) |virtual|                                                                                                                                                                                                                                                                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_is_executable<class_EditorExportPlatformExtension_private_method__is_executable>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_poll_export<class_EditorExportPlatformExtension_private_method__poll_export>`\ (\ ) |virtual|                                                                                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`_run<class_EditorExportPlatformExtension_private_method__run>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, device\: :ref:`int<class_int>`, debug_flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual|                                                                                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_should_update_export_options<class_EditorExportPlatformExtension_private_method__should_update_export_options>`\ (\ ) |virtual|                                                                                                                                                                                                                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_config_error<class_EditorExportPlatformExtension_method_get_config_error>`\ (\ ) |const|                                                                                                                                                                                                                                                                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`get_config_missing_templates<class_EditorExportPlatformExtension_method_get_config_missing_templates>`\ (\ ) |const|                                                                                                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_config_error<class_EditorExportPlatformExtension_method_set_config_error>`\ (\ error_text\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_config_missing_templates<class_EditorExportPlatformExtension_method_set_config_missing_templates>`\ (\ missing_templates\: :ref:`bool<class_bool>`\ ) |const|                                                                                                                                                                                                                         |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorExportPlatformExtension_private_method__can_export:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_export**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__can_export>`

如果指定的 ``preset`` 有效且可以匯出，則回傳 ``true``\ 。使用 :ref:`set_config_error()<class_EditorExportPlatformExtension_method_set_config_error>` 和 :ref:`set_config_missing_templates()<class_EditorExportPlatformExtension_method_set_config_missing_templates>` 來設定錯誤細節。

通常的實作會呼叫 :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` 和 :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>` 來確定匯出是否可行。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__cleanup:

.. rst-class:: classref-method

|void| **_cleanup**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__cleanup>`

注銷平台前編輯器會呼叫該方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_pack>`

使用 ``preset`` 預設在 ``path`` 路徑處建立 PCK 包。

在匯出對話框中按下“匯出 PCK/ZIP”按鈕，停用“匯出為補丁”，並選擇 PCK 作為檔案型別時，將呼叫該方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_pack_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_pack_patch>`

使用 ``preset`` 預設在路徑 ``path`` 處建立補丁 PCK 封存檔，包含自上次補丁以來發生更改的檔案。

在匯出對話框中按下“匯出 PCK/ZIP”按鈕，啟用“匯出為補丁”，並選擇 PCK 作為檔案型別時，將呼叫該方法。

\ **注意：**\ ``patches`` 中的補丁在呼叫該方法時已載入 ，僅作為情境提供。為空時將載入匯出預設中定義的補丁。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_project:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_project**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| |required| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_project>`

使用 ``preset`` 預設在 ``path`` 路徑處建立完整的專案。

在匯出對話框中按下“匯出”按鈕時，將呼叫該方法。

該方法的實作可以呼叫 :ref:`EditorExportPlatform.save_pack()<class_EditorExportPlatform_method_save_pack>` 或 :ref:`EditorExportPlatform.save_zip()<class_EditorExportPlatform_method_save_zip>` 來使用預設的 PCK/ZIP 匯出過程，或者呼叫 :ref:`EditorExportPlatform.export_project_files()<class_EditorExportPlatform_method_export_project_files>` 並實作自訂回呼來處理每個匯出的檔案。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_zip:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_zip>`

使用 ``preset`` 預設在 ``path`` 路徑處建立 ZIP 封存檔。

在匯出對話框中按下“匯出 PCK/ZIP”按鈕，停用“匯出為補丁”，並選擇 ZIP 作為檔案型別時，將呼叫該方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_zip_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_zip_patch>`

使用 ``preset`` 預設在 ``path`` 路徑處建立 ZIP 封存檔，僅包含自上次補丁以來發生更改的檔案。

在匯出對話框中按下“匯出 PCK/ZIP”按鈕，啟用“匯出為補丁”，並選擇 ZIP 作為檔案型別時，將呼叫該方法。

\ **注意：**\ ``patches`` 中的補丁在呼叫該方法時已載入 ，僅作為情境提供。為空時將載入匯出預設中定義的補丁。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_binary_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_binary_extensions**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_binary_extensions>`

回傳完整專案匯出所支援的二進位檔案副檔名陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_debug_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_debug_protocol**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_debug_protocol>`

回傳用於遠端除錯的協議。預設實作回傳 ``tcp://``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_device_architecture:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_device_architecture**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_device_architecture>`

回傳一鍵部署的裝置架構。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_export_option_visibility**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_option_visibility>`

驗證 ``option`` 並回傳指定 ``preset`` 的可見性。預設實作為所有選項都回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_option_warning:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_export_option_warning**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_option_warning>`

驗證 ``option`` 並回傳指定 ``preset`` 的警告訊息。預設實作為所有選項都回傳空字串。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_options:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_export_options**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_options>`

回傳屬性清單，型別是元素為字典的 :ref:`Array<class_Array>`\ 。每個 :ref:`Dictionary<class_Dictionary>` 都必須至少包含 ``name: StringName`` 和 ``type: Variant.Type`` 兩個條目。

另外還支援如下欄位：

- ``hint: PropertyHint``\ 

- ``hint_string: String``\ 

- ``usage: PropertyUsageFlags``\ 

- ``class_name: StringName``\ 

- ``default_value: Variant``\ ，屬性的預設值。

- ``update_visibility: bool``\ ，如果設為 ``true``\ ，則會在該屬性發生更改時為每個屬性都呼叫 :ref:`_get_export_option_visibility()<class_EditorExportPlatformExtension_private_method__get_export_option_visibility>`\ 。

- ``required: bool``\ ，如果設為 ``true``\ ，則該屬性的警告是關鍵的，解決後才能夠實作匯出。該值是 :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` 實作的提示，引擎不直接使用。

另見 :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_logo:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_logo**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_logo>`

回傳匯出對話框中顯示的平台徽標，該徽標應為 32×32 像素，並根據目前編輯器的縮放進行調整（見 :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_name>`

回傳匯出平台的名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_option_icon**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_icon>`

回傳一鍵部署選單中指定 ``device`` 裝置的條目圖示。該圖示應為 16×16 像素，並根據目前編輯器的縮放進行調整（見 :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_option_label**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_label>`

回傳 ``device`` 裝置的一鍵部署選單項標籤。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_option_tooltip**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_tooltip>`

回傳 ``device`` 裝置的一鍵部署選單項工具提示。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_options_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_options_count**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_options_count>`

回傳一鍵部署選單中可用的裝置（或其他選項）的數量。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_options_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_options_tooltip**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_options_tooltip>`

回傳一鍵部署選單按鈕的工具提示。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_os_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_os_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_os_name>`

回傳目標作業系統的名稱。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_platform_features:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_platform_features**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_platform_features>`

回傳平台特定功能的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_preset_features:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_preset_features**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_preset_features>`

回傳 ``preset`` 預設對應的平台特定功能的陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_run_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_run_icon**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_run_icon>`

回傳一鍵部署選單按鈕的圖示。該圖示應為 16×16 像素，並根據目前編輯器縮放進行調整（見 :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__has_valid_export_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_valid_export_configuration**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`

如果匯出設定有效，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__has_valid_project_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_valid_project_configuration**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`

如果專案設定有效，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__initialize:

.. rst-class:: classref-method

|void| **_initialize**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__initialize>`

初始化外掛。平台注冊時由編輯器呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__is_executable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_executable**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__is_executable>`

如果指定的檔案是目標平台上的有效可執行檔（原生可執行檔或腳本），則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__poll_export:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_poll_export**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__poll_export>`

如果一鍵部署選項發生更改，編輯器介面需要更新，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__run:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_run**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, device\: :ref:`int<class_int>`, debug_flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__run>`

選擇 ``device`` 一鍵部署選單選項時呼叫該方法。

實作時應當將項目匯出到暫時位置，然後將其上傳至 ``device`` 裝置並執行，也可以執行與該選單項相關的其他動作。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__should_update_export_options:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_should_update_export_options**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__should_update_export_options>`

如果匯出選項清單發生了更改，應當更新預設，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_get_config_error:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_config_error**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_get_config_error>`

回傳目前設定的錯誤訊息文字。該方法只應在 :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`\ 、\ :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`\ 、\ :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>` 的實作中呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_get_config_missing_templates:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_config_missing_templates**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_get_config_missing_templates>`

如果目前設定缺失匯出範本，則回傳 ``true``\ 。該方法只應在 :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`\ 、\ :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`\ 、\ :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>` 的實作中呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_set_config_error:

.. rst-class:: classref-method

|void| **set_config_error**\ (\ error_text\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_set_config_error>`

設定目前設定的錯誤訊息文字。該方法只應在 :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`\ 、\ :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`\ 、\ :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>` 的實作中呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_set_config_missing_templates:

.. rst-class:: classref-method

|void| **set_config_missing_templates**\ (\ missing_templates\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_set_config_missing_templates>`

設為 ``true`` 表示目前設定缺失匯出範本 。該方法只應在 :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`\ 、\ :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`\ 、\ :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>` 的實作中呼叫。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
