:github_url: hide

.. _class_EditorExportPlatform:

EditorExportPlatform
====================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`EditorExportPlatformAndroid<class_EditorExportPlatformAndroid>`, :ref:`EditorExportPlatformAppleEmbedded<class_EditorExportPlatformAppleEmbedded>`, :ref:`EditorExportPlatformExtension<class_EditorExportPlatformExtension>`, :ref:`EditorExportPlatformMacOS<class_EditorExportPlatformMacOS>`, :ref:`EditorExportPlatformPC<class_EditorExportPlatformPC>`, :ref:`EditorExportPlatformWeb<class_EditorExportPlatformWeb>`

标识一个支持的导出平台，并在内部提供导出到该平台的功能。

.. rst-class:: classref-introduction-group

描述
----

基础资源，提供从编辑器将项目的发布构建导出到平台的功能。存储特定于平台的元数据，例如平台的名称和支持的功能，并执行项目、PCK 文件和 ZIP 文件的导出。使用在项目导出时提供的平台导出模板。

在 :ref:`EditorExportPlugin<class_EditorExportPlugin>` 的脚本中用于配置特定于平台的场景和资源的定制。有关详细信息，请参阅 :ref:`EditorExportPlugin._begin_customize_scenes()<class_EditorExportPlugin_private_method__begin_customize_scenes>` 和 :ref:`EditorExportPlugin._begin_customize_resources()<class_EditorExportPlugin_private_method__begin_customize_resources>`\ 。

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

枚举
----

.. _enum_EditorExportPlatform_ExportMessageType:

.. rst-class:: classref-enumeration

enum **ExportMessageType**: :ref:`🔗<enum_EditorExportPlatform_ExportMessageType>`

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_NONE** = ``0``

无效消息类型，是未指定类型时的默认值。

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_INFO:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_INFO** = ``1``

信息类消息的消息类型，对导出没有影响。

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_WARNING** = ``2``

警告类消息的消息类型，应当解决，但仍然允许完成导出。

.. _class_EditorExportPlatform_constant_EXPORT_MESSAGE_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **EXPORT_MESSAGE_ERROR** = ``3``

错误类消息的消息类型，必须解决，会让导出失败。

.. rst-class:: classref-item-separator

----

.. _enum_EditorExportPlatform_DebugFlags:

.. rst-class:: classref-enumeration

flags **DebugFlags**: :ref:`🔗<enum_EditorExportPlatform_DebugFlags>`

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_DUMB_CLIENT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_DUMB_CLIENT** = ``1``

如果希望远程调试的项目使用远程文件系统，则设置该标志。如果设置了该标志，则 :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` 会将 ``--remote-fs`` 和 ``--remote-fs-password``\ （如果定义了 :ref:`EditorSettings.filesystem/file_server/password<class_EditorSettings_property_filesystem/file_server/password>`\ ）命令行参数追加到返回的列表中。

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_REMOTE_DEBUG:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_REMOTE_DEBUG** = ``2``

如果启用了远程调试，则设置该标志。如果设置了该标志，则 :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` 会将 ``--remote-debug`` 和 ``--breakpoints``\ （如果脚本编辑器中选择了断点或插件添加了断点）命令行参数追加到返回的列表中。

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_REMOTE_DEBUG_LOCALHOST:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_REMOTE_DEBUG_LOCALHOST** = ``4``

如果远程调试的项目在本机运行，则设置该标志。如果设置了该标志，则 :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` 会使用 ``localhost`` 作为远程调试器主机，不使用 :ref:`EditorSettings.network/debug/remote_host<class_EditorSettings_property_network/debug/remote_host>`\ 。

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_VIEW_COLLISIONS:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_VIEW_COLLISIONS** = ``8``

如果启用了“显示碰撞形状”远程调试选项，则设置该标志。如果设置了该标志，则 :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` 会将 ``--debug-collisions`` 命令行参数追加到返回的列表中。

.. _class_EditorExportPlatform_constant_DEBUG_FLAG_VIEW_NAVIGATION:

.. rst-class:: classref-enumeration-constant

:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>` **DEBUG_FLAG_VIEW_NAVIGATION** = ``16``

如果启用了“显示导航”远程调试选项，则设置该标志。如果设置了该标志，则 :ref:`gen_export_flags()<class_EditorExportPlatform_method_gen_export_flags>` 会将 ``--debug-navigation`` 命令行参数追加到返回的列表中。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorExportPlatform_method_add_message:

.. rst-class:: classref-method

|void| **add_message**\ (\ type\: :ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>`, category\: :ref:`String<class_String>`, message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_add_message>`

在导出日志中添加一条消息，会在导出结束时显示。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_clear_messages:

.. rst-class:: classref-method

|void| **clear_messages**\ (\ ) :ref:`🔗<class_EditorExportPlatform_method_clear_messages>`

清空导出日志。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_create_preset:

.. rst-class:: classref-method

:ref:`EditorExportPreset<class_EditorExportPreset>` **create_preset**\ (\ ) :ref:`🔗<class_EditorExportPlatform_method_create_preset>`

新建该平台的预设。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_pack>`

使用 ``preset`` 预设在 ``path`` 路径处创建 PCK 包。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_pack_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_pack_patch>`

使用 ``preset`` 预设在 ``path`` 路径处创建 PCK 补丁包，只会包含相对于上一个补丁发生更改的文件。

\ **注意：**\ ``patches`` 是可选的，会覆盖导出预设中定义的补丁集。留空时会使用导出预设中定义的补丁。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_project:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_project**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0, notify\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_EditorExportPlatform_method_export_project>`

在指定的 ``path``\ （路径）下，为指定的 ``preset``\ （预设）创建一个完整的项目。如果 ``notify`` 为 ``true``\ ，则在此过程中会调用使用了 :ref:`EditorExportPlugin._export_begin()<class_EditorExportPlugin_private_method__export_begin>` 的插件。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_project_files:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_project_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, save_cb\: :ref:`Callable<class_Callable>`, shared_cb\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_EditorExportPlatform_method_export_project_files>`

使用指定的预设导出项目文件。该方法可以用来实现与 PCK 和 ZIP 不同的自定义导出格式。每个导出的文件都会调用一个回调。

\ ``save_cb`` 会针对所有导出的文件调用，参数为：\ ``file_path: String``\ 、\ ``file_data: PackedByteArray``\ 、\ ``file_index: int``\ 、\ ``file_count: int``\ 、\ ``encryption_include_filters: PackedStringArray``\ 、\ ``encryption_exclude_filters: PackedStringArray``\ 、\ ``encryption_key: PackedByteArray``\ 。

\ ``shared_cb`` 会针对导出的共享/静态库调用，参数为：\ ``file_path: String``\ 、\ ``tags: PackedStringArray``\ 、\ ``target_folder: String``\ 。

\ **注意：**\ ``file_index`` 和 ``file_count`` 仅供跟踪进度使用，不一定唯一，也不一定精确。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_zip:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_zip>`

使用 ``preset`` 预设在 ``path`` 路径处创建 ZIP 压缩包。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_export_zip_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **export_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>` = PackedStringArray(), flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\] = 0\ ) :ref:`🔗<class_EditorExportPlatform_method_export_zip_patch>`

使用 ``preset`` 预设在 ``path`` 路径处创建 ZIP 补丁压缩包，只会包含相对于上一个补丁发生更改的文件。

\ **注意：**\ ``patches`` 是可选的，会覆盖导出预设中定义的补丁集。留空时会使用导出预设中定义的补丁。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_find_export_template:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **find_export_template**\ (\ template_file_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_find_export_template>`

定位该平台的导出模板，返回带有以下字段的 :ref:`Dictionary<class_Dictionary>`\ ：路径 ``path: String`` 和错误 ``error: String``\ 。该方法旨在方便使用，自定义导出平台不必使用，也不必和官方模板一样存储导出模板。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_gen_export_flags:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **gen_export_flags**\ (\ flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) :ref:`🔗<class_EditorExportPlatform_method_gen_export_flags>`

生成命令行参数数组，适用于使用调试标志和编辑器设置的默认导出模板。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_current_presets:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_current_presets**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_current_presets>`

返回该平台的 :ref:`EditorExportPreset<class_EditorExportPreset>` 数组。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_forced_export_files:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_forced_export_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>` = null\ ) |static| :ref:`🔗<class_EditorExportPlatform_method_get_forced_export_files>`

返回核心文件名数组，这些文件无论预设配置如何都应该导出。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_internal_export_files:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_internal_export_files**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorExportPlatform_method_get_internal_export_files>`

返回无论预设如何配置都应当额外导出的文件，这些文件不在项目源文件中。返回的 :ref:`Dictionary<class_Dictionary>` 使用文件名作为键（\ :ref:`String<class_String>`\ ），值为对应的原始数据（\ :ref:`PackedByteArray<class_PackedByteArray>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_category:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_message_category**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_category>`

返回给定 ``index`` 的消息的消息类别。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_message_count**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_count>`

返回导出日志中的消息数。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_message_text**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_text>`

返回给定 ``index`` 的消息文本。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_message_type:

.. rst-class:: classref-method

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **get_message_type**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_message_type>`

返回具有给定 ``index`` 的消息的类型。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_os_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_os_name**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_os_name>`

以友好字符串的形式，返回由该 **EditorExportPlatform** 类处理的导出操作系统的名称。可能的返回值为 ``Windows``\ 、\ ``Linux``\ 、\ ``macOS``\ 、\ ``Android``\ 、\ ``iOS`` 和 ``Web``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_get_worst_message_type:

.. rst-class:: classref-method

:ref:`ExportMessageType<enum_EditorExportPlatform_ExportMessageType>` **get_worst_message_type**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_get_worst_message_type>`

返回导出日志中目前存在的最严重的消息类型。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_pack:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, embed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorExportPlatform_method_save_pack>`

保存 PCK 归档并返回 :ref:`Dictionary<class_Dictionary>`\ ，包含以下字段：\ ``result: Error``\ 、\ ``so_files: Array``\ （包含字典的共享/静态对象数组，字典中包含以下字段：\ ``path: String``\ 、\ ``tags: PackedStringArray``\ 、\ ``target_folder: String``\ ）。

如果 ``embed`` 为 ``true``\ ，则 PCK 中的内容会追加到 ``path`` 文件的末尾，返回的 :ref:`Dictionary<class_Dictionary>` 中额外包含以下字段：\ ``embedded_start: int``\ （嵌入 PCK 的偏移量）和 ``embedded_size: int``\ （嵌入 PCK 的大小）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_pack_patch:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_pack_patch>`

保存补丁 PCK 归档并返回 :ref:`Dictionary<class_Dictionary>`\ ，包含以下字段：\ ``result: Error``\ 、\ ``so_files: Array``\ （包含字典的共享/静态对象数组，字典中包含以下字段：\ ``path: String``\ 、\ ``tags: PackedStringArray``\ 、\ ``target_folder: String``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_zip:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_zip>`

保存 ZIP 归档并返回 :ref:`Dictionary<class_Dictionary>`\ ，包含以下字段：\ ``result: Error``\ 、\ ``so_files: Array``\ （包含字典的共享/静态对象数组，字典中包含以下字段：\ ``path: String``\ 、\ ``tags: PackedStringArray``\ 、\ ``target_folder: String``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_save_zip_patch:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **save_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlatform_method_save_zip_patch>`

保存补丁 ZIP 归档并返回 :ref:`Dictionary<class_Dictionary>`\ ，包含以下字段：\ ``result: Error``\ 、\ ``so_files: Array``\ （包含字典的共享/静态对象数组，字典中包含以下字段：\ ``path: String``\ 、\ ``tags: PackedStringArray``\ 、\ ``target_folder: String``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_push_to_remote:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **ssh_push_to_remote**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, scp_args\: :ref:`PackedStringArray<class_PackedStringArray>`, src_file\: :ref:`String<class_String>`, dst_file\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_push_to_remote>`

将指定的文件通过 SCP 协议上传至远程主机。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_run_on_remote:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **ssh_run_on_remote**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_arg\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, output\: :ref:`Array<class_Array>` = [], port_fwd\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_run_on_remote>`

通过 SSH 协议在远程主机上执行指定的命令，在 ``output`` 中返回命令的输出。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatform_method_ssh_run_on_remote_no_wait:

.. rst-class:: classref-method

:ref:`int<class_int>` **ssh_run_on_remote_no_wait**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`String<class_String>`, ssh_args\: :ref:`PackedStringArray<class_PackedStringArray>`, cmd_args\: :ref:`String<class_String>`, port_fwd\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_EditorExportPlatform_method_ssh_run_on_remote_no_wait>`

通过 SSH 协议在远程主机上执行指定的命令，返回（远程主机上的）进程 ID，无需等待命令完成。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
