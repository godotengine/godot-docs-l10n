:github_url: hide

.. meta::
	:keywords: tilemap

.. _class_GridMap:

GridMap
=======

**继承：** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基于 3D 图块地图的节点。

.. rst-class:: classref-introduction-group

描述
----

GridMap，即栅格地图，允许以交互的方式将网格放置在栅格上。它在编辑器和脚本中均可使用，可以用来创建游戏内的关卡编辑器。

GridMap 使用了一个 :ref:`MeshLibrary<class_MeshLibrary>`\ ，包含一组图块。每个图块都是一个网格，带有材质以及可选的碰撞形状和导航形状。

GridMap 中包含了若干单元格。每个栅格单元格都引用着 :ref:`MeshLibrary<class_MeshLibrary>` 中的一个图块。地图中所有单元格的大小都相同。

在内部，GridMap 会根据卦限进行拆分，形成卦限的稀疏合集，能够进行高效的渲染和物理处理。每个卦限的大小是相同的，可以包含多个单元格。

\ **注意：**\ GridMap 不是从 :ref:`VisualInstance3D<class_VisualInstance3D>` 扩展的，因此无法隐藏，也无法根据 :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` 进行掩码剔除。如果使灯光不影响第一层，则整个 GridMap 将不会被该灯光照亮。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用网格地图 <../tutorials/3d/using_gridmaps>`

- `3D 平台跳跃演示 <https://godotengine.org/asset-library/asset/2748>`__

- `3D 动力学角色演示 <https://godotengine.org/asset-library/asset/2739>`__

.. rst-class:: classref-reftable-group

属性
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

信号
----

.. _class_GridMap_signal_cell_size_changed:

.. rst-class:: classref-signal

**cell_size_changed**\ (\ cell_size\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_GridMap_signal_cell_size_changed>`

当 :ref:`cell_size<class_GridMap_property_cell_size>` 改变时触发。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_GridMap_signal_changed>`

该 GridMap 的 :ref:`MeshLibrary<class_MeshLibrary>` 发生改变时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_GridMap_DebugVisibilityMode:

.. rst-class:: classref-enumeration

enum **DebugVisibilityMode**: :ref:`🔗<enum_GridMap_DebugVisibilityMode>`

.. _class_GridMap_constant_DEBUG_VISIBILITY_MODE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_DEFAULT** = ``0``

在编辑器中隐藏碰撞调试形状，并使用调试设置来决定它们在游戏内的可见性（例如 :ref:`SceneTree.debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` 或 :ref:`SceneTree.debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>`\ ）。

.. _class_GridMap_constant_DEBUG_VISIBILITY_MODE_FORCE_SHOW:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_SHOW** = ``1``

始终显示碰撞调试形状。

.. _class_GridMap_constant_DEBUG_VISIBILITY_MODE_FORCE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **DEBUG_VISIBILITY_MODE_FORCE_HIDE** = ``2``

始终隐藏碰撞调试形状。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_GridMap_constant_INVALID_CELL_ITEM:

.. rst-class:: classref-constant

**INVALID_CELL_ITEM** = ``-1`` :ref:`🔗<class_GridMap_constant_INVALID_CELL_ITEM>`

可以在 :ref:`set_cell_item()<class_GridMap_method_set_cell_item>` 中清除单元格（或在 :ref:`get_cell_item()<class_GridMap_method_get_cell_item>` 中重新代表一个空的单元格）的无效单元格。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GridMap_property_bake_navigation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **bake_navigation** = ``false`` :ref:`🔗<class_GridMap_property_bake_navigation>`

.. rst-class:: classref-property-setget

- |void| **set_bake_navigation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_baking_navigation**\ (\ )

如果为 ``true``\ ，则为每个使用带有导航网格的 :ref:`mesh_library<class_GridMap_property_mesh_library>` 项目的单元格，该 GridMap 将创建一个导航区域。创建的导航区域将使用分配给该 :ref:`MeshLibrary<class_MeshLibrary>` 项目的导航层位掩码。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_x** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_x>`

.. rst-class:: classref-property-setget

- |void| **set_center_x**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_x**\ (\ )

如果为 ``true``\ ，则网格项以 X 轴为中心。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_y** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_y>`

.. rst-class:: classref-property-setget

- |void| **set_center_y**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_y**\ (\ )

如果为 ``true``\ ，则网格项以 Y 轴为中心。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_z** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_z>`

.. rst-class:: classref-property-setget

- |void| **set_center_z**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_z**\ (\ )

如果为 ``true``\ ，则网格项以 Z 轴为中心。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_octant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **cell_octant_size** = ``8`` :ref:`🔗<class_GridMap_property_cell_octant_size>`

.. rst-class:: classref-property-setget

- |void| **set_octant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_octant_size**\ (\ )

每个卦限的大小，单位为单元格的数量。适用于全部三个轴。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_scale** = ``1.0`` :ref:`🔗<class_GridMap_property_cell_scale>`

.. rst-class:: classref-property-setget

- |void| **set_cell_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_scale**\ (\ )

单元格项目的比例。

这不会影响网格单元本身的大小，只会影响其中的项目。这可用于使单元格项目与其邻居重叠。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **cell_size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GridMap_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_cell_size**\ (\ )

网格单元的尺寸。

这并不影响网格的尺寸大小。见 :ref:`cell_scale<class_GridMap_property_cell_scale>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_GridMap_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

这个 GridMap 所处的物理层。

GridMap 作为静态体，意味着它们不会受到重力或是其他力的影响。它们只会受到其他与它们碰撞的物理体的影响。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_GridMap_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

此 GridMap 检测碰撞的物理层。更多信息请参阅文档\ `《碰撞层与掩码》 <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_GridMap_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

发生穿透时用于解决碰撞的优先级。优先级越高，对物体的穿透度就越低。例如，可以用来防止玩家突破关卡的边界。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_visibility_mode:

.. rst-class:: classref-property

:ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **collision_visibility_mode** = ``0`` :ref:`🔗<class_GridMap_property_collision_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_collision_visibility_mode**\ (\ value\: :ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>`\ )
- :ref:`DebugVisibilityMode<enum_GridMap_DebugVisibilityMode>` **get_collision_visibility_mode**\ (\ )

显示或隐藏 **GridMap** 的碰撞形状（collision shapes）。如果设置为 :ref:`DEBUG_VISIBILITY_MODE_DEFAULT<class_GridMap_constant_DEBUG_VISIBILITY_MODE_DEFAULT>`\ ，则取决于“显示碰撞调试”（show collision debug）的全局设置。

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

覆盖整个 **GridMap** 的默认摩擦力和反弹物理属性。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GridMap_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_GridMap_method_clear>`

清除所有单元格。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_clear_baked_meshes:

.. rst-class:: classref-method

|void| **clear_baked_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_clear_baked_meshes>`

清除所有烘焙过的网格。见 :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_mesh_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_bake_mesh_instance**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GridMap_method_get_bake_mesh_instance>`

返回索引为 ``idx`` 的烘焙网格的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bake_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_get_bake_meshes>`

返回当前 GridMap 中存在的已烘焙网格数组，元素为 :ref:`ArrayMesh<class_ArrayMesh>` 和 :ref:`Transform3D<class_Transform3D>`\ 。奇数索引为 :ref:`ArrayMesh<class_ArrayMesh>`\ ，偶数索引为 :ref:`Transform3D<class_Transform3D>`\ ，始终等于 :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`\ 。

这个方法依赖于 :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>` 的输出，如果尚未调用，则会使用 ``gen_lightmap_uv`` 为 ``true``\ 、\ ``lightmap_uv_texel_size`` 为 ``0.1`` 进行调用。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_basis_with_orthogonal_index:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_basis_with_orthogonal_index**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_basis_with_orthogonal_index>`

返回沿向量 (x,y,z) 的 24 种可能旋转中的一种，每个分量为 -1、0 或 1。详见 Godot 源代码。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item>`

位于给定栅格坐标的 :ref:`MeshLibrary<class_MeshLibrary>` 项目的索引。如果单元格为空，则将返回 :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_basis:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_cell_item_basis**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_basis>`

返回为指定单元格提供方向的基。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_orientation:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item_orientation**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_orientation>`

给定栅格坐标处的单元格的方向。如果该单元格为空，则返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_layer_value>`

返回 :ref:`collision_layer<class_GridMap_property_collision_layer>` 中是否启用了指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_mask_value>`

返回 :ref:`collision_mask<class_GridMap_property_collision_mask>` 中是否启用了指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_meshes**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_meshes>`

返回与栅格中非空单元格对应的数组，元素为 :ref:`Transform3D<class_Transform3D>` 和 :ref:`Mesh<class_Mesh>` 引用。变换在局部空间中指定。奇数索引为 :ref:`Transform3D<class_Transform3D>`\ ，偶数索引为 :ref:`Mesh<class_Mesh>`\ ，与前一个索引处的 :ref:`Transform3D<class_Transform3D>` 对应。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_navigation_map>`

返回该 GridMap 节点用于其单元格烘焙导航网格的导航地图的 :ref:`RID<class_RID>`\ 。

该函数始终返回在 GridMap 节点上设置的地图，而不是 NavigationServer 上的地图。如果直接使用 NavigationServer API 更改地图，则 GridMap 节点将不会感知到地图的更改。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_octant_coords_from_cell_coords:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **get_octant_coords_from_cell_coords**\ (\ cell_coords\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_octant_coords_from_cell_coords>`

返回 ``cell_coords``\ （单元格坐标）所在的八分体（octant）的 :ref:`Vector3i<class_Vector3i>`\ （三维整数向量）坐标。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_octants_in_bounds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_octants_in_bounds**\ (\ bounds\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_GridMap_method_get_octants_in_bounds>`

返回一个包含 :ref:`Vector3i<class_Vector3i>` 卦限坐标的数组，这些卦限位于给定的 ``bounds`` 范围内，包括那些未被使用的单元格所在的卦限。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_orthogonal_index_from_basis:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_orthogonal_index_from_basis**\ (\ basis\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_GridMap_method_get_orthogonal_index_from_basis>`

该函数考虑将旋转离散化为单位球体上的 24 个点，沿向量 (x,y,z) 放置，每个分量为 -1、0 或 1，并返回索引（在 0 到 23 的范围内 ) 最能代表物体方向的点。详见 Godot 源代码。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells>`

返回一个包含网格中非空单元格坐标的 :ref:`Vector3<class_Vector3>` 数组。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_by_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_by_item>`

返回所有具有 ``item`` 中指定的项目索引的单元格的数组。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_in_octant:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_in_octant**\ (\ octant_coords\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_in_octant>`

返回一个包含 :ref:`Vector3i<class_Vector3i>` 的数组，其中包含位于 ``octant_coords``\ （八分体坐标）处的八分体（octant）内所有非空单元格的坐标。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_in_octant_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_in_octant_by_item**\ (\ octant_coords\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_in_octant_by_item>`

返回一个包含 :ref:`Vector3i<class_Vector3i>` 的数组， 表示位于 ``octant_coords`` 指定卦限内、且使用了指定单元格 ``item`` 的单元格坐标。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_octants:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_octants**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_used_octants>`

返回一个包含 :ref:`Vector3i<class_Vector3i>` 的数组，其中包含网格地图（grid map）中所有非空八分体（octant）的坐标。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_octants_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_octants_by_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_octants_by_item>`

返回一个包含 :ref:`Vector3i<class_Vector3i>` 的数组，其中包含网格地图（grid map）中所有使用了指定 ``item``\ （物品）的八分体（octant）的坐标。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_octants_in_bounds:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_octants_in_bounds**\ (\ bounds\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_octants_in_bounds>`

返回一个包含 :ref:`Vector3i<class_Vector3i>` 的数组，其中包含在局部 ``bounds``\ （边界范围）内、所有非空八分体（octant）的坐标。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_local_to_map:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **local_to_map**\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_GridMap_method_local_to_map>`

返回包含给定 ``local_position`` 的单元格的地图坐标。如果 ``local_position`` 在全局坐标中，请考虑在将其传递给该方法之前使用 :ref:`Node3D.to_local()<class_Node3D_method_to_local>`\ 。另见 :ref:`map_to_local()<class_GridMap_method_map_to_local>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_make_baked_meshes:

.. rst-class:: classref-method

|void| **make_baked_meshes**\ (\ gen_lightmap_uv\: :ref:`bool<class_bool>` = false, lightmap_uv_texel_size\: :ref:`float<class_float>` = 0.1\ ) :ref:`🔗<class_GridMap_method_make_baked_meshes>`

生成一个烘焙网格，该网格表示分配给 :ref:`MeshLibrary<class_MeshLibrary>` 的所有网格，会与 :ref:`LightmapGI<class_LightmapGI>` 一起使用。如果 ``gen_lightmap_uv`` 为 ``true``\ ，则将为当前在 **GridMap** 中使用的每个网格生成 UV2 数据。否则，只有已经存在 UV2 数据的网格才能使用烘焙光照贴图。在生成 UV2 时，\ ``lightmap_uv_texel_size`` 控制的是光照贴图的纹素密度，值越低得到的光照贴图越详细。如果 ``gen_lightmap_uv`` 为 ``false``\ ，则会忽略 ``lightmap_uv_texel_size``\ 。另见 :ref:`get_bake_meshes()<class_GridMap_method_get_bake_meshes>`\ ，依赖本方法的输出。

\ **注意：**\ 调用该方法并不会对光照贴图进行烘焙，因为光照贴图是使用 :ref:`LightmapGI<class_LightmapGI>` 节点烘焙的。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_map_to_local:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **map_to_local**\ (\ map_position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_map_to_local>`

返回栅格单元格在 GridMap 的局部坐标空间中的位置。要将返回值转换为全局坐标，请使用 :ref:`Node3D.to_global()<class_Node3D_method_to_global>`\ 。另见 :ref:`local_to_map()<class_GridMap_method_local_to_map>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_GridMap_method_resource_changed>`

**已弃用：** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

这个方法什么也不做。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_cell_item:

.. rst-class:: classref-method

|void| **set_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`, orientation\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GridMap_method_set_cell_item>`

设置由其栅格坐标引用的单元格的网格索引。

\ :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>` 等负数项目索引将清除该单元格。

另外还可以传入项目的方向。有效的方向值见 :ref:`get_orthogonal_index_from_basis()<class_GridMap_method_get_orthogonal_index_from_basis>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_layer_value>`

根据 ``value``\ ，启用或禁用 :ref:`collision_layer<class_GridMap_property_collision_layer>` 中指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_mask_value>`

根据 ``value``\ ，启用或禁用 :ref:`collision_mask<class_GridMap_property_collision_mask>` 中指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_GridMap_method_set_navigation_map>`

设置导航地图 :ref:`RID<class_RID>`\ ，用于 GridMap 节点单元格所烘焙的导航网格。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
