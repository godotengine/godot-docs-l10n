:github_url: hide

.. _class_VisibleOnScreenNotifier2D:

VisibleOnScreenNotifier2D
=========================

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`VisibleOnScreenEnabler2D<class_VisibleOnScreenEnabler2D>`

2D 空间的矩形区域，用于检测其在屏幕上是否可见。

.. rst-class:: classref-introduction-group

描述
----

**VisibleOnScreenNotifier2D** 表示 2D 空间的矩形区块。当该区块的任何部分在屏幕或视口中可见时，它将发出 :ref:`screen_entered<class_VisibleOnScreenNotifier2D_signal_screen_entered>` 信号，同样，当其任何部分都不可见时，它将发出 :ref:`screen_exited<class_VisibleOnScreenNotifier2D_signal_screen_exited>` 信号。

如果希望当该区块在屏幕上可见时自动启用节点，请使用 :ref:`VisibleOnScreenEnabler2D<class_VisibleOnScreenEnabler2D>`\ 。

\ **注意：**\ **VisibleOnScreenNotifier2D** 使用渲染剔除代码来确定它在屏幕上是否可见，因此除非 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 被设置为 ``true``\ ，否则它不会起作用。

.. rst-class:: classref-introduction-group

教程
----

- `2D Dodge The Creeps 演示 <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+-----------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`rect<class_VisibleOnScreenNotifier2D_property_rect>`           | ``Rect2(-10, -10, 20, 20)`` |
   +---------------------------+----------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`   | :ref:`show_rect<class_VisibleOnScreenNotifier2D_property_show_rect>` | ``true``                    |
   +---------------------------+----------------------------------------------------------------------+-----------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_on_screen<class_VisibleOnScreenNotifier2D_method_is_on_screen>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_VisibleOnScreenNotifier2D_signal_screen_entered:

.. rst-class:: classref-signal

**screen_entered**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier2D_signal_screen_entered>`

当该 VisibleOnScreenNotifier2D 进入屏幕时发出。

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier2D_signal_screen_exited:

.. rst-class:: classref-signal

**screen_exited**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier2D_signal_screen_exited>`

当该 VisibleOnScreenNotifier2D 退出屏幕时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisibleOnScreenNotifier2D_property_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **rect** = ``Rect2(-10, -10, 20, 20)`` :ref:`🔗<class_VisibleOnScreenNotifier2D_property_rect>`

.. rst-class:: classref-property-setget

- |void| **set_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_rect**\ (\ )

该 VisibleOnScreenNotifier2D 的边界矩形。

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier2D_property_show_rect:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_rect** = ``true`` :ref:`🔗<class_VisibleOnScreenNotifier2D_property_show_rect>`

.. rst-class:: classref-property-setget

- |void| **set_show_rect**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_showing_rect**\ (\ )

如果为 ``true``\ ，则在编辑器中以半透明的洋红色填充显示 :ref:`rect<class_VisibleOnScreenNotifier2D_property_rect>` 的矩形区域。这样做与更改 VisibleOnScreenNotifier2D 的可见性不同，不会影响屏幕剔除检测。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_VisibleOnScreenNotifier2D_method_is_on_screen:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_screen**\ (\ ) |const| :ref:`🔗<class_VisibleOnScreenNotifier2D_method_is_on_screen>`

如果为 ``true``\ ，则边界矩形在屏幕上。

\ **注意：**\ **VisibleOnScreenNotifier2D** 被添加到场景树后需要一帧才能确定其可见性，因此该方法在它被实例化后，在绘制阶段之前，将始终返回 ``false`` 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
