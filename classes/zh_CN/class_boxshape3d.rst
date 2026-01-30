:github_url: hide

.. _class_BoxShape3D:

BoxShape3D
==========

**继承：** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于物理碰撞的 3D 盒形资源。

.. rst-class:: classref-introduction-group

描述
----

3D 盒子形状，旨在用于物理学。通常用于为 :ref:`CollisionShape3D<class_CollisionShape3D>` 提供形状。

\ **性能：**\ **BoxShape3D** 可以快速检测碰撞，比 :ref:`CapsuleShape3D<class_CapsuleShape3D>` 和 :ref:`CylinderShape3D<class_CylinderShape3D>` 快，但比 :ref:`SphereShape3D<class_SphereShape3D>` 慢。

.. rst-class:: classref-introduction-group

教程
----

- `3D 物理测试演示 <https://godotengine.org/asset-library/asset/2747>`__

- `3D 动力学角色演示 <https://godotengine.org/asset-library/asset/2739>`__

- `3D 平台跳跃演示 <https://godotengine.org/asset-library/asset/2748>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_BoxShape3D_property_size>` | ``Vector3(1, 1, 1)`` |
   +-------------------------------+---------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_BoxShape3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_BoxShape3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

该盒子的宽度、高度和深度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
