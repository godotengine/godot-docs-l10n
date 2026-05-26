:github_url: hide

.. _class_EditorExportPlatformExtension:

EditorExportPlatformExtension
=============================

**继承：** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

自定义 :ref:`EditorExportPlatform<class_EditorExportPlatform>` 实现（插件）的基类。

.. rst-class:: classref-introduction-group

描述
----

外部 :ref:`EditorExportPlatform<class_EditorExportPlatform>` 实现应当继承自该类。

要使用 :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ，请先使用 :ref:`EditorPlugin.add_export_platform()<class_EditorPlugin_method_add_export_platform>` 方法注册。

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

方法说明
--------

.. _class_EditorExportPlatformExtension_private_method__can_export:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_export**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__can_export>`

如果指定的 ``preset`` 有效且可以导出，则返回 ``true``\ 。使用 :ref:`set_config_error()<class_EditorExportPlatformExtension_method_set_config_error>` 和 :ref:`set_config_missing_templates()<class_EditorExportPlatformExtension_method_set_config_missing_templates>` 来设置错误细节。

通常的实现会调用 :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` 和 :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>` 来确定导出是否可行。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__cleanup:

.. rst-class:: classref-method

|void| **_cleanup**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__cleanup>`

注销平台前编辑器会调用该方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_pack>`

使用 ``preset`` 预设在 ``path`` 路径处创建 PCK 包。

在导出对话框中按下“导出 PCK/ZIP”按钮，禁用“导出为补丁”，并选择 PCK 作为文件类型时，将调用该方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_pack_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_pack_patch>`

使用 ``preset`` 预设在路径 ``path`` 处创建补丁 PCK 归档，包含自上次补丁以来发生更改的文件。

在导出对话框中按下“导出 PCK/ZIP”按钮，启用“导出为补丁”，并选择 PCK 作为文件类型时，将调用该方法。

\ **注意：**\ ``patches`` 中的补丁在调用该方法时已加载 ，仅作为上下文提供。为空时将加载导出预设中定义的补丁。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_project:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_project**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| |required| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_project>`

使用 ``preset`` 预设在 ``path`` 路径处创建完整的项目。

在导出对话框中按下“导出”按钮时，将调用该方法。

该方法的实现可以调用 :ref:`EditorExportPlatform.save_pack()<class_EditorExportPlatform_method_save_pack>` 或 :ref:`EditorExportPlatform.save_zip()<class_EditorExportPlatform_method_save_zip>` 来使用默认的 PCK/ZIP 导出过程，或者调用 :ref:`EditorExportPlatform.export_project_files()<class_EditorExportPlatform_method_export_project_files>` 并实现自定义回调来处理每个导出的文件。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_zip:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_zip>`

使用 ``preset`` 预设在 ``path`` 路径处创建 ZIP 归档。

在导出对话框中按下“导出 PCK/ZIP”按钮，禁用“导出为补丁”，并选择 ZIP 作为文件类型时，将调用该方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_zip_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_zip_patch>`

使用 ``preset`` 预设在 ``path`` 路径处创建 ZIP 归档，仅包含自上次补丁以来发生更改的文件。

在导出对话框中按下“导出 PCK/ZIP”按钮，启用“导出为补丁”，并选择 ZIP 作为文件类型时，将调用该方法。

\ **注意：**\ ``patches`` 中的补丁在调用该方法时已加载 ，仅作为上下文提供。为空时将加载导出预设中定义的补丁。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_binary_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_binary_extensions**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_binary_extensions>`

返回完整项目导出所支持的二进制文件扩展名数组。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_debug_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_debug_protocol**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_debug_protocol>`

返回用于远程调试的协议。默认实现返回 ``tcp://``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_device_architecture:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_device_architecture**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_device_architecture>`

返回一键部署的设备架构。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_export_option_visibility**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_option_visibility>`

验证 ``option`` 并返回指定 ``preset`` 的可见性。默认实现为所有选项都返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_option_warning:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_export_option_warning**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_option_warning>`

验证 ``option`` 并返回指定 ``preset`` 的警告消息。默认实现为所有选项都返回空字符串。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_options:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_export_options**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_options>`

返回属性列表，类型是元素为字典的 :ref:`Array<class_Array>`\ 。每个 :ref:`Dictionary<class_Dictionary>` 都必须至少包含 ``name: StringName`` 和 ``type: Variant.Type`` 两个条目。

另外还支持如下字段：

- ``hint: PropertyHint``\ 

- ``hint_string: String``\ 

- ``usage: PropertyUsageFlags``\ 

- ``class_name: StringName``\ 

- ``default_value: Variant``\ ，属性的默认值。

- ``update_visibility: bool``\ ，如果设为 ``true``\ ，则会在该属性发生更改时为每个属性都调用 :ref:`_get_export_option_visibility()<class_EditorExportPlatformExtension_private_method__get_export_option_visibility>`\ 。

- ``required: bool``\ ，如果设为 ``true``\ ，则该属性的警告是关键的，解决后才能够实现导出。该值是 :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` 实现的提示，引擎不直接使用。

另见 :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_logo:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_logo**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_logo>`

返回导出对话框中显示的平台徽标，该徽标应为 32×32 像素，并根据当前编辑器的缩放进行调整（见 :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_name>`

返回导出平台的名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_option_icon**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_icon>`

返回一键部署菜单中指定 ``device`` 设备的条目图标。该图标应为 16×16 像素，并根据当前编辑器的缩放进行调整（见 :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_option_label**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_label>`

返回 ``device`` 设备的一键部署菜单项标签。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_option_tooltip**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_tooltip>`

返回 ``device`` 设备的一键部署菜单项工具提示。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_options_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_options_count**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_options_count>`

返回一键部署菜单中可用的设备（或其他选项）的数量。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_options_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_options_tooltip**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_options_tooltip>`

返回一键部署菜单按钮的工具提示。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_os_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_os_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_os_name>`

返回目标操作系统的名称。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_platform_features:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_platform_features**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_platform_features>`

返回平台特定功能的数组。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_preset_features:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_preset_features**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_preset_features>`

返回 ``preset`` 预设对应的平台特定功能的数组。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_run_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_run_icon**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_run_icon>`

返回一键部署菜单按钮的图标。该图标应为 16×16 像素，并根据当前编辑器缩放进行调整（见 :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__has_valid_export_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_valid_export_configuration**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`

如果导出配置有效，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__has_valid_project_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_valid_project_configuration**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`

如果项目配置有效，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__initialize:

.. rst-class:: classref-method

|void| **_initialize**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__initialize>`

初始化插件。平台注册时由编辑器调用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__is_executable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_executable**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__is_executable>`

如果指定的文件是目标平台上的有效可执行文件（原生可执行文件或脚本），则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__poll_export:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_poll_export**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__poll_export>`

如果一键部署选项发生更改，编辑器界面需要更新，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__run:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_run**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, device\: :ref:`int<class_int>`, debug_flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__run>`

选择 ``device`` 一键部署菜单选项时调用该方法。

实现时应当将项目导出到临时位置，然后将其上传至 ``device`` 设备并运行，也可以执行与该菜单项相关的其他动作。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__should_update_export_options:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_should_update_export_options**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__should_update_export_options>`

如果导出选项列表发生了更改，应当更新预设，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_get_config_error:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_config_error**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_get_config_error>`

返回当前配置的错误消息文本。该方法只应在 :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`\ 、\ :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`\ 、\ :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>` 的实现中调用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_get_config_missing_templates:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_config_missing_templates**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_get_config_missing_templates>`

如果当前配置缺失导出模板，则返回 ``true``\ 。该方法只应在 :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`\ 、\ :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`\ 、\ :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>` 的实现中调用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_set_config_error:

.. rst-class:: classref-method

|void| **set_config_error**\ (\ error_text\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_set_config_error>`

设置当前配置的错误消息文本。该方法只应在 :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`\ 、\ :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`\ 、\ :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>` 的实现中调用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_set_config_missing_templates:

.. rst-class:: classref-method

|void| **set_config_missing_templates**\ (\ missing_templates\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_set_config_missing_templates>`

设为 ``true`` 表示当前配置缺失导出模板 。该方法只应在 :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`\ 、\ :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`\ 、\ :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>` 的实现中调用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
