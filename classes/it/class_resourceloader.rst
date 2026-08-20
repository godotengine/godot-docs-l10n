:github_url: hide

.. _class_ResourceLoader:

ResourceLoader
==============

**Eredita:** :ref:`Object<class_Object>`

Un singleton per caricare file di risorse.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un singleton utilizzato per caricare i file di risorse dal file system.

Utilizza le numerose classi :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` registrate nel motore (integrate o da un'estensione) per caricare i file in memoria e convertirli in un formato che il motore può utilizzare.

\ **Nota:** È necessario prima importare i file nel motore per caricarli tramite :ref:`load()<class_ResourceLoader_method_load>`. Se si desidera caricare un :ref:`Image<class_Image>` in fase di esecuzione, è possibile usare :ref:`Image.load()<class_Image_method_load>`. Se si desidera importare file audio, è possibile usare lo snippet di codice descritto in :ref:`AudioStreamMP3.data<class_AudioStreamMP3_property_data>`.

\ **Nota:** Non è possibile leggere i file non di risorse, come i file di testo semplice, attraverso **ResourceLoader**. Usa invece :ref:`FileAccess<class_FileAccess>` per tali file e tieni presente che i file non di risorse non sono esportati come predefinito (vedi le note nella descrizione della classe :ref:`FileAccess<class_FileAccess>` per istruzioni su come esportarli).

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di caricamento con thread <https://godotengine.org/asset-library/asset/2778>`__

- `Demo di test di sistema operativo <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`add_resource_format_loader<class_ResourceLoader_method_add_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ )                                                                         |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`exists<class_ResourceLoader_method_exists>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ )                                                                                                                                                    |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`get_cached_ref<class_ResourceLoader_method_get_cached_ref>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                  |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_dependencies<class_ResourceLoader_method_get_dependencies>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`get_recognized_extensions_for_type<class_ResourceLoader_method_get_recognized_extensions_for_type>`\ (\ type\: :ref:`String<class_String>`\ )                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                         | :ref:`get_resource_uid<class_ResourceLoader_method_get_resource_uid>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                              |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                       | :ref:`has_cached<class_ResourceLoader_method_has_cached>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                                          |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`list_directory<class_ResourceLoader_method_list_directory>`\ (\ directory_path\: :ref:`String<class_String>`\ )                                                                                                                                                                        |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load<class_ResourceLoader_method_load>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ )                                                                                      |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                               | :ref:`load_threaded_get<class_ResourceLoader_method_load_threaded_get>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                                                            |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` | :ref:`load_threaded_get_status<class_ResourceLoader_method_load_threaded_get_status>`\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ )                                                                                                                   |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                         | :ref:`load_threaded_request<class_ResourceLoader_method_load_threaded_request>`\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`remove_resource_format_loader<class_ResourceLoader_method_remove_resource_format_loader>`\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ )                                                                                                               |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                        | :ref:`set_abort_on_missing_resources<class_ResourceLoader_method_set_abort_on_missing_resources>`\ (\ abort\: :ref:`bool<class_bool>`\ )                                                                                                                                                     |
   +---------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ResourceLoader_ThreadLoadStatus:

.. rst-class:: classref-enumeration

enum **ThreadLoadStatus**: :ref:`🔗<enum_ResourceLoader_ThreadLoadStatus>`

.. _class_ResourceLoader_constant_THREAD_LOAD_INVALID_RESOURCE:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_INVALID_RESOURCE** = ``0``

La risorsa non è valida oppure non è stata caricata con :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>`.

.. _class_ResourceLoader_constant_THREAD_LOAD_IN_PROGRESS:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_IN_PROGRESS** = ``1``

La risorsa è ancora in fase di caricamento.

.. _class_ResourceLoader_constant_THREAD_LOAD_FAILED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_FAILED** = ``2``

Si è verificato un errore durante il caricamento e non è riuscito.

.. _class_ResourceLoader_constant_THREAD_LOAD_LOADED:

.. rst-class:: classref-enumeration-constant

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **THREAD_LOAD_LOADED** = ``3``

La risorsa è stata caricata con successo ed è possibile accedervi tramite :ref:`load_threaded_get()<class_ResourceLoader_method_load_threaded_get>`.

.. rst-class:: classref-item-separator

----

.. _enum_ResourceLoader_CacheMode:

.. rst-class:: classref-enumeration

enum **CacheMode**: :ref:`🔗<enum_ResourceLoader_CacheMode>`

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE** = ``0``

Né la risorsa principale (quella di cui si richiede il caricamento) né alcuna delle sue sotto-risorse sono recuperate dalla cache né memorizzate in essa. Le dipendenze (ovvero le risorse esterne) sono caricate con :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`.

.. _class_ResourceLoader_constant_CACHE_MODE_REUSE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REUSE** = ``1``

La risorsa principale (quella di cui si richiede il caricamento), le sue sotto-risorse e le sue dipendenze (risorse esterne) sono recuperate dalla cache se presenti, anziché caricate. Quelle non memorizzate nella cache sono caricate e quindi memorizzate nella cache. Le stesse regole sono propagate ricorsivamente lungo l'albero delle dipendenze (ovvero le risorse esterne).

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE** = ``2``

Come :ref:`CACHE_MODE_REUSE<class_ResourceLoader_constant_CACHE_MODE_REUSE>`, ma la cache è verificata per la risorsa principale (quella di cui si richiede il caricamento) e per ciascuna delle sue sotto-risorse. Quelle già nella cache, se i tipi caricati e memorizzati nella cache corrispondono, hanno i loro dati aggiornati dal disco nelle istanze già esistenti. Altrimenti, sono ricreate come oggetti completamente nuovi.

.. _class_ResourceLoader_constant_CACHE_MODE_IGNORE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_IGNORE_DEEP** = ``3``

Simile a :ref:`CACHE_MODE_IGNORE<class_ResourceLoader_constant_CACHE_MODE_IGNORE>`, ma propagato ricorsivamente lungo l'albero delle dipendenze (ovvero le risorse esterne).

.. _class_ResourceLoader_constant_CACHE_MODE_REPLACE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceLoader_CacheMode>` **CACHE_MODE_REPLACE_DEEP** = ``4``

Simile a :ref:`CACHE_MODE_REPLACE<class_ResourceLoader_constant_CACHE_MODE_REPLACE>`, ma propagato ricorsivamente lungo l'albero delle dipendenze (ovvero le risorse esterne).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ResourceLoader_method_add_resource_format_loader:

.. rst-class:: classref-method

|void| **add_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`, at_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceLoader_method_add_resource_format_loader>`

Registra un nuovo :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. Il ResourceLoader utilizzerà il ResourceFormatLoader come descritto in :ref:`load()<class_ResourceLoader_method_load>`.

Questo metodo viene effettuato implicitamente per i ResourceFormatLoader scritti in GDScript (vedi :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` per maggiori informazioni).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **exists**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_ResourceLoader_method_exists>`

Restituisce se esiste una risorsa riconosciuta per il percorso ``path``.

Un ``type_hint`` facoltativo può essere usato per specificare ulteriormente il tipo di :ref:`Resource<class_Resource>` che deve essere gestito da :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. Tutto ciò che eredita da :ref:`Resource<class_Resource>` può essere utilizzato come suggerimento per il tipo, ad esempio :ref:`Image<class_Image>`.

\ **Nota:** Se si utilizza :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>`, questo metodo restituirà ``true`` per il percorso preso anche se la risorsa non è stata salvata (ad esempio, esiste solo nella cache delle risorse).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_cached_ref:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **get_cached_ref**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_cached_ref>`

Restituisce il riferimento alla risorsa memorizzata nella cache per il percorso ``path``.

\ **Nota:** Se la risorsa non è memorizzata nella cache, la :ref:`Resource<class_Resource>` restituita non sarà valida.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_dependencies**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_dependencies>`

Restituisce le dipendenze per la risorsa nel percorso ``path``.

Ogni dipendenza è una stringa che si può dividere in sezioni tra ``::``. Può essere presente una o tre sezioni, con la seconda sezione sempre vuota. Quando è presente una sola sezione, contiene il percorso del file. Quando sono presenti tre sezioni, la prima sezione contiene l'UID e la terza sezione contiene il percorso di riserva.

::

    for dependency in ResourceLoader.get_dependencies(path):
        if dependency.contains("::"):
            print(dependency.get_slice("::", 0)) # Stampa l'UID.
            print(dependency.get_slice("::", 2)) # Stampa il percorso di riserva.
        else:
            print(dependency) # Stampa il percorso.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_recognized_extensions_for_type:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recognized_extensions_for_type**\ (\ type\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_recognized_extensions_for_type>`

Restituisce la lista di estensioni riconosciute per un tipo di risorsa.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_get_resource_uid:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_resource_uid**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_get_resource_uid>`

Restituisce l'ID associato a un determinato percorso di risorsa oppure ``-1`` quando tale ID non esiste.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_has_cached:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_cached**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_has_cached>`

Restituisce se una risorsa memorizzata nella cache è disponibile per il percorso ``path``.

Una volta che una risorsa è stata caricata dal motore, viene memorizzata nella cache per un accesso più rapido e le future chiamate al metodo :ref:`load()<class_ResourceLoader_method_load>` utilizzeranno la versione memorizzata nella cache. È possibile sovrascrivere la risorsa memorizzata nella cache attraverso :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>` su una nuova risorsa per lo stesso percorso.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_list_directory:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **list_directory**\ (\ directory_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_list_directory>`

Elenca una cartella, restituendo tutte le risorse e le sottocartelle in essa contenute. I file di risorse hanno i nomi originali visibili nell'editor prima dell'esportazione. Alle cartelle è aggiunto ``"/"``.

::

    # Stampa ["extra_data/", "model.gltf", "model.tscn", "model_slime.png"]
    print(ResourceLoader.list_directory("res://assets/enemies/slime"))

\ **Nota:** L'ordine dei file e delle cartelle restituito da questo metodo non è deterministico e può variare a seconda del sistema operativo.

\ **Nota:** Per attraversare normalmente il file system, consulta :ref:`DirAccess<class_DirAccess>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load>`

Carica una risorsa dal percorso ``path``, memorizzando nella cache il risultato per accedervi in seguito.

I :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` registrati vengono provati in sequenza per trovare il primo che può gestire l'estensione del file, da poi caricare. Se il caricamento fallisce, vengono provati anche i ResourceFormatLoader rimasti.

È possibile passare ``type_hint`` per specificare ulteriormente il tipo di :ref:`Resource<class_Resource>` che deve essere gestito dal :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`. Tutto ciò che eredita da :ref:`Resource<class_Resource>` può essere utilizzato come suggerimento per il tipo, ad esempio :ref:`Image<class_Image>`.

\ ``cache_mode`` definisce se e come bisogna utilizzare o aggiornare la cache durante il caricamento della risorsa.

Restituisce una risorsa vuota se nessun :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` è riuscito a gestire il file e stampa un errore se non viene trovato alcun file nel percorso specificato.

GDScript fornisce il metodo integrato semplificato :ref:`@GDScript.load()<class_@GDScript_method_load>` che è sufficiente nella maggior parte delle situazioni, lasciando l'uso di **ResourceLoader** per motivi più avanzati.

\ **Nota:** Se :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` è ``true``, :ref:`@GDScript.load()<class_@GDScript_method_load>` non sarà in grado di leggere i file convertiti in un progetto esportato. Se in fase di esecuzione è necessario caricare i file presenti nel PCK, imposta :ref:`ProjectSettings.editor/export/convert_text_resources_to_binary<class_ProjectSettings_property_editor/export/convert_text_resources_to_binary>` su ``false``.

\ **Nota:** I percorsi relativi saranno preceduti da ``"res://"`` prima del caricamento, per evitare risultati imprevisti assicurati che i tuoi percorsi siano assoluti.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **load_threaded_get**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get>`

Restituisce la risorsa caricata da :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>`.

Se viene chiamato prima che il thread di caricamento sia completato (ad esempio, :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>` non è :ref:`THREAD_LOAD_LOADED<class_ResourceLoader_constant_THREAD_LOAD_LOADED>`), il thread chiamante verrà bloccato finché la risorsa non avrà finito di caricarsi. Tuttavia, si consiglia di usare :ref:`load_threaded_get_status()<class_ResourceLoader_method_load_threaded_get_status>` per sapere quando il caricamento è stato effettivamente completato.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_get_status:

.. rst-class:: classref-method

:ref:`ThreadLoadStatus<enum_ResourceLoader_ThreadLoadStatus>` **load_threaded_get_status**\ (\ path\: :ref:`String<class_String>`, progress\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_get_status>`

Restituisce lo stato di un'operazione di caricamento su un thread, avviata con :ref:`load_threaded_request()<class_ResourceLoader_method_load_threaded_request>`, per la risorsa nel percorso ``path``.

Una variabile di tipo array può essere facoltativamente passata tramite ``progress`` e restituirà un array di un elemento contenente la percentuale di completamento del caricamento su un thread (tra ``0.0`` e ``1.0``).

\ **Nota:** Il modo consigliato per usare questo metodo è di chiamarlo durante frame diversi (ad esempio, in :ref:`Node._process()<class_Node_private_method__process>`, invece di un ciclo).

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_load_threaded_request:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_threaded_request**\ (\ path\: :ref:`String<class_String>`, type_hint\: :ref:`String<class_String>` = "", use_sub_threads\: :ref:`bool<class_bool>` = false, cache_mode\: :ref:`CacheMode<enum_ResourceLoader_CacheMode>` = 1\ ) :ref:`🔗<class_ResourceLoader_method_load_threaded_request>`

Carica la risorsa usando i thread. Se ``use_sub_threads`` è ``true``, saranno usati più thread per caricare la risorsa, il che velocizza il caricamento, ma potrebbe influenzare il thread principale (e quindi causare rallentamenti di gioco).

\ ``cache_mode`` definisce se e come bisogna utilizzare o aggiornare la cache durante il caricamento della risorsa.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_remove_resource_format_loader:

.. rst-class:: classref-method

|void| **remove_resource_format_loader**\ (\ format_loader\: :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`\ ) :ref:`🔗<class_ResourceLoader_method_remove_resource_format_loader>`

Annulla la registrazione del :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_ResourceLoader_method_set_abort_on_missing_resources:

.. rst-class:: classref-method

|void| **set_abort_on_missing_resources**\ (\ abort\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ResourceLoader_method_set_abort_on_missing_resources>`

Cambia il comportamento per le sotto-risorse mancanti. Il comportamento predefinito è di annullare il caricamento.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
