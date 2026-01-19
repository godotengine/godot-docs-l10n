:github_url: hide

.. _class_NavigationPolygon:

NavigationPolygon
=================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於定義可達區域和障礙物的導覽網格。

.. rst-class:: classref-introduction-group

說明
----

A navigation mesh can be created either by baking it with the help of the :ref:`NavigationServer2D<class_NavigationServer2D>`, or by adding vertices and convex polygon indices arrays manually.

To bake a navigation mesh at least one outline needs to be added that defines the outer bounds of the baked area.


.. tabs::

 .. code-tab:: gdscript

    var new_navigation_mesh = NavigationPolygon.new()
    var bounding_outline = PackedVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)])
    new_navigation_mesh.add_outline(bounding_outline)
    NavigationServer2D.bake_from_source_geometry_data(new_navigation_mesh, NavigationMeshSourceGeometryData2D.new());
    $NavigationRegion2D.navigation_polygon = new_navigation_mesh

 .. code-tab:: csharp

    var newNavigationMesh = new NavigationPolygon();
    Vector2[] boundingOutline = [new Vector2(0, 0), new Vector2(0, 50), new Vector2(50, 50), new Vector2(50, 0)];
    newNavigationMesh.AddOutline(boundingOutline);
    NavigationServer2D.BakeFromSourceGeometryData(newNavigationMesh, new NavigationMeshSourceGeometryData2D());
    GetNode<NavigationRegion2D>("NavigationRegion2D").NavigationPolygon = newNavigationMesh;



Adding vertices and polygon indices manually.


.. tabs::

 .. code-tab:: gdscript

    var new_navigation_mesh = NavigationPolygon.new()
    var new_vertices = PackedVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)])
    new_navigation_mesh.vertices = new_vertices
    var new_polygon_indices = PackedInt32Array([0, 1, 2, 3])
    new_navigation_mesh.add_polygon(new_polygon_indices)
    $NavigationRegion2D.navigation_polygon = new_navigation_mesh

 .. code-tab:: csharp

    var newNavigationMesh = new NavigationPolygon();
    Vector2[] newVertices = [new Vector2(0, 0), new Vector2(0, 50), new Vector2(50, 50), new Vector2(50, 0)];
    newNavigationMesh.Vertices = newVertices;
    int[] newPolygonIndices = [0, 1, 2, 3];
    newNavigationMesh.AddPolygon(newPolygonIndices);
    GetNode<NavigationRegion2D>("NavigationRegion2D").NavigationPolygon = newNavigationMesh;



.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 NavigationMesh <../tutorials/navigation/navigation_using_navigationmeshes>`

- `Navigation Polygon 2D Demo <https://godotengine.org/asset-library/asset/2722>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`agent_radius<class_NavigationPolygon_property_agent_radius>`                             | ``10.0``                                        |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                              | :ref:`baking_rect<class_NavigationPolygon_property_baking_rect>`                               | ``Rect2(0, 0, 0, 0)``                           |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`baking_rect_offset<class_NavigationPolygon_property_baking_rect_offset>`                 | ``Vector2(0, 0)``                               |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`border_size<class_NavigationPolygon_property_border_size>`                               | ``0.0``                                         |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`cell_size<class_NavigationPolygon_property_cell_size>`                                   | ``1.0``                                         |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`int<class_int>`                                                  | :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>`           | ``4294967295``                                  |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>`   | :ref:`parsed_geometry_type<class_NavigationPolygon_property_parsed_geometry_type>`             | ``2``                                           |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` | :ref:`sample_partition_type<class_NavigationPolygon_property_sample_partition_type>`           | ``0``                                           |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                    | :ref:`source_geometry_group_name<class_NavigationPolygon_property_source_geometry_group_name>` | ``&"navigation_polygon_source_geometry_group"`` |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+
   | :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>`   | :ref:`source_geometry_mode<class_NavigationPolygon_property_source_geometry_mode>`             | ``0``                                           |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+-------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_outline<class_NavigationPolygon_method_add_outline>`\ (\ outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                  |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_outline_at_index<class_NavigationPolygon_method_add_outline_at_index>`\ (\ outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, index\: :ref:`int<class_int>`\ ) |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_polygon<class_NavigationPolygon_method_add_polygon>`\ (\ polygon\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )                                                      |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_NavigationPolygon_method_clear>`\ (\ )                                                                                                                             |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_outlines<class_NavigationPolygon_method_clear_outlines>`\ (\ )                                                                                                           |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_polygons<class_NavigationPolygon_method_clear_polygons>`\ (\ )                                                                                                           |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NavigationMesh<class_NavigationMesh>`         | :ref:`get_navigation_mesh<class_NavigationPolygon_method_get_navigation_mesh>`\ (\ )                                                                                                 |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_outline<class_NavigationPolygon_method_get_outline>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_outline_count<class_NavigationPolygon_method_get_outline_count>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`get_parsed_collision_mask_value<class_NavigationPolygon_method_get_parsed_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                           |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_polygon<class_NavigationPolygon_method_get_polygon>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                    |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_polygon_count<class_NavigationPolygon_method_get_polygon_count>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_vertices<class_NavigationPolygon_method_get_vertices>`\ (\ ) |const|                                                                                                       |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`make_polygons_from_outlines<class_NavigationPolygon_method_make_polygons_from_outlines>`\ (\ )                                                                                 |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_outline<class_NavigationPolygon_method_remove_outline>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                              |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_outline<class_NavigationPolygon_method_set_outline>`\ (\ idx\: :ref:`int<class_int>`, outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                     |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_parsed_collision_mask_value<class_NavigationPolygon_method_set_parsed_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )  |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertices<class_NavigationPolygon_method_set_vertices>`\ (\ vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                               |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_NavigationPolygon_SamplePartitionType:

.. rst-class:: classref-enumeration

enum **SamplePartitionType**: :ref:`🔗<enum_NavigationPolygon_SamplePartitionType>`

.. _class_NavigationPolygon_constant_SAMPLE_PARTITION_CONVEX_PARTITION:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **SAMPLE_PARTITION_CONVEX_PARTITION** = ``0``

Convex partitioning that results in a navigation mesh with convex polygons.

.. _class_NavigationPolygon_constant_SAMPLE_PARTITION_TRIANGULATE:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **SAMPLE_PARTITION_TRIANGULATE** = ``1``

Triangulation partitioning that results in a navigation mesh with triangle polygons.

.. _class_NavigationPolygon_constant_SAMPLE_PARTITION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **SAMPLE_PARTITION_MAX** = ``2``

代表 :ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPolygon_ParsedGeometryType:

.. rst-class:: classref-enumeration

enum **ParsedGeometryType**: :ref:`🔗<enum_NavigationPolygon_ParsedGeometryType>`

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_MESH_INSTANCES:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_MESH_INSTANCES** = ``0``

將網格實例解析為幾何體。包括 :ref:`MeshInstance3D<class_MeshInstance3D>`\ 、\ :ref:`CSGShape3D<class_CSGShape3D>`\ 、\ :ref:`GridMap<class_GridMap>` 等節點。

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_STATIC_COLLIDERS:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_STATIC_COLLIDERS** = ``1``

將 :ref:`StaticBody2D<class_StaticBody2D>` 和 :ref:`TileMap<class_TileMap>` 碰撞器解析為幾何體。碰撞器應在由 :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>` 指定的層中。

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_BOTH** = ``2``

:ref:`PARSED_GEOMETRY_MESH_INSTANCES<class_NavigationPolygon_constant_PARSED_GEOMETRY_MESH_INSTANCES>` 和 :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationPolygon_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>`.

.. _class_NavigationPolygon_constant_PARSED_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **PARSED_GEOMETRY_MAX** = ``3``

代表 :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPolygon_SourceGeometryMode:

.. rst-class:: classref-enumeration

enum **SourceGeometryMode**: :ref:`🔗<enum_NavigationPolygon_SourceGeometryMode>`

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_ROOT_NODE_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_ROOT_NODE_CHILDREN** = ``0``

在根節點的子節點中遞迴掃描幾何體。

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN** = ``1``

以遞迴方式掃描組中的節點及其子節點以獲取幾何圖形。該組由 :ref:`source_geometry_group_name<class_NavigationPolygon_property_source_geometry_group_name>` 指定。

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_EXPLICIT** = ``2``

使用一個組中的節點進行幾何運算。該組由 :ref:`source_geometry_group_name<class_NavigationPolygon_property_source_geometry_group_name>` 指定。

.. _class_NavigationPolygon_constant_SOURCE_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **SOURCE_GEOMETRY_MAX** = ``3``

代表 :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_NavigationPolygon_property_agent_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_radius** = ``10.0`` :ref:`🔗<class_NavigationPolygon_property_agent_radius>`

.. rst-class:: classref-property-setget

- |void| **set_agent_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_radius**\ (\ )

The distance to erode/shrink the walkable surface when baking the navigation mesh.

\ **Note:** The radius must be equal or higher than ``0.0``. If the radius is ``0.0``, it won't be possible to fix invalid outline overlaps and other precision errors during the baking process. As a result, some obstacles may be excluded incorrectly from the final navigation mesh, or may delete the navigation mesh's polygons.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_baking_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **baking_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_NavigationPolygon_property_baking_rect>`

.. rst-class:: classref-property-setget

- |void| **set_baking_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_baking_rect**\ (\ )

If the baking :ref:`Rect2<class_Rect2>` has an area the navigation mesh baking will be restricted to its enclosing area.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_baking_rect_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **baking_rect_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationPolygon_property_baking_rect_offset>`

.. rst-class:: classref-property-setget

- |void| **set_baking_rect_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_baking_rect_offset**\ (\ )

The position offset applied to the :ref:`baking_rect<class_NavigationPolygon_property_baking_rect>` :ref:`Rect2<class_Rect2>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_border_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **border_size** = ``0.0`` :ref:`🔗<class_NavigationPolygon_property_border_size>`

.. rst-class:: classref-property-setget

- |void| **set_border_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_border_size**\ (\ )

The size of the non-navigable border around the bake bounding area defined by the :ref:`baking_rect<class_NavigationPolygon_property_baking_rect>` :ref:`Rect2<class_Rect2>`.

In conjunction with the :ref:`baking_rect<class_NavigationPolygon_property_baking_rect>` the border size can be used to bake tile aligned navigation meshes without the tile edges being shrunk by :ref:`agent_radius<class_NavigationPolygon_property_agent_radius>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_cell_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_size** = ``1.0`` :ref:`🔗<class_NavigationPolygon_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_size**\ (\ )

用於將導覽網格頂點柵格化的儲存格大小。必須與導覽地圖上的儲存格大小相配對。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_parsed_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **parsed_collision_mask** = ``4294967295`` :ref:`🔗<class_NavigationPolygon_property_parsed_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_parsed_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_parsed_collision_mask**\ (\ )

用於掃描靜態碰撞的實體層。

僅在 :ref:`parsed_geometry_type<class_NavigationPolygon_property_parsed_geometry_type>` 是 :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationPolygon_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>` 或 :ref:`PARSED_GEOMETRY_BOTH<class_NavigationPolygon_constant_PARSED_GEOMETRY_BOTH>` 時才使用。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_parsed_geometry_type:

.. rst-class:: classref-property

:ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **parsed_geometry_type** = ``2`` :ref:`🔗<class_NavigationPolygon_property_parsed_geometry_type>`

.. rst-class:: classref-property-setget

- |void| **set_parsed_geometry_type**\ (\ value\: :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>`\ )
- :ref:`ParsedGeometryType<enum_NavigationPolygon_ParsedGeometryType>` **get_parsed_geometry_type**\ (\ )

Determines which type of nodes will be parsed as geometry.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_sample_partition_type:

.. rst-class:: classref-property

:ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **sample_partition_type** = ``0`` :ref:`🔗<class_NavigationPolygon_property_sample_partition_type>`

.. rst-class:: classref-property-setget

- |void| **set_sample_partition_type**\ (\ value\: :ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>`\ )
- :ref:`SamplePartitionType<enum_NavigationPolygon_SamplePartitionType>` **get_sample_partition_type**\ (\ )

Partitioning algorithm for creating the navigation mesh polys.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_source_geometry_group_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **source_geometry_group_name** = ``&"navigation_polygon_source_geometry_group"`` :ref:`🔗<class_NavigationPolygon_property_source_geometry_group_name>`

.. rst-class:: classref-property-setget

- |void| **set_source_geometry_group_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_source_geometry_group_name**\ (\ )

群組的名稱，會在該群組中掃描幾何體。

只有當 :ref:`source_geometry_mode<class_NavigationPolygon_property_source_geometry_mode>` 是 :ref:`SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN<class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN>` 或 :ref:`SOURCE_GEOMETRY_GROUPS_EXPLICIT<class_NavigationPolygon_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT>` 時才使用。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_property_source_geometry_mode:

.. rst-class:: classref-property

:ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **source_geometry_mode** = ``0`` :ref:`🔗<class_NavigationPolygon_property_source_geometry_mode>`

.. rst-class:: classref-property-setget

- |void| **set_source_geometry_mode**\ (\ value\: :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>`\ )
- :ref:`SourceGeometryMode<enum_NavigationPolygon_SourceGeometryMode>` **get_source_geometry_mode**\ (\ )

The source of the geometry used when baking.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_NavigationPolygon_method_add_outline:

.. rst-class:: classref-method

|void| **add_outline**\ (\ outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_add_outline>`

返回一個 :ref:`PackedVector2Array<class_PackedVector2Array>`\ ，其中包含在編輯器中或通過腳本建立的輪廓的頂點。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_add_outline_at_index:

.. rst-class:: classref-method

|void| **add_outline_at_index**\ (\ outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationPolygon_method_add_outline_at_index>`

將包含輪廓頂點的 :ref:`PackedVector2Array<class_PackedVector2Array>`\ ，追加到包含所有輪廓的內部陣列。必須調用 :ref:`make_polygons_from_outlines()<class_NavigationPolygon_method_make_polygons_from_outlines>` 才能將該陣列轉換為引擎將使用的多邊形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_add_polygon:

.. rst-class:: classref-method

|void| **add_polygon**\ (\ polygon\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_add_polygon>`

使用呼叫 :ref:`get_vertices()<class_NavigationPolygon_method_get_vertices>` 得到的頂點的索引新增一個多邊形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_clear>`

清除頂點和多邊形索引的內部陣列。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_clear_outlines:

.. rst-class:: classref-method

|void| **clear_outlines**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_clear_outlines>`

清除輪廓陣列，但不清除頂點和由頂點建立的多邊形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_clear_polygons:

.. rst-class:: classref-method

|void| **clear_polygons**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_clear_polygons>`

清除多邊形陣列，但不清除輪廓和頂點陣列。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_navigation_mesh:

.. rst-class:: classref-method

:ref:`NavigationMesh<class_NavigationMesh>` **get_navigation_mesh**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_get_navigation_mesh>`

Returns the :ref:`NavigationMesh<class_NavigationMesh>` resulting from this navigation polygon. This navigation mesh can be used to update the navigation mesh of a region with the :ref:`NavigationServer3D.region_set_navigation_mesh()<class_NavigationServer3D_method_region_set_navigation_mesh>` API directly.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_outline:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_outline**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_outline>`

返回一個 :ref:`PackedVector2Array<class_PackedVector2Array>`\ ，其中包含在編輯器中或通過腳本建立的輪廓的頂點。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_outline_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_outline_count**\ (\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_outline_count>`

返回在編輯器或腳本中建立的輪廓的數量。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_parsed_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_parsed_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_parsed_collision_mask_value>`

返回 :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>` 中是否啟用了指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_polygon:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_polygon**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationPolygon_method_get_polygon>`

返回建立多邊形的頂點索引，形式為 :ref:`PackedInt32Array<class_PackedInt32Array>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_polygon_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_polygon_count**\ (\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_polygon_count>`

返回多邊形的數量。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_NavigationPolygon_method_get_vertices>`

返回一個 :ref:`PackedVector2Array<class_PackedVector2Array>`\ ，其中包含用於建立多邊形的所有頂點。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_make_polygons_from_outlines:

.. rst-class:: classref-method

|void| **make_polygons_from_outlines**\ (\ ) :ref:`🔗<class_NavigationPolygon_method_make_polygons_from_outlines>`

**已棄用：** Use :ref:`NavigationServer2D.parse_source_geometry_data()<class_NavigationServer2D_method_parse_source_geometry_data>` and :ref:`NavigationServer2D.bake_from_source_geometry_data()<class_NavigationServer2D_method_bake_from_source_geometry_data>` instead.

Creates polygons from the outlines added in the editor or by script.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_remove_outline:

.. rst-class:: classref-method

|void| **remove_outline**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationPolygon_method_remove_outline>`

刪除在編輯器或腳本中建立的輪廓。你必須呼叫 :ref:`make_polygons_from_outlines()<class_NavigationPolygon_method_make_polygons_from_outlines>` 來更新多邊形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_set_outline:

.. rst-class:: classref-method

|void| **set_outline**\ (\ idx\: :ref:`int<class_int>`, outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_set_outline>`

更改在編輯器或腳本中建立的輪廓。你必須呼叫 :ref:`make_polygons_from_outlines()<class_NavigationPolygon_method_make_polygons_from_outlines>` 來更新多邊形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_set_parsed_collision_mask_value:

.. rst-class:: classref-method

|void| **set_parsed_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationPolygon_method_set_parsed_collision_mask_value>`

根據 ``value``\ ，啟用或禁用 :ref:`parsed_collision_mask<class_NavigationPolygon_property_parsed_collision_mask>` 中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPolygon_method_set_vertices:

.. rst-class:: classref-method

|void| **set_vertices**\ (\ vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationPolygon_method_set_vertices>`

設定頂點，可以使用 :ref:`add_polygon()<class_NavigationPolygon_method_add_polygon>` 方法對其進行索引，建立多邊形。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
