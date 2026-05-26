:github_url: hide

.. _class_TileMapLayer:

TileMapLayer
============

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo para mapas basados en tiles 2D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Nodo para mapas 2D basados en tiles. Un **TileMapLayer** utiliza un :ref:`TileSet<class_TileSet>` que contiene una lista de tiles que se utilizan para crear mapas basados en cuadrículas. A diferencia del nodo :ref:`TileMap<class_TileMap>`, que está obsoleto, **TileMapLayer** tiene solo una capa de tiles. Puedes usar varios **TileMapLayer** para lograr el mismo resultado que un nodo :ref:`TileMap<class_TileMap>`.

Por razones de rendimiento, todas las actualizaciones de TileMap se procesan por lotes al final de un fotograma. En particular, esto significa que los tiles de escena de un :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>` se inicializan después de su padre. Esto solo se pone en cola cuando está dentro del árbol de escena.

Para forzar una actualización antes, llama a :ref:`update_internals()<class_TileMapLayer_method_update_internals>`.

\ **Nota:** Por razones de rendimiento y compatibilidad, las coordenadas serializadas por **TileMapLayer** están limitadas a enteros firmados de 16 bits, es decir, el rango para las coordenadas X e Y es de ``-32768`` a ``32767``. Al guardar datos de tiles, los tiles fuera de este rango se ajustan.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando TileMaps <../tutorials/2d/using_tilemaps>`

- `Demo de Plataformas en 2D <https://godotengine.org/asset-library/asset/2727>`__

- `Demo Isométrica en 2D <https://godotengine.org/asset-library/asset/2718>`__

- `Demo Hexagonal en 2D <https://godotengine.org/asset-library/asset/2717>`__

- `Demo de navegación 2D basada en cuadrícula con AStarGrid2D <https://godotengine.org/asset-library/asset/2723>`__

- `2D Role Playing Game (RPG) Demo <https://godotengine.org/asset-library/asset/2729>`__

- `Demo de Personaje Cinemático en 2D <https://godotengine.org/asset-library/asset/2719>`__

- `Demo de capas dinámicas de TileMap 2D <https://godotengine.org/asset-library/asset/2713>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_TileMapLayer_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_TileMapLayer_signal_changed>`

Se emite cuando cambian las propiedades de este **TileMapLayer**. Esto incluye celdas modificadas, propiedades o cambios realizados en su :ref:`TileSet<class_TileSet>` asignado.

\ **Nota:** Esta señal puede emitirse muy a menudo al modificar por lotes un **TileMapLayer**. Evita ejecutar procesamiento complejo en una función conectada y considera retrasarlo hasta el final del fotograma (es decir, llamando a :ref:`Object.call_deferred()<class_Object_method_call_deferred>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_TileMapLayer_DebugVisibilityMode:

.. rst-class:: classref-enumeration

enum **DebugVisibilityMode**: :ref:`🔗<enum_TileMapLayer_DebugVisibilityMode>`

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_DEFAULT** = ``0``

Oculta las formas de depuración de colisiones o navegación en el editor y utiliza la configuración de depuración para determinar su visibilidad en el juego (es decir, :ref:`SceneTree.debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` o :ref:`SceneTree.debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>`).

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_FORCE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_HIDE** = ``2``

Siempre oculta las formas de depuración de colisiones o navegación.

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_FORCE_SHOW:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_SHOW** = ``1``

Siempre muestra las formas de depuración de colisiones o navegación.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_TileMapLayer_property_collision_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collision_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_collision_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collision_enabled**\ (\ )

Activa o desactiva las colisiones.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_collision_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **collision_visibility_mode** = ``0`` :ref:`🔗<class_TileMapLayer_property_collision_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_collision_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **get_collision_visibility_mode**\ (\ )

Muestra u oculta las formas de colisión del **TileMapLayer**. Si se establece en :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`, esto depende de la configuración de depuración de visualización de colisiones.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Si es ``false``, deshabilita este **TileMapLayer** por completo (renderizado, colisión, navegación, tiles de escena, etc.).

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_navigation_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **navigation_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_navigation_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_navigation_enabled**\ (\ )

Si es ``true``, las regiones de navegación están habilitadas.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_navigation_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **navigation_visibility_mode** = ``0`` :ref:`🔗<class_TileMapLayer_property_navigation_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **get_navigation_visibility_mode**\ (\ )

Muestra u oculta las mallas de navegación del **TileMapLayer**. Si se establece en :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`, esto depende de la configuración de depuración de visualización de navegación.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_occlusion_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **occlusion_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_occlusion_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_occlusion_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_occlusion_enabled**\ (\ )

Habilitar o deshabilitar la oclusión de luz.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_physics_quadrant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **physics_quadrant_size** = ``16`` :ref:`🔗<class_TileMapLayer_property_physics_quadrant_size>`

.. rst-class:: classref-property-setget

- |void| **set_physics_quadrant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_quadrant_size**\ (\ )

El tamaño del cuadrante de física de **TileMapLayer**. Dentro de un cuadrante de física, las celdas con propiedades físicas similares se agrupan y sus formas de colisión se fusionan. :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` define la longitud del lado de un cuadrado, en el sistema de coordenadas del mapa, que forma el cuadrante. Por lo tanto, el tamaño de cuadrante predeterminado agrupa juntos ``16 * 16 = 256`` tiles.

\ **Nota:** Como los cuadrantes se crean de acuerdo con el sistema de coordenadas del mapa, la "forma cuadrada" del cuadrante podría no parecerse a un cuadrado en el sistema de coordenadas local de **TileMapLayer**.

\ **Nota:** Esto afecta el valor devuelto por :ref:`get_coords_for_body_rid()<class_TileMapLayer_method_get_coords_for_body_rid>`. Valores más altos harán que esa función sea menos precisa. Para obtener las coordenadas exactas de la celda, debes establecer :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` en ``1``, lo que deshabilita la fragmentación de la física.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_rendering_quadrant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **rendering_quadrant_size** = ``16`` :ref:`🔗<class_TileMapLayer_property_rendering_quadrant_size>`

.. rst-class:: classref-property-setget

- |void| **set_rendering_quadrant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rendering_quadrant_size**\ (\ )

El tamaño del cuadrante de renderizado del **TileMapLayer**. Un cuadrante es un grupo de tiles que se dibujan juntos en un solo elemento de lienzo, con fines de optimización. :ref:`rendering_quadrant_size<class_TileMapLayer_property_rendering_quadrant_size>` define la longitud del lado de un cuadrado, en el sistema de coordenadas del mapa, que forma el cuadrante. Por lo tanto, el tamaño de cuadrante predeterminado agrupa juntos ``16 * 16 = 256`` tiles.

El tamaño del cuadrante no se aplica en un **TileMapLayer** ordenado por Y, ya que los tiles se agrupan por posición Y en ese caso.

\ **Nota:** Como los cuadrantes se crean de acuerdo con el sistema de coordenadas del mapa, la "forma cuadrada" del cuadrante podría no parecerse a un cuadrado en el sistema de coordenadas local de **TileMapLayer**.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_tile_map_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **tile_map_data** = ``PackedByteArray()`` :ref:`🔗<class_TileMapLayer_property_tile_map_data>`

.. rst-class:: classref-property-setget

- |void| **set_tile_map_data_from_array**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_tile_map_data_as_array**\ (\ )

Los datos del mapa de tiles sin procesar como un array de bytes.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_tile_set:

.. rst-class:: classref-property

:ref:`TileSet<class_TileSet>` **tile_set** :ref:`🔗<class_TileMapLayer_property_tile_set>`

.. rst-class:: classref-property-setget

- |void| **set_tile_set**\ (\ value\: :ref:`TileSet<class_TileSet>`\ )
- :ref:`TileSet<class_TileSet>` **get_tile_set**\ (\ )

El :ref:`TileSet<class_TileSet>` utilizado por esta capa. Las texturas, colisiones y el comportamiento adicional de todos los tiles disponibles se almacenan aquí.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_use_kinematic_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_kinematic_bodies** = ``false`` :ref:`🔗<class_TileMapLayer_property_use_kinematic_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_use_kinematic_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_kinematic_bodies**\ (\ )

Si es ``true``, las formas de colisión de este **TileMapLayer** se instanciarán como cuerpos cinemáticos. Esto puede ser necesario para mover nodos **TileMapLayer** (es decir, plataformas móviles).

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_x_draw_order_reversed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **x_draw_order_reversed** = ``false`` :ref:`🔗<class_TileMapLayer_property_x_draw_order_reversed>`

.. rst-class:: classref-property-setget

- |void| **set_x_draw_order_reversed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_x_draw_order_reversed**\ (\ )

Si :ref:`CanvasItem.y_sort_enabled<class_CanvasItem_property_y_sort_enabled>` está habilitado, establecer esto en ``true`` invertirá el orden en que se dibujan los tiles en el eje X.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_y_sort_origin:

.. rst-class:: classref-property

:ref:`int<class_int>` **y_sort_origin** = ``0`` :ref:`🔗<class_TileMapLayer_property_y_sort_origin>`

.. rst-class:: classref-property-setget

- |void| **set_y_sort_origin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_y_sort_origin**\ (\ )

Este valor de origen de ordenación Y se agrega al valor de origen de ordenación Y de cada tile. Esto permite, por ejemplo, simular un nivel de altura diferente. Esto puede ser útil para juegos de vista superior.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_TileMapLayer_private_method__tile_data_runtime_update:

.. rst-class:: classref-method

|void| **_tile_data_runtime_update**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, tile_data\: :ref:`TileData<class_TileData>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__tile_data_runtime_update>`

Se llama con un objeto :ref:`TileData<class_TileData>` que está a punto de ser utilizado internamente por el **TileMapLayer**, lo que permite su modificación en tiempo de ejecución.

Este método solo se llama si :ref:`_use_tile_data_runtime_update()<class_TileMapLayer_private_method__use_tile_data_runtime_update>` está implementado y devuelve ``true`` para el ``coords`` del tile dado.

\ **Advertencia:** Los subrecursos del objeto ``tile_data`` son los mismos que los del TileSet. Modificarlos podría afectar a todo el TileSet. En su lugar, asegúrate de duplicar esos recursos.

\ **Nota:** Si las propiedades del objeto ``tile_data`` deben cambiar con el tiempo, usa :ref:`notify_runtime_tile_data_update()<class_TileMapLayer_method_notify_runtime_tile_data_update>` para notificar al **TileMapLayer** que necesita una actualización.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_private_method__update_cells:

.. rst-class:: classref-method

|void| **_update_cells**\ (\ coords\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], forced_cleanup\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__update_cells>`

Se llama cuando las celdas de este **TileMapLayer** necesitan una actualización interna. Esta actualización puede deberse a que las celdas individuales se están modificando o a un cambio en el :ref:`tile_set<class_TileMapLayer_property_tile_set>` (lo que hace que todas las celdas se pongan en cola para una actualización). La primera llamada a esta función es siempre para inicializar todas las celdas del **TileMapLayer**. ``coords`` contiene las coordenadas de todas las celdas modificadas, aproximadamente en el orden en que fueron modificadas. ``forced_cleanup`` es ``true`` cuando los internos del **TileMapLayer** deben limpiarse por completo. Este es el caso cuando:

- La capa está deshabilitada;

- La capa no es visible;

- :ref:`tile_set<class_TileMapLayer_property_tile_set>` está establecido en ``null``;

- El nodo se elimina del árbol;

- El nodo se libera.

Ten en cuenta que cualquier actualización interna que ocurra mientras se verifica una de estas condiciones se considera una "limpieza". Véase también :ref:`update_internals()<class_TileMapLayer_method_update_internals>`.

\ **Advertencia:** La implementación de este método puede degradar el rendimiento del **TileMapLayer**.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_private_method__use_tile_data_runtime_update:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_use_tile_data_runtime_update**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__use_tile_data_runtime_update>`

Debería devolver ``true`` si el tile en las coordenadas ``coords`` requiere una actualización en tiempo de ejecución.

\ **Advertencia:** Asegúrate de que esta función solo devuelva ``true`` cuando sea necesario. Cualquier tile procesado en tiempo de ejecución sin necesidad de ello implicará una penalización significativa en el rendimiento.

\ **Nota:** Si el resultado de esta función debe cambiar, usa :ref:`notify_runtime_tile_data_update()<class_TileMapLayer_method_notify_runtime_tile_data_update>` para notificar al **TileMapLayer** que necesita una actualización.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TileMapLayer_method_clear>`

Limpia todas las celdas.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_erase_cell:

.. rst-class:: classref-method

|void| **erase_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapLayer_method_erase_cell>`

Borra la celda en las coordenadas ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_fix_invalid_tiles:

.. rst-class:: classref-method

|void| **fix_invalid_tiles**\ (\ ) :ref:`🔗<class_TileMapLayer_method_fix_invalid_tiles>`

Borra las celdas que contienen tiles que no existen en el :ref:`tile_set<class_TileMapLayer_property_tile_set>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_alternative_tile**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_alternative_tile>`

Devuelve el ID alternativo del tile de la celda en las coordenadas ``coords``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_atlas_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_cell_atlas_coords**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_atlas_coords>`

Devuelve el ID de las coordenadas del atlas del tile de la celda en las coordenadas ``coords``. Devuelve ``Vector2i(-1, -1)`` si la celda no existe.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_source_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_source_id**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_source_id>`

Devuelve el ID de origen del tile de la celda en las coordenadas ``coords``. Devuelve ``-1`` si la celda no existe.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_tile_data:

.. rst-class:: classref-method

:ref:`TileData<class_TileData>` **get_cell_tile_data**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_tile_data>`

Devuelve el objeto :ref:`TileData<class_TileData>` asociado con la celda dada, o ``null`` si la celda no existe o no es un :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`.

::

    func get_clicked_tile_power():
        var celda_pulsada = tile_map_layer.local_to_map(tile_map_layer.get_local_mouse_position())
        var datos = tile_map_layer.get_cell_tile_data(celda_pulsada)
        if datos:
            return datos.get_custom_data("power")
        else:
            return 0

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_coords_for_body_rid:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_coords_for_body_rid**\ (\ body\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_coords_for_body_rid>`

Devuelve las coordenadas del cuadrante de física (ver :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>`) para el cuerpo de física :ref:`RID<class_RID>` dado. Dicho :ref:`RID<class_RID>` se puede recuperar de :ref:`KinematicCollision2D.get_collider_rid()<class_KinematicCollision2D_method_get_collider_rid>`, al colisionar con un tile.

\ **Nota:** Valores más altos de :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` harán que esta función sea menos precisa. Para obtener las coordenadas exactas de la celda, debes establecer :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` en ``1``, lo que deshabilita la fragmentación de la física.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_navigation_map>`

Devuelve el :ref:`RID<class_RID>` de la navegación :ref:`NavigationServer2D<class_NavigationServer2D>` utilizada por este **TileMapLayer**.

Por defecto, esto devuelve el mapa de navegación :ref:`World2D<class_World2D>` predeterminado, a menos que se haya proporcionado un mapa personalizado usando :ref:`set_navigation_map()<class_TileMapLayer_method_set_navigation_map>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_neighbor_cell:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_neighbor_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, neighbor\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_neighbor_cell>`

Devuelve la celda vecina a la que se encuentra en las coordenadas ``coords``, identificada por la dirección ``neighbor``. Este método tiene en cuenta los diferentes diseños que puede tener un TileMap.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_pattern:

.. rst-class:: classref-method

:ref:`TileMapPattern<class_TileMapPattern>` **get_pattern**\ (\ coords_array\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]\ ) :ref:`🔗<class_TileMapLayer_method_get_pattern>`

Crea y devuelve un nuevo :ref:`TileMapPattern<class_TileMapPattern>` a partir del array de celdas dado. Véase también :ref:`set_pattern()<class_TileMapLayer_method_set_pattern>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_surrounding_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_surrounding_cells**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapLayer_method_get_surrounding_cells>`

Devuelve la lista de todas las celdas vecinas a la de ``coords``. Cualquier celda vecina es una que está tocando los bordes, por lo que para una celda cuadrada se devolverían 4 celdas, para un hexágono se devuelven 6 celdas.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_cells>`

Devuelve un array de :ref:`Vector2i<class_Vector2i>` con las posiciones de todas las celdas que contienen un tile. Una celda se considera vacía si su identificador de origen es igual a ``-1``, su identificador de coordenadas del atlas es ``Vector2(-1, -1)`` y su identificador alternativo es ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_cells_by_id:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells_by_id**\ (\ source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_cells_by_id>`

Devuelve un array :ref:`Vector2i<class_Vector2i>` con las posiciones de todas las celdas que contienen un tile. Los tiles pueden filtrarse según su origen (``source_id``), sus coordenadas del atlas (``atlas_coords``) o el ID alternativo (``alternative_tile``).

Si un parámetro tiene su valor establecido en el predeterminado, este parámetro no se utiliza para filtrar una celda. Por lo tanto, si todos los parámetros tienen sus respectivos valores predeterminados, este método devuelve el mismo resultado que :ref:`get_used_cells()<class_TileMapLayer_method_get_used_cells>`.

Se considera que una celda está vacía si su identificador de origen es igual a ``-1``, su identificador de coordenadas del atlas es ``Vector2(-1, -1)`` y su identificador alternativo es ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_rect:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_used_rect**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_rect>`

Devuelve un rectángulo que encierra los tiles usados (no vacíos) del mapa.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_has_body_rid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_body_rid**\ (\ body\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_has_body_rid>`

Devuelve si el :ref:`RID<class_RID>` de ``body`` pertenece a una de las celdas de este **TileMapLayer**.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_flipped_h:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_flipped_h**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_flipped_h>`

Devuelve ``true`` si la celda en las coordenadas ``coords`` se invierte horizontalmente. El resultado solo es válido para fuentes de atlas.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_flipped_v:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_flipped_v**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_flipped_v>`

Devuelve ``true`` si la celda en las coordenadas ``coords`` se invierte verticalmente. El resultado solo es válido para fuentes de atlas.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_transposed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_transposed**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_transposed>`

Devuelve ``true`` si la celda en las coordenadas ``coords`` está transpuesta. El resultado solo es válido para fuentes de atlas.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_local_to_map:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **local_to_map**\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_local_to_map>`

Devuelve las coordenadas del mapa de la celda que contiene la ``local_position`` dada. Si ``local_position`` está en coordenadas globales, considera usar :ref:`Node2D.to_local()<class_Node2D_method_to_local>` antes de pasarla a este método. Véase también :ref:`map_to_local()<class_TileMapLayer_method_map_to_local>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_map_pattern:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **map_pattern**\ (\ position_in_tilemap\: :ref:`Vector2i<class_Vector2i>`, coords_in_pattern\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ ) :ref:`🔗<class_TileMapLayer_method_map_pattern>`

Devuelve para las coordenadas dadas ``coords_in_pattern`` en un :ref:`TileMapPattern<class_TileMapPattern>` las coordenadas de celda correspondientes si el patrón se pegó en las coordenadas ``position_in_tilemap`` (ver :ref:`set_pattern()<class_TileMapLayer_method_set_pattern>`). Esta asignación es necesaria ya que en las formas de tile de medio desplazamiento, la asignación podría no funcionar calculando ``position_in_tile_map + coords_in_pattern``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_map_to_local:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **map_to_local**\ (\ map_position\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_map_to_local>`

Devuelve la posición centrada de una celda en el espacio de coordenadas local del **TileMapLayer**. Para convertir el valor devuelto en coordenadas globales, usa :ref:`Node2D.to_global()<class_Node2D_method_to_global>`. Véase también :ref:`local_to_map()<class_TileMapLayer_method_local_to_map>`.

\ **Nota:** Esto puede no corresponder a la posición visual del tile, es decir, ignora la propiedad :ref:`TileData.texture_origin<class_TileData_property_texture_origin>` de los tiles individuales.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_notify_runtime_tile_data_update:

.. rst-class:: classref-method

|void| **notify_runtime_tile_data_update**\ (\ ) :ref:`🔗<class_TileMapLayer_method_notify_runtime_tile_data_update>`

Notifica al nodo **TileMapLayer** que las llamadas a :ref:`_use_tile_data_runtime_update()<class_TileMapLayer_private_method__use_tile_data_runtime_update>` o :ref:`_tile_data_runtime_update()<class_TileMapLayer_private_method__tile_data_runtime_update>` conducirán a resultados diferentes. Esto activará así una actualización de **TileMapLayer**.

\ **Advertencia:** La actualización del **TileMapLayer** es computacionalmente costosa y puede afectar el rendimiento. Intenta limitar el número de llamadas a esta función para evitar actualizaciones innecesarias.

\ **Nota:** Esto no activa una actualización directa del **TileMapLayer**, la actualización se realizará al final del fotograma como de costumbre (a menos que llames a :ref:`update_internals()<class_TileMapLayer_method_update_internals>`).

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cell:

.. rst-class:: classref-method

|void| **set_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_TileMapLayer_method_set_cell>`

Establece los identificadores de tile para la celda en las coordenadas ``coords``. Cada tile del :ref:`TileSet<class_TileSet>` se identifica utilizando tres partes:

- El identificador de origen ``source_id`` identifica un identificador :ref:`TileSetSource<class_TileSetSource>`. Véase :ref:`TileSet.set_source_id()<class_TileSet_method_set_source_id>`,

- El identificador de coordenadas del atlas ``atlas_coords`` identifica las coordenadas de un tile en el atlas (si el origen es un :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`). Para :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>` siempre debe ser ``Vector2i(0, 0)``,

- El identificador de tile alternativo ``alternative_tile`` identifica un tile alternativo en el atlas (si el origen es un :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`), y la escena para un :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>`.

Si ``source_id`` se establece en ``-1``, ``atlas_coords`` en ``Vector2i(-1, -1)``, o ``alternative_tile`` en ``-1``, la celda se borrará. Una celda borrada obtiene **todos** sus identificadores establecidos automáticamente en sus respectivos valores no válidos, a saber, ``-1``, ``Vector2i(-1, -1)`` y ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cells_terrain_connect:

.. rst-class:: classref-method

|void| **set_cells_terrain_connect**\ (\ cells\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_TileMapLayer_method_set_cells_terrain_connect>`

Actualiza todas las celdas en el array de coordenadas ``cells`` para que utilicen el ``terrain`` dado para el ``terrain_set`` dado. Si una celda actualizada tiene el mismo terreno que una de sus celdas vecinas, esta función intenta unir las dos. Esta función podría actualizar los tiles vecinos si es necesario para crear transiciones de terreno correctas.

Si ``ignore_empty_terrains`` es ``true``, los terrenos vacíos se ignorarán al intentar encontrar el tile que mejor se adapte a las restricciones de terreno dadas.

\ **Nota:** Para que funcione correctamente, este método requiere que el TileSet del **TileMapLayer** tenga terrenos configurados con todas las combinaciones de terreno necesarias. De lo contrario, puede producir resultados inesperados.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cells_terrain_path:

.. rst-class:: classref-method

|void| **set_cells_terrain_path**\ (\ path\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_TileMapLayer_method_set_cells_terrain_path>`

Actualiza todas las celdas en el array de coordenadas ``path`` para que utilicen el ``terrain`` dado para el ``terrain_set`` dado. La función también conectará dos celdas sucesivas en la ruta con el mismo terreno. Esta función podría actualizar los tiles vecinos si es necesario para crear transiciones de terreno correctas.

Si ``ignore_empty_terrains`` es ``true``, los terrenos vacíos se ignorarán al intentar encontrar el tile que mejor se adapte a las restricciones de terreno dadas.

\ **Nota:** Para que funcione correctamente, este método requiere que el TileSet del **TileMapLayer** tenga terrenos configurados con todas las combinaciones de terreno necesarias. De lo contrario, puede producir resultados inesperados.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_TileMapLayer_method_set_navigation_map>`

Establece un ``map`` personalizado como un mapa de navegación :ref:`NavigationServer2D<class_NavigationServer2D>`. Si no se establece, se utiliza el mapa de navegación :ref:`World2D<class_World2D>` predeterminado en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_pattern:

.. rst-class:: classref-method

|void| **set_pattern**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ ) :ref:`🔗<class_TileMapLayer_method_set_pattern>`

Pega el :ref:`TileMapPattern<class_TileMapPattern>` en la ``position`` dada en el mapa de tiles. Véase también :ref:`get_pattern()<class_TileMapLayer_method_get_pattern>`.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_update_internals:

.. rst-class:: classref-method

|void| **update_internals**\ (\ ) :ref:`🔗<class_TileMapLayer_method_update_internals>`

Activa una actualización directa del **TileMapLayer**. Por lo general, no es necesario llamar a esta función, ya que el nodo **TileMapLayer** se actualiza automáticamente cuando se modifica una de sus propiedades o celdas.

Sin embargo, por razones de rendimiento, esas actualizaciones se procesan por lotes y se retrasan hasta el final del fotograma. Llamar a esta función forzará al **TileMapLayer** a actualizarse de inmediato.

\ **Advertencia:** La actualización del **TileMapLayer** es computacionalmente costosa y puede afectar el rendimiento. Intenta limitar el número de actualizaciones y cuántos tiles impactan.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
