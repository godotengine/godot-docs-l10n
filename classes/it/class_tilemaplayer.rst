:github_url: hide

.. _class_TileMapLayer:

TileMapLayer
============

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo per mappe basate su tasselli 2D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Nodo per mappe basate su tasselli 2D. Un **TileMapLayer** utilizza un :ref:`TileSet<class_TileSet>` che contiene un elenco di tasselli che servono per creare mappe basate su griglia. A differenza del nodo :ref:`TileMap<class_TileMap>`, che è deprecato, **TileMapLayer** ha un solo livello di tasselli. È possibile utilizzare diversi **TileMapLayer** per ottenere lo stesso risultato di un nodo :ref:`TileMap<class_TileMap>`.

Per motivi di prestazioni, tutti gli aggiornamenti di TileMap sono raggruppati alla fine di un frame. In particolare, ciò significa che i tasselli di scena da un :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>` sono inizializzati dopo il loro genitore. Ciò viene messo in coda solo quando ci si trova all'interno dell'albero di scene.

Per forzare un aggiornamento in anticipo, chiamare :ref:`update_internals()<class_TileMapLayer_method_update_internals>`.

\ **Nota:** Per motivi di prestazioni e compatibilità, le coordinate serializzate da **TileMapLayer** sono limitate a numeri interi con segno a 16 bit, ovvero l'intervallo per le coordinate X e Y è compreso tra ``-32768`` e ``32767``. Quando si salvano i dati dei tasselli, i tasselli al di fuori di questo intervallo sono avvolti.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dei Tilemap <../tutorials/2d/using_tilemaps>`

- `Demo di gioco di piattaforme in 2D <https://godotengine.org/asset-library/asset/2727>`__

- `Demo isometrica 2D <https://godotengine.org/asset-library/asset/2718>`__

- `Demo esagonale 2D <https://godotengine.org/asset-library/asset/2717>`__

- `Demo di navigazione basata su griglia 2D con AStarGrid2D <https://godotengine.org/asset-library/asset/2723>`__

- `Demo di gioco di ruolo (RPG) 2D <https://godotengine.org/asset-library/asset/2729>`__

- `Demo di personaggio cinematico in 2D <https://godotengine.org/asset-library/asset/2719>`__

- `Demo di livelli TileMap dinamici in 2D <https://godotengine.org/asset-library/asset/2713>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`collision_enabled<class_TileMapLayer_property_collision_enabled>`                   | ``true``              |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` | :ref:`collision_visibility_mode<class_TileMapLayer_property_collision_visibility_mode>`   | ``0``                 |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`enabled<class_TileMapLayer_property_enabled>`                                       | ``true``              |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`navigation_enabled<class_TileMapLayer_property_navigation_enabled>`                 | ``true``              |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` | :ref:`navigation_visibility_mode<class_TileMapLayer_property_navigation_visibility_mode>` | ``0``                 |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`occlusion_enabled<class_TileMapLayer_property_occlusion_enabled>`                   | ``true``              |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                             | :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>`           | ``16``                |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                             | :ref:`rendering_quadrant_size<class_TileMapLayer_property_rendering_quadrant_size>`       | ``16``                |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`                     | :ref:`tile_map_data<class_TileMapLayer_property_tile_map_data>`                           | ``PackedByteArray()`` |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`TileSet<class_TileSet>`                                     | :ref:`tile_set<class_TileMapLayer_property_tile_set>`                                     |                       |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`use_kinematic_bodies<class_TileMapLayer_property_use_kinematic_bodies>`             | ``false``             |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`x_draw_order_reversed<class_TileMapLayer_property_x_draw_order_reversed>`           | ``false``             |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                             | :ref:`y_sort_origin<class_TileMapLayer_property_y_sort_origin>`                           | ``0``                 |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`_tile_data_runtime_update<class_TileMapLayer_private_method__tile_data_runtime_update>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, tile_data\: :ref:`TileData<class_TileData>`\ ) |virtual|                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`_update_cells<class_TileMapLayer_private_method__update_cells>`\ (\ coords\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], forced_cleanup\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`_use_tile_data_runtime_update<class_TileMapLayer_private_method__use_tile_data_runtime_update>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual|                                                                                                                                 |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`clear<class_TileMapLayer_method_clear>`\ (\ )                                                                                                                                                                                                                                             |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`erase_cell<class_TileMapLayer_method_erase_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                                                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`fix_invalid_tiles<class_TileMapLayer_method_fix_invalid_tiles>`\ (\ )                                                                                                                                                                                                                     |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_alternative_tile<class_TileMapLayer_method_get_cell_alternative_tile>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_cell_atlas_coords<class_TileMapLayer_method_get_cell_atlas_coords>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                           |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_source_id<class_TileMapLayer_method_get_cell_source_id>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                 |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TileData<class_TileData>`                              | :ref:`get_cell_tile_data<class_TileMapLayer_method_get_cell_tile_data>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                 |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_coords_for_body_rid<class_TileMapLayer_method_get_coords_for_body_rid>`\ (\ body\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                        | :ref:`get_navigation_map<class_TileMapLayer_method_get_navigation_map>`\ (\ ) |const|                                                                                                                                                                                                           |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`get_neighbor_cell<class_TileMapLayer_method_get_neighbor_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, neighbor\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const|                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TileMapPattern<class_TileMapPattern>`                  | :ref:`get_pattern<class_TileMapLayer_method_get_pattern>`\ (\ coords_array\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]\ )                                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] | :ref:`get_surrounding_cells<class_TileMapLayer_method_get_surrounding_cells>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] | :ref:`get_used_cells<class_TileMapLayer_method_get_used_cells>`\ (\ ) |const|                                                                                                                                                                                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] | :ref:`get_used_cells_by_id<class_TileMapLayer_method_get_used_cells_by_id>`\ (\ source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) |const|                                             |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`                                  | :ref:`get_used_rect<class_TileMapLayer_method_get_used_rect>`\ (\ ) |const|                                                                                                                                                                                                                     |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_body_rid<class_TileMapLayer_method_has_body_rid>`\ (\ body\: :ref:`RID<class_RID>`\ ) |const|                                                                                                                                                                                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_cell_flipped_h<class_TileMapLayer_method_is_cell_flipped_h>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_cell_flipped_v<class_TileMapLayer_method_is_cell_flipped_v>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_cell_transposed<class_TileMapLayer_method_is_cell_transposed>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                 |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`local_to_map<class_TileMapLayer_method_local_to_map>`\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                              | :ref:`map_pattern<class_TileMapLayer_method_map_pattern>`\ (\ position_in_tilemap\: :ref:`Vector2i<class_Vector2i>`, coords_in_pattern\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ )                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`map_to_local<class_TileMapLayer_method_map_to_local>`\ (\ map_position\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                                                                                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`notify_runtime_tile_data_update<class_TileMapLayer_method_notify_runtime_tile_data_update>`\ (\ )                                                                                                                                                                                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cell<class_TileMapLayer_method_set_cell>`\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = 0\ )                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cells_terrain_connect<class_TileMapLayer_method_set_cells_terrain_connect>`\ (\ cells\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cells_terrain_path<class_TileMapLayer_method_set_cells_terrain_path>`\ (\ path\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ )        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_navigation_map<class_TileMapLayer_method_set_navigation_map>`\ (\ map\: :ref:`RID<class_RID>`\ )                                                                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_pattern<class_TileMapLayer_method_set_pattern>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ )                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`update_internals<class_TileMapLayer_method_update_internals>`\ (\ )                                                                                                                                                                                                                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_TileMapLayer_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_TileMapLayer_signal_changed>`

Emesso quando cambiano le proprietà di questo **TileMapLayer**. Ciò include celle modificate, proprietà o modifiche apportate al :ref:`TileSet<class_TileSet>` assegnato.

\ **Nota:** Questo segnale può essere emesso molto spesso quando si modifica in blocco un **TileMapLayer**. Evitare di eseguire elaborazioni complesse in una funzione connessa e considerare di ritardarla alla fine del frame (ad esempio chiamando :ref:`Object.call_deferred()<class_Object_method_call_deferred>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_TileMapLayer_DebugVisibilityMode:

.. rst-class:: classref-enumeration

enum **DebugVisibilityMode**: :ref:`🔗<enum_TileMapLayer_DebugVisibilityMode>`

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_DEFAULT** = ``0``

Nasconde le forme di debug delle collisioni o della navigazione nell'editor e usa le impostazioni di debug per determinarne la visibilità nel gioco (ovvero :ref:`SceneTree.debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` o :ref:`SceneTree.debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>`).

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_FORCE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_HIDE** = ``2``

Nascondi sempre le forme di debug delle collisioni o della navigazione.

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_FORCE_SHOW:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_SHOW** = ``1``

Mostra sempre le forme di debug delle collisioni o della navigazione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TileMapLayer_property_collision_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collision_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_collision_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collision_enabled**\ (\ )

Abilita o disabilita le collisioni.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_collision_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **collision_visibility_mode** = ``0`` :ref:`🔗<class_TileMapLayer_property_collision_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_collision_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **get_collision_visibility_mode**\ (\ )

Mostra o nasconde le forme di collisione del **TileMapLayer**. Se impostato su :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`, dipende dalle impostazioni di debug di visualizzazione delle collisioni.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Se ``false``, disabilita completamente questo **TileMapLayer** (rendering, collisione, navigazione, tasselli di scena, ecc.)

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_navigation_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **navigation_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_navigation_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_navigation_enabled**\ (\ )

Se ``true``, le regioni di navigazione sono abilitate.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_navigation_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **navigation_visibility_mode** = ``0`` :ref:`🔗<class_TileMapLayer_property_navigation_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **get_navigation_visibility_mode**\ (\ )

Mostra o nascondi le mesh di navigazione del **TileMapLayer**. Se impostato su :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`, dipende dalle impostazioni di debug della navigazione.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_occlusion_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **occlusion_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_occlusion_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_occlusion_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_occlusion_enabled**\ (\ )

Abilita o disabilita l'occlusione di luce.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_physics_quadrant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **physics_quadrant_size** = ``16`` :ref:`🔗<class_TileMapLayer_property_physics_quadrant_size>`

.. rst-class:: classref-property-setget

- |void| **set_physics_quadrant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_quadrant_size**\ (\ )

La dimensione dei quadranti di fisica del **TileMapLayer**. All'interno di un quadrante di fisica, le celle con proprietà fisiche simili sono raggruppate assieme e le loro forme di collisione sono unite. :ref:`rendering_quadrant_size<class_TileMapLayer_property_rendering_quadrant_size>` definisce la lunghezza del lato di un quadrato, nel sistema di coordinate della mappa, che forma il quadrante. Quindi, la dimensione predefinita dei quadranti raggruppa insieme ``16 * 16 = 256`` tasselli.

\ **Nota:** Poiché i quadranti sono creati secondo il sistema di coordinate della mappa, la "forma quadrata" dei quadranti potrebbe non apparire quadrata nel sistema di coordinate locale del **TileMapLayer**.

\ **Nota:** Ciò influisce sul valore restituito da :ref:`get_coords_for_body_rid()<class_TileMapLayer_method_get_coords_for_body_rid>`. Valori più alti renderanno quella funzione meno precisa. Per ottenere le coordinate esatte di una cella, è necessario impostare :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` su ``1``, il che disabilita la suddivisione fisica.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_rendering_quadrant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **rendering_quadrant_size** = ``16`` :ref:`🔗<class_TileMapLayer_property_rendering_quadrant_size>`

.. rst-class:: classref-property-setget

- |void| **set_rendering_quadrant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rendering_quadrant_size**\ (\ )

La dimensione dei quadranti di rendering del **TileMapLayer**. Un quadrante è un gruppo di tasselli da disegnare insieme su un singolo elemento canvas, per scopi di ottimizzazione. :ref:`rendering_quadrant_size<class_TileMapLayer_property_rendering_quadrant_size>` definisce la lunghezza del lato di un quadrato, nel sistema di coordinate della mappa, che forma il quadrante. Quindi, la dimensione predefinita dei quadranti raggruppa insieme ``16 * 16 = 256`` tasselli.

La dimensione dei quadranti non si applica a un **TileMapLayer** ordinato per Y, poiché in quel caso i tasselli sono raggruppati in base alla posizione Y.

\ **Nota:** Poiché i quadranti sono creati secondo il sistema di coordinate della mappa, la "forma quadrata" dei quadranti potrebbe non apparire quadrata nel sistema di coordinate locale del **TileMapLayer**.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_tile_map_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **tile_map_data** = ``PackedByteArray()`` :ref:`🔗<class_TileMapLayer_property_tile_map_data>`

.. rst-class:: classref-property-setget

- |void| **set_tile_map_data_from_array**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_tile_map_data_as_array**\ (\ )

I dati grezzi della mappa dei tasselli come array di byte.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_tile_set:

.. rst-class:: classref-property

:ref:`TileSet<class_TileSet>` **tile_set** :ref:`🔗<class_TileMapLayer_property_tile_set>`

.. rst-class:: classref-property-setget

- |void| **set_tile_set**\ (\ value\: :ref:`TileSet<class_TileSet>`\ )
- :ref:`TileSet<class_TileSet>` **get_tile_set**\ (\ )

Il :ref:`TileSet<class_TileSet>` utilizzato da questo livello. Le texture, le collisioni e il comportamento aggiuntivo di tutti i tasselli disponibili sono memorizzati qui.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_use_kinematic_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_kinematic_bodies** = ``false`` :ref:`🔗<class_TileMapLayer_property_use_kinematic_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_use_kinematic_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_kinematic_bodies**\ (\ )

Se ``true``, le forme di collisione di questo **TileMapLayer** saranno istanziate come corpi cinematici. Ciò può essere necessario per spostare i nodi **TileMapLayer** (ad esempio piattaforme mobili).

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_x_draw_order_reversed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **x_draw_order_reversed** = ``false`` :ref:`🔗<class_TileMapLayer_property_x_draw_order_reversed>`

.. rst-class:: classref-property-setget

- |void| **set_x_draw_order_reversed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_x_draw_order_reversed**\ (\ )

Se :ref:`CanvasItem.y_sort_enabled<class_CanvasItem_property_y_sort_enabled>` è abilitato, impostando questo su ``true`` sarà invertito l'ordine in cui i tasselli sono disegnati sull'asse X.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_y_sort_origin:

.. rst-class:: classref-property

:ref:`int<class_int>` **y_sort_origin** = ``0`` :ref:`🔗<class_TileMapLayer_property_y_sort_origin>`

.. rst-class:: classref-property-setget

- |void| **set_y_sort_origin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_y_sort_origin**\ (\ )

Questo valore di origine di Y-sort viene aggiunto al valore di origine Y-sort di ogni tile. Ciò consente, ad esempio, di simulare un diverso livello di altezza. Ciò può essere utile per i giochi con vista dall'alto.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TileMapLayer_private_method__tile_data_runtime_update:

.. rst-class:: classref-method

|void| **_tile_data_runtime_update**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, tile_data\: :ref:`TileData<class_TileData>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__tile_data_runtime_update>`

Chiamato con un oggetto :ref:`TileData<class_TileData>` che sta per essere utilizzato internamente dal **TileMapLayer**, consentendone la modifica in fase di esecuzione.

Questo metodo viene chiamato solo se :ref:`_use_tile_data_runtime_update()<class_TileMapLayer_private_method__use_tile_data_runtime_update>` è implementato e restituisce ``true`` per le coordinate ``coords`` del tassello.

\ **Attenzione:** le sotto-risorse dell'oggetto ``tile_data`` sono le stesse di quelle nel TileSet. Modificarle potrebbe avere un impatto sull'intero TileSet. Assicurati invece di duplicare tali risorse.

\ **Nota:** Se le proprietà dell'oggetto ``tile_data`` dovessero cambiare nel tempo, usa :ref:`notify_runtime_tile_data_update()<class_TileMapLayer_method_notify_runtime_tile_data_update>` per notificare al **TileMapLayer** che necessita di un aggiornamento.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_private_method__update_cells:

.. rst-class:: classref-method

|void| **_update_cells**\ (\ coords\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], forced_cleanup\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__update_cells>`

Chiamato quando le celle di questo **TileMapLayer** necessitano di un aggiornamento interno. Questo aggiornamento può essere causato dalla modifica di singole celle o da una modifica nel :ref:`tile_set<class_TileMapLayer_property_tile_set>` (la quale causa la messa in coda di tutte le celle per un aggiornamento). La prima chiamata a questa funzione è sempre per inizializzare tutte le celle del **TileMapLayer**. ``coords`` contiene le coordinate di tutte le celle modificate, più o meno nell'ordine in cui sono state modificate. ``forced_cleanup`` è ``true`` quando le parti interne del **TileMapLayer** devono essere completamente ripulite. Questo è il caso quando:

- Il livello è disabilitato;

- Il livello non è visibile;

- :ref:`tile_set<class_TileMapLayer_property_tile_set>` è impostato su ``null``;

- Il nodo viene rimosso dall'albero;

- Il nodo viene liberato.

Nota che qualsiasi aggiornamento interno che avviene mentre una di queste condizioni si è verificata è considerato una "pulizia". Vedi anche :ref:`update_internals()<class_TileMapLayer_method_update_internals>`.

\ **Attenzione:** L'implementazione di questo metodo potrebbe degradare le prestazioni del **TileMapLayer**.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_private_method__use_tile_data_runtime_update:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_use_tile_data_runtime_update**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__use_tile_data_runtime_update>`

Dovrebbe restituire ``true`` se il tassello alle coordinate ``coords`` richiede un aggiornamento in fase di esecuzione.

\ **Avviso:** Assicurati che questa funzione restituisca ``true`` solo quando necessario. Qualsiasi tassello elaborato in fase di esecuzione senza che ce ne sia bisogno implicherà una notevole penalizzazione delle prestazioni.

\ **Nota:** Se il risultato di questa funzione dovesse cambiare, usa :ref:`notify_runtime_tile_data_update()<class_TileMapLayer_method_notify_runtime_tile_data_update>` per notificare a **TileMapLayer** che necessita di un aggiornamento.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TileMapLayer_method_clear>`

Cancella tutte le celle.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_erase_cell:

.. rst-class:: classref-method

|void| **erase_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapLayer_method_erase_cell>`

Cancella la cella alle coordinate ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_fix_invalid_tiles:

.. rst-class:: classref-method

|void| **fix_invalid_tiles**\ (\ ) :ref:`🔗<class_TileMapLayer_method_fix_invalid_tiles>`

Cancella le celle contenenti tasselli che non esistono nel :ref:`tile_set<class_TileMapLayer_property_tile_set>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_alternative_tile**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_alternative_tile>`

Restituisce l'ID tassello alternativo della cella alle coordinate ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_atlas_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_cell_atlas_coords**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_atlas_coords>`

Restituisce l'ID coordinate dell'atlante di tasselli della cella alle coordinate ``coords``. Restituisce ``Vector2i(-1, -1)`` se la cella non esiste.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_source_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_source_id**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_source_id>`

Restituisce l'ID sorgente di tassello della cella alle coordinate ``coords``. Restituisce ``-1`` se la cella non esiste.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_tile_data:

.. rst-class:: classref-method

:ref:`TileData<class_TileData>` **get_cell_tile_data**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_tile_data>`

Restituisce l'oggetto :ref:`TileData<class_TileData>` associato alla cella specificata, oppure ``null`` se la cella non esiste o non è un :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`.

::

    func get_clicked_tile_power():
        var clicked_cell = tile_map_layer.local_to_map(tile_map_layer.get_local_mouse_position())
        var data = tile_map_layer.get_cell_tile_data(clicked_cell)
        if data:
            return data.get_custom_data("power")
        else:
            return 0

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_coords_for_body_rid:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_coords_for_body_rid**\ (\ body\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_coords_for_body_rid>`

Restituisce le coordinate del quadrante di fisica (vedi :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>`) per il :ref:`RID<class_RID>` del corpo fisico specificato. Tale :ref:`RID<class_RID>` può essere recuperato da :ref:`KinematicCollision2D.get_collider_rid()<class_KinematicCollision2D_method_get_collider_rid>`, quando avviene una collisione con un tassello.

\ **Nota:** Valori più alti di :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` renderanno questa funzione meno precisa. Per ottenere le coordinate esatte di una cella, è necessario impostare :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` su ``1``, il che disabilita la suddivisione fisica.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_navigation_map>`

Restituisce il :ref:`RID<class_RID>` della navigazione del :ref:`NavigationServer2D<class_NavigationServer2D>` utilizzata da questo **TileMapLayer**.

Per impostazione predefinita, restituisce la mappa di navigazione predefinita del :ref:`World2D<class_World2D>`, a meno che non sia stata fornita una mappa personalizzata tramite :ref:`set_navigation_map()<class_TileMapLayer_method_set_navigation_map>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_neighbor_cell:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_neighbor_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, neighbor\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_neighbor_cell>`

Restituisce la cella adiacente a quella con le coordinate ``coords``, identificata dalla direzione ``neighbor``. Questo metodo tiene conto dei diversi layout che una TileMap può assumere.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_pattern:

.. rst-class:: classref-method

:ref:`TileMapPattern<class_TileMapPattern>` **get_pattern**\ (\ coords_array\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]\ ) :ref:`🔗<class_TileMapLayer_method_get_pattern>`

Crea e restituisce un nuovo :ref:`TileMapPattern<class_TileMapPattern>` dall'array di celle specificato. Vedi anche :ref:`set_pattern()<class_TileMapLayer_method_set_pattern>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_surrounding_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_surrounding_cells**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapLayer_method_get_surrounding_cells>`

Restituisce la lista di tutte le celle adiacenti a quella nelle coordinate ``coords``. Ogni cella adiacente è una cella che tocca i bordi, quindi per una cella quadrata verrebbero restituite 4 celle, per un esagono ne vengono restituite 6.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_cells>`

Restituisce un array di :ref:`Vector2i<class_Vector2i>` con le posizioni di tutte le celle contenenti un tassello. Una cella è considerata vuota se il suo identificatore di sorgente è uguale a ``-1``, il suo identificatore di coordinate atlante è ``Vector2(-1, -1)`` e il suo identificatore di alternativo è ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_cells_by_id:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells_by_id**\ (\ source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_cells_by_id>`

Restituisce un array :ref:`Vector2i<class_Vector2i>` con le posizioni di tutte le celle contenenti un tassello. I tasselli possono essere filtrati in base alla loro origine (``source_id``), alle loro coordinate d'atlante (``atlas_coords``) o all'ID alternativo (``alternative_tile``).

Se un parametro ha il suo valore impostato su quello predefinito, questo parametro non viene utilizzato per filtrare una cella. Pertanto, se tutti i parametri hanno i rispettivi valori predefiniti, questo metodo restituisce lo stesso risultato di :ref:`get_used_cells()<class_TileMapLayer_method_get_used_cells>`.

Una cella è considerata vuota se il suo identificatore di sorgente è uguale a ``-1``, il suo identificatore di coordinate atlante è ``Vector2(-1, -1)`` e il suo identificatore di alternativo è ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_rect:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_used_rect**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_rect>`

Restituisce un rettangolo che racchiude i tasselli usati (non vuoti) della mappa.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_has_body_rid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_body_rid**\ (\ body\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_has_body_rid>`

Restituisce se il :ref:`RID<class_RID>` ``body`` fornito appartiene a una delle celle di questo **TileMapLayer**.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_flipped_h:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_flipped_h**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_flipped_h>`

Restituisce ``true`` se la cella alle coordinate ``coords`` è ribaltata orizzontalmente. Il risultato è valido solo per le sorgenti atlante.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_flipped_v:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_flipped_v**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_flipped_v>`

Restituisce ``true`` se la cella alle coordinate ``coords`` è ribaltata verticalmente. Il risultato è valido solo per le sorgenti atlante.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_transposed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_transposed**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_transposed>`

Restituisce ``true`` se la cella alle coordinate ``coords`` è trasposta. Il risultato è valido solo per le sorgenti atlante.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_local_to_map:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **local_to_map**\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_local_to_map>`

Restituisce le coordinate della mappa della cella contenente la posizione locale ``local_position``. Se ``local_position`` è in coordinate globali, considera di usare :ref:`Node2D.to_local()<class_Node2D_method_to_local>` prima di passarlo a questo metodo. Vedi anche :ref:`map_to_local()<class_TileMapLayer_method_map_to_local>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_map_pattern:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **map_pattern**\ (\ position_in_tilemap\: :ref:`Vector2i<class_Vector2i>`, coords_in_pattern\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ ) :ref:`🔗<class_TileMapLayer_method_map_pattern>`

Restituisce per le coordinate ``coords_in_pattern`` in un :ref:`TileMapPattern<class_TileMapPattern>` le coordinate della cella corrispondente se il motivo è stato incollato alle coordinate ``position_in_tilemap`` (vedi :ref:`set_pattern()<class_TileMapLayer_method_set_pattern>`). Questa mappatura è richiesta poiché nelle forme dei tasselli con offset dimezzato, la mappatura potrebbe non funzionare calcolando ``position_in_tile_map + coords_in_pattern``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_map_to_local:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **map_to_local**\ (\ map_position\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_map_to_local>`

Restituisce la posizione centrata di una cella nello spazio di coordinate locali del **TileMapLayer**. Per convertire il valore restituito in coordinate globali, usa :ref:`Node2D.to_global()<class_Node2D_method_to_global>`. Vedi anche :ref:`local_to_map()<class_TileMapLayer_method_local_to_map>`.

\ **Nota:** Questo potrebbe non corrispondere alla posizione visiva del tassello, ovvero ignora la proprietà :ref:`TileData.texture_origin<class_TileData_property_texture_origin>` dei singoli tasselli.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_notify_runtime_tile_data_update:

.. rst-class:: classref-method

|void| **notify_runtime_tile_data_update**\ (\ ) :ref:`🔗<class_TileMapLayer_method_notify_runtime_tile_data_update>`

Notifica al nodo **TileMapLayer** che le chiamate a :ref:`_use_tile_data_runtime_update()<class_TileMapLayer_private_method__use_tile_data_runtime_update>` o :ref:`_tile_data_runtime_update()<class_TileMapLayer_private_method__tile_data_runtime_update>` porteranno a risultati diversi. Ciò attiverà quindi un aggiornamento del **TileMapLayer**.

\ **Attenzione:** L'aggiornamento di **TileMapLayer** è computazionalmente costoso e potrebbe avere un impatto sulle prestazioni. Prova a limitare il numero di chiamate a questa funzione per evitare aggiornamenti non necessari.

\ **Nota:** Ciò non attiva un aggiornamento diretto del **TileMapLayer**, l'aggiornamento sarà eseguito alla fine del frame come al solito (a meno che tu non chiami :ref:`update_internals()<class_TileMapLayer_method_update_internals>`).

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cell:

.. rst-class:: classref-method

|void| **set_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_TileMapLayer_method_set_cell>`

Imposta gli identificatori del tassello per la cella alle coordinate ``coords``. Ogni tassello del :ref:`TileSet<class_TileSet>` è identificato utilizzando tre parti:

- L'identificatore di sorgente ``source_id`` identifica un identificatore :ref:`TileSetSource<class_TileSetSource>`. Vedi :ref:`TileSet.set_source_id()<class_TileSet_method_set_source_id>`,

- L'identificatore delle coordinate dell'atlante ``atlas_coords`` identifica le coordinate di un tassello nell'atlante (se la sorgente è un :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`). Per :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>` dovrebbe essere sempre ``Vector2i(0, 0)``,

- L'identificatore di tassello alternativo ``alternative_tile`` identifica un'alternativo tassello nell'atlante (se la sorgente è un :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`) e la scena per un :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>`.

Se ``source_id`` è impostato su ``-1``, ``atlas_coords`` su ``Vector2i(-1, -1)``, o ``alternative_tile`` su ``-1``, la cella verrà cancellata. Una cella cancellata ottiene **tutti** i suoi identificatori impostati automaticamente sui rispettivi valori non validi, ovvero ``-1``, ``Vector2i(-1, -1)`` e ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cells_terrain_connect:

.. rst-class:: classref-method

|void| **set_cells_terrain_connect**\ (\ cells\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_TileMapLayer_method_set_cells_terrain_connect>`

Aggiorna tutte le celle nell'array di coordinate ``cells`` in modo che usino il terreno ``terrain`` per l'insieme di terreni ``terrain_set``. Se una cella aggiornata ha lo stesso terreno di una delle celle vicine, questa funzione tenta di unire le due. Questa funzione potrebbe aggiornare i tasselli vicine se necessario per creare transizioni di terreno adeguate.

Se ``ignore_empty_terrains`` è ``true``, i terreni vuoti saranno ignorati quando si tenta di trovare il tassello più adatto per i vincoli di terreno specificati.

\ **Nota:** Per funzionare correttamente, questo metodo richiede che il TileSet del **TileMapLayer** abbia terreni impostati con tutte le combinazioni di terreno richieste. Altrimenti, potrebbe produrre risultati imprevisti.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cells_terrain_path:

.. rst-class:: classref-method

|void| **set_cells_terrain_path**\ (\ path\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_TileMapLayer_method_set_cells_terrain_path>`

Aggiorna tutte le celle nell'array di coordinate ``path`` in modo che usino il terreno ``terrain`` per l'insieme di terreni ``terrain_set``. La funzione collegherà anche due celle successive nel percorso con lo stesso terreno. Questa funzione potrebbe aggiornare i tasselli vicini se necessario per creare transizioni di terreno adeguate.

Se ``ignore_empty_terrains`` è ``true``, i terreni vuoti saranno ignorati quando si tenta di trovare il tassello più adatto per i vincoli di terreno specificati.

\ **Nota:** Per funzionare correttamente, questo metodo richiede che il TileSet del **TileMapLayer** abbia terreni impostati con tutte le combinazioni di terreno richieste. Altrimenti, potrebbe produrre risultati imprevisti.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_TileMapLayer_method_set_navigation_map>`

Imposta una ``map`` personalizzata come mappa di navigazione del :ref:`NavigationServer2D<class_NavigationServer2D>`. Se non impostata, utilizza invece la mappa di navigazione predefinita del :ref:`World2D<class_World2D>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_pattern:

.. rst-class:: classref-method

|void| **set_pattern**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ ) :ref:`🔗<class_TileMapLayer_method_set_pattern>`

Incolla il :ref:`TileMapPattern<class_TileMapPattern>` alla posizione ``position`` nella mappa. Vedi anche :ref:`get_pattern()<class_TileMapLayer_method_get_pattern>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_update_internals:

.. rst-class:: classref-method

|void| **update_internals**\ (\ ) :ref:`🔗<class_TileMapLayer_method_update_internals>`

Attiva un aggiornamento diretto del **TileMapLayer**. Di solito, non è necessario chiamare questa funzione, poiché il nodo **TileMapLayer** si aggiorna automaticamente quando una delle sue proprietà o celle viene modificata.

Tuttavia, per motivi di prestazioni, tali aggiornamenti sono raggruppati e ritardati alla fine del frame. Chiamare questa funzione forzerà invece **TileMapLayer** ad aggiornarsi immediatamente.

\ **Attenzione:** L'aggiornamento di **TileMapLayer** è computazionalmente costoso e potrebbe avere un impatto sulle prestazioni. Prova a limitare il numero di aggiornamenti e il numero di tasselli che influenzano.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
