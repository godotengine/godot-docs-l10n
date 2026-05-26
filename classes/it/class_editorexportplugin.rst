:github_url: hide

.. _class_EditorExportPlugin:

EditorExportPlugin
==================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Uno script che viene eseguito all'esportazione del progetto.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**EditorExportPlugin**\ s are automatically invoked whenever the user exports the project. They can be used to modify scenes and resources during project export based on what :doc:`Feature Tags <../tutorials/export/feature_tags>` are set. For each plugin, :ref:`_export_begin()<class_EditorExportPlugin_private_method__export_begin>` is called at the beginning of the export process and then :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>` is called for each exported file.

Register a **EditorExportPlugin** by creating a new :ref:`EditorPlugin<class_EditorPlugin>` and calling its :ref:`EditorPlugin.add_export_plugin()<class_EditorPlugin_method_add_export_plugin>` method.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Estensioni di esportazione Android <../tutorials/platform/android/android_plugin>`

.. rst-class:: classref-reftable-group

Metodi
------------

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

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorExportPlugin_private_method__begin_customize_resources:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_begin_customize_resources**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__begin_customize_resources>`

Restituisci ``true`` se questo plugin personalizzerà le risorse in base alla piattaforma e alle funzionalità utilizzate.

Se abilitato, :ref:`_get_customization_configuration_hash()<class_EditorExportPlugin_private_method__get_customization_configuration_hash>` e :ref:`_customize_resource()<class_EditorExportPlugin_private_method__customize_resource>` saranno chiamati e dovranno essere implementati.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__begin_customize_scenes:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_begin_customize_scenes**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__begin_customize_scenes>`

Restituisci ``true`` se questa estensione personalizzerà le scene in base alla piattaforma e alle funzionalità utilizzate.

Se abilitato, :ref:`_get_customization_configuration_hash()<class_EditorExportPlugin_private_method__get_customization_configuration_hash>` e :ref:`_customize_scene()<class_EditorExportPlugin_private_method__customize_scene>` verranno chiamati e dovranno essere implementati.

\ **Nota:** :ref:`_customize_scene()<class_EditorExportPlugin_private_method__customize_scene>` verrà chiamato solo per le scene che sono state modificate dall'ultima esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__customize_resource:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **_customize_resource**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |required| :ref:`🔗<class_EditorExportPlugin_private_method__customize_resource>`

Personalizza una risorsa. Se vengono apportate modifiche, restituisci la stessa risorsa o una nuova. Altrimenti, restituisci ``null``. Quando viene restituita una nuova risorsa, ``resource`` verrà sostituito da una copia della nuova risorsa.

L'argomento ``path`` viene utilizzato solo quando si personalizza un file effettivo, altrimenti significa che questa risorsa fa parte di un altro file e sarà vuoto.

L'implementazione di questo metodo è obbligatoria se :ref:`_begin_customize_resources()<class_EditorExportPlugin_private_method__begin_customize_resources>` restituisce ``true``.

\ **Nota:** Quando si personalizza uno dei seguenti tipi e si restituisce un'altra risorsa, l'altra risorsa non dovrebbe essere saltata tramite :ref:`skip()<class_EditorExportPlugin_method_skip>` in :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>`:

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

Questo viene chiamato quando termina il processo di personalizzazione delle risorse.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__end_customize_scenes:

.. rst-class:: classref-method

|void| **_end_customize_scenes**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__end_customize_scenes>`

Questo viene chiamato quando termina il processo di personalizzazione delle scene.

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

Metodo virtuale che deve essere sovrascritto dall'utente. Viene chiamato quando comincia l'esportazione e fornisce tutte le informazioni sull'esportazione. ``features`` è la lista di funzionalità per l'esportazione, ``is_debug`` è ``true`` per le build di debug, ``path`` è il percorso di destinazione per il progetto esportato. ``flags`` viene utilizzato solo quando si esegue un profilo eseguibile, ad esempio quando si usa l'esecuzione nativa su Android.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__export_end:

.. rst-class:: classref-method

|void| **_export_end**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__export_end>`

Metodo virtuale che può essere sovrascritto dall'utente. Chiamato quando l'esportazione è completata.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__export_file:

.. rst-class:: classref-method

|void| **_export_file**\ (\ path\: :ref:`String<class_String>`, type\: :ref:`String<class_String>`, features\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_EditorExportPlugin_private_method__export_file>`

Metodo virtuale che può essere sovrascritto dall'utente. Chiamato per ogni file esportato prima di :ref:`_customize_resource()<class_EditorExportPlugin_private_method__customize_resource>` e :ref:`_customize_scene()<class_EditorExportPlugin_private_method__customize_scene>`. Gli argomenti possono essere usati per identificare il file. ``path`` è il percorso del file, ``type`` è la :ref:`Resource<class_Resource>` rappresentata dal file (ad esempio :ref:`PackedScene<class_PackedScene>`) e ``features`` è la lista di funzionalità per l'esportazione

La chiamata di :ref:`skip()<class_EditorExportPlugin_method_skip>` all'interno di questo callback impedirà al file di essere incluso nell'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_android_dependencies**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_dependencies>`

Metodo virtuale che può essere sovrascritto dall'utente. Viene chiamato per recuperare l'insieme di dipendenze Android fornito da questo plugin. Ogni dipendenza Android restituita dovrebbe avere il formato di una dipendenza binaria remota d'Android: ``org.godot.example:my-plugin:0.0.0``\ 

Per maggiori informazioni, consulta la `documentazione Android sulle dipendenze <https://developer.android.com/build/dependencies?agpversion=4.1#dependency-types>`__.

\ **Nota:** Supportato solo su Android e richiede che :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` sia abilitato.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_dependencies_maven_repos:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_android_dependencies_maven_repos**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_dependencies_maven_repos>`

Metodo virtuale che può essere sovrascritto dall'utente. Viene chiamato per recuperare gli URL dei repository Maven per l'insieme di dipendenze Android fornito da questa estensione.

Per maggiori informazioni, consulta la `documentazione Gradle sulla gestione delle dipendenze <https://docs.gradle.org/current/userguide/dependency_management.html#sec:maven_repo>`__.

\ **Nota:** Il repository Maven di Google e il repository Maven Central sono già inclusi come predefinito.

\ **Nota:** Supportato solo su Android e richiede che :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` sia abilitato.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_libraries:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_android_libraries**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_libraries>`

Metodo virtuale che può essere sovrascritto dall'utente. Viene chiamato per recuperare i percorsi locali dei file di archivio delle librerie Android (AAR) forniti da questa estensione.

\ **Nota:** I percorsi relativi **devono** essere relativi alla cartella ``res://addons/`` di Godot. Ad esempio, un file AAR situato in ``res://addons/hello_world_plugin/HelloWorld.release.aar`` può essere restituito come percorso assoluto usando ``res://addons/hello_world_plugin/HelloWorld.release.aar`` o come percorso relativo usando ``hello_world_plugin/HelloWorld.release.aar``.

\ **Nota:** Supportato solo su Android e richiede che :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` sia abilitato.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_manifest_activity_element_contents:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_android_manifest_activity_element_contents**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_manifest_activity_element_contents>`

Metodo virtuale che può essere sovrascritto dall'utente. Viene utilizzato nell'esportazione per aggiornare il contenuto dell'elemento ``activity`` nel manifesto Android generato.

\ **Nota:** Supportato solo su Android e richiede che :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` sia abilitato.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_manifest_application_element_contents:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_android_manifest_application_element_contents**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_manifest_application_element_contents>`

Metodo virtuale che può essere sovrascritto dall'utente. Viene utilizzato nell'esportazione per aggiornare il contenuto dell'elemento ``application`` nel manifesto Android generato.

\ **Nota:** Supportato solo su Android e richiede che :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` sia abilitato.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_android_manifest_element_contents:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_android_manifest_element_contents**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_android_manifest_element_contents>`

Metodo virtuale che può essere sovrascritto dall'utente. Viene utilizzato nell'esportazione per aggiornare il contenuto dell'elemento ``manifest`` nel manifesto Android generato.

\ **Nota:** Supportato solo su Android e richiede che :ref:`EditorExportPlatformAndroid.gradle_build/use_gradle_build<class_EditorExportPlatformAndroid_property_gradle_build/use_gradle_build>` sia abilitato.

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

Restituisce un :ref:`PackedStringArray<class_PackedStringArray>` di funzionalità aggiuntive che questa preimpostazione, per la piattaforma ``platform`` specificata, dovrebbe avere.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_export_option_visibility**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_option_visibility>`

Convalida l'opzione ``option`` e restituisce la visibilità per la piattaforma ``platform``. L'implementazione predefinita restituisce ``true`` per tutte le opzioni.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_option_warning:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_export_option_warning**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_option_warning>`

Controlla i requisiti per l'opzione ``option`` specificata e restituisci una stringa di avviso non vuota se non sono soddisfatti.

\ **Nota:** Usa :ref:`get_option()<class_EditorExportPlugin_method_get_option>` per controllare il valore delle opzioni di esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_options:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_export_options**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_options>`

Restituisce una lista di opzioni di esportazione che è possibile configurare per questo plugin di esportazione.

Ogni elemento nel valore restituito è un :ref:`Dictionary<class_Dictionary>` con le seguenti chiavi:

- ``option``: un dizionario con la struttura documentata da :ref:`Object.get_property_list()<class_Object_method_get_property_list>`, ma tutte le chiavi sono facoltative.

- ``default_value``: il valore predefinito per questa opzione.

- ``update_visibility``: un valore booleano facoltativo. Se impostato su ``true``, la preimpostazione emetterà :ref:`Object.property_list_changed<class_Object_signal_property_list_changed>` quando l'opzione viene modificata.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_export_options_overrides:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_export_options_overrides**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_export_options_overrides>`

Restituisce un :ref:`Dictionary<class_Dictionary>` di valori di sostituzione per le opzioni di esportazione, che saranno utilizzati al posto dei valori forniti dall'utente. Le opzioni di sostituzione saranno nascoste dall'interfaccia utente.

::

    class MyExportPlugin extends EditorExportPlugin:
        func _get_name() -> String:
            return "MyExportPlugin"

        func _supports_platform(platform) -> bool:
            if platform is EditorExportPlatformPC:
                # Esegui su tutte le piattaforme desktop, inclusi Windows, MacOS e Linux.
                return true
            return false

        func _get_export_options_overrides(platform) -> Dictionary:
            # Sostituisci "Incorpora PCK" per renderlo sempre abilitato.
            return {
                "binary_format/embed_pck": true,
            }

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlugin_private_method__get_name>`

Restituisce l'identificativo nome di questo plugin (per l'identificazione futura dall'esportatore). Le estensioni sono ordinate per nome prima dell'esportazione.

L'implementazione di questo metodo è obbligatoria.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__should_update_export_options:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_should_update_export_options**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__should_update_export_options>`

Restituisce ``true``, se il risultato di :ref:`_get_export_options()<class_EditorExportPlugin_private_method__get_export_options>` è cambiato ed è necessario aggiornare le opzioni di esportazione della preimpostazione corrispondente alla piattaforma ``platform``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__supports_platform:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_supports_platform**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__supports_platform>`

Restituisce ``true`` se l'estensione supporta la piattaforma ``platform``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_private_method__update_android_prebuilt_manifest:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **_update_android_prebuilt_manifest**\ (\ platform\: :ref:`EditorExportPlatform<class_EditorExportPlatform>`, manifest_data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlugin_private_method__update_android_prebuilt_manifest>`

Fornire l'accesso al manifest predefinito di Android e consentire al plugin di modificarlo se necessario.

Gli implementatori di questo metodo virtuale devono prendere i dati dell'eseguibile manifest da ``manifest_data``, copiarli, modificarli e quindi restituirli con le modifiche.

Se non sono necessarie modifiche, deve essere restituito un :ref:`PackedByteArray<class_PackedByteArray>` vuoto.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_bundle_file:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_bundle_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_bundle_file>`

Aggiunge un file pacchetto di Apple embedded platform dal percorso ``path`` al progetto esportato.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_cpp_code:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_cpp_code**\ (\ code\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_cpp_code>`

Aggiunge codice C++ all'esportazione di Apple embedded platform. Il codice finale viene creato dal codice aggiunto da ogni estensione attiva di esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_embedded_framework:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_embedded_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_embedded_framework>`

Aggiunge una libreria dinamica (\*.dylib, \*.framework) al Linking Phase nel progetto Xcode di Apple embedded platform e la incorpora nel binario risultante.

\ **Nota:** Per le librerie statiche (\*.a) funziona allo stesso modo di :ref:`add_apple_embedded_platform_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>`.

\ **Nota:** Questo metodo non si dovrebbe utilizzare per le librerie di sistema poiché sono già presenti sul dispositivo.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_framework:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>`

Aggiunge una libreria statica (\*.a) o dinamica (\*.dylib, \*.framework) al Linking Phase nel progetto Xcode di Apple embedded platform.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_linker_flags:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_linker_flags**\ (\ flags\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_linker_flags>`

Aggiunge flag al linker per l'esportazione di Apple embedded platform.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_plist_content:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_plist_content**\ (\ plist_content\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_plist_content>`

Aggiunge campi aggiuntivi al file Info.plist del progetto per Apple embedded platform.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_apple_embedded_platform_project_static_lib:

.. rst-class:: classref-method

|void| **add_apple_embedded_platform_project_static_lib**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_apple_embedded_platform_project_static_lib>`

Aggiunge una libreria statica dal percorso ``path`` al progetto di Apple embedded platform.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_file:

.. rst-class:: classref-method

|void| **add_file**\ (\ path\: :ref:`String<class_String>`, file\: :ref:`PackedByteArray<class_PackedByteArray>`, remap\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_file>`

Aggiunge un file personalizzato da esportare. ``path`` è il percorso virtuale che può essere utilizzato per caricare il file, ``file`` sono i dati binari del file.

Quando viene chiamato all'interno di :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>` e ``remap`` è ``true``, il file attuale non verrà esportato, ma verrà invece rimappato in questo file personalizzato. ``remap`` viene ignorato quando viene chiamato in altri posti.

\ ``file`` non verrà importato, quindi considera di usare :ref:`_customize_resource()<class_EditorExportPlugin_private_method__customize_resource>` per rimappare le risorse importate.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_bundle_file:

.. rst-class:: classref-method

|void| **add_ios_bundle_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_bundle_file>`

**Deprecato:** Use :ref:`add_apple_embedded_platform_bundle_file()<class_EditorExportPlugin_method_add_apple_embedded_platform_bundle_file>` instead.

Aggiunge un file bundle iOS dal percorso ``path`` al progetto esportato.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_cpp_code:

.. rst-class:: classref-method

|void| **add_ios_cpp_code**\ (\ code\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_cpp_code>`

**Deprecato:** Use :ref:`add_apple_embedded_platform_cpp_code()<class_EditorExportPlugin_method_add_apple_embedded_platform_cpp_code>` instead.

Aggiunge codice C++ all'esportazione iOS. Il codice finale viene creato dal codice aggiunto da ogni estensione attiva di esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_embedded_framework:

.. rst-class:: classref-method

|void| **add_ios_embedded_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_embedded_framework>`

**Deprecato:** Use :ref:`add_apple_embedded_platform_embedded_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_embedded_framework>` instead.

Aggiunge una libreria dinamica (\*.dylib, \*.framework) al Linking Phase nel progetto Xcode di iOS e la incorpora nel binario risultante.

\ **Nota:** Per le librerie statiche (\*.a) funziona allo stesso modo di :ref:`add_apple_embedded_platform_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>`.

\ **Nota:** Questo metodo non si dovrebbe utilizzare per le librerie di sistema poiché sono già presenti sul dispositivo.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_framework:

.. rst-class:: classref-method

|void| **add_ios_framework**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_framework>`

**Deprecato:** Use :ref:`add_apple_embedded_platform_framework()<class_EditorExportPlugin_method_add_apple_embedded_platform_framework>` instead.

Aggiunge una libreria statica (\*.a) o dinamica (\*.dylib, \*.framework) al Linking Phase nel progetto Xcode di iOS.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_linker_flags:

.. rst-class:: classref-method

|void| **add_ios_linker_flags**\ (\ flags\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_linker_flags>`

**Deprecato:** Use :ref:`add_apple_embedded_platform_linker_flags()<class_EditorExportPlugin_method_add_apple_embedded_platform_linker_flags>` instead.

Aggiunge flag al linker per l'esportazione iOS.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_plist_content:

.. rst-class:: classref-method

|void| **add_ios_plist_content**\ (\ plist_content\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_plist_content>`

**Deprecato:** Use :ref:`add_apple_embedded_platform_plist_content()<class_EditorExportPlugin_method_add_apple_embedded_platform_plist_content>` instead.

Aggiunge campi aggiuntivi al file Info.plist del progetto per iOS.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_ios_project_static_lib:

.. rst-class:: classref-method

|void| **add_ios_project_static_lib**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_ios_project_static_lib>`

**Deprecato:** Use :ref:`add_apple_embedded_platform_project_static_lib()<class_EditorExportPlugin_method_add_apple_embedded_platform_project_static_lib>` instead.

Aggiunge una libreria statica dal percorso ``path`` al progetto iOS.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_macos_plugin_file:

.. rst-class:: classref-method

|void| **add_macos_plugin_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_macos_plugin_file>`

Aggiunge il file o la cartella corrispondente al percorso ``path`` alla cartella ``PlugIns`` del bundle dell'app per macOS.

\ **Nota:** Questo è utile solo per le esportazioni su macOS.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_add_shared_object:

.. rst-class:: classref-method

|void| **add_shared_object**\ (\ path\: :ref:`String<class_String>`, tags\: :ref:`PackedStringArray<class_PackedStringArray>`, target\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPlugin_method_add_shared_object>`

Aggiunge un oggetto condiviso o una cartella contenente solo oggetti condivisi con i ``tags`` e il percorso di destinazione ``path`` specificati.

\ **Nota:** In caso di esportazioni su macOS, quegli oggetti condivisi verranno aggiunti alla cartella ``Frameworks`` del bundle dell'app.

In caso di cartella, code-sign genererà un errore se si inserisce un oggetto non di codice nella cartella.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_get_export_platform:

.. rst-class:: classref-method

:ref:`EditorExportPlatform<class_EditorExportPlatform>` **get_export_platform**\ (\ ) |const| :ref:`🔗<class_EditorExportPlugin_method_get_export_platform>`

Restituisce la piattaforma d'esportazione attualmente utilizzata.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_get_export_preset:

.. rst-class:: classref-method

:ref:`EditorExportPreset<class_EditorExportPreset>` **get_export_preset**\ (\ ) |const| :ref:`🔗<class_EditorExportPlugin_method_get_export_preset>`

Restituisce la preimpostazione d'esportazione attualmente utilizzata.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_get_option:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_option**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorExportPlugin_method_get_option>`

Restituisce il valore attuale di un'opzione di esportazione fornita da :ref:`_get_export_options()<class_EditorExportPlugin_private_method__get_export_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlugin_method_skip:

.. rst-class:: classref-method

|void| **skip**\ (\ ) :ref:`🔗<class_EditorExportPlugin_method_skip>`

Da chiamare all'interno di :ref:`_export_file()<class_EditorExportPlugin_private_method__export_file>`. Salta il file attuale, in modo da non includerlo nell'esportazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
