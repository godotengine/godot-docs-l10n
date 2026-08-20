:github_url: hide

.. _class_TileSetSource:

TileSetSource
=============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`, :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>`

Espone un insieme di tasselli per una risorsa :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Espone un insieme di tasselli per una risorsa :ref:`TileSet<class_TileSet>`.

I tasselli in una sorgente sono indicizzati con due ID, ID coordinate (di tipo Vector2i) e un ID alternativo (di tipo int), denominati in base al loro utilizzo nella classe :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`.

A seconda del tipo di sorgente TileSet, tali ID potrebbero avere delle restrizioni sui loro valori, ecco perché la classe base **TileSetSource** espone solo i getter per essi.

È possibile scorrere tutti i tasselli esposti da un TileSetSource scorrendo prima sugli ID coordinate tramite :ref:`get_tiles_count()<class_TileSetSource_method_get_tiles_count>` e :ref:`get_tile_id()<class_TileSetSource_method_get_tile_id>`, quindi sugli ID alternativi tramite :ref:`get_alternative_tiles_count()<class_TileSetSource_method_get_alternative_tiles_count>` e :ref:`get_alternative_tile_id()<class_TileSetSource_method_get_alternative_tile_id>`.

\ **Attenzione:** **TileSetSource** può essere aggiunto a un solo TileSet alla volta. Chiamando :ref:`TileSet.add_source()<class_TileSet_method_add_source>` su un secondo :ref:`TileSet<class_TileSet>` sarà rimossa la sorgente dal primo.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_alternative_tile_id<class_TileSetSource_method_get_alternative_tile_id>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, index\: :ref:`int<class_int>`\ ) |const|      |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_alternative_tiles_count<class_TileSetSource_method_get_alternative_tiles_count>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                             |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`get_tile_id<class_TileSetSource_method_get_tile_id>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_tiles_count<class_TileSetSource_method_get_tiles_count>`\ (\ ) |const|                                                                                                     |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_alternative_tile<class_TileSetSource_method_has_alternative_tile>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_tile<class_TileSetSource_method_has_tile>`\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                   |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TileSetSource_method_get_alternative_tile_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_alternative_tile_id**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_alternative_tile_id>`

Restituisce l'ID alternativo per il tassello con le coordinate ID ``atlas_coords`` all'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_alternative_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_alternative_tiles_count**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_alternative_tiles_count>`

Restituisce il numero di tasselli alternativi per le coordinate ID ``atlas_coords``.

Per :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`, questo restituisce sempre almeno 1, poiché il tassello base con ID 0 fa sempre parte della lista delle alternative.

Restituisce -1 se non è presente un tassello alle coordinate specificate.

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_tile_id:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_tile_id**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_get_tile_id>`

Restituisce l'ID di coordinate del tassello con l'indice ``index``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_get_tiles_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tiles_count**\ (\ ) |const| :ref:`🔗<class_TileSetSource_method_get_tiles_count>`

Restituisce il numero di tasselli definiti da questa sorgente dell'atlante (non inclusi i tasselli alternativi).

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_has_alternative_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_alternative_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`, alternative_tile\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileSetSource_method_has_alternative_tile>`

Restituisce se il tassello base alle coordinate ``atlas_coords`` ha un'alternativa con ID ``alternative_tile``.

.. rst-class:: classref-item-separator

----

.. _class_TileSetSource_method_has_tile:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_tile**\ (\ atlas_coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileSetSource_method_has_tile>`

Restituisce se questo atlante ha un tassello con ID di coordinate ``atlas_coords``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
