:github_url: hide

.. _class_CapsuleShape3D:

CapsuleShape3D
==============

**继承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于物理碰撞的 3D 胶囊形状。

.. rst-class:: classref-introduction-group

描述
----

3D 胶囊形状，旨在用于物理学。通常用于为 :ref:`CollisionShape3D<class_CollisionShape3D>` 提供形状。

\ **性能：**\ **CapsuleShape3D** 可以快速检查碰撞。比 :ref:`CylinderShape3D<class_CylinderShape3D>` 快，但比 :ref:`SphereShape3D<class_SphereShape3D>` 和 :ref:`BoxShape3D<class_BoxShape3D>` 慢。

.. rst-class:: classref-introduction-group

教程
----

- `3D 物理测试演示 <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`height<class_CapsuleShape3D_property_height>`         | ``2.0`` |
   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`mid_height<class_CapsuleShape3D_property_mid_height>` |         |
   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_CapsuleShape3D_property_radius>`         | ``0.5`` |
   +---------------------------+-------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CapsuleShape3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CapsuleShape3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

胶囊体的总高度，包括半球。

\ **注意：**\ 胶囊体的 :ref:`height<class_CapsuleShape3D_property_height>` 必须至少为其 :ref:`radius<class_CapsuleShape3D_property_radius>` 的两倍。否则，胶囊体将变为球体。如果 :ref:`height<class_CapsuleShape3D_property_height>` 小于 :ref:`radius<class_CapsuleShape3D_property_radius>` 的两倍，则属性将调整为有效值。

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape3D_property_mid_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **mid_height** :ref:`🔗<class_CapsuleShape3D_property_mid_height>`

.. rst-class:: classref-property-setget

- |void| **set_mid_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mid_height**\ (\ )

胶囊的高度，不包括两个半球。这是胶囊中间圆柱部分的高度，即两个半球球心之间的距离。这是对 :ref:`height<class_CapsuleShape3D_property_height>` 的封装。

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CapsuleShape3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

胶囊体的半径。

\ **注意：**\ 胶囊体的 :ref:`radius<class_CapsuleShape3D_property_radius>` 不能大于其 :ref:`height<class_CapsuleShape3D_property_height>` 的一半。否则，胶囊体将变为球体。如果 :ref:`radius<class_CapsuleShape3D_property_radius>` 大于 :ref:`height<class_CapsuleShape3D_property_height>` 的一半，则属性将调整为有效值。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
