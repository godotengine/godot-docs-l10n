:github_url: hide

.. _class_TileMapPattern:

TileMapPattern
==============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene un motivo da copiare o incollare nei :ref:`TileMap<class_TileMap>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa risorsa contiene un insieme di celle per facilitare le manipolazioni in massa di :ref:`TileMap<class_TileMap>`.

Un motivo inizia sempre alle coordinate ``(0,0)`` e non può avere celle con coordinate negative.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_alternative_tile<class_TileMapPattern_method_get_cell_alternative_tile>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                 |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_cell_atlas_coords<class_TileMapPattern_method_get_cell_atlas_coords>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                         |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_source_id<class_TileMapPattern_method_get_cell_source_id>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                               |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_size<class_TileMapPattern_method_get_size>`\ (\ ) |const|                                                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] | :ref:`get_used_cells<class_TileMapPattern_method_get_used_cells>`\ (\ ) |const|                                                                                                                                                                                 |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_cell<class_TileMapPattern_method_has_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                   |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_empty<class_TileMapPattern_method_is_empty>`\ (\ ) |const|                                                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_cell<class_TileMapPattern_method_remove_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, update_size\: :ref:`bool<class_bool>`\ )                                                                                                              |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cell<class_TileMapPattern_method_set_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_size<class_TileMapPattern_method_set_size>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                             |
   +--------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TileMapPattern_method_get_cell_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_alternative_tile**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_alternative_tile>`

Restituisce l'ID di tassello alternativo nella cella alle coordinate ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_cell_atlas_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_cell_atlas_coords**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_atlas_coords>`

Restituisce l'ID delle coordinate d'atlante del tassello nella cella alle coordinate ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_cell_source_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_source_id**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_cell_source_id>`

Restituisce l'ID sorgente del tassello nella cella alle coordinate ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_size**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_size>`

Restituisce le dimensioni, in celle, del motivo.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_get_used_cells>`

Restituisce la lista delle coordinate delle celle usate nel motivo.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_has_cell:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapPattern_method_has_cell>`

Restituisce se il motivo ha un tassello alle coordinate indicate.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_TileMapPattern_method_is_empty>`

Restituisce se il motivo è vuoto o no.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_remove_cell:

.. rst-class:: classref-method

|void| **remove_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, update_size\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileMapPattern_method_remove_cell>`

Rimuove la cella alle coordinate indicate.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_set_cell:

.. rst-class:: classref-method

|void| **set_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_TileMapPattern_method_set_cell>`

Imposta gli identificatori del tassello per la cella alle coordinate ``coords``. Vedi :ref:`TileMap.set_cell()<class_TileMap_method_set_cell>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapPattern_method_set_size:

.. rst-class:: classref-method

|void| **set_size**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapPattern_method_set_size>`

Imposta le dimensioni del motivo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
