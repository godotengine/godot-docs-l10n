:github_url: hide

.. _class_NavigationMesh:

NavigationMesh
==============

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于定义可达区域和障碍物的导航网格。

.. rst-class:: classref-introduction-group

描述
----

导航网格是多边形的集合，用于定义环境中的哪些区域是可以穿越的，帮助代理在复杂的空间中寻路。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 NavigationMesh <../tutorials/navigation/navigation_using_navigationmeshes>`

- `3D 导航演示 <https://godotengine.org/asset-library/asset/2743>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`agent_height<class_NavigationMesh_property_agent_height>`                                         | ``1.5``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`agent_max_climb<class_NavigationMesh_property_agent_max_climb>`                                   | ``0.25``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`agent_max_slope<class_NavigationMesh_property_agent_max_slope>`                                   | ``45.0``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`agent_radius<class_NavigationMesh_property_agent_radius>`                                         | ``0.5``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`border_size<class_NavigationMesh_property_border_size>`                                           | ``0.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`cell_height<class_NavigationMesh_property_cell_height>`                                           | ``0.25``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`cell_size<class_NavigationMesh_property_cell_size>`                                               | ``0.25``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`detail_sample_distance<class_NavigationMesh_property_detail_sample_distance>`                     | ``6.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`detail_sample_max_error<class_NavigationMesh_property_detail_sample_max_error>`                   | ``1.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`edge_max_error<class_NavigationMesh_property_edge_max_error>`                                     | ``1.3``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`edge_max_length<class_NavigationMesh_property_edge_max_length>`                                   | ``0.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`AABB<class_AABB>`                                             | :ref:`filter_baking_aabb<class_NavigationMesh_property_filter_baking_aabb>`                             | ``AABB(0, 0, 0, 0, 0, 0)``          |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                       | :ref:`filter_baking_aabb_offset<class_NavigationMesh_property_filter_baking_aabb_offset>`               | ``Vector3(0, 0, 0)``                |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`filter_ledge_spans<class_NavigationMesh_property_filter_ledge_spans>`                             | ``false``                           |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`filter_low_hanging_obstacles<class_NavigationMesh_property_filter_low_hanging_obstacles>`         | ``false``                           |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`filter_walkable_low_height_spans<class_NavigationMesh_property_filter_walkable_low_height_spans>` | ``false``                           |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>`                   | ``4294967295``                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>`   | :ref:`geometry_parsed_geometry_type<class_NavigationMesh_property_geometry_parsed_geometry_type>`       | ``2``                               |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>`   | :ref:`geometry_source_geometry_mode<class_NavigationMesh_property_geometry_source_geometry_mode>`       | ``0``                               |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StringName<class_StringName>`                                 | :ref:`geometry_source_group_name<class_NavigationMesh_property_geometry_source_group_name>`             | ``&"navigation_mesh_source_group"`` |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`region_merge_size<class_NavigationMesh_property_region_merge_size>`                               | ``20.0``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`region_min_size<class_NavigationMesh_property_region_min_size>`                                   | ``2.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` | :ref:`sample_partition_type<class_NavigationMesh_property_sample_partition_type>`                       | ``0``                               |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`vertices_per_polygon<class_NavigationMesh_property_vertices_per_polygon>`                         | ``6.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_polygon<class_NavigationMesh_method_add_polygon>`\ (\ polygon\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )                                       |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_NavigationMesh_method_clear>`\ (\ )                                                                                                              |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_polygons<class_NavigationMesh_method_clear_polygons>`\ (\ )                                                                                            |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`create_from_mesh<class_NavigationMesh_method_create_from_mesh>`\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ )                                                        |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`get_collision_mask_value<class_NavigationMesh_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_polygon<class_NavigationMesh_method_get_polygon>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                     |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_polygon_count<class_NavigationMesh_method_get_polygon_count>`\ (\ ) |const|                                                                              |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_vertices<class_NavigationMesh_method_get_vertices>`\ (\ ) |const|                                                                                        |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_collision_mask_value<class_NavigationMesh_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertices<class_NavigationMesh_method_set_vertices>`\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                                |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_NavigationMesh_SamplePartitionType:

.. rst-class:: classref-enumeration

enum **SamplePartitionType**: :ref:`🔗<enum_NavigationMesh_SamplePartitionType>`

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_WATERSHED:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_WATERSHED** = ``0``

分水岭分区。如果你预先计算导航网格，通常是最佳选择，如果你有大的开放区域，请使用它。

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_MONOTONE:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_MONOTONE** = ``1``

单调分区。如果你想要快速生成导航网格，请使用此选项。

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_LAYERS:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_LAYERS** = ``2``

层分区。用于具有中小型图块的平铺导航网格的不错选择。

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_MAX** = ``3``

代表 :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_NavigationMesh_ParsedGeometryType:

.. rst-class:: classref-enumeration

enum **ParsedGeometryType**: :ref:`🔗<enum_NavigationMesh_ParsedGeometryType>`

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_MESH_INSTANCES:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_MESH_INSTANCES** = ``0``

将网格实例解析为几何体。包括 :ref:`MeshInstance3D<class_MeshInstance3D>`\ 、\ :ref:`CSGShape3D<class_CSGShape3D>`\ 、\ :ref:`GridMap<class_GridMap>` 等节点。

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_STATIC_COLLIDERS:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_STATIC_COLLIDERS** = ``1``

将 :ref:`StaticBody3D<class_StaticBody3D>` 碰撞器解析为几何体。碰撞器应在由 :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>` 指定的层中。

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_BOTH** = ``2``

:ref:`PARSED_GEOMETRY_MESH_INSTANCES<class_NavigationMesh_constant_PARSED_GEOMETRY_MESH_INSTANCES>` 和 :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationMesh_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>`.

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_MAX** = ``3``

代表 :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_NavigationMesh_SourceGeometryMode:

.. rst-class:: classref-enumeration

enum **SourceGeometryMode**: :ref:`🔗<enum_NavigationMesh_SourceGeometryMode>`

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_ROOT_NODE_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_ROOT_NODE_CHILDREN** = ``0``

在根节点的子节点中递归扫描几何体。

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN** = ``1``

以递归方式扫描组中的节点及其子节点以获取几何图形。该组由 :ref:`geometry_source_group_name<class_NavigationMesh_property_geometry_source_group_name>` 指定。

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_EXPLICIT** = ``2``

使用一个组中的节点进行几何运算。该组由 :ref:`geometry_source_group_name<class_NavigationMesh_property_geometry_source_group_name>` 指定。

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_MAX** = ``3``

代表 :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_NavigationMesh_property_agent_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_height** = ``1.5`` :ref:`🔗<class_NavigationMesh_property_agent_height>`

.. rst-class:: classref-property-setget

- |void| **set_agent_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_height**\ (\ )

地板到天花板的最小高度，仍然允许被认为是可行走的地板。

\ **注意：**\ 烘焙时，这个值会向上取整到最接近的 :ref:`cell_height<class_NavigationMesh_property_cell_height>` 的倍数。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_agent_max_climb:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_max_climb** = ``0.25`` :ref:`🔗<class_NavigationMesh_property_agent_max_climb>`

.. rst-class:: classref-property-setget

- |void| **set_agent_max_climb**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_max_climb**\ (\ )

被认为仍可穿越的最小墙壁高度。

\ **注意：**\ 烘焙时，该值将向下舍入到最接近的 :ref:`cell_height<class_NavigationMesh_property_cell_height>` 的倍数。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_agent_max_slope:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_max_slope** = ``45.0`` :ref:`🔗<class_NavigationMesh_property_agent_max_slope>`

.. rst-class:: classref-property-setget

- |void| **set_agent_max_slope**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_max_slope**\ (\ )

认为可行走的最大坡度，单位是度。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_agent_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_radius** = ``0.5`` :ref:`🔗<class_NavigationMesh_property_agent_radius>`

.. rst-class:: classref-property-setget

- |void| **set_agent_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_radius**\ (\ )

从障碍物处侵蚀/缩小高度场可行走区域的距离。

\ **注意：**\ 烘焙过程中会将这个值向上舍入到最接近的 :ref:`cell_size<class_NavigationMesh_property_cell_size>` 的倍数。

\ **注意：**\ 半径必须大于等于 ``0.0``\ 。如果半径为 ``0.0``\ ，则无法在烘焙过程中修复无效的轮廓重叠和其他精度错误。因此，某些障碍物可能会被错误地排除在最终导航网格之外，或者可能会删除导航网格的多边形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_border_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **border_size** = ``0.0`` :ref:`🔗<class_NavigationMesh_property_border_size>`

.. rst-class:: classref-property-setget

- |void| **set_border_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_border_size**\ (\ )

烘焙区域边界不可导航的边框大小。

要烘焙与图块对齐的导航网格，防止图块边缘被 :ref:`agent_radius<class_NavigationMesh_property_agent_radius>` 收缩，请与 :ref:`filter_baking_aabb<class_NavigationMesh_property_filter_baking_aabb>` 配合使用并将 :ref:`edge_max_error<class_NavigationMesh_property_edge_max_error>` 设为 ``1.0`` 或小于边框大小的值。

\ **注意：**\ 如果这个值不为 ``0.0``\ ，则会在烘焙时向上取整到 :ref:`cell_size<class_NavigationMesh_property_cell_size>` 的整数倍。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_cell_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_height** = ``0.25`` :ref:`🔗<class_NavigationMesh_property_cell_height>`

.. rst-class:: classref-property-setget

- |void| **set_cell_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_height**\ (\ )

单元格高度，用于将导航网格的顶点在 Y 轴上进行栅格化。必须与导航地图的单元格高度匹配。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_cell_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_size** = ``0.25`` :ref:`🔗<class_NavigationMesh_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_size**\ (\ )

单元格大小，用于将导航网格的顶点在 XZ 平面上进行栅格化。必须与导航地图的单元格大小匹配。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_detail_sample_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **detail_sample_distance** = ``6.0`` :ref:`🔗<class_NavigationMesh_property_detail_sample_distance>`

.. rst-class:: classref-property-setget

- |void| **set_detail_sample_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_detail_sample_distance**\ (\ )

生成细分网格时使用的采样距离，以单元格为单位。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_detail_sample_max_error:

.. rst-class:: classref-property

:ref:`float<class_float>` **detail_sample_max_error** = ``1.0`` :ref:`🔗<class_NavigationMesh_property_detail_sample_max_error>`

.. rst-class:: classref-property-setget

- |void| **set_detail_sample_max_error**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_detail_sample_max_error**\ (\ )

细节网格表面应偏离高度场的最大距离，以单元格为单位。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_edge_max_error:

.. rst-class:: classref-property

:ref:`float<class_float>` **edge_max_error** = ``1.3`` :ref:`🔗<class_NavigationMesh_property_edge_max_error>`

.. rst-class:: classref-property-setget

- |void| **set_edge_max_error**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_edge_max_error**\ (\ )

简化轮廓的边界边缘偏离原始轮廓的最大距离。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_edge_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **edge_max_length** = ``0.0`` :ref:`🔗<class_NavigationMesh_property_edge_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_edge_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_edge_max_length**\ (\ )

沿网格边界的轮廓的最大允许长度。值为 ``0.0`` 将禁用该功能。

\ **注意：**\ 烘焙时，这个值会向上取整到最接近的 :ref:`cell_size<class_NavigationMesh_property_cell_size>` 的倍数。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_baking_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **filter_baking_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_NavigationMesh_property_filter_baking_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_filter_baking_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_filter_baking_aabb**\ (\ )

如果烘焙 :ref:`AABB<class_AABB>` 存在体积，对该导航网格的烘焙会被限制在其内部区域中。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_baking_aabb_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **filter_baking_aabb_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationMesh_property_filter_baking_aabb_offset>`

.. rst-class:: classref-property-setget

- |void| **set_filter_baking_aabb_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_filter_baking_aabb_offset**\ (\ )

应用于 :ref:`filter_baking_aabb<class_NavigationMesh_property_filter_baking_aabb>` :ref:`AABB<class_AABB>` 的位置偏移量。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_ledge_spans:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_ledge_spans** = ``false`` :ref:`🔗<class_NavigationMesh_property_filter_ledge_spans>`

.. rst-class:: classref-property-setget

- |void| **set_filter_ledge_spans**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_filter_ledge_spans**\ (\ )

如果为 ``true``\ ，则标记边缘间的跨度为不可行走。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_low_hanging_obstacles:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_low_hanging_obstacles** = ``false`` :ref:`🔗<class_NavigationMesh_property_filter_low_hanging_obstacles>`

.. rst-class:: classref-property-setget

- |void| **set_filter_low_hanging_obstacles**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_filter_low_hanging_obstacles**\ (\ )

如果为 ``true``\ ，如果它们的最大值在可行走邻域的 :ref:`agent_max_climb<class_NavigationMesh_property_agent_max_climb>` 内，则将不可行走范围标记为可行走。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_walkable_low_height_spans:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_walkable_low_height_spans** = ``false`` :ref:`🔗<class_NavigationMesh_property_filter_walkable_low_height_spans>`

.. rst-class:: classref-property-setget

- |void| **set_filter_walkable_low_height_spans**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_filter_walkable_low_height_spans**\ (\ )

如果为 ``true``\ ，如果跨度上方的间隙小于 :ref:`agent_height<class_NavigationMesh_property_agent_height>`\ ，则将可行走范围标记为不可行走。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **geometry_collision_mask** = ``4294967295`` :ref:`🔗<class_NavigationMesh_property_geometry_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

用于扫描静态碰撞的物理层。

仅在 :ref:`geometry_parsed_geometry_type<class_NavigationMesh_property_geometry_parsed_geometry_type>` 是 :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationMesh_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>` 或 :ref:`PARSED_GEOMETRY_BOTH<class_NavigationMesh_constant_PARSED_GEOMETRY_BOTH>` 时才使用。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_parsed_geometry_type:

.. rst-class:: classref-property

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **geometry_parsed_geometry_type** = ``2`` :ref:`🔗<class_NavigationMesh_property_geometry_parsed_geometry_type>`

.. rst-class:: classref-property-setget

- |void| **set_parsed_geometry_type**\ (\ value\: :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>`\ )
- :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **get_parsed_geometry_type**\ (\ )

决定哪种类型的节点可解析为几何图形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_source_geometry_mode:

.. rst-class:: classref-property

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **geometry_source_geometry_mode** = ``0`` :ref:`🔗<class_NavigationMesh_property_geometry_source_geometry_mode>`

.. rst-class:: classref-property-setget

- |void| **set_source_geometry_mode**\ (\ value\: :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>`\ )
- :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **get_source_geometry_mode**\ (\ )

烘焙时使用的几何体来源。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_source_group_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **geometry_source_group_name** = ``&"navigation_mesh_source_group"`` :ref:`🔗<class_NavigationMesh_property_geometry_source_group_name>`

.. rst-class:: classref-property-setget

- |void| **set_source_group_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_source_group_name**\ (\ )

分组的名称，会在该分组中扫描几何体。

只有当 :ref:`geometry_source_geometry_mode<class_NavigationMesh_property_geometry_source_geometry_mode>` 是 :ref:`SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN<class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN>` 或 :ref:`SOURCE_GEOMETRY_GROUPS_EXPLICIT<class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT>` 时才使用。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_region_merge_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **region_merge_size** = ``20.0`` :ref:`🔗<class_NavigationMesh_property_region_merge_size>`

.. rst-class:: classref-property-setget

- |void| **set_region_merge_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_region_merge_size**\ (\ )

如果可能的话，任何小于这个尺寸的区域将与较大的区域合并。

\ **注意：**\ 这个值将被平方来计算单元格的数量。例如，值为 20 时将把单元格的数量设为 400。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_region_min_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **region_min_size** = ``2.0`` :ref:`🔗<class_NavigationMesh_property_region_min_size>`

.. rst-class:: classref-property-setget

- |void| **set_region_min_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_region_min_size**\ (\ )

区域被创建所需的最小尺寸。

\ **注意：**\ 该值将被平方，以计算出允许形成孤岛区域的最小单元数。例如，值为 8 时将把单元格的数量设为 64。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_sample_partition_type:

.. rst-class:: classref-property

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **sample_partition_type** = ``0`` :ref:`🔗<class_NavigationMesh_property_sample_partition_type>`

.. rst-class:: classref-property-setget

- |void| **set_sample_partition_type**\ (\ value\: :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>`\ )
- :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **get_sample_partition_type**\ (\ )

创建导航网格多边形单元的分割算法。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_vertices_per_polygon:

.. rst-class:: classref-property

:ref:`float<class_float>` **vertices_per_polygon** = ``6.0`` :ref:`🔗<class_NavigationMesh_property_vertices_per_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_vertices_per_polygon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vertices_per_polygon**\ (\ )

在轮廓到多边形转换过程中生成的多边形允许的最大顶点数。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_NavigationMesh_method_add_polygon:

.. rst-class:: classref-method

|void| **add_polygon**\ (\ polygon\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationMesh_method_add_polygon>`

使用调用 :ref:`get_vertices()<class_NavigationMesh_method_get_vertices>` 得到的顶点的索引添加一个多边形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationMesh_method_clear>`

清除顶点和多边形索引的内部数组。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_clear_polygons:

.. rst-class:: classref-method

|void| **clear_polygons**\ (\ ) :ref:`🔗<class_NavigationMesh_method_clear_polygons>`

清除多边形数组，但不清除顶点数组。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_create_from_mesh:

.. rst-class:: classref-method

|void| **create_from_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_NavigationMesh_method_create_from_mesh>`

通过根据 :ref:`Mesh<class_Mesh>` 设置顶点和索引来初始化导航网格。

\ **注意：**\ 给定的 ``mesh`` 必须是 :ref:`Mesh.PRIMITIVE_TRIANGLES<class_Mesh_constant_PRIMITIVE_TRIANGLES>` 类型，并且有一个索引数组。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationMesh_method_get_collision_mask_value>`

返回是否启用了 :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>` 中的指定层，给定的 ``layer_number`` 在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_polygon:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_polygon**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationMesh_method_get_polygon>`

返回创建多边形的顶点索引，形式为 :ref:`PackedInt32Array<class_PackedInt32Array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_polygon_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_polygon_count**\ (\ ) |const| :ref:`🔗<class_NavigationMesh_method_get_polygon_count>`

返回导航网格中的多边形数量。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_NavigationMesh_method_get_vertices>`

返回用于创建该多边形的所有顶点，形式为 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationMesh_method_set_collision_mask_value>`

根据 ``value`` 启用或禁用 :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>` 中的指定层，给定的 ``layer_number`` 在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_set_vertices:

.. rst-class:: classref-method

|void| **set_vertices**\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_NavigationMesh_method_set_vertices>`

设置顶点，可以使用 :ref:`add_polygon()<class_NavigationMesh_method_add_polygon>` 方法对其进行索引，创建多边形。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
