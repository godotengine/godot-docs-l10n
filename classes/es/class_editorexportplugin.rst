:github_url: hide

.. _class_EditorExportPlugin:

EditorExportPlugin
==================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un script que se ejecuta al exportar el proyecto.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los **EditorExportPlugin**\ s se invocan automáticamente cada vez que el usuario exporta el proyecto. Su uso más común es determinar qué archivos se incluyen en el proyecto exportado. Para cada plugin, se llama a :ref:`_export_begin()<class_EditorExportPlugin_private_method__export_begin>` al comienzo del proceso de exportación y luego se llama a :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>` para cada archivo exportado.

Para usar **EditorExportPlugin**, regístralo primero usando el método :ref:`EditorPlugin.add_export_plugin()<class_EditorPlugin_method_add_export_plugin>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Exportar plugins de Android <../tutorials/platform/android/android_plugin>`

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_EditorExportPlugin_private_method__begin_customize_resources:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_begin_customize_resources**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__begin_customize_resources>`

Devuelve ``true`` si este plugin personalizará los recursos basándose en la plataforma y las características usadas.

Cuando está habilitado, se llamará a :ref:`_get_customization_configuration_hash()<class_EditorExportPlugin_private_method__get_customization_configuration_hash>` y :ref:`_customize_resource()<class_EditorExportPlugin_private_method__customize_resource>` y deben ser implementados.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__begin_customize_scenes:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_begin_customize_scenes**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__begin_customize_scenes>`

Devuelve ``true`` si este plugin personalizará las escenas basándose en la plataforma y las características usadas.

Cuando está habilitado, se llamará a :ref:`_get_customization_configuration_hash()<class_EditorExportPlugin_private_method__get_customization_configuration_hash>` y :ref:`_customize_scene()<class_EditorExportPlugin_private_method__customize_scene>` y deben ser implementados.

\ **Nota:** Se llamará a :ref:`_customize_scene()<class_EditorExportPlugin_private_method__customize_scene>` solo para las escenas que han sido modificadas desde la última exportación.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__customize_resource:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **_customize_resource**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorExportPlugin_private_method__customize_resource>`

Personaliza un recurso. Si se le hacen cambios, devuelve el mismo o un nuevo recurso. De lo contrario, devuelve ``null``. Cuando se devuelve un nuevo recurso, ``resource`` será reemplazado por una copia del nuevo recurso.

El argumento ``path`` solo se usa al personalizar un archivo real, de lo contrario esto significa que este recurso es parte de otro y estará vacío.

Es obligatorio implementar este método si :ref:`_begin_customize_resources()<class_EditorExportPlugin_private_method__begin_customize_resources>` devuelve ``true``.

\ **Nota:** Al personalizar cualquiera de los siguientes tipos y devolver otro recurso, el otro recurso no debe omitirse usando :ref:`skip()<class_EditorExportPlugin_method_skip>` en :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>`:

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

Personaliza una escena. Si se realizan cambios, devuelve la misma escena o una nueva. De lo contrario, devuelve ``null``. Si se devuelve una nueva escena, depende de ti desechar la antigua.

Es necesario implementar este método si :ref:`_begin_customize_scenes()<class_EditorExportPlugin_private_method__begin_customize_scenes>` devuelve ``true``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__end_customize_resources:

.. rst-class:: classref-method

|void| **_end_customize_resources**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__end_customize_resources>`

Se llama a esto cuando termina el proceso de personalización de los recursos.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__end_customize_scenes:

.. rst-class:: classref-method

|void| **_end_customize_scenes**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__end_customize_scenes>`

Se llama a esto cuando termina el proceso de personalización de las escenas.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__export_begin:

.. rst-class:: classref-method

|void| **_export_begin**\ (\ features\: :ref:`PackedStringArray<class_PackedStringArray>`, is_debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__export_begin>`

Método virtual para ser redefinido por el usuario. Se llama cuando comienza la exportación y proporciona toda la información sobre la exportación. ``features`` es la lista de características para la exportación, ``is_debug`` es ``true`` para las compilaciones de depuración, ``path`` es la ruta de destino para el proyecto exportado. ``flags`` solo se usa cuando se ejecuta un perfil ejecutable, por ejemplo, cuando se usa la ejecución nativa en Android.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__export_end:

.. rst-class:: classref-method

|void| **_export_end**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__export_end>`

Método virtual que debe ser sobrescrito por el usuario. Llamado cuando la exportación esté terminada.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__export_file:

.. rst-class:: classref-method

|void| **_export_file**\ (\ path\: :ref:`String<class_String>`, type\: :ref:`String<class_String>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__export_file>`

Método virtual que debe ser sobrescrito por el usuario. Se llama para cada archivo exportado antes de :ref:`_customize_resource()<class_EditorExportPlugin_private_method__customize_resource>` y :ref:`_customize_scene()<class_EditorExportPlugin_private_method__customize_scene>`. Los argumentos se pueden usar para identificar el archivo. ``path`` es la ruta del archivo, ``type`` es el :ref:`Resource<class_Resource>` representado por el archivo (por ejemplo, :ref:`PackedScene<class_PackedScene>`), y ``features`` es la lista de características para la exportación.

Llamar a :ref:`skip()<class_EditorExportPlugin_method_skip>` dentro de esta función de retorno de llamada hará que el archivo no se incluya en la exportación.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_android_dependencies**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_dependencies>`

Método virtual a ser sobrescrito por el usuario. Se llama para obtener el conjunto de dependencias de Android proporcionadas por este plugin. Cada dependencia de Android devuelta debe tener el formato de una dependencia binaria remota de Android: ``org.godot.example:my-plugin:0.0.0``\ 

Para más información, véase la `documentación de Android sobre dependencias <https://developer.android.com/build/dependencies?agpversion=4.1#dependency-types>`__.

\ **Nota:** Solo es compatible con Android y requiere que :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` esté habilitado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_dependencies_maven_repos:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_android_dependencies_maven_repos**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_dependencies_maven_repos>`

Método virtual a ser sobrescrito por el usuario. Se llama para obtener las URLs de los repositorios Maven para el conjunto de dependencias de Android proporcionadas por este plugin.

Para más información, véase la `documentación de Gradle sobre gestión de dependencias <https://docs.gradle.org/current/userguide/dependency_management.html#sec:maven_repo>`__.

\ **Nota:** El repositorio Maven de Google y el repositorio Maven Central ya están incluidos por defecto.

\ **Nota:** Solo es compatible con Android y requiere que :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` esté habilitado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_libraries:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_android_libraries**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_libraries>`

Método virtual a ser sobrescrito por el usuario. Se llama para obtener las rutas locales de los archivos de archivo de bibliotecas de Android (AAR) proporcionados por este plugin.

\ **Nota:** Las rutas relativas **deben** ser relativas al directorio ``res://addons/`` de Godot. Por ejemplo, un archivo AAR ubicado en ``res://addons/hello_world_plugin/HelloWorld.release.aar`` se puede devolver como una ruta absoluta usando ``res://addons/hello_world_plugin/HelloWorld.release.aar`` o una ruta relativa usando ``hello_world_plugin/HelloWorld.release.aar``.

\ **Nota:** Solo es compatible con Android y requiere que :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` esté habilitado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_manifest_activity_element_contents:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_android_manifest_activity_element_contents**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_manifest_activity_element_contents>`

Método virtual a ser sobrescrito por el usuario. Se utiliza en tiempo de exportación para actualizar el contenido del elemento ``activity`` en el manifiesto de Android generado.

\ **Nota:** Solo es compatible con Android y requiere que :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` esté habilitado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_manifest_application_element_contents:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_android_manifest_application_element_contents**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_manifest_application_element_contents>`

Método virtual a ser sobrescrito por el usuario. Se utiliza en tiempo de exportación para actualizar el contenido del elemento ``application`` en el manifiesto de Android generado.

\ **Nota:** Solo es compatible con Android y requiere que :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` esté habilitado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_manifest_element_contents:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_android_manifest_element_contents**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_manifest_element_contents>`

Método virtual a ser sobrescrito por el usuario. Se utiliza en tiempo de exportación para actualizar el contenido del elemento ``manifest`` en el manifiesto de Android generado.

\ **Nota:** Solo es compatible con Android y requiere que :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` esté habilitado.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_customization_configuration_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_customization_configuration_hash**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_customization_configuration_hash>`

Devuelve un hash basado en la configuración pasada (tanto para escenas como para recursos). Esto ayuda a mantener cachés separadas para configuraciones de exportación separadas.

Implementar este método es necesario si :ref:`_begin_customize_resources()<class_EditorExportPlugin_private_method__begin_customize_resources>` devuelve ``true``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_features:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_export_features**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_features>`

Devuelve un :ref:`PackedStringArray<class_PackedStringArray>` de características adicionales que este ajuste preestablecido, para la ``platform`` dada, debería tener.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_export_option_visibility**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_option_visibility>`

Valida ``option`` y devuelve la visibilidad para la ``platform`` especificada. La implementación predeterminada devuelve ``true`` para todas las opciones.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_option_warning:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_export_option_warning**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_option_warning>`

Verifica los requisitos para la ``option`` dada y devuelve una string de advertencia no vacía si no se cumplen.

\ **Nota:** Utiliza :ref:`get_option()<class_EditorExportPlugin_method_get_option>` para verificar el valor de las opciones de exportación.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_options:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_export_options**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_options>`

Return a list of export options that can be configured for this export plugin.

Each element in the return value is a :ref:`Dictionary<class_Dictionary>` with the following keys:

- ``option``: A dictionary with the structure documented by :ref:`Object.get_property_list()<class_Object_method_get_property_list>`, but all keys are optional.

- ``default_value``: The default value for this option.

- ``update_visibility``: An optional boolean value. If set to ``true``, the preset will emit :ref:`Object.property_list_changed<class_Object_signal_property_list_changed>` when the option is changed.

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

Return the name identifier of this plugin (for future identification by the exporter). The plugins are sorted by name before exporting.

Implementing this method is required.

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

**Obsoleto:** Use :ref:`add_apple_embedded_platform_bundle_file()<class_EditorExportPlugin_method_add_apple_embedded_platform_bundle_file>` instead.

Adds an iOS bundle file from the given ``path`` to the exported project.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_cpp_code:

.. rst-class:: classref-method

|void| **add_ios_cpp_code**\ (\ code\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_cpp_code>`

**Obsoleto:** Use :ref:`add_apple_embedded_platform_cpp_code()<class_EditorExportPlugin_method_add_apple_embedded_platform_cpp_code>` instead.

Adds C++ code to the iOS export. The final code is created from the code appended by each active export plugin.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_embedded_framework:

.. rst-class:: classref-method

|void| **add_ios_embedded_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_embedded_framework>`

**Obsoleto:** Use :ref:`add_apple_embedded_platform_embedded_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_embedded_framework>` instead.

Adds a dynamic library (\*.dylib, \*.framework) to Linking Phase in iOS's Xcode project and embeds it into resulting binary.

\ **Note:** For static libraries (\*.a), this works the in same way as :ref:`add_apple_embedded_platform_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>`.

\ **Note:** This method should not be used for System libraries as they are already present on the device.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_framework:

.. rst-class:: classref-method

|void| **add_ios_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_framework>`

**Obsoleto:** Use :ref:`add_apple_embedded_platform_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>` instead.

Adds a static library (\*.a) or a dynamic library (\*.dylib, \*.framework) to the Linking Phase to the iOS Xcode project.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_linker_flags:

.. rst-class:: classref-method

|void| **add_ios_linker_flags**\ (\ flags\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_linker_flags>`

**Obsoleto:** Use :ref:`add_apple_embedded_platform_linker_flags()<class_EditorExportPlugin_method_add_apple_embedded_platform_linker_flags>` instead.

Adds linker flags for the iOS export.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_plist_content:

.. rst-class:: classref-method

|void| **add_ios_plist_content**\ (\ plist_content\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_plist_content>`

**Obsoleto:** Use :ref:`add_apple_embedded_platform_plist_content()<class_EditorExportPlugin_method_add_apple_embedded_platform_plist_content>` instead.

Adds additional fields to the iOS project Info.plist file.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_project_static_lib:

.. rst-class:: classref-method

|void| **add_ios_project_static_lib**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_project_static_lib>`

**Obsoleto:** Use :ref:`add_apple_embedded_platform_project_static_lib()<class_EditorExportPlugin_method_add_apple_embedded_platform_project_static_lib>` instead.

Adds a static library from the given ``path`` to the iOS project.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_macos_plugin_file:

.. rst-class:: classref-method

|void| **add_macos_plugin_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_macos_plugin_file>`

Adds file or directory matching ``path`` to ``PlugIns`` directory of macOS app bundle.

\ **Note:** This is useful only for macOS exports.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_shared_object:

.. rst-class:: classref-method

|void| **add_shared_object**\ (\ path\: :ref:`String<class_String>`, tags\: :ref:`PackedStringArray<class_PackedStringArray>`, target\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_shared_object>`

Adds a shared object or a directory containing only shared objects with the given ``tags`` and destination ``path``.

\ **Note:** In case of macOS exports, those shared objects will be added to ``Frameworks`` directory of app bundle.

In case of a directory code-sign will error if you place non code object in directory.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_get_export_platform:

.. rst-class:: classref-method

:ref:`EditorExportPlatform<class_EditorExportPlatform>` **get_export_platform**\ (\ ) |const| :ref:`🔗<class_EditorExportPlugin_method_get_export_platform>`

Devuelve la plataforma de exportación utilizada actualmente.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_get_export_preset:

.. rst-class:: classref-method

:ref:`EditorExportPreset<class_EditorExportPreset>` **get_export_preset**\ (\ ) |const| :ref:`🔗<class_EditorExportPlugin_method_get_export_preset>`

Devuelve el ajuste preestablecido de exportación utilizado actualmente.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_get_option:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_option**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorExportPlugin_method_get_option>`

Returns the current value of an export option supplied by :ref:`_get_export_options()<class_EditorExportPlugin_private_method__get_export_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_skip:

.. rst-class:: classref-method

|void| **skip**\ (\ ) :ref:`🔗<class_EditorExportPlugin_method_skip>`

To be called inside :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>`. Skips the current file, so it's not included in the export.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
