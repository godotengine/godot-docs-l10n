:github_url: hide

.. _class_ResourceFormatLoader:

ResourceFormatLoader
====================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Carica un tipo di risorsa specifico da un file.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Godot carica le risorse nell'editor o nei giochi esportati attraverso i ResourceFormatLoader. Vengono interrogati automaticamente tramite il singleton :ref:`ResourceLoader<class_ResourceLoader>` o quando viene caricata una risorsa con dipendenze interne. È possibile caricare ogni tipo di file come un tipo di risorsa diverso, quindi più ResourceFormatLoader vengono registrati nel motore.

Estendere questa classe consente di definire il proprio loader. Assicurarsi di rispettare i tipi di ritorno e i valori documentati. Sarebbe necessario dargli un nome di classe globale con ``class_name`` affinché venga registrato. Come i ResourceFormatLoader integrati, verrà chiamato automaticamente quando si caricano le risorse dei suoi tipi gestiti. È possibile anche implementare un :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Nota:** È possibile anche estendere :ref:`EditorImportPlugin<class_EditorImportPlugin>` se il tipo di risorsa di cui c'è bisogno esiste ma Godot non è in grado di caricarne il formato. La scelta dipende dal fatto che il formato sia adatto o meno per il gioco esportato finale. Ad esempio, è meglio importare prima le texture ``.png`` come ``.ctex`` (:ref:`CompressedTexture2D<class_CompressedTexture2D>`), in modo che possano essere caricate con maggiore efficienza sulla scheda grafica.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_exists<class_ResourceFormatLoader_private_method__exists>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                    |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_classes_used<class_ResourceFormatLoader_private_method__get_classes_used>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_dependencies<class_ResourceFormatLoader_private_method__get_dependencies>`\ (\ path\: :ref:`String<class_String>`, add_types\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ResourceFormatLoader_private_method__get_recognized_extensions>`\ (\ ) |virtual| |const|                                                                                                                                  |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_resource_script_class<class_ResourceFormatLoader_private_method__get_resource_script_class>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`_get_resource_type<class_ResourceFormatLoader_private_method__get_resource_type>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                              |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`_get_resource_uid<class_ResourceFormatLoader_private_method__get_resource_uid>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_handles_type<class_ResourceFormatLoader_private_method__handles_type>`\ (\ type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_load<class_ResourceFormatLoader_private_method__load>`\ (\ path\: :ref:`String<class_String>`, original_path\: :ref:`String<class_String>`, use_sub_threads\: :ref:`bool<class_bool>`, cache_mode\: :ref:`int<class_int>`\ ) |virtual| |required| |const| |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize_path<class_ResourceFormatLoader_private_method__recognize_path>`\ (\ path\: :ref:`String<class_String>`, type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                        |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_rename_dependencies<class_ResourceFormatLoader_private_method__rename_dependencies>`\ (\ path\: :ref:`String<class_String>`, renames\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const|                                                           |
   +---------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ResourceFormatLoader_CacheMode:

.. rst-class:: classref-enumeration

enum **CacheMode**: :ref:`🔗<enum_ResourceFormatLoader_CacheMode>`

.. _class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_IGNORE** = ``0``

Né la risorsa principale (quella di cui si richiede il caricamento) né alcuna delle sue sotto-risorse sono recuperate dalla cache né memorizzate in essa. Le dipendenze (ovvero le risorse esterne) sono caricate con :ref:`CACHE_MODE_REUSE<class_ResourceFormatLoader_constant_CACHE_MODE_REUSE>`.

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REUSE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REUSE** = ``1``

La risorsa principale (quella di cui si richiede il caricamento), le sue sotto-risorse e le sue dipendenze (risorse esterne) sono recuperate dalla cache se presenti, anziché caricate. Quelle non memorizzate nella cache sono caricate e quindi memorizzate nella cache. Le stesse regole sono propagate ricorsivamente lungo l'albero delle dipendenze (ovvero le risorse esterne).

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REPLACE** = ``2``

Come :ref:`CACHE_MODE_REUSE<class_ResourceFormatLoader_constant_CACHE_MODE_REUSE>`, ma la cache è verificata per la risorsa principale (quella di cui si richiede il caricamento) e per ciascuna delle sue sotto-risorse. Quelle già nella cache, se i tipi caricati e memorizzati nella cache corrispondono, hanno i loro dati aggiornati dal disco nelle istanze già esistenti. Altrimenti, sono ricreate come oggetti completamente nuovi.

.. _class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_IGNORE_DEEP** = ``3``

Simile a :ref:`CACHE_MODE_IGNORE<class_ResourceFormatLoader_constant_CACHE_MODE_IGNORE>`, ma propagato ricorsivamente lungo l'albero delle dipendenze (ovvero le risorse esterne).

.. _class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE_DEEP:

.. rst-class:: classref-enumeration-constant

:ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` **CACHE_MODE_REPLACE_DEEP** = ``4``

Simile a :ref:`CACHE_MODE_REPLACE<class_ResourceFormatLoader_constant_CACHE_MODE_REPLACE>`, ma propagato ricorsivamente lungo l'albero delle dipendenze (ovvero le risorse esterne).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ResourceFormatLoader_private_method__exists:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_exists**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__exists>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_classes_used:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_classes_used**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_classes_used>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_dependencies:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_dependencies**\ (\ path\: :ref:`String<class_String>`, add_types\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_dependencies>`

Dovrebbe restituire le dipendenze per la risorsa nel percorso ``path``. Ogni dipendenza è una stringa composta da una a tre sezioni separate da ``::``, con le sezioni vuote finali omesse:

- La prima sezione dovrebbe contenere l'UID se la risorsa ne ha uno. Se non, dovrebbe contenere il percorso del file.

- La seconda sezione dovrebbe contenere il nome della classe della dipendenza se ``add_types`` è ``true``. Se non, dovrebbe essere vuota.

- La terza sezione dovrebbe contenere il percorso alternativo se la risorsa ha un UID. Se non, dovrebbe essere vuota.

::

    func _get_dependencies(path, add_types):
        return [
            "uid://fqgvuwrkuixh::Script::res://script.gd",
            "uid://fqgvuwrkuixh::::res://script.gd",
            "res://script.gd::Script",
            "res://script.gd",
        ]

\ **Nota:** i tipi personalizzati di risorse definiti dagli script non sono noti al :ref:`ClassDB<class_ClassDB>`, quindi è possibile utilizzare ``"Resource"`` per il nome della classe.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_recognized_extensions>`

Ottiene la lista delle estensioni dei file che questo caricatore è in grado di leggere.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_script_class:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_script_class**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_script_class>`

Restituisce il nome della classe di script associata alla :ref:`Resource<class_Resource>` nel percorso ``path`` specificato. Se la risorsa non ha script o lo script non è una classe con nome, dovrebbe restituire ``""``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_type:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_resource_type**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_type>`

Ottiene il nome della classe della risorsa associata al percorso specificato. Se il caricatore non riesce a gestirlo, dovrebbe restituire ``""``.

\ **Nota:** I tipi di risorse personalizzati definiti dagli script non sono noti a :ref:`ClassDB<class_ClassDB>`, quindi per loro potresti semplicemente restituire ``"Resource"``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__get_resource_uid:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_resource_uid**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__get_resource_uid>`

Dovrebbe restituire l'ID univoco per la risorsa associata al percorso specificato. Se questo metodo non è sovrascritto, viene generato un file ``.uid`` insieme al file della risorsa, contenente l'ID univoco.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__handles_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles_type**\ (\ type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__handles_type>`

Indica quale classe di risorse questo caricatore può caricare.

\ **Nota:** I tipi di risorse personalizzati definiti dagli script non sono noti a :ref:`ClassDB<class_ClassDB>`, quindi per loro potresti semplicemente restituire ``"Resource"``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__load:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_load**\ (\ path\: :ref:`String<class_String>`, original_path\: :ref:`String<class_String>`, use_sub_threads\: :ref:`bool<class_bool>`, cache_mode\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__load>`

Carica una risorsa quando il motore ritiene che questo caricatore è compatibile. Se la risorsa caricata è il risultato di un'importazione, ``original_path`` punterà al file sorgente. Restituisce un oggetto :ref:`Resource<class_Resource>` in caso di successo o una costante di :ref:`Error<enum_@GlobalScope_Error>` in caso di errore.

La proprietà ``cache_mode`` definisce se e come la cache deve essere utilizzata o aggiornata durante il caricamento della risorsa. Vedi :ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__recognize_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize_path**\ (\ path\: :ref:`String<class_String>`, type\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__recognize_path>`

Indica se questo caricatore deve caricare una risorsa dal suo percorso per un determinato tipo.

Se non è implementato, il comportamento predefinito restituisce se l'estensione nel percorso è compresa tra quelle fornite da :ref:`_get_recognized_extensions()<class_ResourceFormatLoader_private_method__get_recognized_extensions>` e se il tipo è compreso tra quelli forniti da :ref:`_get_resource_type()<class_ResourceFormatLoader_private_method__get_resource_type>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatLoader_private_method__rename_dependencies:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_rename_dependencies**\ (\ path\: :ref:`String<class_String>`, renames\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatLoader_private_method__rename_dependencies>`

Se implementato, rinomina le dipendenze all'interno della risorsa specificata e le salva. ``renames`` è un dizionario ``{ String => String }`` che mappa i vecchi percorsi delle dipendenze ai nuovi percorsi.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo o una costante di :ref:`Error<enum_@GlobalScope_Error>` in caso di errore.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
