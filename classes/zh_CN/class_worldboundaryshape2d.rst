:github_url: hide

.. _class_WorldBoundaryShape2D:

WorldBoundaryShape2D
====================

**继承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于物理碰撞的 2D 空间边界（半平面）形状。

.. rst-class:: classref-introduction-group

描述
----

2D 世界边界形状，应当用于物理用途。\ **WorldBoundaryShape2D** 本质上和无限直线类似，能够强制所有物理体都保持在它的上方。哪个方向是“上方”由该直线的法线确定，这个方向在编辑器中由直线上方的一条段线表示。用例是无限的平坦地面。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`     | :ref:`distance<class_WorldBoundaryShape2D_property_distance>` | ``0.0``            |
   +-------------------------------+---------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`normal<class_WorldBoundaryShape2D_property_normal>`     | ``Vector2(0, -1)`` |
   +-------------------------------+---------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_WorldBoundaryShape2D_property_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance** = ``0.0`` :ref:`🔗<class_WorldBoundaryShape2D_property_distance>`

.. rst-class:: classref-property-setget

- |void| **set_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance**\ (\ )

从原点到直线的距离，沿 :ref:`normal<class_WorldBoundaryShape2D_property_normal>` 方向（根据其方向和大小）。原点到直线实际距离的绝对值可以用 ``abs(distance) / normal.length()`` 计算。

在直线 ``ax + by = d`` 的标量方程中，这是 ``d``\ ，而 ``(a, b)`` 坐标由 :ref:`normal<class_WorldBoundaryShape2D_property_normal>` 属性表示。

.. rst-class:: classref-item-separator

----

.. _class_WorldBoundaryShape2D_property_normal:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **normal** = ``Vector2(0, -1)`` :ref:`🔗<class_WorldBoundaryShape2D_property_normal>`

.. rst-class:: classref-property-setget

- |void| **set_normal**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_normal**\ (\ )

该直线的法线，通常是一个单位向量。它的方向表示非碰撞半平面。可以是任意长度，但不能为零。默认为 :ref:`Vector2.UP<class_Vector2_constant_UP>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
