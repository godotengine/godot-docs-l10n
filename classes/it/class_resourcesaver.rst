:github_url: hide

.. _class_ResourceSaver:

ResourceSaver
=============

**Eredita:** :ref:`Object<class_Object>`

Un singleton per salvare le :ref:`Resource<class_Resource>` nel file system.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un singleton per salvare i tipi risorsa nel file system.

Utilizza le numerose classi :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` registrate nel motore (sia integrate sia da un'estensione) per salvare i dati delle risorse all'interno di file basati su testo (ad esempio ``.tres`` o ``.tscn``) o binari (ad esempio ``.res`` o ``.scn``).

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_resource_format_saver<class_ResourceSaver_method_add_resource_format_saver>`\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, at_front\: :ref:`bool<class_bool>` = false\ )      |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_recognized_extensions<class_ResourceSaver_method_get_recognized_extensions>`\ (\ type\: :ref:`Resource<class_Resource>`\ )                                                                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_resource_id_for_path<class_ResourceSaver_method_get_resource_id_for_path>`\ (\ path\: :ref:`String<class_String>`, generate\: :ref:`bool<class_bool>` = false\ )                                          |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_resource_format_saver<class_ResourceSaver_method_remove_resource_format_saver>`\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ )                                            |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save<class_ResourceSaver_method_save>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>` = "", flags\: |bitfield|\[:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>`\] = 0\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`set_uid<class_ResourceSaver_method_set_uid>`\ (\ resource\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ )                                                                                       |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ResourceSaver_SaverFlags:

.. rst-class:: classref-enumeration

flags **SaverFlags**: :ref:`🔗<enum_ResourceSaver_SaverFlags>`

.. _class_ResourceSaver_constant_FLAG_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_NONE** = ``0``

Nessuna opzione di salvataggio di risorse.

.. _class_ResourceSaver_constant_FLAG_RELATIVE_PATHS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_RELATIVE_PATHS** = ``1``

Salva la risorsa con un percorso relativo alla scena che la utilizza.

.. _class_ResourceSaver_constant_FLAG_BUNDLE_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_BUNDLE_RESOURCES** = ``2``

Impacchetta le risorse esterne.

.. _class_ResourceSaver_constant_FLAG_CHANGE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_CHANGE_PATH** = ``4``

Modifica il :ref:`Resource.resource_path<class_Resource_property_resource_path>` della risorsa salvata per adattarlo alla sua nuova posizione.

.. _class_ResourceSaver_constant_FLAG_OMIT_EDITOR_PROPERTIES:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_OMIT_EDITOR_PROPERTIES** = ``8``

Non salvare i metadati specifici dell'editor (identificati dal prefisso ``__editor``).

.. _class_ResourceSaver_constant_FLAG_SAVE_BIG_ENDIAN:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_SAVE_BIG_ENDIAN** = ``16``

Salva come big endian (vedi :ref:`FileAccess.big_endian<class_FileAccess_property_big_endian>`).

.. _class_ResourceSaver_constant_FLAG_COMPRESS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_COMPRESS** = ``32``

Comprime la risorsa al salvataggio utilizzando :ref:`FileAccess.COMPRESSION_ZSTD<class_FileAccess_constant_COMPRESSION_ZSTD>`. Disponibile solo per tipi di risorse binarie.

.. _class_ResourceSaver_constant_FLAG_REPLACE_SUBRESOURCE_PATHS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_REPLACE_SUBRESOURCE_PATHS** = ``64``

Occupa i percorsi delle sotto-risorse salvate (vedi :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ResourceSaver_method_add_resource_format_saver:

.. rst-class:: classref-method

|void| **add_resource_format_saver**\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, at_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceSaver_method_add_resource_format_saver>`

Registra un nuovo :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`. Il ResourceSaver utilizzerà il ResourceFormatSaver come descritto in :ref:`save()<class_ResourceSaver_method_save>`.

Questo metodo è eseguito implicitamente per i ResourceFormatSaver scritti in GDScript (vedi :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` per maggiori informazioni).

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recognized_extensions**\ (\ type\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_ResourceSaver_method_get_recognized_extensions>`

Restituisce la lista delle estensioni disponibili per salvare una risorsa di un determinato tipo.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_get_resource_id_for_path:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_resource_id_for_path**\ (\ path\: :ref:`String<class_String>`, generate\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceSaver_method_get_resource_id_for_path>`

Restituisce l'ID risorsa per il percorso specificato. Se ``generate`` è ``true``, verrà generato un nuovo ID risorsa se non ne viene trovato uno per il percorso. Se ``generate`` è ``false`` e il percorso non viene trovato, viene restituito :ref:`ResourceUID.INVALID_ID<class_ResourceUID_constant_INVALID_ID>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_remove_resource_format_saver:

.. rst-class:: classref-method

|void| **remove_resource_format_saver**\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ ) :ref:`🔗<class_ResourceSaver_method_remove_resource_format_saver>`

Annulla la registrazione del :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` specificato.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>` = "", flags\: |bitfield|\[:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>`\] = 0\ ) :ref:`🔗<class_ResourceSaver_method_save>`

Salva una risorsa su disco nel percorso specificato, utilizzando un :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` che riconosce l'oggetto risorsa. Se ``path`` è vuoto, **ResourceSaver** proverà a utilizzare :ref:`Resource.resource_path<class_Resource_property_resource_path>`.

È possibile specificare la maschera di bit ``flags`` per personalizzare il comportamento di salvataggio.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo.

\ **Nota:** Quando il progetto è in esecuzione, qualsiasi UID generato associato alla risorsa non sarà salvato poiché il codice necessario è eseguito solo in modalità editor.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_set_uid:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_uid**\ (\ resource\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ResourceSaver_method_set_uid>`

Imposta l'UID del percorso ``resource`` di risorsa su ``uid``. È possibile generare un nuovo UID tramite :ref:`ResourceUID.create_id()<class_ResourceUID_method_create_id>`.

Poiché le risorse normalmente ottengono un UID automaticamente, questo metodo è utile solo in casi molto specifici.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
