:github_url: hide

.. _class_NavigationRegion2D:

NavigationRegion2D
==================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

可達的 2D 地區，\ :ref:`NavigationAgent2D<class_NavigationAgent2D>` 能夠將其用於尋路。

.. rst-class:: classref-introduction-group

說明
----

可達的 2D 地區，基於 :ref:`NavigationPolygon<class_NavigationPolygon>`\ ，\ :ref:`NavigationAgent2D<class_NavigationAgent2D>` 能夠將其用於尋路。

兩個地區如果存在相近的邊就可以互相連接。連接兩條邊所需的頂點最小間距可以通過 :ref:`NavigationServer2D.map_set_edge_connection_margin()<class_NavigationServer2D_method_map_set_edge_connection_margin>` 設定。

\ **注意：**\ 兩個地區存在重疊部分並不足以讓它們相連。必須有相近的邊。

從一個地區進入另一個地區的尋路成本可以使用 :ref:`enter_cost<class_NavigationRegion2D_property_enter_cost>` 控制。

\ **注意：**\ 起點位於該地區時，這個值不計入路徑成本。

在該地區中行進的尋路成本可以使用乘數 :ref:`travel_cost<class_NavigationRegion2D_property_travel_cost>` 控制。

\ **注意：**\ 該節點會對這些屬性進行快取，因此，你在 :ref:`NavigationServer2D<class_NavigationServer2D>` 中對底層的地區 :ref:`RID<class_RID>` 進行的修改不會在該節點的屬性中。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 NavigationRegion <../tutorials/navigation/navigation_using_navigationregions>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                           | :ref:`enabled<class_NavigationRegion2D_property_enabled>`                           | ``true`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                         | :ref:`enter_cost<class_NavigationRegion2D_property_enter_cost>`                     | ``0.0``  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`                             | :ref:`navigation_layers<class_NavigationRegion2D_property_navigation_layers>`       | ``1``    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`NavigationPolygon<class_NavigationPolygon>` | :ref:`navigation_polygon<class_NavigationRegion2D_property_navigation_polygon>`     |          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                         | :ref:`travel_cost<class_NavigationRegion2D_property_travel_cost>`                   | ``1.0``  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`                           | :ref:`use_edge_connections<class_NavigationRegion2D_property_use_edge_connections>` | ``true`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`bake_navigation_polygon<class_NavigationRegion2D_method_bake_navigation_polygon>`\ (\ on_thread\: :ref:`bool<class_bool>` = true\ )                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_bounds<class_NavigationRegion2D_method_get_bounds>`\ (\ ) |const|                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_navigation_layer_value<class_NavigationRegion2D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`     | :ref:`get_navigation_map<class_NavigationRegion2D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`     | :ref:`get_region_rid<class_NavigationRegion2D_method_get_region_rid>`\ (\ ) |const|                                                                                        |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`     | :ref:`get_rid<class_NavigationRegion2D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_baking<class_NavigationRegion2D_method_is_baking>`\ (\ ) |const|                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_navigation_layer_value<class_NavigationRegion2D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_navigation_map<class_NavigationRegion2D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_NavigationRegion2D_signal_bake_finished:

.. rst-class:: classref-signal

**bake_finished**\ (\ ) :ref:`🔗<class_NavigationRegion2D_signal_bake_finished>`

導覽網格烘焙操作完成時發出通知。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_signal_navigation_polygon_changed:

.. rst-class:: classref-signal

**navigation_polygon_changed**\ (\ ) :ref:`🔗<class_NavigationRegion2D_signal_navigation_polygon_changed>`

當替換使用的導覽多邊形或提交目前導覽多邊形內部的變更時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_NavigationRegion2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_NavigationRegion2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

決定該 **NavigationRegion2D** 是啟用還是停用。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_enter_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **enter_cost** = ``0.0`` :ref:`🔗<class_NavigationRegion2D_property_enter_cost>`

.. rst-class:: classref-property-setget

- |void| **set_enter_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_enter_cost**\ (\ )

When pathfinding enters this region's navigation mesh from another region's navigation mesh, this property's value is added to the path distance used to determine the shortest path.

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationRegion2D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

確定該區塊所屬的所有導覽層的位欄位。當使用 :ref:`NavigationServer2D.map_get_path()<class_NavigationServer2D_method_map_get_path>` 請求一個路徑時，可以檢查這些導覽層。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_navigation_polygon:

.. rst-class:: classref-property

:ref:`NavigationPolygon<class_NavigationPolygon>` **navigation_polygon** :ref:`🔗<class_NavigationRegion2D_property_navigation_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_polygon**\ (\ value\: :ref:`NavigationPolygon<class_NavigationPolygon>`\ )
- :ref:`NavigationPolygon<class_NavigationPolygon>` **get_navigation_polygon**\ (\ )

使用的 :ref:`NavigationPolygon<class_NavigationPolygon>` 資源。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_travel_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **travel_cost** = ``1.0`` :ref:`🔗<class_NavigationRegion2D_property_travel_cost>`

.. rst-class:: classref-property-setget

- |void| **set_travel_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_travel_cost**\ (\ )

當尋路在該區塊的導覽網格內移動時，將行進距離乘以 :ref:`travel_cost<class_NavigationRegion2D_property_travel_cost>` 以確定最短路徑。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_use_edge_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_edge_connections** = ``true`` :ref:`🔗<class_NavigationRegion2D_property_use_edge_connections>`

.. rst-class:: classref-property-setget

- |void| **set_use_edge_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_edge_connections**\ (\ )

如果啟用，導覽區塊將使用邊緣連接來與位於導覽地圖連接邊距範圍內的其他導覽區塊相連接。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_NavigationRegion2D_method_bake_navigation_polygon:

.. rst-class:: classref-method

|void| **bake_navigation_polygon**\ (\ on_thread\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_NavigationRegion2D_method_bake_navigation_polygon>`

烘焙 :ref:`NavigationPolygon<class_NavigationPolygon>`\ 。如果 ``on_thread`` 設定為 ``true``\ （預設），則烘焙將在單獨的執行緒上完成。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_bounds>`

回傳區塊中變換後的導覽網格對應的軸對齊矩形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_navigation_layer_value>`

返回 :ref:`navigation_layers<class_NavigationRegion2D_property_navigation_layers>` 位元遮罩中指定的層是否啟用，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_navigation_map>`

設定該連結的導覽地圖 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_region_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_region_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_region_rid>`

**已棄用：** Use :ref:`get_rid()<class_NavigationRegion2D_method_get_rid>` instead.

回傳 :ref:`NavigationServer2D<class_NavigationServer2D>` 上該區塊的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_rid>`

返回 :ref:`NavigationServer2D<class_NavigationServer2D>` 上該區塊的 :ref:`RID<class_RID>`\ 。結合 :ref:`NavigationServer2D.map_get_closest_point_owner()<class_NavigationServer2D_method_map_get_closest_point_owner>` 可用於識別合併導覽地圖上離某點最近的 **NavigationRegion2D**\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_is_baking:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_baking**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_is_baking>`

當 :ref:`NavigationPolygon<class_NavigationPolygon>` 正在後台執行緒上烘焙時，回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationRegion2D_method_set_navigation_layer_value>`

根據 ``value``\ ，啟用或停用 :ref:`navigation_layers<class_NavigationRegion2D_property_navigation_layers>` 位元遮罩中指定的層，給定的 ``layer_number`` 應在 1 和 32 之間。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationRegion2D_method_set_navigation_map>`

設定該區域應使用的導覽地圖的\ :ref:`RID<class_RID>`\ 。預設情況下，該區域將自動加入\ :ref:`World2D<class_World2D>`\ 預設導覽地圖，因此僅需要此函式來覆寫預設地圖。 “，““，“，“錯誤的”，””，”，”

doc/classes/NavigationRegion2D.xml"

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
