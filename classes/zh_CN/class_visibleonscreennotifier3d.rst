:github_url: hide

.. _class_VisibleOnScreenNotifier3D:

VisibleOnScreenNotifier3D
=========================

**继承：** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`VisibleOnScreenEnabler3D<class_VisibleOnScreenEnabler3D>`

3D 空间的盒形区块，用于检测其在屏幕上是否可见。

.. rst-class:: classref-introduction-group

描述
----

**VisibleOnScreenNotifier3D** 表示 3D 空间的盒形区块。当该区块的任何部分在屏幕或 :ref:`Camera3D<class_Camera3D>` 视图中可见时，它将发出 :ref:`screen_entered<class_VisibleOnScreenNotifier3D_signal_screen_entered>` 信号；同样，当其任何部分都不可见时，它将发出 :ref:`screen_exited<class_VisibleOnScreenNotifier3D_signal_screen_exited>` 信号。

如果你希望当该区块在屏幕上可见时自动启用节点，请使用 :ref:`VisibleOnScreenEnabler3D<class_VisibleOnScreenEnabler3D>`\ 。

\ **注意：**\ **VisibleOnScreenNotifier3D** 使用近似启发式，不考虑墙壁和其他遮挡，除非使用遮挡剔除。除非将 :ref:`Node3D.visible<class_Node3D_property_visible>` 设置为 ``true``\ ，否则它也不会起作用。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------+-------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`aabb<class_VisibleOnScreenNotifier3D_property_aabb>` | ``AABB(-1, -1, -1, 2, 2, 2)`` |
   +-------------------------+------------------------------------------------------------+-------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_on_screen<class_VisibleOnScreenNotifier3D_method_is_on_screen>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_VisibleOnScreenNotifier3D_signal_screen_entered:

.. rst-class:: classref-signal

**screen_entered**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier3D_signal_screen_entered>`

当该 **VisibleOnScreenNotifier3D** 进入屏幕时发出。

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier3D_signal_screen_exited:

.. rst-class:: classref-signal

**screen_exited**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier3D_signal_screen_exited>`

当该 **VisibleOnScreenNotifier3D** 退出屏幕时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_VisibleOnScreenNotifier3D_property_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **aabb** = ``AABB(-1, -1, -1, 2, 2, 2)`` :ref:`🔗<class_VisibleOnScreenNotifier3D_property_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_aabb**\ (\ )

该 **VisibleOnScreenNotifier3D** 的边界框。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_VisibleOnScreenNotifier3D_method_is_on_screen:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_screen**\ (\ ) |const| :ref:`🔗<class_VisibleOnScreenNotifier3D_method_is_on_screen>`

如果为 ``true``\ ，则边界框在屏幕上。

\ **注意：**\ **VisibleOnScreenNotifier3D** 被添加到场景树后需要一帧来评估其可见性，因此该方法在实例化后将始终返回 ``false`` 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
