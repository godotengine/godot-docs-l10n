:github_url: hide

.. _class_CapsuleShape2D:

CapsuleShape2D
==============

**继承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于物理碰撞的 2D 胶囊形状。

.. rst-class:: classref-introduction-group

描述
----

2D 胶囊形状，旨在用于物理学。通常用于为 :ref:`CollisionShape2D<class_CollisionShape2D>` 提供形状。

\ **性能：**\ **CapsuleShape2D** 可以快速检查碰撞，但比 :ref:`RectangleShape2D<class_RectangleShape2D>` 和 :ref:`CircleShape2D<class_CircleShape2D>` 慢。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`height<class_CapsuleShape2D_property_height>`         | ``30.0`` |
   +---------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`mid_height<class_CapsuleShape2D_property_mid_height>` |          |
   +---------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`radius<class_CapsuleShape2D_property_radius>`         | ``10.0`` |
   +---------------------------+-------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CapsuleShape2D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``30.0`` :ref:`🔗<class_CapsuleShape2D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

胶囊的总高度，包括半圆。

\ **注意：**\ 胶囊的 :ref:`height<class_CapsuleShape2D_property_height>` 必须至少为其 :ref:`radius<class_CapsuleShape2D_property_radius>` 的两倍。否则，胶囊将变为圆形。如果 :ref:`height<class_CapsuleShape2D_property_height>` 小于 :ref:`radius<class_CapsuleShape2D_property_radius>` 的两倍，则属性将调整为有效值。

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape2D_property_mid_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **mid_height** :ref:`🔗<class_CapsuleShape2D_property_mid_height>`

.. rst-class:: classref-property-setget

- |void| **set_mid_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mid_height**\ (\ )

胶囊的高度，不包括两个半圆。这是胶囊中间矩形部分的高度，即两个半圆圆心之间的距离。这是对 :ref:`height<class_CapsuleShape2D_property_height>` 的封装。

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape2D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``10.0`` :ref:`🔗<class_CapsuleShape2D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

胶囊的半径。

\ **注意：**\ 胶囊的 :ref:`radius<class_CapsuleShape2D_property_radius>` 不能大于其 :ref:`height<class_CapsuleShape2D_property_height>` 的一半。否则，胶囊将变成圆形。如果 :ref:`radius<class_CapsuleShape2D_property_radius>` 大于 :ref:`height<class_CapsuleShape2D_property_height>` 的一半，则属性将调整为有效值。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
