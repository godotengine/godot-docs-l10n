:github_url: hide

.. _class_NavigationLink2D:

NavigationLink2D
================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

连接两个位于 :ref:`NavigationRegion2D<class_NavigationRegion2D>` 上的位置的链接，导航时能够让代理走这个链接。

.. rst-class:: classref-introduction-group

描述
----

连接两个位于 :ref:`NavigationRegion2D<class_NavigationRegion2D>` 上的位置的链接，导航时能够让代理走这个链接。这两个位置可以在同一个 :ref:`NavigationRegion2D<class_NavigationRegion2D>` 上，也可以是在两个不同的区块上。链接可以用来表达沿着导航多边形表面行进以外的导航方法，例如滑锁、传送、跳过沟壑等等。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 NavigationLink <../tutorials/navigation/navigation_using_navigationlinks>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`bidirectional<class_NavigationLink2D_property_bidirectional>`         | ``true``          |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_NavigationLink2D_property_enabled>`                     | ``true``          |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`end_position<class_NavigationLink2D_property_end_position>`           | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`enter_cost<class_NavigationLink2D_property_enter_cost>`               | ``0.0``           |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`navigation_layers<class_NavigationLink2D_property_navigation_layers>` | ``1``             |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`start_position<class_NavigationLink2D_property_start_position>`       | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`travel_cost<class_NavigationLink2D_property_travel_cost>`             | ``1.0``           |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_global_end_position<class_NavigationLink2D_method_get_global_end_position>`\ (\ ) |const|                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_global_start_position<class_NavigationLink2D_method_get_global_start_position>`\ (\ ) |const|                                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_navigation_layer_value<class_NavigationLink2D_method_get_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_navigation_map<class_NavigationLink2D_method_get_navigation_map>`\ (\ ) |const|                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_rid<class_NavigationLink2D_method_get_rid>`\ (\ ) |const|                                                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_global_end_position<class_NavigationLink2D_method_set_global_end_position>`\ (\ position\: :ref:`Vector2<class_Vector2>`\ )                                    |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_global_start_position<class_NavigationLink2D_method_set_global_start_position>`\ (\ position\: :ref:`Vector2<class_Vector2>`\ )                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_navigation_layer_value<class_NavigationLink2D_method_set_navigation_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_navigation_map<class_NavigationLink2D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_NavigationLink2D_property_bidirectional:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **bidirectional** = ``true`` :ref:`🔗<class_NavigationLink2D_property_bidirectional>`

.. rst-class:: classref-property-setget

- |void| **set_bidirectional**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_bidirectional**\ (\ )

返回这个连接是可以双向通行，还是只能从 :ref:`start_position<class_NavigationLink2D_property_start_position>` 通向 :ref:`end_position<class_NavigationLink2D_property_end_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_NavigationLink2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

该链接当前是否处于活动状态。如果为 ``false`` ，则 :ref:`NavigationServer2D.map_get_path()<class_NavigationServer2D_method_map_get_path>` 会忽略这个链接。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_end_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **end_position** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationLink2D_property_end_position>`

.. rst-class:: classref-property-setget

- |void| **set_end_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_end_position**\ (\ )

链接的结束位置。

链接会搜索导航网格中最接近这个位置的多边形，并将自身与该多边形相关联。

链接搜索的距离由 :ref:`NavigationServer2D.map_set_link_connection_radius()<class_NavigationServer2D_method_map_set_link_connection_radius>` 控制。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_enter_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **enter_cost** = ``0.0`` :ref:`🔗<class_NavigationLink2D_property_enter_cost>`

.. rst-class:: classref-property-setget

- |void| **set_enter_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_enter_cost**\ (\ )

当寻路从其他地区的导航网格进入该链接时，\ :ref:`enter_cost<class_NavigationLink2D_property_enter_cost>` 会加到路径距离中，用于确定最短路径。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_navigation_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **navigation_layers** = ``1`` :ref:`🔗<class_NavigationLink2D_property_navigation_layers>`

.. rst-class:: classref-property-setget

- |void| **set_navigation_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_navigation_layers**\ (\ )

决定链接所属导航层的位域。使用 :ref:`NavigationServer2D.map_get_path()<class_NavigationServer2D_method_map_get_path>` 请求路径时会检查这些导航层。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_start_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **start_position** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationLink2D_property_start_position>`

.. rst-class:: classref-property-setget

- |void| **set_start_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_start_position**\ (\ )

链接的起始位置。

链接会搜索导航网格中最接近这个位置的多边形，并将自身与该多边形相关联。

链接搜索的距离由 :ref:`NavigationServer2D.map_set_link_connection_radius()<class_NavigationServer2D_method_map_set_link_connection_radius>` 控制。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_property_travel_cost:

.. rst-class:: classref-property

:ref:`float<class_float>` **travel_cost** = ``1.0`` :ref:`🔗<class_NavigationLink2D_property_travel_cost>`

.. rst-class:: classref-property-setget

- |void| **set_travel_cost**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_travel_cost**\ (\ )

当寻路沿着该链接移动时，移动距离会和 :ref:`travel_cost<class_NavigationLink2D_property_travel_cost>` 相乘，用于确定最短路径。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_NavigationLink2D_method_get_global_end_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_global_end_position**\ (\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_global_end_position>`

返回该链接的 :ref:`end_position<class_NavigationLink2D_property_end_position>` 的全局位置。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_get_global_start_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_global_start_position**\ (\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_global_start_position>`

返回该链接的 :ref:`start_position<class_NavigationLink2D_property_start_position>` 的全局位置。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_get_navigation_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_navigation_layer_value>`

返回 :ref:`navigation_layers<class_NavigationLink2D_property_navigation_layers>` 位掩码中指定的层是否启用，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_navigation_map>`

返回该链接使用的当前导航地图 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationLink2D_method_get_rid>`

返回 :ref:`NavigationServer2D<class_NavigationServer2D>` 上该链接的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_set_global_end_position:

.. rst-class:: classref-method

|void| **set_global_end_position**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_NavigationLink2D_method_set_global_end_position>`

使用全局位置 ``position`` 设置相对于链接的结束位置 :ref:`end_position<class_NavigationLink2D_property_end_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_set_global_start_position:

.. rst-class:: classref-method

|void| **set_global_start_position**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_NavigationLink2D_method_set_global_start_position>`

使用全局位置 ``position`` 设置相对于链接的起始位置 :ref:`start_position<class_NavigationLink2D_property_start_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_set_navigation_layer_value:

.. rst-class:: classref-method

|void| **set_navigation_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationLink2D_method_set_navigation_layer_value>`

根据 ``value``\ ，启用或禁用 :ref:`navigation_layers<class_NavigationLink2D_property_navigation_layers>` 位掩码中指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationLink2D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationLink2D_method_set_navigation_map>`

设置该链接应使用的导航地图的 :ref:`RID<class_RID>`\ 。默认情况下，该链接会自动加入 :ref:`World2D<class_World2D>` 默认导航地图，因此该函数只需要覆盖默认地图即可。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
