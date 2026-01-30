:github_url: hide

.. _class_NavigationObstacle2D:

NavigationObstacle2D
====================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于导航的 2D 障碍物，能够影响导航网格的烘焙、约束启用了避障处理的代理的速度。

.. rst-class:: classref-introduction-group

描述
----

障碍物需要导航地图和轮廓顶点 :ref:`vertices<class_NavigationObstacle2D_property_vertices>` 才能够正常工作。轮廓不能交叉或重叠。

障碍物如果启用了 :ref:`affect_navigation_mesh<class_NavigationObstacle2D_property_affect_navigation_mesh>`\ ，就会影响导航网格的烘焙过程。障碍物并不会添加可行走的几何体，而是负责弃置形状内的其他来源几何体。可用于防止导航网格出现在不需要的位置。如果启用了 :ref:`carve_navigation_mesh<class_NavigationObstacle2D_property_carve_navigation_mesh>`\ ，烘焙形状不会受到导航网格烘焙偏移量的影响，例如代理的半径。

障碍物如果启用了 :ref:`avoidance_enabled<class_NavigationObstacle2D_property_avoidance_enabled>`\ ，就能够约束启用了避障处理的代理的避障速度。如果障碍物顶点使用顺时针缠绕顺序，则障碍物会将避障代理推进其内部，否则为推出。使用顶点和避障的障碍物可以瞬移到新的位置，但是不应该每一帧都移动，因为每次更改都需要重新构建避障地图。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 NavigationObstacle <../tutorials/navigation/navigation_using_navigationobstacles>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`affect_navigation_mesh<class_NavigationObstacle2D_property_affect_navigation_mesh>` | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`avoidance_enabled<class_NavigationObstacle2D_property_avoidance_enabled>`           | ``true``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`                               | :ref:`avoidance_layers<class_NavigationObstacle2D_property_avoidance_layers>`             | ``1``                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`carve_navigation_mesh<class_NavigationObstacle2D_property_carve_navigation_mesh>`   | ``false``                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`radius<class_NavigationObstacle2D_property_radius>`                                 | ``0.0``                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`velocity<class_NavigationObstacle2D_property_velocity>`                             | ``Vector2(0, 0)``        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`vertices<class_NavigationObstacle2D_property_vertices>`                             | ``PackedVector2Array()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_avoidance_layer_value<class_NavigationObstacle2D_method_get_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_navigation_map<class_NavigationObstacle2D_method_get_navigation_map>`\ (\ ) |const|                                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_rid<class_NavigationObstacle2D_method_get_rid>`\ (\ ) |const|                                                                                                    |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_avoidance_layer_value<class_NavigationObstacle2D_method_set_avoidance_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_navigation_map<class_NavigationObstacle2D_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_NavigationObstacle2D_property_affect_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **affect_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle2D_property_affect_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_affect_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_affect_navigation_mesh**\ (\ )

如果启用并在导航网格烘焙过程中解析，则障碍物将丢弃其 :ref:`vertices<class_NavigationObstacle2D_property_vertices>` 定义形状内的源几何体。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_avoidance_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **avoidance_enabled** = ``true`` :ref:`🔗<class_NavigationObstacle2D_property_avoidance_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_avoidance_enabled**\ (\ )

如果为 ``true``\ ，则该障碍物会影响使用代理的避障。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_avoidance_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **avoidance_layers** = ``1`` :ref:`🔗<class_NavigationObstacle2D_property_avoidance_layers>`

.. rst-class:: classref-property-setget

- |void| **set_avoidance_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_avoidance_layers**\ (\ )

决定该障碍物的避障层的位字段。避障掩码中存在匹配位的代理会躲避该障碍物。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_carve_navigation_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **carve_navigation_mesh** = ``false`` :ref:`🔗<class_NavigationObstacle2D_property_carve_navigation_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_carve_navigation_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_carve_navigation_mesh**\ (\ )

如果启用，障碍物顶点将雕刻到烘焙的导航网格中，其形状不受额外偏移（例如代理半径）的影响。

它仍会受到烘焙过程的后续后处理的影响，例如边缘和多边形简化。

需要启用 :ref:`affect_navigation_mesh<class_NavigationObstacle2D_property_affect_navigation_mesh>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.0`` :ref:`🔗<class_NavigationObstacle2D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

设置该障碍物的避障半径。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_NavigationObstacle2D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

设置该障碍物的期望速度，这样如果（每帧）一直使用相同的速度移动而不是直接跳到某个位置，那么其他代理就能够更好地预测该障碍物的行为。仅影响该障碍物 :ref:`radius<class_NavigationObstacle2D_property_radius>` 的避障。不会影响障碍物的静态顶点。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_property_vertices:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **vertices** = ``PackedVector2Array()`` :ref:`🔗<class_NavigationObstacle2D_property_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_vertices**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_vertices**\ (\ )

该障碍物的轮廓顶点。如果这些顶点是按照顺时针顺序缠绕的，那么障碍物就会将其他代理向内推，否则就会向外推。轮廓不能交叉或重叠。如果这些顶点直接跳到了新的位置，那么其他代理可能无法预测这种行为，导致被困在障碍物内。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_NavigationObstacle2D_method_get_avoidance_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationObstacle2D_method_get_avoidance_layer_value>`

返回 :ref:`avoidance_layers<class_NavigationObstacle2D_property_avoidance_layers>` 位掩码中指定的层是否启用，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle2D_method_get_navigation_map>`

返回该 NavigationObstacle 节点的导航地图的 :ref:`RID<class_RID>`\ 。该函数始终返回在 NavigationObstacle 节点上设置的地图，而不是 NavigationServer 上抽象障碍物所使用的地图。如果该障碍物地图使用 NavigationServer API 直接更改，则该 NavigationObstacle 节点将不会察觉该地图的更改。请使用 :ref:`set_navigation_map()<class_NavigationObstacle2D_method_set_navigation_map>` 更改 NavigationObstacle 的导航地图，也会更新 NavigationServer 上的障碍物。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_NavigationObstacle2D_method_get_rid>`

返回这个障碍物在 :ref:`NavigationServer2D<class_NavigationServer2D>` 上的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_method_set_avoidance_layer_value:

.. rst-class:: classref-method

|void| **set_avoidance_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationObstacle2D_method_set_avoidance_layer_value>`

根据 ``value`` 启用或禁用 :ref:`avoidance_layers<class_NavigationObstacle2D_property_avoidance_layers>` 位掩码中指定的层，给定的 ``layer_number`` 应在 1 和 32 之间。

.. rst-class:: classref-item-separator

----

.. _class_NavigationObstacle2D_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_NavigationObstacle2D_method_set_navigation_map>`

设置该 NavigationObstacle 节点应使用的导航地图的 :ref:`RID<class_RID>`\ ，并会更新 NavigationServer 上的 ``obstacle``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
