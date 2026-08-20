:github_url: hide

.. _class_EditorExportPlatformExtension:

EditorExportPlatformExtension
=============================

**Eredita:** :ref:`EditorExportPlatform<class_EditorExportPlatform>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe base per implementazioni di :ref:`EditorExportPlatform<class_EditorExportPlatform>` personalizzate (estensioni).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Implementazioni esterne di :ref:`EditorExportPlatform<class_EditorExportPlatform>` dovrebbero ereditare da questa classe.

Per utilizzare :ref:`EditorExportPlatform<class_EditorExportPlatform>`, registrarlo prima attraverso il metodo :ref:`EditorPlugin.add_export_platform()<class_EditorPlugin_method_add_export_platform>`.

.. rst-class:: classref-reftable-group

Metodi
------------

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

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorExportPlatformExtension_private_method__can_export:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_export**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__can_export>`

Restituisce ``true``, se la preimpostazione ``preset`` è valida e si può esportare. Usa :ref:`set_config_error()<class_EditorExportPlatformExtension_method_set_config_error>` e :ref:`set_config_missing_templates()<class_EditorExportPlatformExtension_method_set_config_missing_templates>` per impostare i dettagli per gli errori.

La solita implementazione può chiamare :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` e :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>` per determinare se l'esportazione è possibile.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__cleanup:

.. rst-class:: classref-method

|void| **_cleanup**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__cleanup>`

Chiamato dall'editor prima che la registrazione della piattaforma venga annullata.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_pack**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_pack>`

Crea un archivio PCK nel percorso ``path`` per la preimpostazione ``preset``.

Questo metodo viene chiamato quando si preme il pulsante "Esporta PCK/ZIP" nella finestra di dialogo di esportazione, con "Esporta come patch" disabilitato e PCK selezionato come tipo di file.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_pack_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_pack_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_pack_patch>`

Crea un archivio PCK di patch nel percorso ``path`` per la preimpostazione ``preset``, contenente solo i file che sono stati modificati dall'ultima patch.

Questo metodo viene chiamato quando si preme il pulsante "Esporta PCK/ZIP" nella finestra di dialogo di esportazione, con "Esporta come patch" abilitato e PCK selezionato come tipo di file.

\ **Nota:** Le patch fornite in ``patches`` sono già state caricate quando questo metodo viene chiamato e sono semplicemente fornite come contesto. Quando è vuoto, sono state caricate invece le patch definite nella preimpostazione d'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_project:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_project**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| |required| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_project>`

Crea un progetto completo nel percorso ``path`` per la preimpostazione ``preset``.

Questo metodo viene chiamato quando si preme il pulsante "Esporta" nella finestra di dialogo di esportazione.

Questa implementazione del metodo può chiamare :ref:`EditorExportPlatform.save_pack()<class_EditorExportPlatform_method_save_pack>` o :ref:`EditorExportPlatform.save_zip()<class_EditorExportPlatform_method_save_zip>` per utilizzare il processo di esportazione PCK/ZIP predefinito, oppure chiamare :ref:`EditorExportPlatform.export_project_files()<class_EditorExportPlatform_method_export_project_files>` e implementare un callback personalizzato per elaborare ciascun file esportato.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_zip:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_zip**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_zip>`

Crea un archivio ZIP nel percorso ``path`` per la preimpostazione ``preset``.

Questo metodo viene chiamato quando si preme il pulsante "Esporta PCK/ZIP" nella finestra di dialogo di esportazione, con "Esporta come patch" disabilitato e ZIP selezionato come tipo di file.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__export_zip_patch:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_export_zip_patch**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`, path\: :ref:`String<class_String>`, patches\: :ref:`PackedStringArray<class_PackedStringArray>`, flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__export_zip_patch>`

Crea un archivio ZIP nel percorso ``path`` per la preimpostazione ``preset``, contenente solo i file che sono stati modificati dall'ultima patch.

Questo metodo viene chiamato quando si preme il pulsante "Esporta PCK/ZIP" nella finestra di dialogo di esportazione, con "Esporta come patch" abilitato e ZIP selezionato come tipo di file.

\ **Nota:** Le patch fornite in ``patches`` sono già state caricate quando questo metodo viene chiamato e sono semplicemente fornite come contesto. Quando è vuoto, sono state caricate invece le patch definite nella preimpostazione d'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_binary_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_binary_extensions**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_binary_extensions>`

Restituisce un array di estensioni binarie supportate per l'esportazione completa del progetto.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_debug_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_debug_protocol**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_debug_protocol>`

Restituisce il protocollo utilizzato per il debug remoto. L'implementazione predefinita restituisce ``tcp://``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_device_architecture:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_device_architecture**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_device_architecture>`

Restituisce l'architettura del dispositivo per la distribuzione con un clic.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_option_visibility:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_get_export_option_visibility**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_option_visibility>`

Convalida l'opzione ``option`` e restituisce la visibilità per la preimpostazione ``preset``. L'implementazione predefinita restituisce ``true`` per tutte le opzioni.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_option_warning:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_export_option_warning**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, option\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_option_warning>`

Convalida l'opzione ``option`` e restituisce un messaggio d'avviso per la preimpostazione ``preset``. L'implementazione predefinita restituisce una stringa vuota per tutte le opzioni.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_export_options:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_export_options**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_export_options>`

Restituisce una lista di proprietà, come un :ref:`Array<class_Array>` di dizionari. Ogni :ref:`Dictionary<class_Dictionary>` deve contenere almeno le voci ``name: StringName`` e ``type: Variant.Type``.

Inoltre, sono supportate le seguenti chiavi:

- ``hint: PropertyHint``\ 

- ``hint_string: String``\ 

- ``usage: PropertyUsageFlags``\ 

- ``class_name: StringName``\ 

- ``default_value: Variant``, valore predefinito della proprietà.

- ``update_visibility: bool``, se impostato su ``true``, viene chiamato :ref:`_get_export_option_visibility()<class_EditorExportPlatformExtension_private_method__get_export_option_visibility>` per ogni proprietà quando questa proprietà viene modificata.

- ``required: bool``, se impostato su ``true``, gli avvisi di questa proprietà sono critici e devono essere risolti per rendere possibile l'esportazione. Questo valore è un indicazione per l'implementazione di :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` e non viene utilizzato direttamente dal motore.

Vedi anche :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_logo:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_logo**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_logo>`

Restituisce il logo della piattaforma visualizzato nella finestra di dialogo di esportazione. Il logo dovrebbe essere 32×32 pixel, adattato alla scala attuale dell'editor (vedi :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_name>`

Restituisce il nome della piattaforma d'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_option_icon**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_icon>`

Restituisce l'icona della voce per il dispositivo ``device`` nel menu di distribuzione con un clic. L'icona dovrebbe essere 16×16 pixel, adattata alla scala attuale dell'editor (vedi :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_option_label**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_label>`

Restituisce l'etichetta della voce nel menu di distribuzione con un clic per il dispositivo ``device``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_option_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_option_tooltip**\ (\ device\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_option_tooltip>`

Restituisce il suggerimento della voce nel menu di distribuzione con un clic per il dispositivo ``device``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_options_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_options_count**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_options_count>`

Restituisce il numero di dispositivi (o altre opzioni) disponibili nel menu di distribuzione con un clic.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_options_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_options_tooltip**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_options_tooltip>`

Restituisce il suggerimento del pulsante del menu di distribuzione con un clic.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_os_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_os_name**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_os_name>`

Restituisce il nome dell'OS di destinazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_platform_features:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_platform_features**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_platform_features>`

Restituisce un array di funzionalità specifiche della piattaforma.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_preset_features:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_preset_features**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_preset_features>`

Restituisce un array di funzionalità specifiche della piattaforma per il ``preset`` specificato.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__get_run_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_run_icon**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__get_run_icon>`

Restituisce l'icona per il menu di distribuzione con un clic. L'icona dovrebbe essere 16×16, adattata alla scala attuale dell'editor (vedi :ref:`EditorInterface.get_editor_scale()<class_EditorInterface_method_get_editor_scale>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__has_valid_export_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_valid_export_configuration**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, debug\: :ref:`bool<class_bool>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>`

Restituisce ``true`` se la configurazione d'esportazione è valida.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__has_valid_project_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_valid_project_configuration**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`\ ) |virtual| |required| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`

Restituisce ``true`` se la configurazione del progetto è valida.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__initialize:

.. rst-class:: classref-method

|void| **_initialize**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__initialize>`

Inizializza l'estensione. Chiamato dall'editor quando la piattaforma viene registrata.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__is_executable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_executable**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorExportPlatformExtension_private_method__is_executable>`

Restituisce ``true`` se il file specificato è un eseguibile valido (eseguibile nativo o script) per la piattaforma di destinazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__poll_export:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_poll_export**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__poll_export>`

Restituisce ``true`` se le opzioni di distribuzione con un clic sono cambiate e l'interfaccia dell'editor si dovrebbe aggiornare.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__run:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_run**\ (\ preset\: :ref:`EditorExportPreset<class_EditorExportPreset>`, device\: :ref:`int<class_int>`, debug_flags\: |bitfield|\[:ref:`DebugFlags<enum_EditorExportPlatform_DebugFlags>`\]\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__run>`

Questo metodo viene chiamato quando viene selezionata l'opzione per il dispositivo ``device`` nel menu di distribuzione con un clic.

L'implementazione dovrebbe esportare il progetto in una posizione temporanea, caricarlo ed eseguirlo sul dispositivo ``device`` oppure eseguire un'altra azione associata alla voce del menu.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_private_method__should_update_export_options:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_should_update_export_options**\ (\ ) |virtual| :ref:`🔗<class_EditorExportPlatformExtension_private_method__should_update_export_options>`

Restituisce ``true`` se la lista delle opzioni di esportazione è cambiata e le preimpostazioni si dovrebbero aggiornare.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_get_config_error:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_config_error**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_get_config_error>`

Restituisce il testo del messaggio di errore di configurazione attuale. Questo metodo dovrebbe essere chiamato solo dalle implementazioni di :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`, :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` o :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_get_config_missing_templates:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_config_missing_templates**\ (\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_get_config_missing_templates>`

Restituisce ``true`` se i modelli di esportazione mancano dalla configurazione attuale. Questo metodo dovrebbe essere chiamato solo dalle implementazioni di :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`, :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` o :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_set_config_error:

.. rst-class:: classref-method

|void| **set_config_error**\ (\ error_text\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_set_config_error>`

Imposta il testo del messaggio di errore della configurazione attuale. Questo metodo dovrebbe essere chiamato solo dalle implementazioni di :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`, :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` o :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPlatformExtension_method_set_config_missing_templates:

.. rst-class:: classref-method

|void| **set_config_missing_templates**\ (\ missing_templates\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_EditorExportPlatformExtension_method_set_config_missing_templates>`

Impostato su ``true`` se mancano modelli di esportazione dalla configurazione attuale. Questo metodo dovrebbe essere chiamato solo dalle implementazioni di :ref:`_can_export()<class_EditorExportPlatformExtension_private_method__can_export>`, :ref:`_has_valid_export_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_export_configuration>` o :ref:`_has_valid_project_configuration()<class_EditorExportPlatformExtension_private_method__has_valid_project_configuration>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
