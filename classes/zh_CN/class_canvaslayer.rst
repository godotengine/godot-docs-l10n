:github_url: hide

.. _class_CanvasLayer:

CanvasLayer
===========

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`ParallaxBackground<class_ParallaxBackground>`

用于 2D 场景中的对象的独立渲染的节点。

.. rst-class:: classref-introduction-group

描述
----

**CanvasLayer** 的直接或间接子节点中，派生自 :ref:`CanvasItem<class_CanvasItem>` 的节点会在该图层中进行绘制。图层是定义绘制顺序的数字索引。默认 2D 场景使用的索引为 ``0``\ ，因此索引为 ``-1`` 的 **CanvasLayer** 会在下方绘制，而索引为 ``1`` 的 **CanvasLayer** 会在上方绘制。无论节点在图层中的 :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` 是多少，这一顺序都成立。

\ **CanvasLayer** 可以隐藏，也可以跟随视口。因此常用于血条等 HUD（位于 ``1`` 或更高的图层上）和背景（位于 ``-1`` 或更低的图层上）。

\ **注意：**\ 嵌入式 :ref:`Window<class_Window>` 位于 ``1024`` 图层。位于 ``1025`` 或更高图层的 :ref:`CanvasItem<class_CanvasItem>` 会显示在嵌入式窗口之上。

\ **注意：**\ 每个 **CanvasLayer** 都是在一个特定的 :ref:`Viewport<class_Viewport>` 中绘制的，不能在多个 :ref:`Viewport<class_Viewport>` 之间共享，见 :ref:`custom_viewport<class_CanvasLayer_property_custom_viewport>`\ 。使用多个 :ref:`Viewport<class_Viewport>` 时，例如分屏游戏中，你需要为每个想要绘制的 :ref:`Viewport<class_Viewport>` 创建一个单独的 **CanvasLayer**\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`Viewport 和画布变换 <../tutorials/2d/2d_transforms>`

- :doc:`画布层 <../tutorials/2d/canvas_layers>`

- `2D Dodge The Creeps 演示 <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Node<class_Node>`               | :ref:`custom_viewport<class_CanvasLayer_property_custom_viewport>`                 |                                   |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`follow_viewport_enabled<class_CanvasLayer_property_follow_viewport_enabled>` | ``false``                         |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`follow_viewport_scale<class_CanvasLayer_property_follow_viewport_scale>`     | ``1.0``                           |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`layer<class_CanvasLayer_property_layer>`                                     | ``1``                             |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`offset<class_CanvasLayer_property_offset>`                                   | ``Vector2(0, 0)``                 |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`rotation<class_CanvasLayer_property_rotation>`                               | ``0.0``                           |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`scale<class_CanvasLayer_property_scale>`                                     | ``Vector2(1, 1)``                 |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_CanvasLayer_property_transform>`                             | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`visible<class_CanvasLayer_property_visible>`                                 | ``true``                          |
   +---------------------------------------+------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                 | :ref:`get_canvas<class_CanvasLayer_method_get_canvas>`\ (\ ) |const|                   |
   +---------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_final_transform<class_CanvasLayer_method_get_final_transform>`\ (\ ) |const| |
   +---------------------------------------+----------------------------------------------------------------------------------------+
   | |void|                                | :ref:`hide<class_CanvasLayer_method_hide>`\ (\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------+
   | |void|                                | :ref:`show<class_CanvasLayer_method_show>`\ (\ )                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_CanvasLayer_signal_visibility_changed:

.. rst-class:: classref-signal

**visibility_changed**\ (\ ) :ref:`🔗<class_CanvasLayer_signal_visibility_changed>`

当该层的可见性发生变化时触发。请参阅 :ref:`visible<class_CanvasLayer_property_visible>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CanvasLayer_property_custom_viewport:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **custom_viewport** :ref:`🔗<class_CanvasLayer_property_custom_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_custom_viewport**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_custom_viewport**\ (\ )

分配给该 **CanvasLayer** 的自定义 :ref:`Viewport<class_Viewport>` 节点。如果为 ``null``\ ，则使用默认的视口。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_follow_viewport_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_viewport_enabled** = ``false`` :ref:`🔗<class_CanvasLayer_property_follow_viewport_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_follow_viewport**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_following_viewport**\ (\ )

启用时，\ **CanvasLayer** 会保持在世界空间中的位置。禁用时，\ **CanvasLayer** 会保持在屏幕上的某个固定位置。

与 :ref:`follow_viewport_scale<class_CanvasLayer_property_follow_viewport_scale>` 配合可以实现伪 3D 效果。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_follow_viewport_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **follow_viewport_scale** = ``1.0`` :ref:`🔗<class_CanvasLayer_property_follow_viewport_scale>`

.. rst-class:: classref-property-setget

- |void| **set_follow_viewport_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_follow_viewport_scale**\ (\ )

使用 :ref:`follow_viewport_enabled<class_CanvasLayer_property_follow_viewport_enabled>` 时缩放图层。移入到前景的图层应具有增加的缩放，而移入到背景的图层应具有减小的缩放。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **layer** = ``1`` :ref:`🔗<class_CanvasLayer_property_layer>`

.. rst-class:: classref-property-setget

- |void| **set_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer**\ (\ )

画布层的索引，用于确定绘制顺序。索引值小的画布层绘制在索引值大的画布层后面。

\ **注意：**\ 如果多个 CanvasLayer 的画布层索引相同，一个 CanvasLayer 的 :ref:`CanvasItem<class_CanvasItem>` 子节点都会绘制在另一个 CanvasLayer 的 :ref:`CanvasItem<class_CanvasItem>` 子节点之后。哪个 CanvasLayer 画在前面并不一定。

\ **注意：**\ 画布层索引应当在 :ref:`RenderingServer.CANVAS_LAYER_MIN<class_RenderingServer_constant_CANVAS_LAYER_MIN>` 和 :ref:`RenderingServer.CANVAS_LAYER_MAX<class_RenderingServer_constant_CANVAS_LAYER_MAX>` 之间（含两端）。其他值都会发生环绕。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_CanvasLayer_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

图层的基本偏移量。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation** = ``0.0`` :ref:`🔗<class_CanvasLayer_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation**\ (\ )

图层的旋转弧度。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scale** = ``Vector2(1, 1)`` :ref:`🔗<class_CanvasLayer_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scale**\ (\ )

图层的缩放。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_CanvasLayer_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

图层的变换。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_CanvasLayer_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

为 ``false`` 时，该 **CanvasLayer** 下的所有 :ref:`CanvasItem<class_CanvasItem>` 都会被隐藏。

与 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 不同，\ **CanvasLayer** 的显示与否不会传播到其内部的层。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_CanvasLayer_method_get_canvas:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_canvas**\ (\ ) |const| :ref:`🔗<class_CanvasLayer_method_get_canvas>`

返回此层使用的画布的 RID。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_method_get_final_transform:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_final_transform**\ (\ ) |const| :ref:`🔗<class_CanvasLayer_method_get_final_transform>`

返回从 **CanvasLayer** 坐标系到 :ref:`Viewport<class_Viewport>` 坐标系的变换。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_method_hide:

.. rst-class:: classref-method

|void| **hide**\ (\ ) :ref:`🔗<class_CanvasLayer_method_hide>`

隐藏该 **CanvasLayer** 下的所有 :ref:`CanvasItem<class_CanvasItem>`\ 。相当于将 :ref:`visible<class_CanvasLayer_property_visible>` 设为 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_CanvasLayer_method_show:

.. rst-class:: classref-method

|void| **show**\ (\ ) :ref:`🔗<class_CanvasLayer_method_show>`

显示该 **CanvasLayer** 下的所有 :ref:`CanvasItem<class_CanvasItem>`\ 。相当于将 :ref:`visible<class_CanvasLayer_property_visible>` 设为 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
