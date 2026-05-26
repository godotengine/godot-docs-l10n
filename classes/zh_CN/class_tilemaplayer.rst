:github_url: hide

.. _class_TileMapLayer:

TileMapLayer
============

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基于 2D 图块的地图节点。

.. rst-class:: classref-introduction-group

描述
----

基于 2D 图块的地图节点。\ **TileMapLayer** 即图块地图层，需要使用包含了图块列表的 :ref:`TileSet<class_TileSet>`\ ，用于创建基于栅格的地图。与已经废弃的 :ref:`TileMap<class_TileMap>` 节点不同，\ **TileMapLayer** 只包含一个图块层。可以使用多个 **TileMapLayer** 实现和 :ref:`TileMap<class_TileMap>` 节点相同的效果。

出于性能原因，所有 TileMap 更新都会在一帧结束时进行批处理。值得注意的是，这意味着 :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>` 中的场景图块可能会在其父级之后初始化。仅当在场景树内时才会排队。

要提前强制更新，请调用 :ref:`update_internals()<class_TileMapLayer_method_update_internals>`\ 。

\ **注意：**\ 考虑到性能和兼容性，\ **TileMapLayer** 所序列化的坐标限制为 16 位带符号整数，即 X、Y 坐标的范围在 ``-32768`` 到 ``32767`` 之间。保存图块数据时，该范围之外的图块会发生环绕。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 Tilemap <../tutorials/2d/using_tilemaps>`

- `2D 平台跳跃演示 <https://godotengine.org/asset-library/asset/2727>`__

- `2D 等轴演示 <https://godotengine.org/asset-library/asset/2718>`__

- `2D 六边形演示 <https://godotengine.org/asset-library/asset/2717>`__

- `AStarGrid2D 的 2D 网格导航演示 <https://godotengine.org/asset-library/asset/2723>`__

- `2D 角色扮演游戏（RPG）演示 <https://godotengine.org/asset-library/asset/2729>`__

- `2D 运动学角色演示 <https://godotengine.org/asset-library/asset/2719>`__

- `2D 动态 TileMap 层演示 <https://godotengine.org/asset-library/asset/2713>`__

.. rst-class:: classref-reftable-group

属性
----

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

方法
----

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

信号
----

.. _class_TileMapLayer_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_TileMapLayer_signal_changed>`

**TileMapLayer** 的属性发生改变时发出。包括对单元格和属性的修改以及对所分配的 :ref:`TileSet<class_TileSet>` 的修改。

\ **注意：**\ 批量修改 **TileMapLayer** 时可能频繁发出该信号。请勿在连接的函数中执行复杂的处理，建议延迟到帧末尾再进行这些操作（即调用 :ref:`Object.call_deferred()<class_Object_method_call_deferred>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_TileMapLayer_DebugVisibilityMode:

.. rst-class:: classref-enumeration

enum **DebugVisibilityMode**: :ref:`🔗<enum_TileMapLayer_DebugVisibilityMode>`

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_DEFAULT** = ``0``

在编辑器中隐藏碰撞和导航调试形状，使用调试设置决定游戏中的可见性（即 :ref:`SceneTree.debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` 和 :ref:`SceneTree.debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>`\ ）。

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_FORCE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_HIDE** = ``2``

始终隐藏碰撞和导航调试形状。

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_FORCE_SHOW:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_SHOW** = ``1``

始终显示碰撞和导航调试形状。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_TileMapLayer_property_collision_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collision_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_collision_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collision_enabled**\ (\ )

启用或禁用碰撞。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_collision_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **collision_visibility_mode** = ``0`` :ref:`🔗<class_TileMapLayer_property_collision_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_collision_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **get_collision_visibility_mode**\ (\ )

显示或隐藏 **TileMapLayer** 的碰撞形状。如果设置为 :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`\ ，则取决于调试设置“显示碰撞”。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

如果为 ``false``\ ，则会完全禁用该 **TileMapLayer**\ （渲染、碰撞、导航、场景图块等）。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_navigation_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **navigation_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_navigation_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_navigation_enabled**\ (\ )

如果为 ``true``\ ，则启用导航区块。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_navigation_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **navigation_visibility_mode** = ``0`` :ref:`🔗<class_TileMapLayer_property_navigation_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **get_navigation_visibility_mode**\ (\ )

显示或隐藏 **TileMapLayer** 的导航网格。如果设置为 :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`\ ，则取决于调试设置“显示导航”。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_occlusion_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **occlusion_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_occlusion_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_occlusion_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_occlusion_enabled**\ (\ )

启用或禁用光线遮蔽。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_physics_quadrant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **physics_quadrant_size** = ``16`` :ref:`🔗<class_TileMapLayer_property_physics_quadrant_size>`

.. rst-class:: classref-property-setget

- |void| **set_physics_quadrant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_quadrant_size**\ (\ )

**TileMapLayer** 的物理象限大小。物理象限中具有相似的物理属性的单元格会被分组在一起，其碰撞形状会被合并。\ :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` 定义的是形成象限的正方形的边长，使用地图坐标系。因此，默认象限大小将 ``16 * 16 = 256`` 个图块组合到了一起。

\ **注意：**\ 象限是根据地图坐标系创建的，“正方形”的象限在 **TileMapLayer** 的局部坐标系中可能看起来并不像正方形。

\ **注意：**\ 这会影响 :ref:`get_coords_for_body_rid()<class_TileMapLayer_method_get_coords_for_body_rid>` 方法返回的值。值越大，该函数的精度越低。要获取精确的单元格坐标，需要将 :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` 设置为 ``1``\ ，这将禁用物理分块。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_rendering_quadrant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **rendering_quadrant_size** = ``16`` :ref:`🔗<class_TileMapLayer_property_rendering_quadrant_size>`

.. rst-class:: classref-property-setget

- |void| **set_rendering_quadrant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rendering_quadrant_size**\ (\ )

**TileMapLayer** 的渲染象限大小。象限是在单个画布项上一起绘制的一组图块，用于优化。\ :ref:`rendering_quadrant_size<class_TileMapLayer_property_rendering_quadrant_size>` 定义的是形成象限的正方形的边长，使用地图坐标系。因此，默认象限大小将 ``16 * 16 = 256`` 个图块组合到了一起。

象限大小不适用于 Y 排序的 **TileMapLayer**\ ，因为在这种情况下图块按 Y 位置分组。

\ **注意：**\ 象限是根据地图坐标系创建的，“正方形”的象限在 **TileMapLayer** 的局部坐标系中可能并不是正方形。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_tile_map_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **tile_map_data** = ``PackedByteArray()`` :ref:`🔗<class_TileMapLayer_property_tile_map_data>`

.. rst-class:: classref-property-setget

- |void| **set_tile_map_data_from_array**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_tile_map_data_as_array**\ (\ )

字节数组形式的图块地图原始数据。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_tile_set:

.. rst-class:: classref-property

:ref:`TileSet<class_TileSet>` **tile_set** :ref:`🔗<class_TileMapLayer_property_tile_set>`

.. rst-class:: classref-property-setget

- |void| **set_tile_set**\ (\ value\: :ref:`TileSet<class_TileSet>`\ )
- :ref:`TileSet<class_TileSet>` **get_tile_set**\ (\ )

该图层使用的 :ref:`TileSet<class_TileSet>`\ 。存储的是所有可用图块的纹理、碰撞以及额外的行为。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_use_kinematic_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_kinematic_bodies** = ``false`` :ref:`🔗<class_TileMapLayer_property_use_kinematic_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_use_kinematic_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_kinematic_bodies**\ (\ )

如果为 ``true``\ ，则该 **TileMapLayer** 碰撞形状将被实例化为运动体。这对于移动 **TileMapLayer** 节点（即移动平台）可能是必要的。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_x_draw_order_reversed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **x_draw_order_reversed** = ``false`` :ref:`🔗<class_TileMapLayer_property_x_draw_order_reversed>`

.. rst-class:: classref-property-setget

- |void| **set_x_draw_order_reversed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_x_draw_order_reversed**\ (\ )

如果启用了 :ref:`CanvasItem.y_sort_enabled<class_CanvasItem_property_y_sort_enabled>`\ ，则将其设置为 ``true`` 将反转在 X 轴上绘制图块的顺序。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_y_sort_origin:

.. rst-class:: classref-property

:ref:`int<class_int>` **y_sort_origin** = ``0`` :ref:`🔗<class_TileMapLayer_property_y_sort_origin>`

.. rst-class:: classref-property-setget

- |void| **set_y_sort_origin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_y_sort_origin**\ (\ )

各个图块的 Y 排序原点值都会加上这个 Y 排序原点值。用例是为图层冒充其他高度级别。在俯视角游戏中比较有用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_TileMapLayer_private_method__tile_data_runtime_update:

.. rst-class:: classref-method

|void| **_tile_data_runtime_update**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, tile_data\: :ref:`TileData<class_TileData>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__tile_data_runtime_update>`

使用即将由 **TileMapLayer** 内部使用的 :ref:`TileData<class_TileData>` 对象来调用，从而允许在运行时对其进行修改。

仅当 :ref:`_use_tile_data_runtime_update()<class_TileMapLayer_private_method__use_tile_data_runtime_update>` 已实现，且它为给定的图块 ``coords`` 返回 ``true`` 时，才会调用该方法。

\ **警告：**\ ``tile_data`` 对象的子资源与 TileSet 中的子资源相同。修改它们可能会影响整个 TileSet。请确保复制这些资源再进行修改。

\ **注意：**\ 如果 ``tile_data`` 对象的属性应随时间发生变化，请使用 :ref:`notify_runtime_tile_data_update()<class_TileMapLayer_method_notify_runtime_tile_data_update>` 来通知 **TileMapLayer** 它需要更新。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_private_method__update_cells:

.. rst-class:: classref-method

|void| **_update_cells**\ (\ coords\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], forced_cleanup\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__update_cells>`

**TileMapLayer** 的单元格需要内部更新时调用。更新可能由某个单元格的修改触发，也可能由 :ref:`tile_set<class_TileMapLayer_property_tile_set>` 的更改触发（所有单元格都会排队更新）。首次调用该函数始终为对 **TileMapLayer** 单元格的初始化。\ ``coords`` 包含所有已修改单元格的坐标，大致按照修改顺序排列。应当完全清理 **TileMapLayer** 的内部数据时 ``forced_cleanup`` 为 ``true``\ 。触发条件为：

- 层禁用；

- 层不可见；

- :ref:`tile_set<class_TileMapLayer_property_tile_set>` 设为 ``null``\ ；

- 节点从场景树移除；

- 释放节点；

请注意，满足以上任一条件时进行的内部更新都视为“清理”。另见 :ref:`update_internals()<class_TileMapLayer_method_update_internals>`\ 。

\ **警告：**\ 实现该方法可能降低 **TileMapLayer** 的性能。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_private_method__use_tile_data_runtime_update:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_use_tile_data_runtime_update**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__use_tile_data_runtime_update>`

如果位于坐标 ``coords`` 的图块需要运行时更新，则应返回 ``true``\ 。

\ **警告：**\ 请确保这个函数只在需要时返回 ``true``\ 。任何在没有需要的情况下在运行时处理的图块都将导致显著的性能损失。

\ **注意：**\ 如果该函数的结果发生变化，请使用 :ref:`notify_runtime_tile_data_update()<class_TileMapLayer_method_notify_runtime_tile_data_update>` 通知 **TileMapLayer** 它需要更新。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TileMapLayer_method_clear>`

清除所有单元格。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_erase_cell:

.. rst-class:: classref-method

|void| **erase_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapLayer_method_erase_cell>`

擦除位于坐标 ``coords`` 的单元格。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_fix_invalid_tiles:

.. rst-class:: classref-method

|void| **fix_invalid_tiles**\ (\ ) :ref:`🔗<class_TileMapLayer_method_fix_invalid_tiles>`

清空包含不存在于 :ref:`tile_set<class_TileMapLayer_property_tile_set>` 中的图块的单元格。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_alternative_tile**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_alternative_tile>`

返回位于坐标 ``coords`` 的单元格的图块备选 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_atlas_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_cell_atlas_coords**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_atlas_coords>`

返回位于坐标 ``coords`` 的单元格的图块图集坐标 ID。如果单元格不存在则返回 ``Vector2i(-1, -1)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_source_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_source_id**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_source_id>`

返回位于坐标 ``coords`` 的单元格的图块源 ID。如果单元格不存在则返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_tile_data:

.. rst-class:: classref-method

:ref:`TileData<class_TileData>` **get_cell_tile_data**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_tile_data>`

返回与给定单元格关联的 :ref:`TileData<class_TileData>` 对象，如果单元格不存在或者不是 :ref:`TileSetAtlasSource<class_TileSetAtlasSource>` 则返回 ``null``\ 。

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

返回给定物理体 :ref:`RID<class_RID>` 对应的物理象限的坐标（见 :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>`\ ）。与图块发生碰撞时，可以通过 :ref:`KinematicCollision2D.get_collider_rid()<class_KinematicCollision2D_method_get_collider_rid>` 获取该 :ref:`RID<class_RID>`\ 。

\ **注意：**\ :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` 的值越大，该函数的精度越低。要获取精确的单元格坐标，需要将 :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` 设置为 ``1``\ ，这将禁用物理分块。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_navigation_map>`

返回该 **TileMapLayer** 所使用的 :ref:`NavigationServer2D<class_NavigationServer2D>` 导航 :ref:`RID<class_RID>`\ 。

默认情况下返回的是默认 :ref:`World2D<class_World2D>` 导航地图，除非通过 :ref:`set_navigation_map()<class_TileMapLayer_method_set_navigation_map>` 提供了自定义地图。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_neighbor_cell:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_neighbor_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, neighbor\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_neighbor_cell>`

返回与位于坐标 ``coords`` 的单元格相邻的单元格，方向由 ``neighbor`` 表示。这个方法会考虑 TileMap 的不同布局。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_pattern:

.. rst-class:: classref-method

:ref:`TileMapPattern<class_TileMapPattern>` **get_pattern**\ (\ coords_array\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]\ ) :ref:`🔗<class_TileMapLayer_method_get_pattern>`

根据给定的单元格数组新建 :ref:`TileMapPattern<class_TileMapPattern>` 并将其返回。另见 :ref:`set_pattern()<class_TileMapLayer_method_set_pattern>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_surrounding_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_surrounding_cells**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapLayer_method_get_surrounding_cells>`

返回与位于 ``coords`` 的单元格相邻的所有单元格的列表。相邻单元格指存在相接边的单元格，因此正方形单元格会返回 4 个单元格，六边形单元格会返回 6 个单元格。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_cells>`

返回 :ref:`Vector2i<class_Vector2i>` 数组，其中存放的是所有包含图块的单元格的位置。空单元格的源标识符等于 ``-1``\ 、图集坐标标识符为 ``Vector2(-1, -1)``\ 、备选标识符为 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_cells_by_id:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells_by_id**\ (\ source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_cells_by_id>`

返回 :ref:`Vector2i<class_Vector2i>` 数组，其中存放的是给定图层中所有包含图块的单元格的位置。可以根据源（\ ``source_id``\ ）、图集坐标（\ ``atlas_coords``\ ）、备选 ID（\ ``alternative_tile``\ ）进行过滤。

如果某个参数为默认值，则该参数不会用于单元格的过滤。因此，如果所有参数都使用默认值，则返回的结果与 :ref:`get_used_cells()<class_TileMapLayer_method_get_used_cells>` 相同。

空单元格的源标识符等于 ``-1``\ 、图集坐标标识符为 ``Vector2(-1, -1)``\ 、备选标识符为 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_rect:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_used_rect**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_rect>`

返回地图的包围矩形，包围已使用（非空）的图块。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_has_body_rid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_body_rid**\ (\ body\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_has_body_rid>`

返回给定的 ``body`` :ref:`RID<class_RID>` 属于该 **TileMapLayer** 中的某个单元格。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_flipped_h:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_flipped_h**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_flipped_h>`

如果位于坐标 ``coords`` 的单元格发生了水平翻转，则返回 ``true``\ 。结果仅对图集源有效。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_flipped_v:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_flipped_v**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_flipped_v>`

如果位于坐标 ``coords`` 的单元格发生了垂直翻转，则返回 ``true``\ 。结果仅对图集源有效。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_transposed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_transposed**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_transposed>`

如果位于坐标 ``coords`` 的单元格发生了转置，则返回 ``true``\ 。结果仅对图集源有效。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_local_to_map:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **local_to_map**\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_local_to_map>`

返回包含给定 ``local_position`` 的单元格地图坐标。如果 ``local_position`` 使用全局坐标，请考虑在传入这个方法前使用 :ref:`Node2D.to_local()<class_Node2D_method_to_local>`\ 。另见 :ref:`map_to_local()<class_TileMapLayer_method_map_to_local>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_map_pattern:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **map_pattern**\ (\ position_in_tilemap\: :ref:`Vector2i<class_Vector2i>`, coords_in_pattern\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ ) :ref:`🔗<class_TileMapLayer_method_map_pattern>`

如果图案粘贴在 ``position_in_tilemap`` 坐标处（请参阅 :ref:`set_pattern()<class_TileMapLayer_method_set_pattern>`\ ），则返回 :ref:`TileMapPattern<class_TileMapPattern>` 中给定坐标 ``coords_in_pattern`` 对应的单元格坐标。该映射是必需的，因为在半偏移图块形状中，映射可能无法通过计算 ``position_in_tile_map + coords_in_pattern`` 工作。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_map_to_local:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **map_to_local**\ (\ map_position\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_map_to_local>`

返回单元格的中心位置，使用 **TileMapLayer** 的局部坐标。要将返回值转换为全局坐标，请使用 :ref:`Node2D.to_global()<class_Node2D_method_to_global>`\ 。另见 :ref:`local_to_map()<class_TileMapLayer_method_local_to_map>`\ 。

\ **注意：**\ 可能与图块的可视位置没有对应关系，即忽略各个图块的 :ref:`TileData.texture_origin<class_TileData_property_texture_origin>` 属性。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_notify_runtime_tile_data_update:

.. rst-class:: classref-method

|void| **notify_runtime_tile_data_update**\ (\ ) :ref:`🔗<class_TileMapLayer_method_notify_runtime_tile_data_update>`

通知 **TileMapLayer** 节点调用 :ref:`_use_tile_data_runtime_update()<class_TileMapLayer_private_method__use_tile_data_runtime_update>` 或 :ref:`_tile_data_runtime_update()<class_TileMapLayer_private_method__tile_data_runtime_update>` 会得到不同的结果，继而触发 **TileMapLayer** 的更新。

\ **警告：**\ 更新 **TileMapLayer** 的计算成本很高，并且可能会影响性能。尝试限制该函数的调用次数，以避免不必要的更新。

\ **注意：**\ 这不会触发 **TileMapLayer** 的直接更新，该更新将照常在帧结束时完成（除非你调用 :ref:`update_internals()<class_TileMapLayer_method_update_internals>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cell:

.. rst-class:: classref-method

|void| **set_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_TileMapLayer_method_set_cell>`

设置坐标为 ``coords`` 的单元格的图块标识符。\ :ref:`TileSet<class_TileSet>` 中的每个图块都由三部分进行标识：

- 源标识符 ``source_id`` 标识的是 :ref:`TileSetSource<class_TileSetSource>` 标识符。见 :ref:`TileSet.set_source_id()<class_TileSet_method_set_source_id>`\ ，

- 图集坐标标识符 ``atlas_coords`` 标识的是图集中的图块坐标（如果使用的是 :ref:`TileSetAtlasSource<class_TileSetAtlasSource>` 源）。如果使用的是 :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>`\ ，应该始终为 ``Vector2i(0, 0)``\ ，

- 备选图块标识符 ``alternative_tile`` 标识的是图集中的图块备选项（如果使用的是 :ref:`TileSetAtlasSource<class_TileSetAtlasSource>` 源），如果使用的是 :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>` 则标识的是场景。

如果 ``source_id`` 为 ``-1``\ 、\ ``atlas_coords`` 为 ``Vector2i(-1, -1)`` 或 ``alternative_tile`` 为 ``-1``\ ，则会擦除该单元格。擦除后的单元格中，\ **所有**\ 标识符都会自动设为对应的无效值，即 ``-1``\ 、\ ``Vector2i(-1, -1)`` 和 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cells_terrain_connect:

.. rst-class:: classref-method

|void| **set_cells_terrain_connect**\ (\ cells\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_TileMapLayer_method_set_cells_terrain_connect>`

更新 ``cells`` 坐标数组中的所有单元格，以便它们将给定的 ``terrain`` 用于给定的 ``terrain_set``\ 。如果一个更新的单元格与其相邻单元格之一具有相同的地形，则该函数会尝试将两者连接起来。如果需要创建正确的地形过渡，该函数可能会更新相邻的图块。

如果 ``ignore_empty_terrains`` 为 ``true``\ ，则在尝试为给定地形约束找到最合适的图块时，空地形将被忽略。

\ **注意：**\ 要正常工作，这个方法需要 TileMap 的 TileSet 设置了具有所有必需地形组合的地形。否则，可能会产生意想不到的结果。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cells_terrain_path:

.. rst-class:: classref-method

|void| **set_cells_terrain_path**\ (\ path\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_TileMapLayer_method_set_cells_terrain_path>`

更新 ``path`` 坐标数组中的所有单元格，以便它们将给定的 ``terrain`` 用于给定的 ``terrain_set``\ 。该函数还将连接路径中具有相同地形的两个连续单元格。如果需要创建正确的地形过渡，该函数可能会更新相邻的图块。

如果 ``ignore_empty_terrains`` 为 ``true``\ ，则在尝试为给定地形约束找到最合适的图块时将忽略空地形。

\ **注意：**\ 要正常工作，这个方法需要 TileMap 的 TileSet 设置了具有所有必需地形组合的地形。否则，可能会产生意想不到的结果。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_TileMapLayer_method_set_navigation_map>`

将自定义 ``map`` 设置为 :ref:`NavigationServer2D<class_NavigationServer2D>` 导航地图。如果未设置，则改用默认的 :ref:`World2D<class_World2D>` 导航地图。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_pattern:

.. rst-class:: classref-method

|void| **set_pattern**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ ) :ref:`🔗<class_TileMapLayer_method_set_pattern>`

将给定的 :ref:`TileMapPattern<class_TileMapPattern>` 粘贴到图块地图中的 ``position`` 位置。另见 :ref:`get_pattern()<class_TileMapLayer_method_get_pattern>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_update_internals:

.. rst-class:: classref-method

|void| **update_internals**\ (\ ) :ref:`🔗<class_TileMapLayer_method_update_internals>`

触发 **TileMapLayer** 的更新。通常不需要调用这个函数，因为 **TileMapLayer** 节点的属性发生修改后会自动更新。

但是出于性能原因，会对这些更新进行分批，延迟到该帧的末尾执行。调用这个函数会强制 **TileMapLayer** 立即进行更新。

\ **警告：**\ 更新 **TileMapLayer** 的计算量很大，可能会影响性能。请尽量限制更新的次数和受影响的图块。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
