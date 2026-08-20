:github_url: hide

.. _class_EditorExportPreset:

EditorExportPreset
==================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

La configurazione della preimpostazione d'esportazione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Rappresenta la configurazione di una preimpostazione di esportazione, così come creata dalla finestra di dialogo di esportazione dell'editor. Un'istanza di **EditorExportPreset** si utilizza come configurazione sola lettura passata ai metodi di :ref:`EditorExportPlatform<class_EditorExportPlatform>` quando si esporta il progetto.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`are_advanced_options_enabled<class_EditorExportPreset_method_are_advanced_options_enabled>`\ (\ ) |const|                                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_custom_features<class_EditorExportPreset_method_get_custom_features>`\ (\ ) |const|                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                               | :ref:`get_customized_files<class_EditorExportPreset_method_get_customized_files>`\ (\ ) |const|                                                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_customized_files_count<class_EditorExportPreset_method_get_customized_files_count>`\ (\ ) |const|                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`get_encrypt_directory<class_EditorExportPreset_method_get_encrypt_directory>`\ (\ ) |const|                                                                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`get_encrypt_pck<class_EditorExportPreset_method_get_encrypt_pck>`\ (\ ) |const|                                                                                                                            |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_encryption_ex_filter<class_EditorExportPreset_method_get_encryption_ex_filter>`\ (\ ) |const|                                                                                                          |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_encryption_in_filter<class_EditorExportPreset_method_get_encryption_in_filter>`\ (\ ) |const|                                                                                                          |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_encryption_key<class_EditorExportPreset_method_get_encryption_key>`\ (\ ) |const|                                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_exclude_filter<class_EditorExportPreset_method_get_exclude_filter>`\ (\ ) |const|                                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>`         | :ref:`get_export_filter<class_EditorExportPreset_method_get_export_filter>`\ (\ ) |const|                                                                                                                        |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_export_path<class_EditorExportPreset_method_get_export_path>`\ (\ ) |const|                                                                                                                            |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>`     | :ref:`get_file_export_mode<class_EditorExportPreset_method_get_file_export_mode>`\ (\ path\: :ref:`String<class_String>`, default\: :ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` = 0\ ) |const| |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                 | :ref:`get_files_to_export<class_EditorExportPreset_method_get_files_to_export>`\ (\ ) |const|                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_include_filter<class_EditorExportPreset_method_get_include_filter>`\ (\ ) |const|                                                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                     | :ref:`get_or_env<class_EditorExportPreset_method_get_or_env>`\ (\ name\: :ref:`StringName<class_StringName>`, env_var\: :ref:`String<class_String>`\ ) |const|                                                   |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                 | :ref:`get_patches<class_EditorExportPreset_method_get_patches>`\ (\ ) |const|                                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_preset_name<class_EditorExportPreset_method_get_preset_name>`\ (\ ) |const|                                                                                                                            |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                     | :ref:`get_project_setting<class_EditorExportPreset_method_get_project_setting>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` | :ref:`get_script_export_mode<class_EditorExportPreset_method_get_script_export_mode>`\ (\ ) |const|                                                                                                              |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_version<class_EditorExportPreset_method_get_version>`\ (\ name\: :ref:`StringName<class_StringName>`, windows_version\: :ref:`bool<class_bool>`\ ) |const|                                             |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`has<class_EditorExportPreset_method_has>`\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`has_export_file<class_EditorExportPreset_method_has_export_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`is_dedicated_server<class_EditorExportPreset_method_is_dedicated_server>`\ (\ ) |const|                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`is_runnable<class_EditorExportPreset_method_is_runnable>`\ (\ ) |const|                                                                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_EditorExportPreset_ExportFilter:

.. rst-class:: classref-enumeration

enum **ExportFilter**: :ref:`🔗<enum_EditorExportPreset_ExportFilter>`

.. _class_EditorExportPreset_constant_EXPORT_ALL_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_ALL_RESOURCES** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXPORT_SELECTED_SCENES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_SELECTED_SCENES** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXPORT_SELECTED_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_SELECTED_RESOURCES** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXCLUDE_SELECTED_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXCLUDE_SELECTED_RESOURCES** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_EXPORT_CUSTOMIZED:

.. rst-class:: classref-enumeration-constant

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **EXPORT_CUSTOMIZED** = ``4``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-item-separator

----

.. _enum_EditorExportPreset_FileExportMode:

.. rst-class:: classref-enumeration

enum **FileExportMode**: :ref:`🔗<enum_EditorExportPreset_FileExportMode>`

.. _class_EditorExportPreset_constant_MODE_FILE_NOT_CUSTOMIZED:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_NOT_CUSTOMIZED** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_FILE_STRIP:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_STRIP** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_FILE_KEEP:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_KEEP** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_FILE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **MODE_FILE_REMOVE** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-item-separator

----

.. _enum_EditorExportPreset_ScriptExportMode:

.. rst-class:: classref-enumeration

enum **ScriptExportMode**: :ref:`🔗<enum_EditorExportPreset_ScriptExportMode>`

.. _class_EditorExportPreset_constant_MODE_SCRIPT_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **MODE_SCRIPT_TEXT** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_SCRIPT_BINARY_TOKENS:

.. rst-class:: classref-enumeration-constant

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **MODE_SCRIPT_BINARY_TOKENS** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorExportPreset_constant_MODE_SCRIPT_BINARY_TOKENS_COMPRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **MODE_SCRIPT_BINARY_TOKENS_COMPRESSED** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorExportPreset_method_are_advanced_options_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **are_advanced_options_enabled**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_are_advanced_options_enabled>`

Restituisce ``true`` se l'opzione "Avanzate" è abilitata nella finestra di dialogo d'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_custom_features:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_custom_features**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_custom_features>`

Restituisce una lista separata da virgole di funzionalità personalizzate aggiunte a questa preimpostazione, sotto forma di stringa. Consulta :doc:`Tag di funzionalità <../tutorials/export/feature_tags>` nella documentazione per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_customized_files:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_customized_files**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_customized_files>`

Restituisce un dizionario dei file selezionati nella scheda "Risorse" della finestra di dialogo di esportazione. Le chiavi del dizionario sono percorsi di file e i suoi valori sono la modalità di esportazione: ``"strip"``, ``"keep"`` o ``"remove"``. Vedi anche :ref:`get_file_export_mode()<class_EditorExportPreset_method_get_file_export_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_customized_files_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_customized_files_count**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_customized_files_count>`

Restituisce il numero di file selezionati nella scheda "Risorse" della finestra di dialogo d'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encrypt_directory:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_encrypt_directory**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encrypt_directory>`

Restituisce ``true`` se la crittografia delle cartelle del PCK è abilitata nella finestra di dialogo d'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encrypt_pck:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_encrypt_pck**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encrypt_pck>`

Restituisce ``true`` se la crittografia del PCK è abilitata nella finestra di dialogo d'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encryption_ex_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_encryption_ex_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encryption_ex_filter>`

Restituisce i filtri dei file da escludere durante la crittografia del PCK.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encryption_in_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_encryption_in_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encryption_in_filter>`

Restituisce i filtri dei file da includere durante la crittografia del PCK.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_encryption_key:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_encryption_key**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_encryption_key>`

Restituisce la chiave di crittografia del PCK.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_exclude_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_exclude_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_exclude_filter>`

Restituisce i filtri dei file da escludere durante l'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_export_filter:

.. rst-class:: classref-method

:ref:`ExportFilter<enum_EditorExportPreset_ExportFilter>` **get_export_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_export_filter>`

Restituisce la modalità di filtro del file di esportazione selezionata nella scheda "Risorse" della finestra di dialogo di esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_export_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_export_path**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_export_path>`

Restituisce il percorso di destinazione dell'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_file_export_mode:

.. rst-class:: classref-method

:ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` **get_file_export_mode**\ (\ path\: :ref:`String<class_String>`, default\: :ref:`FileExportMode<enum_EditorExportPreset_FileExportMode>` = 0\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_file_export_mode>`

Restituisce la modalità d'esportazione file per il file specificato.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_files_to_export:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_files_to_export**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_files_to_export>`

Restituisce l'array di file da esportare.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_include_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_include_filter**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_include_filter>`

Restituisce i filtri dei file da includere durante l'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_or_env:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_or_env**\ (\ name\: :ref:`StringName<class_StringName>`, env_var\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_or_env>`

Restituisce il valore dell'opzione di esportazione o il valore della variabile d'ambiente, se impostata.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_patches:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_patches**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_patches>`

Restituisce la lista dei pacchetti da cui basare un'esportazione di patch.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_preset_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_preset_name**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_preset_name>`

Restituisce il nome di questa preimpostazione d'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_project_setting:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_project_setting**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorExportPreset_method_get_project_setting>`

Restituisce il valore dell'impostazione specificata da ``name`` utilizzando sostituzioni dei tag di funzionalità nella preimpostazione d'esportazione, anziché funzionalità dell'OS attuale.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_script_export_mode:

.. rst-class:: classref-method

:ref:`ScriptExportMode<enum_EditorExportPreset_ScriptExportMode>` **get_script_export_mode**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_script_export_mode>`

Restituisce la modalità di esportazione utilizzata dai file GDScript. ``0`` per "Testo", ``1`` per "Token binari" e ``2`` per "Token binari compressi (file più piccoli)".

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_get_version:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_version**\ (\ name\: :ref:`StringName<class_StringName>`, windows_version\: :ref:`bool<class_bool>`\ ) |const| :ref:`🔗<class_EditorExportPreset_method_get_version>`

Restituisce il numero di versione della preimpostazione o ricade sull'impostazione del progetto :ref:`ProjectSettings.application/config/version<class_ProjectSettings_property_application/config/version>` se impostata su una stringa vuota.

Se ``windows_version`` è ``true``, formatta il numero di versione restituito in modo che sia compatibile con i metadati degli eseguibili di Windows.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorExportPreset_method_has>`

Restituisce ``true`` se la preimpostazione ha la proprietà con il nome ``property``.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_has_export_file:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_export_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorExportPreset_method_has_export_file>`

Restituisce ``true`` se il file al percorso ``path`` sarà esportato.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_is_dedicated_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_dedicated_server**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_is_dedicated_server>`

Restituisce ``true`` se la modalità d'esportazione "server dedicato" è selezionata nella finestra di dialogo d'esportazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorExportPreset_method_is_runnable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_runnable**\ (\ ) |const| :ref:`🔗<class_EditorExportPreset_method_is_runnable>`

Restituisce ``true`` se l'opzione "Eseguibile" è abilitata nella finestra di dialogo d'esportazione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
