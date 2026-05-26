:github_url: hide

.. meta::
	:keywords: tilemap

.. _class_GridMap:

GridMap
=======

**繼承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基於 3D 圖塊地圖的節點。

.. rst-class:: classref-introduction-group

說明
----

GridMap 允許以互動的方式將網格放置在柵格上。它在編輯器和腳本中均可使用，可幫助建立遊戲內的關卡編輯器。

GridMap 使用一個包含圖塊列表的 :ref:`MeshLibrary<class_MeshLibrary>`\ 。每個圖塊都是一個帶有材質的網格以及可選的碰撞和導覽形狀。

GridMap 包含一組儲存格。每個柵格儲存格引用 :ref:`MeshLibrary<class_MeshLibrary>` 中的一個圖塊。地圖中的所有儲存格都具有相同的大小。

在內部，GridMap 會根據卦限進行拆分，形成卦限的稀疏合集，能夠進行高效的算繪和物理處理。每個卦限的大小是相同的，可以包含多個儲存格。

\ **注意：**\ GridMap 不是從 :ref:`VisualInstance3D<class_VisualInstance3D>` 擴充的，因此不能基於 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` 隱藏或剔除遮罩。如果使燈光不影響第一層，則整個 GridMap 將不會被該燈光照亮。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用網格地圖 <../tutorials/3d/using_gridmaps>`

- `3D 平台跳躍示範 <https://godotengine.org/asset-library/asset/2748>`__

- `3D 動力學角色演示 <https://godotengine.org/asset-library/asset/2739>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`bake_navigation<class_GridMap_property_bake_navigation>`                     | ``false``            |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`cell_center_x<class_GridMap_property_cell_center_x>`                         | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`cell_center_y<class_GridMap_property_cell_center_y>`                         | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`cell_center_z<class_GridMap_property_cell_center_z>`                         | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`cell_octant_size<class_GridMap_property_cell_octant_size>`                   | ``8``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`cell_scale<class_GridMap_property_cell_scale>`                               | ``1.0``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                | :ref:`cell_size<class_GridMap_property_cell_size>`                                 | ``Vector3(2, 2, 2)`` |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`collision_layer<class_GridMap_property_collision_layer>`                     | ``1``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`collision_mask<class_GridMap_property_collision_mask>`                       | ``1``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`collision_priority<class_GridMap_property_collision_priority>`               | ``1.0``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` | :ref:`collision_visibility_mode<class_GridMap_property_collision_visibility_mode>` | ``0``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`MeshLibrary<class_MeshLibrary>`                        | :ref:`mesh_library<class_GridMap_property_mesh_library>`                           |                      |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>`                | :ref:`physics_material<class_GridMap_property_physics_material>`                   |                      |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`clear<class_GridMap_method_clear>`\ (\ )                                                                                                                                              |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`clear_baked_meshes<class_GridMap_method_clear_baked_meshes>`\ (\ )                                                                                                                    |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                        | :ref:`get_bake_mesh_instance<class_GridMap_method_get_bake_mesh_instance>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                               |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                    | :ref:`get_bake_meshes<class_GridMap_method_get_bake_meshes>`\ (\ )                                                                                                                          |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`                                    | :ref:`get_basis_with_orthogonal_index<class_GridMap_method_get_basis_with_orthogonal_index>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                   |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_item<class_GridMap_method_get_cell_item>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                                          |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`                                    | :ref:`get_cell_item_basis<class_GridMap_method_get_cell_item_basis>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                              |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_item_orientation<class_GridMap_method_get_cell_item_orientation>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                  |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`get_collision_layer_value<class_GridMap_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                        |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`get_collision_mask_value<class_GridMap_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                          |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                    | :ref:`get_meshes<class_GridMap_method_get_meshes>`\ (\ ) |const|                                                                                                                            |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                        | :ref:`get_navigation_map<class_GridMap_method_get_navigation_map>`\ (\ ) |const|                                                                                                            |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>`                              | :ref:`get_octant_coords_from_cell_coords<class_GridMap_method_get_octant_coords_from_cell_coords>`\ (\ cell_coords\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                             |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_octants_in_bounds<class_GridMap_method_get_octants_in_bounds>`\ (\ bounds\: :ref:`AABB<class_AABB>`\ ) |const|                                                                    |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_orthogonal_index_from_basis<class_GridMap_method_get_orthogonal_index_from_basis>`\ (\ basis\: :ref:`Basis<class_Basis>`\ ) |const|                                               |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_cells<class_GridMap_method_get_used_cells>`\ (\ ) |const|                                                                                                                    |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_cells_by_item<class_GridMap_method_get_used_cells_by_item>`\ (\ item\: :ref:`int<class_int>`\ ) |const|                                                                      |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_cells_in_octant<class_GridMap_method_get_used_cells_in_octant>`\ (\ octant_coords\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                               |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_cells_in_octant_by_item<class_GridMap_method_get_used_cells_in_octant_by_item>`\ (\ octant_coords\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`\ ) |const| |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_octants<class_GridMap_method_get_used_octants>`\ (\ ) |const|                                                                                                                |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_octants_by_item<class_GridMap_method_get_used_octants_by_item>`\ (\ item\: :ref:`int<class_int>`\ ) |const|                                                                  |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_octants_in_bounds<class_GridMap_method_get_used_octants_in_bounds>`\ (\ bounds\: :ref:`AABB<class_AABB>`\ ) |const|                                                          |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>`                              | :ref:`local_to_map<class_GridMap_method_local_to_map>`\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                        |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`make_baked_meshes<class_GridMap_method_make_baked_meshes>`\ (\ gen_lightmap_uv\: :ref:`bool<class_bool>` = false, lightmap_uv_texel_size\: :ref:`float<class_float>` = 0.1\ )         |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                | :ref:`map_to_local<class_GridMap_method_map_to_local>`\ (\ map_position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                                        |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`resource_changed<class_GridMap_method_resource_changed>`\ (\ resource\: :ref:`Resource<class_Resource>`\ )                                                                            |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cell_item<class_GridMap_method_set_cell_item>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`, orientation\: :ref:`int<class_int>` = 0\ )           |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_collision_layer_value<class_GridMap_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                               |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_collision_mask_value<class_GridMap_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                 |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_navigation_map<class_GridMap_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                                            |
   +--------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_GridMap_signal_cell_size_changed:

.. rst-class:: classref-signal

**cell_size_changed**\ (\ cell_size\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_GridMap_signal_cell_size_changed>`

當 :ref:`cell_size<class_GridMap_property_cell_size>` 改變時觸發。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_GridMap_signal_changed>`

該 TileMap 的 :ref:`TileSet<class_TileSet>` 發生改變時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_GridMap_DebugVisibilityMode:

.. rst-class:: classref-enumeration

enum **DebugVisibilityMode**: :ref:`🔗<enum_GridMap_DebugVisibilityMode>`

.. _class_GridMap_constant_DEBUG_VISIBILITY_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_DEFAULT** = ``0``

Hide the collisions debug shapes in the editor, and use the debug settings to determine their visibility in game (i.e. :ref:`SceneTree.debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` or :ref:`SceneTree.debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>`).

.. _class_GridMap_constant_DEBUG_VISIBILITY_MODE_FORCE_SHOW:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_SHOW** = ``1``

Always show the collisions debug shapes.

.. _class_GridMap_constant_DEBUG_VISIBILITY_MODE_FORCE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_HIDE** = ``2``

Always hide the collisions debug shapes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_GridMap_constant_INVALID_CELL_ITEM:

.. rst-class:: classref-constant

**INVALID_CELL_ITEM** = ``-1`` :ref:`🔗<class_GridMap_constant_INVALID_CELL_ITEM>`

可以在 :ref:`set_cell_item()<class_GridMap_method_set_cell_item>` 中清除儲存格（或在 :ref:`get_cell_item()<class_GridMap_method_get_cell_item>` 中重新代表一個空的儲存格）的無效儲存格。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GridMap_property_bake_navigation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **bake_navigation** = ``false`` :ref:`🔗<class_GridMap_property_bake_navigation>`

.. rst-class:: classref-property-setget

- |void| **set_bake_navigation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_baking_navigation**\ (\ )

如果為 ``true``\ ，則為每個使用帶有導覽網格的 :ref:`mesh_library<class_GridMap_property_mesh_library>` 項目的儲存格，該 GridMap 將建立一個導覽區域。建立的導覽區域將使用分配給該 :ref:`MeshLibrary<class_MeshLibrary>` 專案的導覽層位元遮罩。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_x** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_x>`

.. rst-class:: classref-property-setget

- |void| **set_center_x**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_x**\ (\ )

如果為 ``true``\ ，則網格項以 X 軸為中心。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_y** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_y>`

.. rst-class:: classref-property-setget

- |void| **set_center_y**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_y**\ (\ )

如果為 ``true``\ ，則網格項以 Y 軸為中心。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_z** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_z>`

.. rst-class:: classref-property-setget

- |void| **set_center_z**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_z**\ (\ )

如果為 ``true``\ ，則網格項以 Z 軸為中心。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_octant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **cell_octant_size** = ``8`` :ref:`🔗<class_GridMap_property_cell_octant_size>`

.. rst-class:: classref-property-setget

- |void| **set_octant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_octant_size**\ (\ )

每個卦限的大小，單位為儲存格的數量。適用於全部三個軸。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_scale** = ``1.0`` :ref:`🔗<class_GridMap_property_cell_scale>`

.. rst-class:: classref-property-setget

- |void| **set_cell_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_scale**\ (\ )

儲存格專案的比例。

這不會影響網格單元本身的大小，只會影響其中的專案。這可用於使儲存格專案與其鄰居重疊。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **cell_size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GridMap_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_cell_size**\ (\ )

網格單元的尺寸。

這並不影響網格的尺寸大小。見 :ref:`cell_scale<class_GridMap_property_cell_scale>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_GridMap_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

這個 GridMap 所處的實體層。

GridMap 作為靜態體，意味著它們不會受到重力或是其他力的影響。它們只會受到其他與它們碰撞的物理體的影響。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_GridMap_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

此 GridMap 偵測碰撞的實體層。更多資訊請參閱文件\ `《碰撞層與遮罩》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_GridMap_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

發生穿透時用於解決碰撞的優先順序。優先順序越高，對物體的穿透度就越低。例如，可以用來防止玩家突破關卡的邊界。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **collision_visibility_mode** = ``0`` :ref:`🔗<class_GridMap_property_collision_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_collision_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **get_collision_visibility_mode**\ (\ )

Show or hide the **GridMap**'s collision shapes. If set to :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_GridMap_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`, this depends on the show collision debug settings.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_mesh_library:

.. rst-class:: classref-property

:ref:`MeshLibrary<class_MeshLibrary>` **mesh_library** :ref:`🔗<class_GridMap_property_mesh_library>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_library**\ (\ value\: :ref:`MeshLibrary<class_MeshLibrary>`\ )
- :ref:`MeshLibrary<class_MeshLibrary>` **get_mesh_library**\ (\ )

指定的 :ref:`MeshLibrary<class_MeshLibrary>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_physics_material:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material** :ref:`🔗<class_GridMap_property_physics_material>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material**\ (\ )

覆蓋整個 **GridMap** 的預設摩擦力和反彈物理屬性。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GridMap_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_GridMap_method_clear>`

清除所有儲存格。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_clear_baked_meshes:

.. rst-class:: classref-method

|void| **clear_baked_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_clear_baked_meshes>`

清除所有烘焙過的網格。見 :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_mesh_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_bake_mesh_instance**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GridMap_method_get_bake_mesh_instance>`

返回是否存在帶有給定 ID 的節點。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bake_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_get_bake_meshes>`

Returns an array of :ref:`ArrayMesh<class_ArrayMesh>`\ es and :ref:`Transform3D<class_Transform3D>` references of all bake meshes that exist within the current GridMap. Even indices contain :ref:`ArrayMesh<class_ArrayMesh>`\ es, while odd indices contain :ref:`Transform3D<class_Transform3D>`\ s that are always equal to :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

This method relies on the output of :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>`, which will be called with ``gen_lightmap_uv`` set to ``true`` and ``lightmap_uv_texel_size`` set to ``0.1`` if it hasn't been called yet.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_basis_with_orthogonal_index:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_basis_with_orthogonal_index**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_basis_with_orthogonal_index>`

返回沿向量 (x,y,z) 的 24 種可能旋轉中的一種，每個分量為 -1、0 或 1。有關詳細資訊，請參閱 Godot 原始程式碼。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item>`

位於給定柵格座標的 :ref:`MeshLibrary<class_MeshLibrary>` 專案的索引。如果儲存格為空，則將返回 :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_basis:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_cell_item_basis**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_basis>`

返回為指定儲存格提供方向的基。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_orientation:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item_orientation**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_orientation>`

給定柵格座標處的儲存格的方向。如果該儲存格為空，則返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_layer_value>`

返回 :ref:`collision_layer<class_GridMap_property_collision_layer>` 中是否啟用了指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_mask_value>`

返回 :ref:`collision_mask<class_GridMap_property_collision_mask>` 中是否啟用了指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_meshes**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_meshes>`

Returns an array of :ref:`Transform3D<class_Transform3D>` and :ref:`Mesh<class_Mesh>` references corresponding to the non-empty cells in the grid. The transforms are specified in local space. Even indices contain :ref:`Transform3D<class_Transform3D>`\ s, while odd indices contain :ref:`Mesh<class_Mesh>`\ es related to the :ref:`Transform3D<class_Transform3D>` in the index preceding it.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_navigation_map>`

返回該 GridMap 節點用於其儲存格烘焙導覽網格的導覽地圖的 :ref:`RID<class_RID>`\ 。

該函式始終返回在 GridMap 節點上設定的地圖，而不是 NavigationServer 上的地圖。如果直接使用 NavigationServer API 更改地圖，則 GridMap 節點將不會感知到地圖的更改。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_octant_coords_from_cell_coords:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **get_octant_coords_from_cell_coords**\ (\ cell_coords\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_octant_coords_from_cell_coords>`

Returns the :ref:`Vector3i<class_Vector3i>` octant coordinates of the octant that the cell at ``cell_coords`` belongs to.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_octants_in_bounds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_octants_in_bounds**\ (\ bounds\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_GridMap_method_get_octants_in_bounds>`

Returns an array of :ref:`Vector3i<class_Vector3i>` octant coordinates that are inside the given ``bounds``, including octants that have no cells in use.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_orthogonal_index_from_basis:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_orthogonal_index_from_basis**\ (\ basis\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_GridMap_method_get_orthogonal_index_from_basis>`

該函式考慮將旋轉離散化為單位球體上的 24 個點，沿向量 (x,y,z) 放置，每個分量為 -1、0 或 1，並返回索引（在 0 到 23 的範圍內 ) 最能代表物體方向的點。 有關詳細資訊，請參閱 Godot 原始程式碼。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells>`

返回一個包含網格中非空儲存格座標的 :ref:`Vector3<class_Vector3>` 陣列。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_by_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_by_item>`

返回所有具有 ``item`` 中指定的專案索引的儲存格的陣列。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_in_octant:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_in_octant**\ (\ octant_coords\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_in_octant>`

Returns an array of :ref:`Vector3i<class_Vector3i>`\ s with the cell coordinates of non-empty cells inside the octant at ``octant_coords``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_in_octant_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_in_octant_by_item**\ (\ octant_coords\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_in_octant_by_item>`

Returns an array of :ref:`Vector3i<class_Vector3i>`\ s with the cell coordinates of cells inside the octant at ``octant_coords`` that use the specified cell ``item``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_octants:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_octants**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_used_octants>`

Returns an array of :ref:`Vector3i<class_Vector3i>`\ s with the octant coordinates of the non-empty octants in the grid map.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_octants_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_octants_by_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_octants_by_item>`

Returns an array of :ref:`Vector3i<class_Vector3i>`\ s with the octant coordinates of the octants that use the specified ``item`` in the grid map.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_octants_in_bounds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_octants_in_bounds**\ (\ bounds\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_octants_in_bounds>`

Returns an array of :ref:`Vector3i<class_Vector3i>`\ s with the octant coordinates of non-empty octants that are inside the local ``bounds``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_local_to_map:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **local_to_map**\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_GridMap_method_local_to_map>`

返回包含給定 ``local_position`` 的儲存格的地圖座標。如果 ``local_position`` 在全域座標中，請考慮在將其傳遞給該方法之前使用 :ref:`Node3D.to_local()<class_Node3D_method_to_local>`\ 。另請參閱 :ref:`map_to_local()<class_GridMap_method_map_to_local>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_make_baked_meshes:

.. rst-class:: classref-method

|void| **make_baked_meshes**\ (\ gen_lightmap_uv\: :ref:`bool<class_bool>` = false, lightmap_uv_texel_size\: :ref:`float<class_float>` = 0.1\ ) :ref:`🔗<class_GridMap_method_make_baked_meshes>`

Generates a baked mesh that represents all meshes in the assigned :ref:`MeshLibrary<class_MeshLibrary>` for use with :ref:`LightmapGI<class_LightmapGI>`. If ``gen_lightmap_uv`` is ``true``, UV2 data will be generated for each mesh currently used in the **GridMap**. Otherwise, only meshes that already have UV2 data present will be able to use baked lightmaps. When generating UV2, ``lightmap_uv_texel_size`` controls the texel density for lightmaps, with lower values resulting in more detailed lightmaps. ``lightmap_uv_texel_size`` is ignored if ``gen_lightmap_uv`` is ``false``. See also :ref:`get_bake_meshes()<class_GridMap_method_get_bake_meshes>`, which relies on the output of this method.

\ **Note:** Calling this method will not actually bake lightmaps, as lightmap baking is performed using the :ref:`LightmapGI<class_LightmapGI>` node.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_map_to_local:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **map_to_local**\ (\ map_position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_map_to_local>`

Returns the position of a grid cell in the GridMap's local coordinate space. To convert the returned value into global coordinates, use :ref:`Node3D.to_global()<class_Node3D_method_to_global>`. See also :ref:`local_to_map()<class_GridMap_method_local_to_map>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_GridMap_method_resource_changed>`

**已棄用：** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

This method does nothing.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_cell_item:

.. rst-class:: classref-method

|void| **set_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`, orientation\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GridMap_method_set_cell_item>`

設定由其柵格座標引用的儲存格的網格索引。

諸如 :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>` 之類的負的專案索引將清除該儲存格。

可選地，可以傳入該專案的方向。有關有效的方向值，請參閱 :ref:`get_orthogonal_index_from_basis()<class_GridMap_method_get_orthogonal_index_from_basis>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_layer_value>`

根據 ``value``\ ，啟用或禁用 :ref:`collision_layer<class_GridMap_property_collision_layer>` 中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_mask_value>`

根據 ``value``\ ，啟用或禁用 :ref:`collision_mask<class_GridMap_property_collision_mask>` 中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_GridMap_method_set_navigation_map>`

設定該導覽地圖的 :ref:`RID<class_RID>`\ ，該 GridMap 節點應該用於其儲存格烘焙導覽網格。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
