:github_url: hide

.. _class_TileMapLayer:

TileMapLayer
============

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基於 2D 圖塊的地圖節點。

.. rst-class:: classref-introduction-group

說明
----

基於 2D 圖塊的地圖節點。\ **TileMapLayer** 即圖塊地圖層，需要使用包含了圖塊清單的 :ref:`TileSet<class_TileSet>`\ ，用於建立基於柵格的地圖。與已經廢棄的 :ref:`TileMap<class_TileMap>` 節點不同，\ **TileMapLayer** 只包含一個圖塊層。可以使用多個 **TileMapLayer** 實現和 :ref:`TileMap<class_TileMap>` 節點相同的效果。

出於效能原因，所有 TileMap 更新都會在一影格結束時進行批處理。值得注意的是，這意味著 :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>` 中的場景圖塊可能會在其父級之後初始化。僅當在場景樹內時才會排隊。

要提前強制更新，請呼叫 :ref:`update_internals()<class_TileMapLayer_method_update_internals>`\ 。

\ **注意：**\ 考慮到效能和相容性，\ **TileMapLayer** 所序列化的座標限制為 16 位元帶符號整數，即 X、Y 座標的範圍在 ``-32768`` 到 ``32767`` 之間。儲存圖塊資料時，該範圍之外的圖塊會發生環繞。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 Tilemap <../tutorials/2d/using_tilemaps>`

- `2D 平台範例 <https://godotengine.org/asset-library/asset/2727>`__

- `2D 等軸演示 <https://godotengine.org/asset-library/asset/2718>`__

- `2D 六邊形演示 <https://godotengine.org/asset-library/asset/2717>`__

- `AStarGrid2D 的 2D 網格導航演示 <https://godotengine.org/asset-library/asset/2723>`__

- `2D 角色扮演遊戲範例 <https://godotengine.org/asset-library/asset/2729>`__

- `2D 運動學角色演示 <https://godotengine.org/asset-library/asset/2719>`__

- `2D 動態 TileMap 層演示 <https://godotengine.org/asset-library/asset/2713>`__

.. rst-class:: classref-reftable-group

屬性
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

訊號
----

.. _class_TileMapLayer_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_TileMapLayer_signal_changed>`

**TileMapLayer** 的屬性發生改變時發出。包括對單元格和屬性的修改以及對所分配的 :ref:`TileSet<class_TileSet>` 的修改。

\ **注意：**\ 批量修改 **TileMapLayer** 時可能頻繁發出該訊號。請勿在連接的函式中執行複雜的處理，建議延遲到影格末尾再進行這些操作（即呼叫 :ref:`Object.call_deferred()<class_Object_method_call_deferred>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_TileMapLayer_DebugVisibilityMode:

.. rst-class:: classref-enumeration

enum **DebugVisibilityMode**: :ref:`🔗<enum_TileMapLayer_DebugVisibilityMode>`

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_DEFAULT** = ``0``

在編輯器中隱藏碰撞和導航除錯形狀，使用除錯設定決定遊戲中的可見性（即 :ref:`SceneTree.debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` 和 :ref:`SceneTree.debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>`\ ）。

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_FORCE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_HIDE** = ``2``

始終隱藏碰撞和導航除錯形狀。

.. _class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_FORCE_SHOW:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_SHOW** = ``1``

始終顯示碰撞和導航除錯形狀。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_TileMapLayer_property_collision_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collision_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_collision_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_collision_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collision_enabled**\ (\ )

啟用或停用碰撞。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_collision_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **collision_visibility_mode** = ``0`` :ref:`🔗<class_TileMapLayer_property_collision_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_collision_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **get_collision_visibility_mode**\ (\ )

顯示或隱藏 **TileMapLayer** 的碰撞形狀。如果設定為 :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`\ ，則取決於除錯設定“顯示碰撞”。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

如果為 ``false``\ ，則會完全停用該 **TileMapLayer**\ （渲染、碰撞、導航、場景圖塊等）。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_navigation_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **navigation_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_navigation_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_navigation_enabled**\ (\ )

如果為 ``true``\ ，則啟用導航區塊。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_navigation_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **navigation_visibility_mode** = ``0`` :ref:`🔗<class_TileMapLayer_property_navigation_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_TileMapLayer_DebugVisibilityMode>` **get_navigation_visibility_mode**\ (\ )

顯示或隱藏 **TileMapLayer** 的導覽網格。如果設定為 :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_TileMapLayer_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`\ ，則取決於除錯設定“顯示導航”。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_occlusion_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **occlusion_enabled** = ``true`` :ref:`🔗<class_TileMapLayer_property_occlusion_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_occlusion_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_occlusion_enabled**\ (\ )

啟用或停用光線遮蔽。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_physics_quadrant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **physics_quadrant_size** = ``16`` :ref:`🔗<class_TileMapLayer_property_physics_quadrant_size>`

.. rst-class:: classref-property-setget

- |void| **set_physics_quadrant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_quadrant_size**\ (\ )

**TileMapLayer** 的物理象限大小。物理象限中具有相似的物理屬性的單元格會被分組在一起，其碰撞形狀會被合併。\ :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` 定義的是形成象限的正方形的邊長，使用地圖座標系。因此，預設象限大小將 ``16 * 16 = 256`` 個圖塊組合到了一起。

\ **注意：**\ 象限是根據地圖座標系建立的，“正方形”的象限在 **TileMapLayer** 的區域座標系中可能看起來並不像正方形。

\ **注意：**\ 這會影響 :ref:`get_coords_for_body_rid()<class_TileMapLayer_method_get_coords_for_body_rid>` 方法回傳的值。值越大，該函式的精度越低。要取得精確的單元格座標，需要將 :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` 設定為 ``1``\ ，這將停用物理分塊。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_rendering_quadrant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **rendering_quadrant_size** = ``16`` :ref:`🔗<class_TileMapLayer_property_rendering_quadrant_size>`

.. rst-class:: classref-property-setget

- |void| **set_rendering_quadrant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rendering_quadrant_size**\ (\ )

**TileMapLayer** 的渲染象限大小。象限是在單個畫布項上一起繪製的一組圖塊，用於最佳化。\ :ref:`rendering_quadrant_size<class_TileMapLayer_property_rendering_quadrant_size>` 定義的是形成象限的正方形的邊長，使用地圖座標系。因此，預設象限大小將 ``16 * 16 = 256`` 個圖塊組合到了一起。

象限大小不適用於 Y 排序的 **TileMapLayer**\ ，因為在這種情況下圖塊按 Y 位置分組。

\ **注意：**\ 象限是根據地圖座標系建立的，“正方形”的象限在 **TileMapLayer** 的區域座標系中可能並不是正方形。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_tile_map_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **tile_map_data** = ``PackedByteArray()`` :ref:`🔗<class_TileMapLayer_property_tile_map_data>`

.. rst-class:: classref-property-setget

- |void| **set_tile_map_data_from_array**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_tile_map_data_as_array**\ (\ )

位元組陣列形式的圖塊地圖原始資料。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_tile_set:

.. rst-class:: classref-property

:ref:`TileSet<class_TileSet>` **tile_set** :ref:`🔗<class_TileMapLayer_property_tile_set>`

.. rst-class:: classref-property-setget

- |void| **set_tile_set**\ (\ value\: :ref:`TileSet<class_TileSet>`\ )
- :ref:`TileSet<class_TileSet>` **get_tile_set**\ (\ )

該圖層使用的 :ref:`TileSet<class_TileSet>`\ 。儲存的是所有可用圖塊的紋理、碰撞以及額外的行為。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_use_kinematic_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_kinematic_bodies** = ``false`` :ref:`🔗<class_TileMapLayer_property_use_kinematic_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_use_kinematic_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_kinematic_bodies**\ (\ )

如果為 ``true``\ ，則該 **TileMapLayer** 碰撞形狀將被實例化為運動體。這對於移動 **TileMapLayer** 節點（即移動平台）可能是必要的。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_x_draw_order_reversed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **x_draw_order_reversed** = ``false`` :ref:`🔗<class_TileMapLayer_property_x_draw_order_reversed>`

.. rst-class:: classref-property-setget

- |void| **set_x_draw_order_reversed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_x_draw_order_reversed**\ (\ )

如果啟用了 :ref:`CanvasItem.y_sort_enabled<class_CanvasItem_property_y_sort_enabled>`\ ，則將其設定為 ``true`` 將反轉在 X 軸上繪製圖塊的順序。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_property_y_sort_origin:

.. rst-class:: classref-property

:ref:`int<class_int>` **y_sort_origin** = ``0`` :ref:`🔗<class_TileMapLayer_property_y_sort_origin>`

.. rst-class:: classref-property-setget

- |void| **set_y_sort_origin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_y_sort_origin**\ (\ )

各個圖塊的 Y 排序原點值都會加上這個 Y 排序原點值。用例是為圖層冒充其他高度層級。在俯視角遊戲中比較有用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TileMapLayer_private_method__tile_data_runtime_update:

.. rst-class:: classref-method

|void| **_tile_data_runtime_update**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, tile_data\: :ref:`TileData<class_TileData>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__tile_data_runtime_update>`

使用即將由 **TileMapLayer** 內部使用的 :ref:`TileData<class_TileData>` 物件來呼叫，從而允許在執行時對其進行修改。

僅當 :ref:`_use_tile_data_runtime_update()<class_TileMapLayer_private_method__use_tile_data_runtime_update>` 已實作，且它為給定的圖塊 ``coords`` 回傳 ``true`` 時，才會呼叫該方法。

\ **警告：**\ ``tile_data`` 物件的子資源與 TileSet 中的子資源相同。修改它們可能會影響整個 TileSet。請確保複製這些資源再進行修改。

\ **注意：**\ 如果 ``tile_data`` 物件的屬性應隨時間發生變化，請使用 :ref:`notify_runtime_tile_data_update()<class_TileMapLayer_method_notify_runtime_tile_data_update>` 來通知 **TileMapLayer** 它需要更新。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_private_method__update_cells:

.. rst-class:: classref-method

|void| **_update_cells**\ (\ coords\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], forced_cleanup\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__update_cells>`

**TileMapLayer** 的單元格需要內部更新時呼叫。更新可能由某個單元格的修改觸發，也可能由 :ref:`tile_set<class_TileMapLayer_property_tile_set>` 的更改觸發（所有單元格都會排隊更新）。首次呼叫該函式始終為對 **TileMapLayer** 單元格的初始化。\ ``coords`` 包含所有已修改單元格的座標，大致按照修改順序排列。應當完全清理 **TileMapLayer** 的內部資料時 ``forced_cleanup`` 為 ``true``\ 。觸發條件為：

- 層停用；

- 層不可見；

- :ref:`tile_set<class_TileMapLayer_property_tile_set>` 設為 ``null``\ ；

- 節點從場景樹移除；

- 釋放節點；

請注意，滿足以上任一條件時進行的內部更新都視為“清理”。另見 :ref:`update_internals()<class_TileMapLayer_method_update_internals>`\ 。

\ **警告：**\ 實作該方法可能降低 **TileMapLayer** 的效能。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_private_method__use_tile_data_runtime_update:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_use_tile_data_runtime_update**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |virtual| :ref:`🔗<class_TileMapLayer_private_method__use_tile_data_runtime_update>`

如果位於座標 ``coords`` 的圖塊需要執行時更新，則應回傳 ``true``\ 。

\ **警告：**\ 請確保這個函式只在需要時回傳 ``true``\ 。任何在沒有需要的情況下在執行時處理的圖塊都將導致顯著的效能損失。

\ **注意：**\ 如果該函式的結果發生變化，請使用 :ref:`notify_runtime_tile_data_update()<class_TileMapLayer_method_notify_runtime_tile_data_update>` 通知 **TileMapLayer** 它需要更新。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TileMapLayer_method_clear>`

清除所有儲存格。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_erase_cell:

.. rst-class:: classref-method

|void| **erase_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapLayer_method_erase_cell>`

擦除位於座標 ``coords`` 的單元格。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_fix_invalid_tiles:

.. rst-class:: classref-method

|void| **fix_invalid_tiles**\ (\ ) :ref:`🔗<class_TileMapLayer_method_fix_invalid_tiles>`

清空包含不存在於 :ref:`tile_set<class_TileMapLayer_property_tile_set>` 中的圖塊的單元格。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_alternative_tile:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_alternative_tile**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_alternative_tile>`

回傳位於座標 ``coords`` 的單元格的圖塊備選 ID。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_atlas_coords:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_cell_atlas_coords**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_atlas_coords>`

回傳位於座標 ``coords`` 的單元格的圖塊圖集座標 ID。如果單元格不存在則回傳 ``Vector2i(-1, -1)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_source_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_source_id**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_source_id>`

回傳位於座標 ``coords`` 的單元格的圖塊源 ID。如果單元格不存在則回傳 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_cell_tile_data:

.. rst-class:: classref-method

:ref:`TileData<class_TileData>` **get_cell_tile_data**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_cell_tile_data>`

回傳與給定單元格關聯的 :ref:`TileData<class_TileData>` 物件，如果單元格不存在或者不是 :ref:`TileSetAtlasSource<class_TileSetAtlasSource>` 則回傳 ``null``\ 。

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

回傳給定物理體 :ref:`RID<class_RID>` 對應的物理象限的座標（見 :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>`\ ）。與圖塊發生碰撞時，可以通過 :ref:`KinematicCollision2D.get_collider_rid()<class_KinematicCollision2D_method_get_collider_rid>` 取得該 :ref:`RID<class_RID>`\ 。

\ **注意：**\ :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` 的值越大，該函式的精度越低。要取得精確的單元格座標，需要將 :ref:`physics_quadrant_size<class_TileMapLayer_property_physics_quadrant_size>` 設定為 ``1``\ ，這將停用物理分塊。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_navigation_map>`

回傳該 **TileMapLayer** 所使用的 :ref:`NavigationServer2D<class_NavigationServer2D>` 導航 :ref:`RID<class_RID>`\ 。

預設情況下回傳的是預設 :ref:`World2D<class_World2D>` 導航地圖，除非通過 :ref:`set_navigation_map()<class_TileMapLayer_method_set_navigation_map>` 提供了自訂地圖。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_neighbor_cell:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_neighbor_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, neighbor\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_neighbor_cell>`

返回與位於座標 ``coords`` 的儲存格相鄰的儲存格，方向由 ``neighbor`` 表示。這個方法會考慮 TileMap 的不同佈局。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_pattern:

.. rst-class:: classref-method

:ref:`TileMapPattern<class_TileMapPattern>` **get_pattern**\ (\ coords_array\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]\ ) :ref:`🔗<class_TileMapLayer_method_get_pattern>`

根據給定的單元格陣列新建 :ref:`TileMapPattern<class_TileMapPattern>` 並將其回傳。另見 :ref:`set_pattern()<class_TileMapLayer_method_set_pattern>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_surrounding_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_surrounding_cells**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_TileMapLayer_method_get_surrounding_cells>`

回傳與位於 ``coords`` 的單元格相鄰的所有單元格的清單。相鄰單元格指存在相接邊的單元格，因此正方形單元格會回傳 4 個單元格，六邊形單元格會回傳 6 個單元格。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_cells>`

回傳 :ref:`Vector2i<class_Vector2i>` 陣列，其中存放的是所有包含圖塊的單元格的位置。空單元格的源標識符等於 ``-1``\ 、圖集座標標識符為 ``Vector2(-1, -1)``\ 、備選標識符為 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_cells_by_id:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **get_used_cells_by_id**\ (\ source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_cells_by_id>`

回傳 :ref:`Vector2i<class_Vector2i>` 陣列，其中存放的是給定圖層中所有包含圖塊的單元格的位置。可以根據源（\ ``source_id``\ ）、圖集座標（\ ``atlas_coords``\ ）、備選 ID（\ ``alternative_tile``\ ）進行過濾。

如果某個參數為預設值，則該參數不會用於單元格的過濾。因此，如果所有參數都使用預設值，則回傳的結果與 :ref:`get_used_cells()<class_TileMapLayer_method_get_used_cells>` 相同。

空單元格的源標識符等於 ``-1``\ 、圖集座標標識符為 ``Vector2(-1, -1)``\ 、備選標識符為 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_get_used_rect:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **get_used_rect**\ (\ ) |const| :ref:`🔗<class_TileMapLayer_method_get_used_rect>`

回傳地圖的包圍矩形，包圍已使用（非空）的圖塊。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_has_body_rid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_body_rid**\ (\ body\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_has_body_rid>`

回傳給定的 ``body`` :ref:`RID<class_RID>` 屬於該 **TileMapLayer** 中的某個單元格。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_flipped_h:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_flipped_h**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_flipped_h>`

如果位於座標 ``coords`` 的單元格發生了水平翻轉，則回傳 ``true``\ 。結果僅對圖集源有效。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_flipped_v:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_flipped_v**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_flipped_v>`

如果位於座標 ``coords`` 的單元格發生了垂直翻轉，則回傳 ``true``\ 。結果僅對圖集源有效。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_is_cell_transposed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_cell_transposed**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_is_cell_transposed>`

如果位於座標 ``coords`` 的單元格發生了轉置，則回傳 ``true``\ 。結果僅對圖集源有效。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_local_to_map:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **local_to_map**\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_local_to_map>`

返回包含給定 ``local_position`` 的儲存格地圖座標。如果 ``local_position`` 使用全域座標，請考慮在傳入這個方法前使用 :ref:`Node2D.to_local()<class_Node2D_method_to_local>`\ 。另見 :ref:`map_to_local()<class_TileMapLayer_method_map_to_local>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_map_pattern:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **map_pattern**\ (\ position_in_tilemap\: :ref:`Vector2i<class_Vector2i>`, coords_in_pattern\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ ) :ref:`🔗<class_TileMapLayer_method_map_pattern>`

如果圖案貼上在 ``position_in_tilemap`` 座標處（請參閱 :ref:`set_pattern()<class_TileMapLayer_method_set_pattern>`\ ），則回傳 :ref:`TileMapPattern<class_TileMapPattern>` 中給定座標 ``coords_in_pattern`` 對應的單元格座標。該映射是必需的，因為在半偏移圖塊形狀中，映射可能無法通過計算 ``position_in_tile_map + coords_in_pattern`` 工作。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_map_to_local:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **map_to_local**\ (\ map_position\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_TileMapLayer_method_map_to_local>`

回傳單元格的中心位置，使用 **TileMapLayer** 的區域座標。要將回傳值轉換為全域座標，請使用 :ref:`Node2D.to_global()<class_Node2D_method_to_global>`\ 。另見 :ref:`local_to_map()<class_TileMapLayer_method_local_to_map>`\ 。

\ **注意：**\ 可能與圖塊的可視位置沒有對應關係，即忽略各個圖塊的 :ref:`TileData.texture_origin<class_TileData_property_texture_origin>` 屬性。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_notify_runtime_tile_data_update:

.. rst-class:: classref-method

|void| **notify_runtime_tile_data_update**\ (\ ) :ref:`🔗<class_TileMapLayer_method_notify_runtime_tile_data_update>`

通知 **TileMapLayer** 節點呼叫 :ref:`_use_tile_data_runtime_update()<class_TileMapLayer_private_method__use_tile_data_runtime_update>` 或 :ref:`_tile_data_runtime_update()<class_TileMapLayer_private_method__tile_data_runtime_update>` 會得到不同的結果，繼而觸發 **TileMapLayer** 的更新。

\ **警告：**\ 更新 **TileMapLayer** 的計算成本很高，並且可能會影響效能。嘗試限制該函式的呼叫次數，以避免不必要的更新。

\ **注意：**\ 這不會觸發 **TileMapLayer** 的直接更新，該更新將照常在影格結束時完成（除非你呼叫 :ref:`update_internals()<class_TileMapLayer_method_update_internals>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cell:

.. rst-class:: classref-method

|void| **set_cell**\ (\ coords\: :ref:`Vector2i<class_Vector2i>`, source_id\: :ref:`int<class_int>` = -1, atlas_coords\: :ref:`Vector2i<class_Vector2i>` = Vector2i(-1, -1), alternative_tile\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_TileMapLayer_method_set_cell>`

設定座標為 ``coords`` 的單元格的圖塊標識符。\ :ref:`TileSet<class_TileSet>` 中的每個圖塊都由三部分進行標識：

- 源標識符 ``source_id`` 標識的是 :ref:`TileSetSource<class_TileSetSource>` 標識符。見 :ref:`TileSet.set_source_id()<class_TileSet_method_set_source_id>`\ ，

- 圖集座標標識符 ``atlas_coords`` 標識的是圖集中的圖塊座標（如果使用的是 :ref:`TileSetAtlasSource<class_TileSetAtlasSource>` 源）。如果使用的是 :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>`\ ，應該始終為 ``Vector2i(0, 0)``\ ，

- 備選圖塊標識符 ``alternative_tile`` 標識的是圖集中的圖塊備選項（如果使用的是 :ref:`TileSetAtlasSource<class_TileSetAtlasSource>` 源），如果使用的是 :ref:`TileSetScenesCollectionSource<class_TileSetScenesCollectionSource>` 則標識的是場景。

如果 ``source_id`` 為 ``-1``\ 、\ ``atlas_coords`` 為 ``Vector2i(-1, -1)`` 或 ``alternative_tile`` 為 ``-1``\ ，則會擦除該單元格。擦除後的單元格中，\ **所有**\ 標識符都會自動設為對應的無效值，即 ``-1``\ 、\ ``Vector2i(-1, -1)`` 和 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cells_terrain_connect:

.. rst-class:: classref-method

|void| **set_cells_terrain_connect**\ (\ cells\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_TileMapLayer_method_set_cells_terrain_connect>`

更新 ``cells`` 座標陣列中的所有單元格，以便它們將給定的 ``terrain`` 用於給定的 ``terrain_set``\ 。如果一個更新的單元格與其相鄰單元格之一具有相同的地形，則該函式會嘗試將兩者連接起來。如果需要建立正確的地形過渡，該函式可能會更新相鄰的圖塊。

如果 ``ignore_empty_terrains`` 為 ``true``\ ，則在嘗試為給定地形約束找到最合適的圖塊時，空地形將被忽略。

\ **注意：**\ 要正常工作，這個方法需要 TileMap 的 TileSet 設定了具有所有必需地形組合的地形。否則，可能會產生意想不到的結果。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_cells_terrain_path:

.. rst-class:: classref-method

|void| **set_cells_terrain_path**\ (\ path\: :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\], terrain_set\: :ref:`int<class_int>`, terrain\: :ref:`int<class_int>`, ignore_empty_terrains\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_TileMapLayer_method_set_cells_terrain_path>`

更新 ``path`` 座標陣列中的所有單元格，以便它們將給定的 ``terrain`` 用於給定的 ``terrain_set``\ 。該函式還將連接路徑中具有相同地形的兩個連續單元格。如果需要建立正確的地形過渡，該函式可能會更新相鄰的圖塊。

如果 ``ignore_empty_terrains`` 為 ``true``\ ，則在嘗試為給定地形約束找到最合適的圖塊時將忽略空地形。

\ **注意：**\ 要正常工作，這個方法需要 TileMap 的 TileSet 設定了具有所有必需地形組合的地形。否則，可能會產生意想不到的結果。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_TileMapLayer_method_set_navigation_map>`

將自訂 ``map`` 設定為 :ref:`NavigationServer2D<class_NavigationServer2D>` 導航地圖。如果未設定，則改用預設的 :ref:`World2D<class_World2D>` 導航地圖。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_set_pattern:

.. rst-class:: classref-method

|void| **set_pattern**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, pattern\: :ref:`TileMapPattern<class_TileMapPattern>`\ ) :ref:`🔗<class_TileMapLayer_method_set_pattern>`

將給定的 :ref:`TileMapPattern<class_TileMapPattern>` 貼上到圖塊地圖中的 ``position`` 位置。另見 :ref:`get_pattern()<class_TileMapLayer_method_get_pattern>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TileMapLayer_method_update_internals:

.. rst-class:: classref-method

|void| **update_internals**\ (\ ) :ref:`🔗<class_TileMapLayer_method_update_internals>`

觸發 **TileMapLayer** 的更新。通常不需要呼叫這個函式，因為 **TileMapLayer** 節點的屬性發生修改後會自動更新。

但是出於效能原因，會對這些更新進行分批，延遲到該影格的末尾執行。呼叫這個函式會強制 **TileMapLayer** 立即進行更新。

\ **警告：**\ 更新 **TileMapLayer** 的計算量很大，可能會影響效能。請盡量限制更新的次數和受影響的圖塊。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
