:github_url: hide

.. _class_NavigationRegion2D:

NavigationRegion2D
==================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

可达的 2D 地区，\ :ref:`NavigationAgent2D<class_NavigationAgent2D>` 能够将其用于寻路。

.. rst-class:: classref-introduction-group

描述
----

可达的 2D 地区，基于 :ref:`NavigationPolygon<class_NavigationPolygon>`\ ，\ :ref:`NavigationAgent2D<class_NavigationAgent2D>` 能够将其用于寻路。

两个地区如果存在相近的边就可以互相连接。连接两条边所需的顶点最小间距可以通过 :ref:`NavigationServer2D.map_set_edge_connection_margin()<class_NavigationServer2D_method_map_set_edge_connection_margin>` 设置。

\ **注意：**\ 两个地区存在重叠部分并不足以让它们相连。必须有相近的边。

从一个地区进入另一个地区的寻路成本可以使用 :ref:`enter_cost<class_NavigationRegion2D_property_enter_cost>` 控制。

\ **注意：**\ 起点位于该地区时，这个值不计入路径成本。

在该地区中行进的寻路成本可以使用乘数 :ref:`travel_cost<class_NavigationRegion2D_property_travel_cost>` 控制。

\ **注意：**\ 该节点会对这些属性进行缓存，因此，你在 :ref:`NavigationServer2D<class_NavigationServer2D>` 中对底层的地区 :ref:`RID<class_RID>` 进行的修改不会在该节点的属性中。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 NavigationRegion <../tutorials/navigation/navigation_using_navigationregions>`

.. rst-class:: classref-reftable-group

属性
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

信号
----

.. _class_NavigationRegion2D_signal_bake_finished:

.. rst-class:: classref-signal

**bake_finished**\ (\ ) :ref:`🔗<class_NavigationRegion2D_signal_bake_finished>`

当导航多边形烘焙操作完成时触发。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_signal_navigation_polygon_changed:

.. rst-class:: classref-signal

**navigation_polygon_changed**\ (\ ) :ref:`🔗<class_NavigationRegion2D_signal_navigation_polygon_changed>`

当使用的导航多边形被替换或对当前导航多边形内部的更改被提交时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_NavigationRegion2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_NavigationRegion2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

决定该 **NavigationRegion2D** 是启用还是禁用。

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

确定该区块所属的所有导航层的位字段。当使用 :ref:`NavigationServer2D.map_get_path()<class_NavigationServer2D_method_map_get_path>` 请求一个路径时，可以检查这些导航层。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_navigation_polygon:

.. rst-class:: classref-property

:ref:`NavigationPolygon<class_NavigationPolygon>` **navigation_polygon** :ref:`🔗<class_NavigationRegion2D_property_navigation_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_polygon**\ (\ value\: :ref:`NavigationPolygon<class_NavigationPolygon>`\ )
- :ref:`NavigationPolygon<class_NavigationPolygon>` **get_navigation_polygon**\ (\ )

使用的 :ref:`NavigationPolygon<class_NavigationPolygon>` 资源。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_travel_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **travel_cost** = ``1.0`` :ref:`🔗<class_NavigationRegion2D_property_travel_cost>`

.. rst-class:: classref-property-setget

- |void| **set_travel_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_travel_cost**\ (\ )

当寻路在该区块的导航网格内移动时，将行进距离乘以 :ref:`travel_cost<class_NavigationRegion2D_property_travel_cost>` 以确定最短路径。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_property_use_edge_connections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_edge_connections** = ``true`` :ref:`🔗<class_NavigationRegion2D_property_use_edge_connections>`

.. rst-class:: classref-property-setget

- |void| **set_use_edge_connections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_edge_connections**\ (\ )

如果启用，导航区块将使用边缘连接来与位于导航地图连接边距范围内的其他导航区块相连接。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_NavigationRegion2D_method_bake_navigation_polygon:

.. rst-class:: classref-method

|void| **bake_navigation_polygon**\ (\ on_thread\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_NavigationRegion2D_method_bake_navigation_polygon>`

烘焙该 :ref:`NavigationPolygon<class_NavigationPolygon>`\ 。如果 ``on_thread`` 被设置为 ``true``\ （默认），则烘焙将在单独的线程上完成。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_bounds>`

返回区块中变换后的导航网格对应的轴对齐矩形。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_navigation_layer_value>`

返回 :ref:`navigation_layers<class_NavigationRegion2D_property_navigation_layers>` 位掩码中指定的层是否启用，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_navigation_map>`

返回该区块使用的当前导航地图 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_region_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_region_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_region_rid>`

**已弃用：** Use :ref:`get_rid()<class_NavigationRegion2D_method_get_rid>` instead.

返回 :ref:`NavigationServer2D<class_NavigationServer2D>` 上该区块的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_get_rid>`

返回 :ref:`NavigationServer2D<class_NavigationServer2D>` 上该区块的 :ref:`RID<class_RID>`\ 。结合 :ref:`NavigationServer2D.map_get_closest_point_owner()<class_NavigationServer2D_method_map_get_closest_point_owner>` 可用于识别合并导航地图上离某点最近的 **NavigationRegion2D**\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_is_baking:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_baking**\ (\ ) |const| :ref:`🔗<class_NavigationRegion2D_method_is_baking>`

当 :ref:`NavigationPolygon<class_NavigationPolygon>` 正在后台线程上烘焙时，返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationRegion2D_method_set_navigation_layer_value>`

根据 ``value``\ ，启用或禁用 :ref:`navigation_layers<class_NavigationRegion2D_property_navigation_layers>` 位掩码中指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationRegion2D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationRegion2D_method_set_navigation_map>`

设置该区块应使用的导航地图的 :ref:`RID<class_RID>`\ 。默认情况下，该区块会自动加入 :ref:`World2D<class_World2D>` 默认导航地图，因此该函数只需要覆盖默认地图即可。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
