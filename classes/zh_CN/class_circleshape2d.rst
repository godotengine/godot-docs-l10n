:github_url: hide

.. _class_CircleShape2D:

CircleShape2D
=============

**继承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

2D 圆形，旨在用于物理学。

.. rst-class:: classref-introduction-group

描述
----

2D 圆形，旨在用于物理学。通常用于为 :ref:`CollisionShape2D<class_CollisionShape2D>` 提供形状。

\ **性能：**\ **CircleShape2D** 可以快速检测碰撞。比 :ref:`RectangleShape2D<class_RectangleShape2D>` 和 :ref:`CapsuleShape2D<class_CapsuleShape2D>` 快。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`radius<class_CircleShape2D_property_radius>` | ``10.0`` |
   +---------------------------+----------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CircleShape2D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``10.0`` :ref:`🔗<class_CircleShape2D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

圆的半径。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
