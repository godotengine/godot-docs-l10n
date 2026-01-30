:github_url: hide

.. _class_EditorExportPlugin:

EditorExportPlugin
==================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在导出项目时执行的脚本。

.. rst-class:: classref-introduction-group

描述
----

**EditorExportPlugin** 会在用户导出项目时自动调用。它们最常见的用途是确定哪些文件应该包含在导出的项目中。对于每个插件，导出过程开始时都会调用 :ref:`_export_begin()<class_EditorExportPlugin_private_method__export_begin>`\ ，然后会为每一个导出的文件调用 :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>`\ 。

要使用 **EditorExportPlugin**\ ，请先用 :ref:`EditorPlugin.add_export_plugin()<class_EditorPlugin_method_add_export_plugin>` 注册。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`导出 Android 插件 <../tutorials/platform/android/android_plugin>`

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_begin_customize_resources<class_EditorExportPlugin_private_method__begin_customize_resources>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| |const|                    |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_begin_customize_scenes<class_EditorExportPlugin_private_method__begin_customize_scenes>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| |const|                          |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                                  | :ref:`_customize_resource<class_EditorExportPlugin_private_method__customize_resource>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                 |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                          | :ref:`_customize_scene<class_EditorExportPlugin_private_method__customize_scene>`\ (\ scene\: :ref:`Node<class_Node>`, path\: :ref:`String<class_String>`\ ) |virtual| |required|                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_end_customize_resources<class_EditorExportPlugin_private_method__end_customize_resources>`\ (\ ) |virtual|                                                                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_end_customize_scenes<class_EditorExportPlugin_private_method__end_customize_scenes>`\ (\ ) |virtual|                                                                                                                                                                        |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_export_begin<class_EditorExportPlugin_private_method__export_begin>`\ (\ features\: :ref:`PackedStringArray<class_PackedStringArray>`, is_debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual|                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_export_end<class_EditorExportPlugin_private_method__export_end>`\ (\ ) |virtual|                                                                                                                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_export_file<class_EditorExportPlugin_private_method__export_file>`\ (\ path\: :ref:`String<class_String>`, type\: :ref:`String<class_String>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual|                                                    |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_android_dependencies<class_EditorExportPlugin_private_method__get_android_dependencies>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                   |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_android_dependencies_maven_repos<class_EditorExportPlugin_private_method__get_android_dependencies_maven_repos>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const|                           |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_android_libraries<class_EditorExportPlugin_private_method__get_android_libraries>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                         |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_android_manifest_activity_element_contents<class_EditorExportPlugin_private_method__get_android_manifest_activity_element_contents>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const|       |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_android_manifest_application_element_contents<class_EditorExportPlugin_private_method__get_android_manifest_application_element_contents>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_android_manifest_element_contents<class_EditorExportPlugin_private_method__get_android_manifest_element_contents>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const|                         |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_customization_configuration_hash<class_EditorExportPlugin_private_method__get_customization_configuration_hash>`\ (\ ) |virtual| |required| |const|                                                                                                                     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_export_features<class_EditorExportPlugin_private_method__get_export_features>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                             |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_get_export_option_visibility<class_EditorExportPlugin_private_method__get_export_option_visibility>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                      |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_export_option_warning<class_EditorExportPlugin_private_method__get_export_option_warning>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_export_options<class_EditorExportPlugin_private_method__get_export_options>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const|                                                                                                |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`_get_export_options_overrides<class_EditorExportPlugin_private_method__get_export_options_overrides>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const|                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_name<class_EditorExportPlugin_private_method__get_name>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                             |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_should_update_export_options<class_EditorExportPlugin_private_method__should_update_export_options>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const|                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_supports_platform<class_EditorExportPlugin_private_method__supports_platform>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const|                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`                    | :ref:`_update_android_prebuilt_manifest<class_EditorExportPlugin_private_method__update_android_prebuilt_manifest>`\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, manifest_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |virtual| |const|     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_apple_embedded_platform_bundle_file<class_EditorExportPlugin_method_add_apple_embedded_platform_bundle_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                  |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_apple_embedded_platform_cpp_code<class_EditorExportPlugin_method_add_apple_embedded_platform_cpp_code>`\ (\ code\: :ref:`String<class_String>`\ )                                                                                                                        |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_apple_embedded_platform_embedded_framework<class_EditorExportPlugin_method_add_apple_embedded_platform_embedded_framework>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                    |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_apple_embedded_platform_framework<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                      |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_apple_embedded_platform_linker_flags<class_EditorExportPlugin_method_add_apple_embedded_platform_linker_flags>`\ (\ flags\: :ref:`String<class_String>`\ )                                                                                                               |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_apple_embedded_platform_plist_content<class_EditorExportPlugin_method_add_apple_embedded_platform_plist_content>`\ (\ plist_content\: :ref:`String<class_String>`\ )                                                                                                     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_apple_embedded_platform_project_static_lib<class_EditorExportPlugin_method_add_apple_embedded_platform_project_static_lib>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                    |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_file<class_EditorExportPlugin_method_add_file>`\ (\ path\: :ref:`String<class_String>`, file\: :ref:`PackedByteArray<class_PackedByteArray>`, remap\: :ref:`bool<class_bool>`\ )                                                                                         |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_ios_bundle_file<class_EditorExportPlugin_method_add_ios_bundle_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                          |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_ios_cpp_code<class_EditorExportPlugin_method_add_ios_cpp_code>`\ (\ code\: :ref:`String<class_String>`\ )                                                                                                                                                                |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_ios_embedded_framework<class_EditorExportPlugin_method_add_ios_embedded_framework>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_ios_framework<class_EditorExportPlugin_method_add_ios_framework>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                              |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_ios_linker_flags<class_EditorExportPlugin_method_add_ios_linker_flags>`\ (\ flags\: :ref:`String<class_String>`\ )                                                                                                                                                       |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_ios_plist_content<class_EditorExportPlugin_method_add_ios_plist_content>`\ (\ plist_content\: :ref:`String<class_String>`\ )                                                                                                                                             |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_ios_project_static_lib<class_EditorExportPlugin_method_add_ios_project_static_lib>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_macos_plugin_file<class_EditorExportPlugin_method_add_macos_plugin_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                      |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_shared_object<class_EditorExportPlugin_method_add_shared_object>`\ (\ path\: :ref:`String<class_String>`, tags\: :ref:`PackedStringArray<class_PackedStringArray>`, target\: :ref:`String<class_String>`\ )                                                              |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorExportPlatform<class_EditorExportPlatform>`          | :ref:`get_export_platform<class_EditorExportPlugin_method_get_export_platform>`\ (\ ) |const|                                                                                                                                                                                      |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorExportPreset<class_EditorExportPreset>`              | :ref:`get_export_preset<class_EditorExportPlugin_method_get_export_preset>`\ (\ ) |const|                                                                                                                                                                                          |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_option<class_EditorExportPlugin_method_get_option>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`skip<class_EditorExportPlugin_method_skip>`\ (\ )                                                                                                                                                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_EditorExportPlugin_private_method__begin_customize_resources:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_begin_customize_resources**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__begin_customize_resources>`

如果该插件将根据所使用的平台和功能自定义资源，则返回 ``true``\ 。

启用后，\ :ref:`_get_customization_configuration_hash()<class_EditorExportPlugin_private_method__get_customization_configuration_hash>` 和 :ref:`_customize_resource()<class_EditorExportPlugin_private_method__customize_resource>` 将被调用并且必须被实现。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__begin_customize_scenes:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_begin_customize_scenes**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__begin_customize_scenes>`

如果该插件将根据所使用的平台和功能自定义场景，则返回 ``true``\ 。

启用后，\ :ref:`_get_customization_configuration_hash()<class_EditorExportPlugin_private_method__get_customization_configuration_hash>` 和 :ref:`_customize_scene()<class_EditorExportPlugin_private_method__customize_scene>` 将被调用并且必须被实现。

\ **注意：**\ 只会为上一次导出后发生修改的场景调用 :ref:`_customize_scene()<class_EditorExportPlugin_private_method__customize_scene>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__customize_resource:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **_customize_resource**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorExportPlugin_private_method__customize_resource>`

对资源进行自定义。如果进行了修改，请返回相同的或新的资源，否则请返回 ``null`` 。如果返回的是新资源，则会使用新资源的副本替换 ``resource``\ 。

\ ``path`` 参数只在自定义实际文件时使用，否则这个资源是另一个资源的一部分，该参数为空。

如果 :ref:`_begin_customize_resources()<class_EditorExportPlugin_private_method__begin_customize_resources>` 返回 ``true``\ ，则需要实现该方法。

\ **注意：**\ 自定义以下类型并返回不同资源时，不应在 :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>` 中使用 :ref:`skip()<class_EditorExportPlugin_method_skip>` 跳过返回的资源：

- :ref:`AtlasTexture<class_AtlasTexture>`\ 

- :ref:`CompressedCubemap<class_CompressedCubemap>`\ 

- :ref:`CompressedCubemapArray<class_CompressedCubemapArray>`\ 

- :ref:`CompressedTexture2D<class_CompressedTexture2D>`\ 

- :ref:`CompressedTexture2DArray<class_CompressedTexture2DArray>`\ 

- :ref:`CompressedTexture3D<class_CompressedTexture3D>`

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__customize_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **_customize_scene**\ (\ scene\: :ref:`Node<class_Node>`, path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorExportPlugin_private_method__customize_scene>`

定制一个场景。如果对其进行了修改，则返回相同的或新的场景。否则，返回 ``null`` 。如果返回一个新的场景，则由你来处理旧的场景。

如果 :ref:`_begin_customize_scenes()<class_EditorExportPlugin_private_method__begin_customize_scenes>` 返回 ``true``\ ，则需要实现该方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__end_customize_resources:

.. rst-class:: classref-method

|void| **_end_customize_resources**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__end_customize_resources>`

资源的自定义处理完成时调用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__end_customize_scenes:

.. rst-class:: classref-method

|void| **_end_customize_scenes**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__end_customize_scenes>`

场景的自定义处理完成时调用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__export_begin:

.. rst-class:: classref-method

|void| **_export_begin**\ (\ features\: :ref:`PackedStringArray<class_PackedStringArray>`, is_debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__export_begin>`

由用户重写的虚方法。它在导出开始时调用，并提供有关导出的所有信息。\ ``features`` 是导出的特性列表，\ ``is_debug`` 是 ``true`` 时用于调试构建，\ ``path`` 是导出项目的目标路径。\ ``flags`` 仅在运行可运行配置文件时使用，例如在 Android 上使用本机运行时。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__export_end:

.. rst-class:: classref-method

|void| **_export_end**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__export_end>`

可以被用户重写的虚方法。在导出完成后被调用。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__export_file:

.. rst-class:: classref-method

|void| **_export_file**\ (\ path\: :ref:`String<class_String>`, type\: :ref:`String<class_String>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__export_file>`

用户要重写的虚方法。在 :ref:`_customize_resource()<class_EditorExportPlugin_private_method__customize_resource>` 和 :ref:`_customize_scene()<class_EditorExportPlugin_private_method__customize_scene>` 之前为每个导出的文件调用。参数可用于识别文件。\ ``path`` 是文件的路径，\ ``type`` 是文件所代表的 :ref:`Resource<class_Resource>`\ （例如 :ref:`PackedScene<class_PackedScene>`\ ），\ ``features`` 是导出的特性列表。

在该回调中调用 :ref:`skip()<class_EditorExportPlugin_method_skip>` 将使文件不包含在导出中。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_android_dependencies**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_dependencies>`

由用户覆盖的虚方法。调用该函数是为了检索该插件提供的 Android 依赖项集。每个返回的 Android 依赖项应具有 Android 远程二进制依赖项的格式：\ ``org.godot.example:my-plugin:0.0.0``\ 

有关详细信息，请参阅 `有关依赖项的 Android 文档 <https://developer.android.com/build/dependencies?agpversion=4.1#dependency-types>`__\ 。

\ **注意：**\ 仅在 Android 上受支持，并且需要启用 :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_dependencies_maven_repos:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_android_dependencies_maven_repos**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_dependencies_maven_repos>`

由用户覆盖的虚方法。调用该函数是为了检索该插件提供的 Android 依赖项集的 Maven 存储库的 URL。

有关更多信息，请参阅 `有关依赖管理的 Gradle 文档 <https://docs.gradle.org/current/userguide/dependency_management.html#sec:maven_repo>`__\ 。

\ **注意：**\ Google 的 Maven 存储库和 Maven Central 存储库默认已包含在内。

\ **注意：**\ 仅在 Android 上受支持，并且需要启用 :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_libraries:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_android_libraries**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_libraries>`

由用户覆盖的虚方法。调用该函数是为了检索该插件提供的 Android 库存档（AAR）文件的本地路径。

\ **注意：**\ 相对路径\ **必须**\ 相对于 Godot 的 ``res://addons/`` 目录。例如，位于 ``res://addons/hello_world_plugin/HelloWorld.release.aar`` 下的 AAR 文件，可以使用 ``res://addons/hello_world_plugin/HelloWorld.release.aar`` 作为绝对路径，或使用 ``hello_world_plugin/HelloWorld.release.aar`` 作为相对路径返回。

\ **注意：**\ 仅在 Android 上受支持，并且需要启用 :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_manifest_activity_element_contents:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_android_manifest_activity_element_contents**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_manifest_activity_element_contents>`

由用户覆盖的虚方法。这在导出时用于更新生成的 Android 清单中的 ``activity`` 元素的内容。

\ **注意：**\ 仅在 Android 上受支持，并且需要启用 :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_manifest_application_element_contents:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_android_manifest_application_element_contents**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_manifest_application_element_contents>`

由用户覆盖的虚方法。这在导出时用于更新生成的 Android 清单中的 ``application`` 元素的内容。

\ **注意：**\ 仅在 Android 上受支持，并且需要启用 :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_manifest_element_contents:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_android_manifest_element_contents**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_manifest_element_contents>`

由用户覆盖的虚方法。这在导出时用于更新生成的 Android 清单中的 ``manifest`` 元素的内容。

\ **注意：**\ 仅在 Android 上受支持，并且需要启用 :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_customization_configuration_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_customization_configuration_hash**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_customization_configuration_hash>`

根据传入的配置返回一个哈希值（对于场景和资源）。这有助于为单独的导出配置保留单独的缓存。

如果 :ref:`_begin_customize_resources()<class_EditorExportPlugin_private_method__begin_customize_resources>` 返回 ``true``\ ，则需要实现该方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_features:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_export_features**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_features>`

返回该预设对于给定的 ``platform``\ ，应该具有的附加功能的 :ref:`PackedStringArray<class_PackedStringArray>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_export_option_visibility**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_option_visibility>`

验证 ``option`` 并返回 ``platform`` 平台是否可见。默认实现会为所有选项都返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_option_warning:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_export_option_warning**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_option_warning>`

检查给定 ``option`` 的要求，如果不满足则返回非空警告字符串。

\ **注意：**\ 使用 :ref:`get_option()<class_EditorExportPlugin_method_get_option>` 检查导出选项的值。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_options:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_export_options**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_options>`

返回导出选项列表，能够用来配置这个导出插件。

返回值中的每个元素都是一个 :ref:`Dictionary<class_Dictionary>`\ ，包含如下字段：

- ``option``\ ：字典，结构与 :ref:`Object.get_property_list()<class_Object_method_get_property_list>` 文档中的相同，但所有字段都是可选的。

- ``default_value``\ ：该选项的默认值。

- ``update_visibility``\ ：可选的布尔值。如果设为 ``true``\ ，则该选项发生变化时，预设会发出 :ref:`Object.property_list_changed<class_Object_signal_property_list_changed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_options_overrides:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_export_options_overrides**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_options_overrides>`

返回导出选项的覆盖值的 :ref:`Dictionary<class_Dictionary>`\ ，将使用该值代替用户提供的值。覆盖的选项将从用户界面中隐藏。

::

    class MyExportPlugin extends EditorExportPlugin:
        func _get_name() -> String:
            return "MyExportPlugin"

        func _supports_platform(platform) -> bool:
            if platform is EditorExportPlatformPC:
                # 可在所有桌面平台上运行，包括 Windows、MacOS 和 Linux。
                return true
            return false

        func _get_export_options_overrides(platform) -> Dictionary:
            # 覆盖“嵌入 PCK”以始终启用。
            return {
                "binary_format/embed_pck": true,
            }

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_name>`

返回该插件的名称标识符（供导出器将来识别）。插件在导出前按名称排序。

需要实现该方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__should_update_export_options:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_should_update_export_options**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__should_update_export_options>`

如果 :ref:`_get_export_options()<class_EditorExportPlugin_private_method__get_export_options>` 的结果发生了改变，且与 ``platform`` 对应的导出预设的选项需要更新，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__supports_platform:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_supports_platform**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__supports_platform>`

如果插件支持给定的 ``platform``\ ，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__update_android_prebuilt_manifest:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_update_android_prebuilt_manifest**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, manifest_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__update_android_prebuilt_manifest>`

提供对 Android 预构建清单文件的访问，允许插件在需要时对其进行修改。

该虚方法的实现者应该从 ``manifest_data`` 中获取二进制清单数据，对其进行复制、修改等操作，然后返回修改后的内容。

如果不需要修改，则应返回一个空的 :ref:`PackedByteArray<class_PackedByteArray>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_bundle_file:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_bundle_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_bundle_file>`

将路径为 ``path`` 的 Apple 嵌入式平台捆绑包文件添加到导出的项目中。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_cpp_code:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_cpp_code**\ (\ code\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_cpp_code>`

将 C++ 代码添加到 Apple 嵌入式平台导出中。最终代码是根据各个活动导出插件附加的代码创建的。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_embedded_framework:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_embedded_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_embedded_framework>`

将动态库（\*.dylib、\*.framework）添加到 Apple 嵌入式平台的 Xcode 项目的链接阶段，并将其嵌入到生成的二进制文件中。

\ **注意：**\ 对于静态库（\*.a），该方法的工作方式与 :ref:`add_apple_embedded_platform_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>` 相同。

\ **注意：**\ 此方法不该用于系统库，因为它们已经存在于设备上。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_framework:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>`

在 Apple 嵌入式平台的 Xcode 项目中链接阶段添加静态库（\*.a）或动态库（\*.dylib、\*.framework）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_linker_flags:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_linker_flags**\ (\ flags\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_linker_flags>`

为 Apple 嵌入式平台导出添加链接器标志。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_plist_content:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_plist_content**\ (\ plist_content\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_plist_content>`

向 Apple 嵌入式平台项目的 Info.plist 文件中添加额外的字段。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_project_static_lib:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_project_static_lib**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_project_static_lib>`

向 Apple 嵌入式平台项目中添加路径为 ``path`` 的静态库。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_file:

.. rst-class:: classref-method

|void| **add_file**\ (\ path\: :ref:`String<class_String>`, file\: :ref:`PackedByteArray<class_PackedByteArray>`, remap\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_file>`

添加一个要导出的自定义文件。\ ``path`` 是可以用来加载该文件的虚拟路径，\ ``file`` 是该文件的二进制数据。

在 :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>` 中调用时，如果 ``remap`` 为 ``true``\ ，则当前文件将不会被导出，而是被重新映射到这个自定义文件。在其他地方调用时会忽略 ``remap``\ 。

\ ``file`` 将不会被导入，因此请考虑使用 :ref:`_customize_resource()<class_EditorExportPlugin_private_method__customize_resource>` 来重新映射导入的资源。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_bundle_file:

.. rst-class:: classref-method

|void| **add_ios_bundle_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_bundle_file>`

**已弃用：** Use :ref:`add_apple_embedded_platform_bundle_file()<class_EditorExportPlugin_method_add_apple_embedded_platform_bundle_file>` instead.

将给定的\ ``path``\ 中的iOS bundle文件添加到导出的项目中。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_cpp_code:

.. rst-class:: classref-method

|void| **add_ios_cpp_code**\ (\ code\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_cpp_code>`

**已弃用：** Use :ref:`add_apple_embedded_platform_cpp_code()<class_EditorExportPlugin_method_add_apple_embedded_platform_cpp_code>` instead.

将 C++ 代码添加到 iOS 导出中。最终的代码是根据各个激活的导出插件附加的代码创建的。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_embedded_framework:

.. rst-class:: classref-method

|void| **add_ios_embedded_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_embedded_framework>`

**已弃用：** Use :ref:`add_apple_embedded_platform_embedded_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_embedded_framework>` instead.

将动态库（\*.dylib、\*.framework）添加到 iOS 的 Xcode 项目的链接阶段，并将其嵌入到生成的二进制文件中。

\ **注意：**\ 对于静态库（\*.a），该方法的工作方式与 :ref:`add_apple_embedded_platform_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>` 相同。

\ **注意：**\ 该方法不该用于系统库，因为它们已经存在于设备上。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_framework:

.. rst-class:: classref-method

|void| **add_ios_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_framework>`

**已弃用：** Use :ref:`add_apple_embedded_platform_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>` instead.

在 iOS 的 Xcode 项目中链接阶段添加静态库（\*.a）或动态库（\*.dylib、\*.framework）。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_linker_flags:

.. rst-class:: classref-method

|void| **add_ios_linker_flags**\ (\ flags\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_linker_flags>`

**已弃用：** Use :ref:`add_apple_embedded_platform_linker_flags()<class_EditorExportPlugin_method_add_apple_embedded_platform_linker_flags>` instead.

为 iOS 导出添加链接器标志。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_plist_content:

.. rst-class:: classref-method

|void| **add_ios_plist_content**\ (\ plist_content\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_plist_content>`

**已弃用：** Use :ref:`add_apple_embedded_platform_plist_content()<class_EditorExportPlugin_method_add_apple_embedded_platform_plist_content>` instead.

向 iOS 项目的 Info.plist 文件中添加额外字段。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_project_static_lib:

.. rst-class:: classref-method

|void| **add_ios_project_static_lib**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_project_static_lib>`

**已弃用：** Use :ref:`add_apple_embedded_platform_project_static_lib()<class_EditorExportPlugin_method_add_apple_embedded_platform_project_static_lib>` instead.

向 iOS 项目中添加路径为 ``path`` 的静态库。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_macos_plugin_file:

.. rst-class:: classref-method

|void| **add_macos_plugin_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_macos_plugin_file>`

将匹配 ``path`` 的文件或目录，添加到 macOS 应用程序包的 ``PlugIns`` 目录中。

\ **注意：**\ 仅适用于 macOS 导出。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_shared_object:

.. rst-class:: classref-method

|void| **add_shared_object**\ (\ path\: :ref:`String<class_String>`, tags\: :ref:`PackedStringArray<class_PackedStringArray>`, target\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_shared_object>`

添加一个共享对象或仅包含具有给定 ``tags`` 和目标 ``path`` 的共享对象的目录。

\ **注意：**\ 使用 macOS 导出时，这些共享对象将被添加到应用程序包的 ``Frameworks`` 目录中。

如果使用的是目录，如果将非代码对象放在该目录中，则代码签名时会报错。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_get_export_platform:

.. rst-class:: classref-method

:ref:`EditorExportPlatform<class_EditorExportPlatform>` **get_export_platform**\ (\ ) |const| :ref:`🔗<class_EditorExportPlugin_method_get_export_platform>`

返回当前使用的导出平台。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_get_export_preset:

.. rst-class:: classref-method

:ref:`EditorExportPreset<class_EditorExportPreset>` **get_export_preset**\ (\ ) |const| :ref:`🔗<class_EditorExportPlugin_method_get_export_preset>`

返回当前使用的导出预设。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_get_option:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_option**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorExportPlugin_method_get_option>`

返回 :ref:`_get_export_options()<class_EditorExportPlugin_private_method__get_export_options>` 提供的导出选项的当前值。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_skip:

.. rst-class:: classref-method

|void| **skip**\ (\ ) :ref:`🔗<class_EditorExportPlugin_method_skip>`

在 :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>` 中调用。跳过当前文件，因此它不包含在导出中。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
