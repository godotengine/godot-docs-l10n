:github_url: hide

.. _class_CylinderShape3D:

CylinderShape3D
===============

**继承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于物理碰撞的 3D 圆柱体形状。

.. rst-class:: classref-introduction-group

描述
----

3D 圆柱体形状，旨在用于物理学。通常用于为 :ref:`CollisionShape3D<class_CollisionShape3D>` 提供形状。

\ **注意：**\ 圆柱体碰撞形状有若干已知的问题。建议改用 :ref:`CapsuleShape3D<class_CapsuleShape3D>` 或 :ref:`BoxShape3D<class_BoxShape3D>`\ 。

\ **性能：**\ **CylinderShape3D** 可以快速检查碰撞，但比 :ref:`CapsuleShape3D<class_CapsuleShape3D>`\ 、\ :ref:`BoxShape3D<class_BoxShape3D>` 和 :ref:`SphereShape3D<class_SphereShape3D>` 慢。

.. rst-class:: classref-introduction-group

教程
----

- `第三人称射击（TPS）演示 <https://godotengine.org/asset-library/asset/2710>`__

- `3D 物理测试演示 <https://godotengine.org/asset-library/asset/2747>`__

- `3D 体素演示 <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`height<class_CylinderShape3D_property_height>` | ``2.0`` |
   +---------------------------+------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_CylinderShape3D_property_radius>` | ``0.5`` |
   +---------------------------+------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CylinderShape3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CylinderShape3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

圆柱体的高度。

.. rst-class:: classref-item-separator

----

.. _class_CylinderShape3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CylinderShape3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

圆柱体的半径。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
