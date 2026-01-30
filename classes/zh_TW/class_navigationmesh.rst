:github_url: hide

.. _class_NavigationMesh:

NavigationMesh
==============

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於定義可達區域和障礙物的導覽網格。

.. rst-class:: classref-introduction-group

說明
----

導覽網格是多邊形的集合，用於定義環境中的哪些區域是可以穿越的，説明代理在複雜的空間中尋路。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 NavigationMesh <../tutorials/navigation/navigation_using_navigationmeshes>`

- `3D Navigation Demo <https://godotengine.org/asset-library/asset/2743>`__

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_NavigationMesh_SamplePartitionType:

.. rst-class:: classref-enumeration

enum **SamplePartitionType**: :ref:`🔗<enum_NavigationMesh_SamplePartitionType>`

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_WATERSHED:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_WATERSHED** = ``0``

分水嶺分區。如果你預先計算導覽網格，通常是最佳選擇，如果你有大的開放區域，請使用它。

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_MONOTONE:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_MONOTONE** = ``1``

單調分區。如果你想要快速生成導覽網格，請使用此選項。

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_LAYERS:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_LAYERS** = ``2``

層分區。用於具有中小型圖塊的平鋪導覽網格的不錯選擇。

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_MAX** = ``3``

代表 :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_NavigationMesh_ParsedGeometryType:

.. rst-class:: classref-enumeration

enum **ParsedGeometryType**: :ref:`🔗<enum_NavigationMesh_ParsedGeometryType>`

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_MESH_INSTANCES:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_MESH_INSTANCES** = ``0``

將網格實例解析為幾何體。包括 :ref:`MeshInstance3D<class_MeshInstance3D>`\ 、\ :ref:`CSGShape3D<class_CSGShape3D>`\ 、\ :ref:`GridMap<class_GridMap>` 等節點。

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_STATIC_COLLIDERS:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_STATIC_COLLIDERS** = ``1``

將 :ref:`StaticBody3D<class_StaticBody3D>` 碰撞器解析為幾何體。碰撞器應在由 :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>` 指定的層中。

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_BOTH** = ``2``

:ref:`PARSED_GEOMETRY_MESH_INSTANCES<class_NavigationMesh_constant_PARSED_GEOMETRY_MESH_INSTANCES>` 和 :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationMesh_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>`.

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_MAX** = ``3``

代表 :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_NavigationMesh_SourceGeometryMode:

.. rst-class:: classref-enumeration

enum **SourceGeometryMode**: :ref:`🔗<enum_NavigationMesh_SourceGeometryMode>`

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_ROOT_NODE_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_ROOT_NODE_CHILDREN** = ``0``

在根節點的子節點中遞迴掃描幾何體。

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN** = ``1``

以遞迴方式掃描組中的節點及其子節點以獲取幾何圖形。該組由 :ref:`geometry_source_group_name<class_NavigationMesh_property_geometry_source_group_name>` 指定。

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_EXPLICIT** = ``2``

使用一個組中的節點進行幾何運算。該組由 :ref:`geometry_source_group_name<class_NavigationMesh_property_geometry_source_group_name>` 指定。

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_MAX** = ``3``

代表 :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_NavigationMesh_property_agent_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_height** = ``1.5`` :ref:`🔗<class_NavigationMesh_property_agent_height>`

.. rst-class:: classref-property-setget

- |void| **set_agent_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_height**\ (\ )

地板到天花板的最小高度，仍然允許被認為是可行走的地板。

\ **注意：**\ 烘焙時，這個值會向上取整到最接近的 :ref:`cell_height<class_NavigationMesh_property_cell_height>` 的倍數。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_agent_max_climb:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_max_climb** = ``0.25`` :ref:`🔗<class_NavigationMesh_property_agent_max_climb>`

.. rst-class:: classref-property-setget

- |void| **set_agent_max_climb**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_max_climb**\ (\ )

被認為仍可穿越的最小牆壁高度。

\ **注意：**\ 烘焙時，該值將向下四捨五入到最接近的 :ref:`cell_height<class_NavigationMesh_property_cell_height>` 的倍數。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_agent_max_slope:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_max_slope** = ``45.0`` :ref:`🔗<class_NavigationMesh_property_agent_max_slope>`

.. rst-class:: classref-property-setget

- |void| **set_agent_max_slope**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_max_slope**\ (\ )

認為可行走的最大坡度，單位是度。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_agent_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_radius** = ``0.5`` :ref:`🔗<class_NavigationMesh_property_agent_radius>`

.. rst-class:: classref-property-setget

- |void| **set_agent_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_radius**\ (\ )

The distance to erode/shrink the walkable area of the heightfield away from obstructions.

\ **Note:** While baking, this value will be rounded up to the nearest multiple of :ref:`cell_size<class_NavigationMesh_property_cell_size>`.

\ **Note:** The radius must be equal or higher than ``0.0``. If the radius is ``0.0``, it won't be possible to fix invalid outline overlaps and other precision errors during the baking process. As a result, some obstacles may be excluded incorrectly from the final navigation mesh, or may delete the navigation mesh's polygons.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_border_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **border_size** = ``0.0`` :ref:`🔗<class_NavigationMesh_property_border_size>`

.. rst-class:: classref-property-setget

- |void| **set_border_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_border_size**\ (\ )

The size of the non-navigable border around the bake bounding area.

In conjunction with the :ref:`filter_baking_aabb<class_NavigationMesh_property_filter_baking_aabb>` and a :ref:`edge_max_error<class_NavigationMesh_property_edge_max_error>` value at ``1.0`` or below the border size can be used to bake tile aligned navigation meshes without the tile edges being shrunk by :ref:`agent_radius<class_NavigationMesh_property_agent_radius>`.

\ **Note:** If this value is not ``0.0``, it will be rounded up to the nearest multiple of :ref:`cell_size<class_NavigationMesh_property_cell_size>` during baking.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_cell_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_height** = ``0.25`` :ref:`🔗<class_NavigationMesh_property_cell_height>`

.. rst-class:: classref-property-setget

- |void| **set_cell_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_height**\ (\ )

儲存格高度，用於將導覽網格的頂點在 Y 軸上進行柵格化。必須與導覽地圖的儲存格高度配對。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_cell_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_size** = ``0.25`` :ref:`🔗<class_NavigationMesh_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_size**\ (\ )

儲存格大小，用於將導覽網格的頂點在 XZ 平面上進行柵格化。必須與導覽地圖的單元格大小配對。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_detail_sample_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **detail_sample_distance** = ``6.0`` :ref:`🔗<class_NavigationMesh_property_detail_sample_distance>`

.. rst-class:: classref-property-setget

- |void| **set_detail_sample_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_detail_sample_distance**\ (\ )

生成細分網格時使用的取樣距離，以儲存格為單位。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_detail_sample_max_error:

.. rst-class:: classref-property

:ref:`float<class_float>` **detail_sample_max_error** = ``1.0`` :ref:`🔗<class_NavigationMesh_property_detail_sample_max_error>`

.. rst-class:: classref-property-setget

- |void| **set_detail_sample_max_error**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_detail_sample_max_error**\ (\ )

細節網格表面應偏離高度場的最大距離，以儲存格為單位。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_edge_max_error:

.. rst-class:: classref-property

:ref:`float<class_float>` **edge_max_error** = ``1.3`` :ref:`🔗<class_NavigationMesh_property_edge_max_error>`

.. rst-class:: classref-property-setget

- |void| **set_edge_max_error**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_edge_max_error**\ (\ )

簡化輪廓的邊界邊緣偏離原始輪廓的最大距離。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_edge_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **edge_max_length** = ``0.0`` :ref:`🔗<class_NavigationMesh_property_edge_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_edge_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_edge_max_length**\ (\ )

沿網格邊界的輪廓的最大允許長度。

\ **注意：**\ 烘焙時，這個值會向上取整到最接近的 :ref:`cell_size<class_NavigationMesh_property_cell_size>` 的倍數。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_baking_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **filter_baking_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_NavigationMesh_property_filter_baking_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_filter_baking_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_filter_baking_aabb**\ (\ )

如果烘焙 :ref:`AABB<class_AABB>` 存在體積，對該導覽網格的烘焙會被限制在其內部區域中。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_baking_aabb_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **filter_baking_aabb_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationMesh_property_filter_baking_aabb_offset>`

.. rst-class:: classref-property-setget

- |void| **set_filter_baking_aabb_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_filter_baking_aabb_offset**\ (\ )

套用於 :ref:`filter_baking_aabb<class_NavigationMesh_property_filter_baking_aabb>` :ref:`AABB<class_AABB>` 的位置偏移量。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_ledge_spans:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_ledge_spans** = ``false`` :ref:`🔗<class_NavigationMesh_property_filter_ledge_spans>`

.. rst-class:: classref-property-setget

- |void| **set_filter_ledge_spans**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_filter_ledge_spans**\ (\ )

如果為 ``true``\ ，則標記邊緣間的跨度為不可行走。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_low_hanging_obstacles:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_low_hanging_obstacles** = ``false`` :ref:`🔗<class_NavigationMesh_property_filter_low_hanging_obstacles>`

.. rst-class:: classref-property-setget

- |void| **set_filter_low_hanging_obstacles**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_filter_low_hanging_obstacles**\ (\ )

如果為 ``true``\ ，如果它們的最大值在可行走鄰域的 :ref:`agent_max_climb<class_NavigationMesh_property_agent_max_climb>` 內，則將不可行走範圍標記為可行走。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_walkable_low_height_spans:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_walkable_low_height_spans** = ``false`` :ref:`🔗<class_NavigationMesh_property_filter_walkable_low_height_spans>`

.. rst-class:: classref-property-setget

- |void| **set_filter_walkable_low_height_spans**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_filter_walkable_low_height_spans**\ (\ )

如果為 ``true``\ ，如果跨度上方的間隙小於 :ref:`agent_height<class_NavigationMesh_property_agent_height>`\ ，則將可行走範圍標記為不可行走。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **geometry_collision_mask** = ``4294967295`` :ref:`🔗<class_NavigationMesh_property_geometry_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

用於掃描靜態碰撞的實體層。

僅在 :ref:`geometry_parsed_geometry_type<class_NavigationMesh_property_geometry_parsed_geometry_type>` 是 :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationMesh_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>` 或 :ref:`PARSED_GEOMETRY_BOTH<class_NavigationMesh_constant_PARSED_GEOMETRY_BOTH>` 時才使用。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_parsed_geometry_type:

.. rst-class:: classref-property

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **geometry_parsed_geometry_type** = ``2`` :ref:`🔗<class_NavigationMesh_property_geometry_parsed_geometry_type>`

.. rst-class:: classref-property-setget

- |void| **set_parsed_geometry_type**\ (\ value\: :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>`\ )
- :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **get_parsed_geometry_type**\ (\ )

Determines which type of nodes will be parsed as geometry.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_source_geometry_mode:

.. rst-class:: classref-property

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **geometry_source_geometry_mode** = ``0`` :ref:`🔗<class_NavigationMesh_property_geometry_source_geometry_mode>`

.. rst-class:: classref-property-setget

- |void| **set_source_geometry_mode**\ (\ value\: :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>`\ )
- :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **get_source_geometry_mode**\ (\ )

The source of the geometry used when baking.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_source_group_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **geometry_source_group_name** = ``&"navigation_mesh_source_group"`` :ref:`🔗<class_NavigationMesh_property_geometry_source_group_name>`

.. rst-class:: classref-property-setget

- |void| **set_source_group_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_source_group_name**\ (\ )

群組的名稱，會在該群組中掃描幾何體。

只有當 :ref:`geometry_source_geometry_mode<class_NavigationMesh_property_geometry_source_geometry_mode>` 是 :ref:`SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN<class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN>` 或 :ref:`SOURCE_GEOMETRY_GROUPS_EXPLICIT<class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT>` 時才使用。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_region_merge_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **region_merge_size** = ``20.0`` :ref:`🔗<class_NavigationMesh_property_region_merge_size>`

.. rst-class:: classref-property-setget

- |void| **set_region_merge_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_region_merge_size**\ (\ )

如果可能的話，任何小於這個尺寸的區域將與較大的區域合併。

\ **注意：**\ 這個值將被平方來計算儲存格的數量。例如，值為 20 時將把儲存格的數量設為 400。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_region_min_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **region_min_size** = ``2.0`` :ref:`🔗<class_NavigationMesh_property_region_min_size>`

.. rst-class:: classref-property-setget

- |void| **set_region_min_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_region_min_size**\ (\ )

區域被建立所需的最小尺寸。

\ **注意：**\ 該值將被平方，以計算出允許形成孤島區域的最小單元數。例如，值為 8 時將把儲存格的數量設為 64。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_sample_partition_type:

.. rst-class:: classref-property

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **sample_partition_type** = ``0`` :ref:`🔗<class_NavigationMesh_property_sample_partition_type>`

.. rst-class:: classref-property-setget

- |void| **set_sample_partition_type**\ (\ value\: :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>`\ )
- :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **get_sample_partition_type**\ (\ )

Partitioning algorithm for creating the navigation mesh polys.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_vertices_per_polygon:

.. rst-class:: classref-property

:ref:`float<class_float>` **vertices_per_polygon** = ``6.0`` :ref:`🔗<class_NavigationMesh_property_vertices_per_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_vertices_per_polygon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vertices_per_polygon**\ (\ )

在輪廓到多邊形轉換過程中生成的多邊形允許的最大頂點數。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_NavigationMesh_method_add_polygon:

.. rst-class:: classref-method

|void| **add_polygon**\ (\ polygon\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationMesh_method_add_polygon>`

使用呼叫 :ref:`get_vertices()<class_NavigationMesh_method_get_vertices>` 得到的頂點的索引新增一個多邊形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationMesh_method_clear>`

清除頂點和多邊形索引的內部陣列。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_clear_polygons:

.. rst-class:: classref-method

|void| **clear_polygons**\ (\ ) :ref:`🔗<class_NavigationMesh_method_clear_polygons>`

清除多邊形陣列，但不清除頂點陣列。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_create_from_mesh:

.. rst-class:: classref-method

|void| **create_from_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_NavigationMesh_method_create_from_mesh>`

通過根據 :ref:`Mesh<class_Mesh>` 設定頂點和索引來初始化導覽網格。

\ **注意：**\ 給定的 ``mesh`` 必須是 :ref:`Mesh.PRIMITIVE_TRIANGLES<class_Mesh_constant_PRIMITIVE_TRIANGLES>` 型別，並且有一個索引陣列。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationMesh_method_get_collision_mask_value>`

返回是否啟用了 :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>` 中的指定層，給定的 ``layer_number`` 在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_polygon:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_polygon**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationMesh_method_get_polygon>`

返回建立多邊形的頂點索引，形式為 :ref:`PackedInt32Array<class_PackedInt32Array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_polygon_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_polygon_count**\ (\ ) |const| :ref:`🔗<class_NavigationMesh_method_get_polygon_count>`

返回導覽網格中的多邊形數量。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_NavigationMesh_method_get_vertices>`

返回用於建立該多邊形的所有頂點，形式為 :ref:`PackedVector3Array<class_PackedVector3Array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationMesh_method_set_collision_mask_value>`

根據 ``value`` 啟用或禁用 :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>` 中的指定層，給定的 ``layer_number`` 在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_set_vertices:

.. rst-class:: classref-method

|void| **set_vertices**\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_NavigationMesh_method_set_vertices>`

設定頂點，可以使用 :ref:`add_polygon()<class_NavigationMesh_method_add_polygon>` 方法對其進行索引，建立多邊形。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
