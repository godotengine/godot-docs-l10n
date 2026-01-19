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

基礎資源，提供從編輯器將專案的發行建構匯出到平臺的功能。儲存特定於平臺的元數據，例如平臺的名稱和支援的功能，並執行專案、PCK 檔和 ZIP 檔的匯出。使用在專案匯出時提供的平臺匯出範本。

在 :ref:`EditorExportPlugin<class_EditorExportPlugin>` 的腳本中用於配置特定於平臺的場景和資源的定制。有關詳細信息，請參閱 :ref:`EditorExportPlugin._begin_customize_scenes()<class_EditorExportPlugin_private_method__begin_customize_scenes>` 和 :ref:`EditorExportPlugin._begin_customize_resources()<class_EditorExportPlugin_private_method__begin_customize_resources>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`Console support in Godot <../tutorials/platform/consoles>`

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
   | :ref:`Error<enum_@GlobalScope_Error>`                                 | :ref:`export_project<class_EditorExportPlatform_method_export_project>`\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ )                                                                                          |
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

Invalid message type used as the default value when no type is specified.

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_INFO:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_INFO** = ``1``

Message type for informational messages that have no effect on the export.

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_WARNING** = ``2``

Message type for warning messages that should be addressed but still allow to complete the export.

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_ERROR** = ``3``

Message type for error messages that must be addressed and fail the export.

.. rst-class:: classref-item-separator

----

.. _enum_EditorExportPlatform_DebugFlags:

.. rst-class:: classref-enumeration

flags **DebugFlags**: :ref:`🔗<enum_EditorExportPlatform_DebugFlags>`

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_DUMB_CLIENT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_DUMB_CLIENT** = ``1``

Flag is set if the remotely debugged project is expected to use the remote file system. If set, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` will append ``--remote-fs`` and ``--remote-fs-password`` (if :ref:`EditorSettings.filesystem/file_server/password<class_EditorSettings_property_filesystem/file_server/password>` is defined) command line arguments to the returned list.

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_REMOTE_DEBUG:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_REMOTE_DEBUG** = ``2``

Flag is set if remote debug is enabled. If set, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` will append ``--remote-debug`` and ``--breakpoints`` (if breakpoints are selected in the script editor or added by the plugin) command line arguments to the returned list.

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_REMOTE_DEBUG_LOCALHOST:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_REMOTE_DEBUG_LOCALHOST** = ``4``

Flag is set if remotely debugged project is running on the localhost. If set, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` will use ``localhost`` instead of :ref:`EditorSettings.network/debug/remote_host<class_EditorSettings_property_network/debug/remote_host>` as remote debugger host.

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_VIEW_COLLISIONS:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_VIEW_COLLISIONS** = ``8``

Flag is set if the "Visible Collision Shapes" remote debug option is enabled. If set, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` will append the ``--debug-collisions`` command line argument to the returned list.

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_VIEW_NAVIGATION:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_VIEW_NAVIGATION** = ``16``

Flag is set if the "Visible Navigation" remote debug option is enabled. If set, :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` will append the ``--debug-navigation`` command line argument to the returned list.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_EditorExportPlatform_method_add_message:

.. rst-class:: classref-method

|void| **add_message**\ (\ type\: :ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>`, category\: :ref:`String<class_String>`, message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_add_message>`

Adds a message to the export log that will be displayed when exporting ends.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_clear_messages:

.. rst-class:: classref-method

|void| **clear_messages**\ (\ ) :ref:`🔗<class_EditorExportPlatform_method_clear_messages>`

Clears the export log.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_create_preset:

.. rst-class:: classref-method

:ref:`EditorExportPreset<class_EditorExportPreset>` **create_preset**\ (\ ) :ref:`🔗<class_EditorExportPlatform_method_create_preset>`

Create a new preset for this platform.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_pack>`

Creates a PCK archive at ``path`` for the specified ``preset``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_pack_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_pack_patch>`

Creates a patch PCK archive at ``path`` for the specified ``preset``, containing only the files that have changed since the last patch.

\ **Note:** ``patches`` is an optional override of the set of patches defined in the export preset. When empty the patches defined in the export preset will be used instead.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_project:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_project**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_project>`

Creates a full project at ``path`` for the specified ``preset``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_project_files:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_project_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, save_cb\: :ref:`Callable<class_Callable>`, shared_cb\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_EditorExportPlatform_method_export_project_files>`

Exports project files for the specified preset. This method can be used to implement custom export format, other than PCK and ZIP. One of the callbacks is called for each exported file.

\ ``save_cb`` is called for all exported files and have the following arguments: ``file_path: String``, ``file_data: PackedByteArray``, ``file_index: int``, ``file_count: int``, ``encryption_include_filters: PackedStringArray``, ``encryption_exclude_filters: PackedStringArray``, ``encryption_key: PackedByteArray``.

\ ``shared_cb`` is called for exported native shared/static libraries and have the following arguments: ``file_path: String``, ``tags: PackedStringArray``, ``target_folder: String``.

\ **Note:** ``file_index`` and ``file_count`` are intended for progress tracking only and aren't necessarily unique and precise.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_zip:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_zip>`

Create a ZIP archive at ``path`` for the specified ``preset``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_zip_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_zip_patch>`

Create a patch ZIP archive at ``path`` for the specified ``preset``, containing only the files that have changed since the last patch.

\ **Note:** ``patches`` is an optional override of the set of patches defined in the export preset. When empty the patches defined in the export preset will be used instead.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_find_export_template:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **find_export_template**\ (\ template_file_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_find_export_template>`

Locates export template for the platform, and returns :ref:`Dictionary<class_Dictionary>` with the following keys: ``path: String`` and ``error: String``. This method is provided for convenience and custom export platforms aren't required to use it or keep export templates stored in the same way official templates are.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_gen_export_flags:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **gen_export_flags**\ (\ flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) :ref:`🔗<class_EditorExportPlatform_method_gen_export_flags>`

Generates array of command line arguments for the default export templates for the debug flags and editor settings.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_current_presets:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_current_presets**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_current_presets>`

Returns array of :ref:`EditorExportPreset<class_EditorExportPreset>`\ s for this platform.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_forced_export_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_forced_export_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>` = null\ ) |static| :ref:`🔗<class_EditorExportPlatform_method_get_forced_export_files>`

Returns array of core file names that always should be exported regardless of preset config.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_internal_export_files:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_internal_export_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorExportPlatform_method_get_internal_export_files>`

Returns additional files that should always be exported regardless of preset configuration, and are not part of the project source. The returned :ref:`Dictionary<class_Dictionary>` contains filename keys (:ref:`String<class_String>`) and their corresponding raw data (:ref:`PackedByteArray<class_PackedByteArray>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_category:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_message_category**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_category>`

Returns the message category for the message with the given ``index``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_message_count**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_count>`

Returns the number of messages in the export log.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_message_text**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_text>`

Returns the text for the message with the given ``index``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_type:

.. rst-class:: classref-method

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **get_message_type**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_type>`

Returns the type for the message with the given ``index``.

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

Returns most severe message type currently present in the export log.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_pack:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, embed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorExportPlatform_method_save_pack>`

Saves PCK archive and returns :ref:`Dictionary<class_Dictionary>` with the following keys: ``result: Error``, ``so_files: Array`` (array of the shared/static objects which contains dictionaries with the following keys: ``path: String``, ``tags: PackedStringArray``, and ``target_folder: String``).

If ``embed`` is ``true``, PCK content is appended to the end of ``path`` file and return :ref:`Dictionary<class_Dictionary>` additionally include following keys: ``embedded_start: int`` (embedded PCK offset) and ``embedded_size: int`` (embedded PCK size).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_pack_patch:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_pack_patch>`

Saves patch PCK archive and returns :ref:`Dictionary<class_Dictionary>` with the following keys: ``result: Error``, ``so_files: Array`` (array of the shared/static objects which contains dictionaries with the following keys: ``path: String``, ``tags: PackedStringArray``, and ``target_folder: String``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_zip:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_zip>`

Saves ZIP archive and returns :ref:`Dictionary<class_Dictionary>` with the following keys: ``result: Error``, ``so_files: Array`` (array of the shared/static objects which contains dictionaries with the following keys: ``path: String``, ``tags: PackedStringArray``, and ``target_folder: String``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_zip_patch:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_zip_patch>`

Saves patch ZIP archive and returns :ref:`Dictionary<class_Dictionary>` with the following keys: ``result: Error``, ``so_files: Array`` (array of the shared/static objects which contains dictionaries with the following keys: ``path: String``, ``tags: PackedStringArray``, and ``target_folder: String``).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_push_to_remote:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **ssh_push_to_remote**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, scp_args\: :ref:`PackedStringArray<class_PackedStringArray>`, src_file\: :ref:`String<class_String>`, dst_file\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_push_to_remote>`

Uploads specified file over SCP protocol to the remote host.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_run_on_remote:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **ssh_run_on_remote**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_arg\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, output\: :ref:`Array<class_Array>` = [], port_fwd\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_run_on_remote>`

Executes specified command on the remote host via SSH protocol and returns command output in the ``output``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_run_on_remote_no_wait:

.. rst-class:: classref-method

:ref:`int<class_int>` **ssh_run_on_remote_no_wait**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_args\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, port_fwd\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_run_on_remote_no_wait>`

Executes specified command on the remote host via SSH protocol and returns process ID (on the remote host) without waiting for command to finish.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
