:github_url: hide

.. _class_EditorExportPlatform:

EditorExportPlatform
====================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`EditorExportPlatformAndroid<class_EditorExportPlatformAndroid>`, :ref:`EditorExportPlatformAppleEmbedded<class_EditorExportPlatformAppleEmbedded>`, :ref:`EditorExportPlatformExtension<class_EditorExportPlatformExtension>`, :ref:`EditorExportPlatformMacOS<class_EditorExportPlatformMacOS>`, :ref:`EditorExportPlatformPC<class_EditorExportPlatformPC>`, :ref:`EditorExportPlatformWeb<class_EditorExportPlatformWeb>`

標識一個支援的匯出平臺，並在內部提供匯出到該平臺的功能。

.. rst-class:: classref-introduction-group

說明
----

基礎資源，提供從編輯器將專案的發行建構匯出到平臺的功能。儲存特定於平臺的中繼資料，例如平臺的名稱和支援的功能，並執行專案、PCK 檔和 ZIP 檔的匯出。使用在專案匯出時提供的平臺匯出範本。

在 :ref:`EditorExportPlugin<class_EditorExportPlugin>` 的腳本中用於配置特定於平臺的場景和資源的定制。有關詳細資訊，請參閱 :ref:`EditorExportPlugin._begin_customize_scenes()<class_EditorExportPlugin_private_method__begin_customize_scenes>` 和 :ref:`EditorExportPlugin._begin_customize_resources()<class_EditorExportPlugin_private_method__begin_customize_resources>`\ 。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`add_message<class_EditorExportPlatform_method_add_message>`\ (\ type\: :ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>`, category\: :ref:`String<class_String>`, message\: :ref:`String<class_String>`\ )                                                                                                                                                         |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`clear_messages<class_EditorExportPlatform_method_clear_messages>`\ (\ )                                                                                                                                                                                                                                                                                                                |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorExportPreset<class_EditorExportPreset>`                   | :ref:`create_preset<class_EditorExportPlatform_method_create_preset>`\ (\ )                                                                                                                                                                                                                                                                                                                  |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`export_pack<class_EditorExportPlatform_method_export_pack>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ )                                                                                                |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`export_pack_patch<class_EditorExportPlatform_method_export_pack_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`export_project<class_EditorExportPlatform_method_export_project>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0, notify\: :ref:`bool<class_bool>` = true\ )                                                 |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`export_project_files<class_EditorExportPlatform_method_export_project_files>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, save_cb\: :ref:`Callable<class_Callable>`, shared_cb\: :ref:`Callable<class_Callable>` = Callable()\ )                                                                                                |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`export_zip<class_EditorExportPlatform_method_export_zip>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ )                                                                                                  |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`export_zip_patch<class_EditorExportPlatform_method_export_zip_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ )   |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                   | :ref:`find_export_template<class_EditorExportPlatform_method_find_export_template>`\ (\ template_file_name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                                                                                          |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                     | :ref:`gen_export_flags<class_EditorExportPlatform_method_gen_export_flags>`\ (\ flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ )                                                                                                                                                                                                                             |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                             | :ref:`get_current_presets<class_EditorExportPlatform_method_get_current_presets>`\ (\ ) |const|                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                     | :ref:`get_forced_export_files<class_EditorExportPlatform_method_get_forced_export_files>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>` = null\ ) |static|                                                                                                                                                                                                                |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                   | :ref:`get_internal_export_files<class_EditorExportPlatform_method_get_internal_export_files>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                           |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_message_category<class_EditorExportPlatform_method_get_message_category>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                             |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_message_count<class_EditorExportPlatform_method_get_message_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                  |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_message_text<class_EditorExportPlatform_method_get_message_text>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` | :ref:`get_message_type<class_EditorExportPlatform_method_get_message_type>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                     |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                           | :ref:`get_os_name<class_EditorExportPlatform_method_get_os_name>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                              |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` | :ref:`get_worst_message_type<class_EditorExportPlatform_method_get_worst_message_type>`\ (\ ) |const|                                                                                                                                                                                                                                                                                        |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                   | :ref:`save_pack<class_EditorExportPlatform_method_save_pack>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, embed\: :ref:`bool<class_bool>` = false\ )                                                                                                                                              |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                   | :ref:`save_pack_patch<class_EditorExportPlatform_method_save_pack_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ )                                                                                                                                                                           |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                   | :ref:`save_zip<class_EditorExportPlatform_method_save_zip>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ )                                                                                                                                                                                         |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                   | :ref:`save_zip_patch<class_EditorExportPlatform_method_save_zip_patch>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ )                                                                                                                                                                             |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`ssh_push_to_remote<class_EditorExportPlatform_method_ssh_push_to_remote>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, scp_args\: :ref:`PackedStringArray<class_PackedStringArray>`, src_file\: :ref:`String<class_String>`, dst_file\: :ref:`String<class_String>`\ ) |const|                                                                          |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`ssh_run_on_remote<class_EditorExportPlatform_method_ssh_run_on_remote>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_arg\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, output\: :ref:`Array<class_Array>` = [], port_fwd\: :ref:`int<class_int>` = -1\ ) |const|                                     |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`ssh_run_on_remote_no_wait<class_EditorExportPlatform_method_ssh_run_on_remote_no_wait>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_args\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, port_fwd\: :ref:`int<class_int>` = -1\ ) |const|                                                             |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_EditorExportPlatform_ExportMessageType:

.. rst-class:: classref-enumeration

enum **ExportMessageType**: :ref:`🔗<enum_EditorExportPlatform_ExportMessageType>`

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_NONE** = ``0``

無效訊息型別，是未指定型別時的預設值。

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_INFO:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_INFO** = ``1``

資訊類訊息的訊息型別，對匯出沒有影響。

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_WARNING** = ``2``

警告類訊息的訊息型別，應當解決，但仍然允許完成匯出。

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_ERROR** = ``3``

錯誤類訊息的訊息型別，必須解決，會讓匯出失敗。

.. rst-class:: classref-item-separator

----

.. _enum_EditorExportPlatform_DebugFlags:

.. rst-class:: classref-enumeration

flags **DebugFlags**: :ref:`🔗<enum_EditorExportPlatform_DebugFlags>`

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_DUMB_CLIENT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_DUMB_CLIENT** = ``1``

如果希望遠端除錯的專案使用遠端檔案系統，則設定該標誌。如果設定了該標誌，則 :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` 會將 ``--remote-fs`` 和 ``--remote-fs-password``\ （如果定義了 :ref:`EditorSettings.filesystem/file_server/password<class_EditorSettings_property_filesystem/file_server/password>`\ ）命令行參數追加到回傳的清單中。

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_REMOTE_DEBUG:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_REMOTE_DEBUG** = ``2``

如果啟用了遠端除錯，則設定該標誌。如果設定了該標誌，則 :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` 會將 ``--remote-debug`` 和 ``--breakpoints``\ （如果腳本編輯器中選擇了斷點或外掛新增了斷點）命令行參數追加到回傳的清單中。

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_REMOTE_DEBUG_LOCALHOST:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_REMOTE_DEBUG_LOCALHOST** = ``4``

如果遠端除錯的專案在本機執行，則設定該標誌。如果設定了該標誌，則 :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` 會使用 ``localhost`` 作為遠端除錯器主機，不使用 :ref:`EditorSettings.network/debug/remote_host<class_EditorSettings_property_network/debug/remote_host>`\ 。

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_VIEW_COLLISIONS:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_VIEW_COLLISIONS** = ``8``

如果啟用了“顯示碰撞形狀”遠端除錯選項，則設定該標誌。如果設定了該標誌，則 :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` 會將 ``--debug-collisions`` 命令行參數追加到回傳的清單中。

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_VIEW_NAVIGATION:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_VIEW_NAVIGATION** = ``16``

如果啟用了“顯示導航”遠端除錯選項，則設定該標誌。如果設定了該標誌，則 :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` 會將 ``--debug-navigation`` 命令行參數追加到回傳的清單中。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorExportPlatform_method_add_message:

.. rst-class:: classref-method

|void| **add_message**\ (\ type\: :ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>`, category\: :ref:`String<class_String>`, message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_add_message>`

在匯出記錄中新增一條訊息，會在匯出結束時顯示。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_clear_messages:

.. rst-class:: classref-method

|void| **clear_messages**\ (\ ) :ref:`🔗<class_EditorExportPlatform_method_clear_messages>`

清空匯出記錄。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_create_preset:

.. rst-class:: classref-method

:ref:`EditorExportPreset<class_EditorExportPreset>` **create_preset**\ (\ ) :ref:`🔗<class_EditorExportPlatform_method_create_preset>`

新建該平台的預設。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_pack>`

使用 ``preset`` 預設在 ``path`` 路徑處建立 PCK 包。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_pack_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_pack_patch>`

使用 ``preset`` 預設在 ``path`` 路徑處建立 PCK 補丁包，只會包含相對於上一個補丁發生更改的檔案。

\ **注意：**\ ``patches`` 是可選的，會覆蓋匯出預設中定義的補丁集。留空時會使用匯出預設中定義的補丁。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_project:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_project**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0, notify\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorExportPlatform_method_export_project>`

在指定的 ``path``\ （路徑）下，為指定的 ``preset``\ （預設）建立一個完整的專案。如果 ``notify`` 為 ``true``\ ，則在此過程中會呼叫使用了 :ref:`EditorExportPlugin._export_begin()<class_EditorExportPlugin_private_method__export_begin>` 的外掛。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_project_files:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_project_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, save_cb\: :ref:`Callable<class_Callable>`, shared_cb\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_EditorExportPlatform_method_export_project_files>`

Exports project files for the specified preset. This method can be used to implement custom export format, other than PCK and ZIP. One of the callbacks is called for each exported file.

\ ``save_cb`` is called for all exported files and have the following arguments: ``info: Dictionary``, ``file_data: PackedByteArray``. The ``info`` dictionary contains the following values: ``path: String``, ``source_path: String``, ``file_index: int``, ``file_count: int``.

\ ``shared_cb`` is called for exported native shared/static libraries and have the following arguments: ``file_path: String``, ``tags: PackedStringArray``, ``target_folder: String``.

\ **Note:** ``file_index`` and ``file_count`` are intended for progress tracking only and aren't necessarily unique and precise.

\ **Note:** The signature of ``save_cb`` changed in Godot 4.8. There is compatibility code to automatically handle the `previous signature <https://docs.godotengine.org/en/4.7/classes/class_editorexportplatform.html#class-editorexportplatform-method-export-project-files>`__ if the passed callable has 7 arguments.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_zip:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_zip>`

使用 ``preset`` 預設在 ``path`` 路徑處建立 ZIP 壓縮檔。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_zip_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_zip_patch>`

使用 ``preset`` 預設在 ``path`` 路徑處建立 ZIP 補丁壓縮檔，只會包含相對於上一個補丁發生更改的檔案。

\ **注意：**\ ``patches`` 是可選的，會覆蓋匯出預設中定義的補丁集。留空時會使用匯出預設中定義的補丁。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_find_export_template:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **find_export_template**\ (\ template_file_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_find_export_template>`

定位該平台的匯出範本，回傳帶有以下欄位的 :ref:`Dictionary<class_Dictionary>`\ ：路徑 ``path: String`` 和錯誤 ``error: String``\ 。該方法旨在方便使用，自訂匯出平台不必使用，也不必和官方範本一樣儲存匯出範本。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_gen_export_flags:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **gen_export_flags**\ (\ flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) :ref:`🔗<class_EditorExportPlatform_method_gen_export_flags>`

生成命令行參數陣列，適用於使用除錯標誌和編輯器設定的預設匯出範本。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_current_presets:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_current_presets**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_current_presets>`

回傳該平台的 :ref:`EditorExportPreset<class_EditorExportPreset>` 陣列。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_forced_export_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_forced_export_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>` = null\ ) |static| :ref:`🔗<class_EditorExportPlatform_method_get_forced_export_files>`

回傳核心檔名陣列，這些檔案無論預設設定如何都應該匯出。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_internal_export_files:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_internal_export_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorExportPlatform_method_get_internal_export_files>`

回傳無論預設如何設定都應當額外匯出的檔案，這些檔案不在專案原始檔中。回傳的 :ref:`Dictionary<class_Dictionary>` 使用檔名作為鍵（\ :ref:`String<class_String>`\ ），值為對應的原始資料（\ :ref:`PackedByteArray<class_PackedByteArray>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_category:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_message_category**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_category>`

回傳給定 ``index`` 的訊息的訊息類別。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_message_count**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_count>`

回傳匯出記錄中的訊息數。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_message_text**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_text>`

回傳給定 ``index`` 的訊息文字。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_type:

.. rst-class:: classref-method

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **get_message_type**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_type>`

回傳具有給定 ``index`` 的訊息的型別。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_os_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_os_name**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_os_name>`

以友善字串的形式傳回由此\ **EditorExportPlatform** 類別處理的匯出作業系統的名稱。可能的回傳值為\ ``Windows``\ 、\ ``Linux ``\ 、\ ``macOS``\ 、\ ``Android``\ 、\ ``iOS`` 和 ``Web``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_worst_message_type:

.. rst-class:: classref-method

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **get_worst_message_type**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_worst_message_type>`

回傳匯出記錄中目前存在的最嚴重的訊息型別。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_pack:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, embed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorExportPlatform_method_save_pack>`

儲存 PCK 封存檔並回傳 :ref:`Dictionary<class_Dictionary>`\ ，包含以下欄位：\ ``result: Error``\ 、\ ``so_files: Array``\ （包含字典的共享/靜態物件陣列，字典中包含以下欄位：\ ``path: String``\ 、\ ``tags: PackedStringArray``\ 、\ ``target_folder: String``\ ）。

如果 ``embed`` 為 ``true``\ ，則 PCK 中的內容會追加到 ``path`` 檔案的末尾，回傳的 :ref:`Dictionary<class_Dictionary>` 中額外包含以下欄位：\ ``embedded_start: int``\ （嵌入 PCK 的偏移量）和 ``embedded_size: int``\ （嵌入 PCK 的大小）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_pack_patch:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_pack_patch>`

儲存補丁 PCK 封存檔並回傳 :ref:`Dictionary<class_Dictionary>`\ ，包含以下欄位：\ ``result: Error``\ 、\ ``so_files: Array``\ （包含字典的共享/靜態物件陣列，字典中包含以下欄位：\ ``path: String``\ 、\ ``tags: PackedStringArray``\ 、\ ``target_folder: String``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_zip:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_zip>`

儲存 ZIP 封存檔並回傳 :ref:`Dictionary<class_Dictionary>`\ ，包含以下欄位：\ ``result: Error``\ 、\ ``so_files: Array``\ （包含字典的共享/靜態物件陣列，字典中包含以下欄位：\ ``path: String``\ 、\ ``tags: PackedStringArray``\ 、\ ``target_folder: String``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_zip_patch:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_zip_patch>`

儲存補丁 ZIP 封存檔並回傳 :ref:`Dictionary<class_Dictionary>`\ ，包含以下欄位：\ ``result: Error``\ 、\ ``so_files: Array``\ （包含字典的共享/靜態物件陣列，字典中包含以下欄位：\ ``path: String``\ 、\ ``tags: PackedStringArray``\ 、\ ``target_folder: String``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_push_to_remote:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **ssh_push_to_remote**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, scp_args\: :ref:`PackedStringArray<class_PackedStringArray>`, src_file\: :ref:`String<class_String>`, dst_file\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_push_to_remote>`

將指定的檔案通過 SCP 協議上傳至遠端主機。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_run_on_remote:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **ssh_run_on_remote**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_arg\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, output\: :ref:`Array<class_Array>` = [], port_fwd\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_run_on_remote>`

通過 SSH 協議在遠端主機上執行指定的命令，在 ``output`` 中回傳命令的輸出。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_run_on_remote_no_wait:

.. rst-class:: classref-method

:ref:`int<class_int>` **ssh_run_on_remote_no_wait**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_args\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, port_fwd\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_run_on_remote_no_wait>`

通過 SSH 協議在遠端主機上執行指定的命令，回傳（遠端主機上的）處理程序 ID，無需等待命令完成。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
