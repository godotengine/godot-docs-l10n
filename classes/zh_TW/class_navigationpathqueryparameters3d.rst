:github_url: hide

.. _class_NavigationPathQueryParameters3D:

NavigationPathQueryParameters3D
===============================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為 3D 導覽路徑查詢提供參數。

.. rst-class:: classref-introduction-group

說明
----

更改該物件的起始和結束位置等屬性可以配置對 :ref:`NavigationServer3D<class_NavigationServer3D>` 的路徑查詢。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 NavigationPathQueryObject <../tutorials/navigation/navigation_using_navigationpathqueryobjects>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]                                             | :ref:`excluded_regions<class_NavigationPathQueryParameters3D_property_excluded_regions>`                 | ``[]``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]                                             | :ref:`included_regions<class_NavigationPathQueryParameters3D_property_included_regions>`                 | ``[]``               |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`RID<class_RID>`                                                                          | :ref:`map<class_NavigationPathQueryParameters3D_property_map>`                                           | ``RID()``            |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] | :ref:`metadata_flags<class_NavigationPathQueryParameters3D_property_metadata_flags>`                     | ``7``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`navigation_layers<class_NavigationPathQueryParameters3D_property_navigation_layers>`               | ``1``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`             | :ref:`path_postprocessing<class_NavigationPathQueryParameters3D_property_path_postprocessing>`           | ``0``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_length<class_NavigationPathQueryParameters3D_property_path_return_max_length>`     | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_radius<class_NavigationPathQueryParameters3D_property_path_return_max_radius>`     | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_search_max_distance<class_NavigationPathQueryParameters3D_property_path_search_max_distance>` | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`path_search_max_polygons<class_NavigationPathQueryParameters3D_property_path_search_max_polygons>` | ``4096``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`         | :ref:`pathfinding_algorithm<class_NavigationPathQueryParameters3D_property_pathfinding_algorithm>`       | ``0``                |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`simplify_epsilon<class_NavigationPathQueryParameters3D_property_simplify_epsilon>`                 | ``0.0``              |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`simplify_path<class_NavigationPathQueryParameters3D_property_simplify_path>`                       | ``false``            |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                                                  | :ref:`start_position<class_NavigationPathQueryParameters3D_property_start_position>`                     | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                                                  | :ref:`target_position<class_NavigationPathQueryParameters3D_property_target_position>`                   | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_NavigationPathQueryParameters3D_PathfindingAlgorithm:

.. rst-class:: classref-enumeration

enum **PathfindingAlgorithm**: :ref:`🔗<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`

.. _class_NavigationPathQueryParameters3D_constant_PATHFINDING_ALGORITHM_ASTAR:

.. rst-class:: classref-enumeration-constant

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **PATHFINDING_ALGORITHM_ASTAR** = ``0``

路徑查詢使用預設的 A\* 尋路演算法。

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPathQueryParameters3D_PathPostProcessing:

.. rst-class:: classref-enumeration

enum **PathPostProcessing**: :ref:`🔗<enum_NavigationPathQueryParameters3D_PathPostProcessing>`

.. _class_NavigationPathQueryParameters3D_constant_PATH_POSTPROCESSING_CORRIDORFUNNEL:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **PATH_POSTPROCESSING_CORRIDORFUNNEL** = ``0``

將漏斗演算法套用於尋路演算法找到的原始路徑走廊。這將導致最短路徑可能在路徑走廊內。該後處理在很大程度上取決於導覽網格多邊形佈局和建立的走廊。特別是基於圖塊和網格的佈局，可能會由於儲存格形狀強加的鋸齒狀的路徑走廊，而面臨對角線移動的人工角落。

.. _class_NavigationPathQueryParameters3D_constant_PATH_POSTPROCESSING_EDGECENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **PATH_POSTPROCESSING_EDGECENTERED** = ``1``

將路徑上的所有位置在經過的導覽網格多邊形邊緣上居中。這樣就把移動限制在了單元格的中心，能夠為基於圖塊或柵格的佈局建立更好的路徑。

.. _class_NavigationPathQueryParameters3D_constant_PATH_POSTPROCESSING_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **PATH_POSTPROCESSING_NONE** = ``2``

Applies no postprocessing and returns the raw path corridor as found by the pathfinding algorithm.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPathQueryParameters3D_PathMetadataFlags:

.. rst-class:: classref-enumeration

flags **PathMetadataFlags**: :ref:`🔗<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_NONE** = ``0``

不要包含任何關於返回路徑的額外中繼資料。

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_TYPES:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_TYPES** = ``1``

包含路徑上的各個點所經過的導覽圖元型別（地區或連結）。

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_RIDS:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_RIDS** = ``2``

包含路徑上的各個點所經過的地區和連結的 :ref:`RID<class_RID>`\ 。

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_OWNERS:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_OWNERS** = ``4``

包含管理路徑上的各個點所經過的地區和連結的 :ref:`Object<class_Object>` 的 ``ObjectID``\ 。

.. _class_NavigationPathQueryParameters3D_constant_PATH_METADATA_INCLUDE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_ALL** = ``7``

包含關於返回路徑的所有可用中繼資料。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_NavigationPathQueryParameters3D_property_excluded_regions:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **excluded_regions** = ``[]`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_excluded_regions>`

.. rst-class:: classref-property-setget

- |void| **set_excluded_regions**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_excluded_regions**\ (\ )

The list of region :ref:`RID<class_RID>`\ s that will be excluded from the path query. Use :ref:`NavigationRegion3D.get_rid()<class_NavigationRegion3D_method_get_rid>` to get the :ref:`RID<class_RID>` associated with a :ref:`NavigationRegion3D<class_NavigationRegion3D>` node.

\ **Note:** The returned array is copied and any changes to it will not update the original property value. To update the value you need to modify the returned array, and then set it to the property again.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_included_regions:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **included_regions** = ``[]`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_included_regions>`

.. rst-class:: classref-property-setget

- |void| **set_included_regions**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_included_regions**\ (\ )

The list of region :ref:`RID<class_RID>`\ s that will be included by the path query. Use :ref:`NavigationRegion3D.get_rid()<class_NavigationRegion3D_method_get_rid>` to get the :ref:`RID<class_RID>` associated with a :ref:`NavigationRegion3D<class_NavigationRegion3D>` node. If left empty all regions are included. If a region ends up being both included and excluded at the same time it will be excluded.

\ **Note:** The returned array is copied and any changes to it will not update the original property value. To update the value you need to modify the returned array, and then set it to the property again.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **map** = ``RID()`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_map>`

.. rst-class:: classref-property-setget

- |void| **set_map**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_map**\ (\ )

The navigation map :ref:`RID<class_RID>` used in the path query.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **metadata_flags** = ``7`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters3D_PathMetadataFlags>`\] **get_metadata_flags**\ (\ )

包含在導覽路徑中的額外資訊。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

查詢所使用的導覽層（形式為位元遮罩）。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters3D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

對 :ref:`pathfinding_algorithm<class_NavigationPathQueryParameters3D_property_pathfinding_algorithm>` 找到的原始路徑走廊套用的路徑後期處理。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

The maximum allowed length of the returned path in world units. A path will be clipped when going over this length. A value of ``0`` or below counts as disabled.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_return_max_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_radius** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_return_max_radius>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_radius**\ (\ )

The maximum allowed radius in world units that the returned path can be from the path start. The path will be clipped when going over this radius. A value of ``0`` or below counts as disabled.

\ **Note:** This will perform a sphere shaped clip operation on the path with the first path position being the sphere's center position.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_search_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_search_max_distance** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_search_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_search_max_distance**\ (\ )

The maximum distance a searched polygon can be away from the start polygon before the pathfinding cancels the search for a path to the (possibly unreachable or very far away) target position polygon. In this case the pathfinding resets and builds a path from the start polygon to the polygon that was found closest to the target position so far. A value of ``0`` or below counts as unlimited. In case of unlimited the pathfinding will search all polygons connected with the start polygon until either the target position polygon is found or all available polygon search options are exhausted.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_path_search_max_polygons:

.. rst-class:: classref-property

:ref:`int<class_int>` **path_search_max_polygons** = ``4096`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_path_search_max_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_polygons**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_path_search_max_polygons**\ (\ )

The maximum number of polygons that are searched before the pathfinding cancels the search for a path to the (possibly unreachable or very far away) target position polygon. In this case the pathfinding resets and builds a path from the start polygon to the polygon that was found closest to the target position so far. A value of ``0`` or below counts as unlimited. In case of unlimited the pathfinding will search all polygons connected with the start polygon until either the target position polygon is found or all available polygon search options are exhausted.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_pathfinding_algorithm:

.. rst-class:: classref-property

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **pathfinding_algorithm** = ``0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_pathfinding_algorithm>`

.. rst-class:: classref-property-setget

- |void| **set_pathfinding_algorithm**\ (\ value\: :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>`\ )
- :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters3D_PathfindingAlgorithm>` **get_pathfinding_algorithm**\ (\ )

路徑查詢中使用的尋路演算法。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_simplify_epsilon:

.. rst-class:: classref-property

:ref:`float<class_float>` **simplify_epsilon** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_simplify_epsilon>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_epsilon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_simplify_epsilon**\ (\ )

The path simplification amount in worlds units.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_simplify_path:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simplify_path** = ``false`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_simplify_path>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_path**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simplify_path**\ (\ )

If ``true`` a simplified version of the path will be returned with less critical path points removed. The simplification amount is controlled by :ref:`simplify_epsilon<class_NavigationPathQueryParameters3D_property_simplify_epsilon>`. The simplification uses a variant of Ramer-Douglas-Peucker algorithm for curve point decimation.

Path simplification can be helpful to mitigate various path following issues that can arise with certain agent types and script behaviors. E.g. "steering" agents or avoidance in "open fields".

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_start_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **start_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_start_position>`

.. rst-class:: classref-property-setget

- |void| **set_start_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_start_position**\ (\ )

尋路起始點，使用全域座標。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationPathQueryParameters3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

尋路目標點，使用全域座標。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
