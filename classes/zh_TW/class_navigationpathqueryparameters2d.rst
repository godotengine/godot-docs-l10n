:github_url: hide

.. _class_NavigationPathQueryParameters2D:

NavigationPathQueryParameters2D
===============================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

為 2D 導覽路徑查詢提供參數。

.. rst-class:: classref-introduction-group

說明
----

更改該物件的起始和結束位置等屬性可以配置對 :ref:`NavigationServer2D<class_NavigationServer2D>` 的路徑查詢。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 NavigationPathQueryObject <../tutorials/navigation/navigation_using_navigationpathqueryobjects>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]                                             | :ref:`excluded_regions<class_NavigationPathQueryParameters2D_property_excluded_regions>`                 | ``[]``            |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]                                             | :ref:`included_regions<class_NavigationPathQueryParameters2D_property_included_regions>`                 | ``[]``            |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`RID<class_RID>`                                                                          | :ref:`map<class_NavigationPathQueryParameters2D_property_map>`                                           | ``RID()``         |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] | :ref:`metadata_flags<class_NavigationPathQueryParameters2D_property_metadata_flags>`                     | ``7``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`navigation_layers<class_NavigationPathQueryParameters2D_property_navigation_layers>`               | ``1``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>`             | :ref:`path_postprocessing<class_NavigationPathQueryParameters2D_property_path_postprocessing>`           | ``0``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_length<class_NavigationPathQueryParameters2D_property_path_return_max_length>`     | ``0.0``           |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_return_max_radius<class_NavigationPathQueryParameters2D_property_path_return_max_radius>`     | ``0.0``           |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`path_search_max_distance<class_NavigationPathQueryParameters2D_property_path_search_max_distance>` | ``0.0``           |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`path_search_max_polygons<class_NavigationPathQueryParameters2D_property_path_search_max_polygons>` | ``4096``          |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>`         | :ref:`pathfinding_algorithm<class_NavigationPathQueryParameters2D_property_pathfinding_algorithm>`       | ``0``             |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`simplify_epsilon<class_NavigationPathQueryParameters2D_property_simplify_epsilon>`                 | ``0.0``           |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`simplify_path<class_NavigationPathQueryParameters2D_property_simplify_path>`                       | ``false``         |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                                                  | :ref:`start_position<class_NavigationPathQueryParameters2D_property_start_position>`                     | ``Vector2(0, 0)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                                                  | :ref:`target_position<class_NavigationPathQueryParameters2D_property_target_position>`                   | ``Vector2(0, 0)`` |
   +------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_NavigationPathQueryParameters2D_PathfindingAlgorithm:

.. rst-class:: classref-enumeration

enum **PathfindingAlgorithm**: :ref:`🔗<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>`

.. _class_NavigationPathQueryParameters2D_constant_PATHFINDING_ALGORITHM_ASTAR:

.. rst-class:: classref-enumeration-constant

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>` **PATHFINDING_ALGORITHM_ASTAR** = ``0``

路徑查詢使用預設的 A\* 尋路演算法。

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPathQueryParameters2D_PathPostProcessing:

.. rst-class:: classref-enumeration

enum **PathPostProcessing**: :ref:`🔗<enum_NavigationPathQueryParameters2D_PathPostProcessing>`

.. _class_NavigationPathQueryParameters2D_constant_PATH_POSTPROCESSING_CORRIDORFUNNEL:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **PATH_POSTPROCESSING_CORRIDORFUNNEL** = ``0``

將漏斗演算法套用於尋路演算法找到的原始路徑走廊。這將導致最短路徑可能在路徑走廊內。該後處理在很大程度上取決於導覽網格多邊形佈局和建立的走廊。特別是基於圖塊和網格的佈局，可能會由於儲存格形狀強加的鋸齒狀的路徑走廊，而面臨對角線移動的人工角落。

.. _class_NavigationPathQueryParameters2D_constant_PATH_POSTPROCESSING_EDGECENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **PATH_POSTPROCESSING_EDGECENTERED** = ``1``

Centers every position in the middle of the traveled navigation mesh's polygon edge. This creates better paths for tile- or grid-based layouts that restrict the movement to the cells' centers.

.. _class_NavigationPathQueryParameters2D_constant_PATH_POSTPROCESSING_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **PATH_POSTPROCESSING_NONE** = ``2``

不進行後期處理，回傳尋路算法找到的原始路徑走廊。

.. rst-class:: classref-item-separator

----

.. _enum_NavigationPathQueryParameters2D_PathMetadataFlags:

.. rst-class:: classref-enumeration

flags **PathMetadataFlags**: :ref:`🔗<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`

.. _class_NavigationPathQueryParameters2D_constant_PATH_METADATA_INCLUDE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_NONE** = ``0``

不要包含任何關於返回路徑的額外中繼資料。

.. _class_NavigationPathQueryParameters2D_constant_PATH_METADATA_INCLUDE_TYPES:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_TYPES** = ``1``

包含路徑上的各個點所經過的導覽圖元型別（地區或連結）。

.. _class_NavigationPathQueryParameters2D_constant_PATH_METADATA_INCLUDE_RIDS:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_RIDS** = ``2``

包含路徑上的各個點所經過的地區和連結的 :ref:`RID<class_RID>`\ 。

.. _class_NavigationPathQueryParameters2D_constant_PATH_METADATA_INCLUDE_OWNERS:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_OWNERS** = ``4``

包含管理路徑上的各個點所經過的地區和連結的 :ref:`Object<class_Object>` 的 ``ObjectID``\ 。

.. _class_NavigationPathQueryParameters2D_constant_PATH_METADATA_INCLUDE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>` **PATH_METADATA_INCLUDE_ALL** = ``7``

包含關於返回路徑的所有可用中繼資料。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_NavigationPathQueryParameters2D_property_excluded_regions:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **excluded_regions** = ``[]`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_excluded_regions>`

.. rst-class:: classref-property-setget

- |void| **set_excluded_regions**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_excluded_regions**\ (\ )

將被排除在路徑查詢之外的區塊的 :ref:`RID<class_RID>` 清單。請使用 :ref:`NavigationRegion2D.get_rid()<class_NavigationRegion2D_method_get_rid>` 來取得與派生自 :ref:`NavigationRegion2D<class_NavigationRegion2D>` 的節點關聯的 :ref:`RID<class_RID>`\ 。

\ **注意：**\ 回傳的陣列為副本，對其進行的修改不會更新原有屬性。更新時，請先修改回傳的陣列，然後將其重新賦值回該屬性。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_included_regions:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **included_regions** = ``[]`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_included_regions>`

.. rst-class:: classref-property-setget

- |void| **set_included_regions**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_included_regions**\ (\ )

將被排除在路徑查詢之外的區塊的 :ref:`RID<class_RID>` 清單。請使用 :ref:`NavigationRegion2D.get_rid()<class_NavigationRegion2D_method_get_rid>` 來取得與派生自 :ref:`NavigationRegion2D<class_NavigationRegion2D>` 的節點關聯的 :ref:`RID<class_RID>`\ 。如果留空則會包含所有區塊。如果區塊最終同時處於包含和排除狀態，則會被排除。

\ **注意：**\ 回傳的陣列為副本，對其進行的修改不會更新原有屬性。更新時，請先修改回傳的陣列，然後將其重新賦值回該屬性。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **map** = ``RID()`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_map>`

.. rst-class:: classref-property-setget

- |void| **set_map**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_map**\ (\ )

在路徑查詢中使用的導航地圖 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_metadata_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] **metadata_flags** = ``7`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_metadata_flags>`

.. rst-class:: classref-property-setget

- |void| **set_metadata_flags**\ (\ value\: |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\]\ )
- |bitfield|\[:ref:`PathMetadataFlags<enum_NavigationPathQueryParameters2D_PathMetadataFlags>`\] **get_metadata_flags**\ (\ )

包含在導覽路徑中的額外資訊。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

查詢所使用的導覽層（形式為位元遮罩）。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_path_postprocessing:

.. rst-class:: classref-property

:ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **path_postprocessing** = ``0`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_path_postprocessing>`

.. rst-class:: classref-property-setget

- |void| **set_path_postprocessing**\ (\ value\: :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>`\ )
- :ref:`PathPostProcessing<enum_NavigationPathQueryParameters2D_PathPostProcessing>` **get_path_postprocessing**\ (\ )

對 :ref:`pathfinding_algorithm<class_NavigationPathQueryParameters2D_property_pathfinding_algorithm>` 找到的原始路徑走廊套用的路徑後期處理。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_path_return_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_length** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_path_return_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_length**\ (\ )

返迴路徑允許的最大長度，單位為世界單位。路徑超出該長度後會被截斷。設為小於等於 ``0`` 時為停用。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_path_return_max_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_return_max_radius** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_path_return_max_radius>`

.. rst-class:: classref-property-setget

- |void| **set_path_return_max_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_return_max_radius**\ (\ )

返迴路徑從起點開始所允許的最大半徑，單位為世界單位。路徑超出該半徑後會被截斷。取值小於等於 ``0`` 時視為停用。

\ **注意：**\ 該屬性會對路徑執行圓形裁剪，路徑上的第一個位置是圓心所在的位置。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_path_search_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_search_max_distance** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_path_search_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_search_max_distance**\ (\ )

搜尋通往目的位置多邊形的路徑時（可能不可達或非常遠），取消尋路前能夠搜尋的多邊形的最大距離。取消時，尋路會重設，建置出的路徑從起始多邊形開始，通往目前所找到的最接近目的位置的多邊形。小於等於 ``0`` 表示不限制數量，尋路時會搜尋與起始多邊形相連的所有多邊形，直到發現目的位置多邊形或已經查過所有待查的多邊形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_path_search_max_polygons:

.. rst-class:: classref-property

:ref:`int<class_int>` **path_search_max_polygons** = ``4096`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_path_search_max_polygons>`

.. rst-class:: classref-property-setget

- |void| **set_path_search_max_polygons**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_path_search_max_polygons**\ (\ )

搜尋通往目的位置多邊形的路徑時（可能不可達或非常遠），取消尋路前能夠搜尋的最大多邊形數。取消時，尋路會重設，建置出的路徑從起始多邊形開始，通往目前所找到的最接近目的位置的多邊形。小於等於 ``0`` 表示不限制數量，尋路時會搜尋與起始多邊形相連的所有多邊形，直到發現目的位置多邊形或已經查過所有待查的多邊形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_pathfinding_algorithm:

.. rst-class:: classref-property

:ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>` **pathfinding_algorithm** = ``0`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_pathfinding_algorithm>`

.. rst-class:: classref-property-setget

- |void| **set_pathfinding_algorithm**\ (\ value\: :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>`\ )
- :ref:`PathfindingAlgorithm<enum_NavigationPathQueryParameters2D_PathfindingAlgorithm>` **get_pathfinding_algorithm**\ (\ )

路徑查詢中使用的尋路演算法。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_simplify_epsilon:

.. rst-class:: classref-property

:ref:`float<class_float>` **simplify_epsilon** = ``0.0`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_simplify_epsilon>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_epsilon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_simplify_epsilon**\ (\ )

The path simplification amount in world units.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_simplify_path:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simplify_path** = ``false`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_simplify_path>`

.. rst-class:: classref-property-setget

- |void| **set_simplify_path**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simplify_path**\ (\ )

如果為 ``true``\ ，將返迴路徑的簡化版本，其中移除了不太重要的路徑點。簡化量由 :ref:`simplify_epsilon<class_NavigationPathQueryParameters2D_property_simplify_epsilon>` 控制。簡化使用 Ramer-Douglas-Peucker 算法的變體進行曲線點抽取。

路徑簡化有助於緩解使用某些代理型別和腳本行為可能出現的各種路徑追蹤問題。例如“開放場”中的“轉向”代理或避讓。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_start_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **start_position** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_start_position>`

.. rst-class:: classref-property-setget

- |void| **set_start_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_start_position**\ (\ )

尋路起始點，使用全域座標。

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryParameters2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationPathQueryParameters2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

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
