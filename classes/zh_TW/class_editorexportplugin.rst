:github_url: hide

.. _class_EditorExportPlugin:

EditorExportPlugin
==================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

在匯出專案時執行的腳本。

.. rst-class:: classref-introduction-group

說明
----

**EditorExportPlugin**\ s are automatically invoked whenever the user exports the project. They can be used to modify scenes and resources during project export based on what :doc:`Feature Tags <../tutorials/export/feature_tags>` are set. For each plugin, :ref:`_export_begin()<class_EditorExportPlugin_private_method__export_begin>` is called at the beginning of the export process and then :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>` is called for each exported file.

Register a **EditorExportPlugin** by creating a new :ref:`EditorPlugin<class_EditorPlugin>` and calling its :ref:`EditorPlugin.add_export_plugin()<class_EditorPlugin_method_add_export_plugin>` method.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`匯出 Android 外掛程式 <../tutorials/platform/android/android_plugin>`

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
   | |void|                                                           | :ref:`_end_generate_apple_embedded_project<class_EditorExportPlugin_private_method__end_generate_apple_embedded_project>`\ (\ path\: :ref:`String<class_String>`, will_build_archive\: :ref:`bool<class_bool>`\ ) |virtual|                                                        |
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

方法說明
--------

.. _class_EditorExportPlugin_private_method__begin_customize_resources:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_begin_customize_resources**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__begin_customize_resources>`

Return ``true`` if this plugin will customize resources based on the platform and features used.

When enabled, :ref:`_get_customization_configuration_hash()<class_EditorExportPlugin_private_method__get_customization_configuration_hash>` and :ref:`_customize_resource()<class_EditorExportPlugin_private_method__customize_resource>` will be called and must be implemented.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__begin_customize_scenes:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_begin_customize_scenes**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__begin_customize_scenes>`

Return ``true`` if this plugin will customize scenes based on the platform and features used.

When enabled, :ref:`_get_customization_configuration_hash()<class_EditorExportPlugin_private_method__get_customization_configuration_hash>` and :ref:`_customize_scene()<class_EditorExportPlugin_private_method__customize_scene>` will be called and must be implemented.

\ **Note:** :ref:`_customize_scene()<class_EditorExportPlugin_private_method__customize_scene>` will only be called for scenes that have been modified since the last export.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__customize_resource:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **_customize_resource**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorExportPlugin_private_method__customize_resource>`

Customize a resource. If changes are made to it, return the same or a new resource. Otherwise, return ``null``. When a new resource is returned, ``resource`` will be replaced by a copy of the new resource.

The ``path`` argument is only used when customizing an actual file, otherwise this means that this resource is part of another one and it will be empty.

Implementing this method is required if :ref:`_begin_customize_resources()<class_EditorExportPlugin_private_method__begin_customize_resources>` returns ``true``.

\ **Note:** When customizing any of the following types and returning another resource, the other resource should not be skipped using :ref:`skip()<class_EditorExportPlugin_method_skip>` in :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>`:

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

Customize a scene. If changes are made to it, return the same or a new scene. Otherwise, return ``null``. If a new scene is returned, it is up to you to dispose of the old one.

Implementing this method is required if :ref:`_begin_customize_scenes()<class_EditorExportPlugin_private_method__begin_customize_scenes>` returns ``true``.

\ **Note:** To change a variable in your scene, use the ``@export`` annotation when declaring it.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__end_customize_resources:

.. rst-class:: classref-method

|void| **_end_customize_resources**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__end_customize_resources>`

資源的自訂處理完成時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__end_customize_scenes:

.. rst-class:: classref-method

|void| **_end_customize_scenes**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__end_customize_scenes>`

場景的自訂處理完成時呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__end_generate_apple_embedded_project:

.. rst-class:: classref-method

|void| **_end_generate_apple_embedded_project**\ (\ path\: :ref:`String<class_String>`, will_build_archive\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__end_generate_apple_embedded_project>`

This is called after Xcode project generation, but before it is built.

\ **Note:** Only supported on iOS and visionOS.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__export_begin:

.. rst-class:: classref-method

|void| **_export_begin**\ (\ features\: :ref:`PackedStringArray<class_PackedStringArray>`, is_debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__export_begin>`

由使用者重寫的虛方法。它在匯出開始時呼叫，並提供有關匯出的所有資訊。\ ``features`` 是匯出的功能列表，\ ``is_debug`` 是 ``true`` 時用於除錯建構，\ ``path`` 是匯出專案的目標路徑。\ ``flags`` 僅在運作可運作設定檔時使用，例如在 Android 上使用本機運作時。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__export_end:

.. rst-class:: classref-method

|void| **_export_end**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__export_end>`

可以被使用者重寫的虛方法。在匯出完成後被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__export_file:

.. rst-class:: classref-method

|void| **_export_file**\ (\ path\: :ref:`String<class_String>`, type\: :ref:`String<class_String>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__export_file>`

Virtual method to be overridden by the user. Called for each exported file before :ref:`_customize_resource()<class_EditorExportPlugin_private_method__customize_resource>` and :ref:`_customize_scene()<class_EditorExportPlugin_private_method__customize_scene>`. The arguments can be used to identify the file. ``path`` is the path of the file, ``type`` is the :ref:`Resource<class_Resource>` represented by the file (e.g. :ref:`PackedScene<class_PackedScene>`), and ``features`` is the list of features for the export.

Calling :ref:`skip()<class_EditorExportPlugin_method_skip>` inside this callback will make the file not included in the export.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_android_dependencies**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_dependencies>`

由使用者重寫的虛擬方法。呼叫此方法是為了檢索此插件提供的Android 依賴項集。每個傳回的Android 依賴項應具有Android 遠端二進位依賴項的格式： ``org.godot.example:my-plugin:0.0.0``\ 

有關更多信息，請參閱 `有關依賴項的 Android 文件 <https://developer.android.com/build/dependency?agpversion=4.1#dependency-types>`__\ 。

\ **注意：** 僅在 Android 上受支援，並且需要啟用 :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_dependencies_maven_repos:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_android_dependencies_maven_repos**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_dependencies_maven_repos>`

由使用者重寫的虛擬方法。呼叫此方法是為了檢索此插件提供的 Android 依賴項集的 Maven 儲存庫的 URL。

有關更多信息，請參閱 `有關依賴管理的 Gradle 檔案 <https://docs.gradle.org/current/userguide/dependency_management.html#sec:maven_repo>`__\ 。

\ **注意：** Google 的 Maven 儲存庫和 Maven Central 儲存庫已預設包含在內。

\ **注意：** 僅在 Android 上受支援，並且需要啟用 :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_libraries:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_android_libraries**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_libraries>`

由使用者重寫的虛擬方法。呼叫此方法是為了檢索此外掛程式提供的 Android 庫存檔 (AAR) 檔案的本機路徑。

\ **注意：**\ 相對路徑\ **必須**\ 相對於Godot的\ ``res://addons/``\ 目錄。例如，位於 ``res://addons/hello_world_plugin/HelloWorld.release.aar`` 下的 AAR 檔案可以使用 ``res://addons/hello_world_plugin/HelloWorld.release 作為絕對路徑返回.aar`` 或使用\ ``hello_world_plugin/HelloWorld.release.aar`` 的相對路徑。

\ ** 注意：** 僅在 Android 上受支援，並且需要啟用 :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_manifest_activity_element_contents:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_android_manifest_activity_element_contents**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_manifest_activity_element_contents>`

由使用者重寫的虛擬方法。這在匯出時用於更新生成的 Android 列表中的 ``activity`` 元素的內容。

\ **注意：** 僅在 Android 上受支援，並且需要啟用 :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_manifest_application_element_contents:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_android_manifest_application_element_contents**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_manifest_application_element_contents>`

由使用者重寫的虛擬方法。這在匯出時用於更新生成的 Android 列表中的 ``application`` 元素的內容。

\ **注意：** 僅在 Android 上受支援，並且需要啟用 :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_manifest_element_contents:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_android_manifest_element_contents**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_manifest_element_contents>`

由使用者重寫的虛擬方法。這在匯出時用於更新生成的 Android 列表中的 ``manifest`` 元素的內容。

\ **注意：** 僅在 Android 上受支援，並且需要啟用 :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_customization_configuration_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_customization_configuration_hash**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_customization_configuration_hash>`

Return a hash based on the configuration passed (for both scenes and resources). This helps keep separate caches for separate export configurations.

Implementing this method is required if :ref:`_begin_customize_resources()<class_EditorExportPlugin_private_method__begin_customize_resources>` returns ``true``.

\ **Note:** :ref:`_customize_resource()<class_EditorExportPlugin_private_method__customize_resource>` and :ref:`_customize_scene()<class_EditorExportPlugin_private_method__customize_scene>` will not be called when the **EditorExportPlugin** script is modified unless this hash changes too.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_features:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_export_features**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_features>`

返回該預設對於給定的 ``platform``\ ，應該具有的附加功能的 :ref:`PackedStringArray<class_PackedStringArray>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_export_option_visibility**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_option_visibility>`

Validates ``option`` and returns the visibility for the specified ``platform``. The default implementation returns ``true`` for all options.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_option_warning:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_export_option_warning**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_option_warning>`

檢查給定 ``option`` 的要求，如果不滿足則傳回非空警告字串。

\ **注意：** 使用 :ref:`get_option()<class_EditorExportPlugin_method_get_option>` 檢查匯出選項的值。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_options:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_export_options**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_options>`

返回匯出選項列表，能夠用來配置這個匯出外掛程式。

返回值中的每個元素都是一個 :ref:`Dictionary<class_Dictionary>`\ ，包含如下欄位：

- ``option``\ ：字典，結構與 :ref:`Object.get_property_list()<class_Object_method_get_property_list>` 文件中的相同，但所有欄位都是可選的。

- ``default_value``\ ：該選項的預設值。

- ``update_visibility``\ ：可選的布林值。如果設為 ``true``\ ，則該選項發生變化時，預設會發出 :ref:`Object.property_list_changed<class_Object_signal_property_list_changed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_options_overrides:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_export_options_overrides**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_options_overrides>`

Return a :ref:`Dictionary<class_Dictionary>` of override values for export options, that will be used instead of user-provided values. Overridden options will be hidden from the user interface.

::

    class MyExportPlugin extends EditorExportPlugin:
        func _get_name() -> String:
            return "MyExportPlugin"

        func _supports_platform(platform) -> bool:
            if platform is EditorExportPlatformPC:
                # Run on all desktop platforms including Windows, MacOS and Linux.
                return true
            return false

        func _get_export_options_overrides(platform) -> Dictionary:
            # Override "Embed PCK" to always be enabled.
            return {
                "binary_format/embed_pck": true,
            }

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_name>`

返回該外掛程式的名稱識別字（供匯出器將來識別）。外掛程式在匯出前按名稱排序。

需要實作該方法。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__should_update_export_options:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_should_update_export_options**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__should_update_export_options>`

Return ``true`` if the result of :ref:`_get_export_options()<class_EditorExportPlugin_private_method__get_export_options>` has changed and the export options of the preset corresponding to ``platform`` should be updated.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__supports_platform:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_supports_platform**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__supports_platform>`

Return ``true`` if the plugin supports the given ``platform``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__update_android_prebuilt_manifest:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_update_android_prebuilt_manifest**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, manifest_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__update_android_prebuilt_manifest>`

Provide access to the Android prebuilt manifest and allows the plugin to modify it if needed.

Implementers of this virtual method should take the binary manifest data from ``manifest_data``, copy it, modify it, and then return it with the modifications.

If no modifications are needed, then an empty :ref:`PackedByteArray<class_PackedByteArray>` should be returned.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_bundle_file:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_bundle_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_bundle_file>`

Adds an Apple embedded platform bundle file from the given ``path`` to the exported project.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_cpp_code:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_cpp_code**\ (\ code\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_cpp_code>`

Adds C++ code to the Apple embedded platform export. The final code is created from the code appended by each active export plugin.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_embedded_framework:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_embedded_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_embedded_framework>`

Adds a dynamic library (\*.dylib, \*.framework) to the Linking Phase in the Apple embedded platform's Xcode project and embeds it into the resulting binary.

\ **Note:** For static libraries (\*.a), this works in the same way as :ref:`add_apple_embedded_platform_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>`.

\ **Note:** This method should not be used for System libraries as they are already present on the device.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_framework:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>`

Adds a static library (\*.a) or a dynamic library (\*.dylib, \*.framework) to the Linking Phase to the Apple embedded platform's Xcode project.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_linker_flags:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_linker_flags**\ (\ flags\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_linker_flags>`

Adds linker flags for the Apple embedded platform export.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_plist_content:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_plist_content**\ (\ plist_content\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_plist_content>`

Adds additional fields to the Apple embedded platform's project Info.plist file.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_project_static_lib:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_project_static_lib**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_project_static_lib>`

Adds a static library from the given ``path`` to the Apple embedded platform project.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_file:

.. rst-class:: classref-method

|void| **add_file**\ (\ path\: :ref:`String<class_String>`, file\: :ref:`PackedByteArray<class_PackedByteArray>`, remap\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_file>`

Adds a custom file to be exported. ``path`` is the virtual path that can be used to load the file, ``file`` is the binary data of the file.

When called inside :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>` and ``remap`` is ``true``, the current file will not be exported, but instead remapped to this custom file. ``remap`` is ignored when called in other places.

\ ``file`` will not be imported, so consider using :ref:`_customize_resource()<class_EditorExportPlugin_private_method__customize_resource>` to remap imported resources.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_bundle_file:

.. rst-class:: classref-method

|void| **add_ios_bundle_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_bundle_file>`

**已棄用：** Use :ref:`add_apple_embedded_platform_bundle_file()<class_EditorExportPlugin_method_add_apple_embedded_platform_bundle_file>` instead.

將給定的\ ``path``\ 中的iOS bundle檔新增到匯出的專案中。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_cpp_code:

.. rst-class:: classref-method

|void| **add_ios_cpp_code**\ (\ code\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_cpp_code>`

**已棄用：** Use :ref:`add_apple_embedded_platform_cpp_code()<class_EditorExportPlugin_method_add_apple_embedded_platform_cpp_code>` instead.

Adds C++ code to the iOS export. The final code is created from the code appended by each active export plugin.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_embedded_framework:

.. rst-class:: classref-method

|void| **add_ios_embedded_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_embedded_framework>`

**已棄用：** Use :ref:`add_apple_embedded_platform_embedded_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_embedded_framework>` instead.

Adds a dynamic library (\*.dylib, \*.framework) to Linking Phase in iOS's Xcode project and embeds it into resulting binary.

\ **Note:** For static libraries (\*.a), this works the in same way as :ref:`add_apple_embedded_platform_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>`.

\ **Note:** This method should not be used for System libraries as they are already present on the device.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_framework:

.. rst-class:: classref-method

|void| **add_ios_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_framework>`

**已棄用：** Use :ref:`add_apple_embedded_platform_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>` instead.

Adds a static library (\*.a) or a dynamic library (\*.dylib, \*.framework) to the Linking Phase to the iOS Xcode project.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_linker_flags:

.. rst-class:: classref-method

|void| **add_ios_linker_flags**\ (\ flags\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_linker_flags>`

**已棄用：** Use :ref:`add_apple_embedded_platform_linker_flags()<class_EditorExportPlugin_method_add_apple_embedded_platform_linker_flags>` instead.

為 iOS 匯出新增連結器旗標。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_plist_content:

.. rst-class:: classref-method

|void| **add_ios_plist_content**\ (\ plist_content\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_plist_content>`

**已棄用：** Use :ref:`add_apple_embedded_platform_plist_content()<class_EditorExportPlugin_method_add_apple_embedded_platform_plist_content>` instead.

Adds additional fields to the iOS project Info.plist file.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_project_static_lib:

.. rst-class:: classref-method

|void| **add_ios_project_static_lib**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_project_static_lib>`

**已棄用：** Use :ref:`add_apple_embedded_platform_project_static_lib()<class_EditorExportPlugin_method_add_apple_embedded_platform_project_static_lib>` instead.

Adds a static library from the given ``path`` to the iOS project.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_macos_plugin_file:

.. rst-class:: classref-method

|void| **add_macos_plugin_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_macos_plugin_file>`

將配對 ``path`` 的檔或目錄，新增到 macOS 套用套裝程式的 ``PlugIns`` 目錄中。

\ **注意：**\ 僅適用於 macOS 匯出。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_shared_object:

.. rst-class:: classref-method

|void| **add_shared_object**\ (\ path\: :ref:`String<class_String>`, tags\: :ref:`PackedStringArray<class_PackedStringArray>`, target\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_shared_object>`

新增一個共用物件或僅包含具有給定 ``tags`` 和目標 ``path`` 的共用物件的目錄。

\ **注意：**\ 使用 macOS 匯出時，這些共用物件將被新增到套用套裝程式的 ``Frameworks`` 目錄中。

如果使用的是目錄，如果將非程式碼物件放在該目錄中，則程式碼簽章時會報告有錯。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_get_export_platform:

.. rst-class:: classref-method

:ref:`EditorExportPlatform<class_EditorExportPlatform>` **get_export_platform**\ (\ ) |const| :ref:`🔗<class_EditorExportPlugin_method_get_export_platform>`

Returns currently used export platform.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_get_export_preset:

.. rst-class:: classref-method

:ref:`EditorExportPreset<class_EditorExportPreset>` **get_export_preset**\ (\ ) |const| :ref:`🔗<class_EditorExportPlugin_method_get_export_preset>`

Returns currently used export preset.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_get_option:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_option**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorExportPlugin_method_get_option>`

返回 :ref:`_get_export_options()<class_EditorExportPlugin_private_method__get_export_options>` 提供的匯出選項的目前值。

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_skip:

.. rst-class:: classref-method

|void| **skip**\ (\ ) :ref:`🔗<class_EditorExportPlugin_method_skip>`

To be called inside :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>`. Skips the current file, so it's not included in the export.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
