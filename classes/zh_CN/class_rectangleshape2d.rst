:github_url: hide

.. _class_RectangleShape2D:

RectangleShape2D
================

**继承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

2D 矩形，旨在用于物理学。

.. rst-class:: classref-introduction-group

描述
----

2D 矩形，旨在用于物理学。通常用于为 :ref:`CollisionShape2D<class_CollisionShape2D>` 提供形状。

\ **性能：**\ **RectangleShape2D** 可以快速检测碰撞。比 :ref:`CapsuleShape2D<class_CapsuleShape2D>` 快，但比 :ref:`CircleShape2D<class_CircleShape2D>` 慢。

.. rst-class:: classref-introduction-group

教程
----

- `2D Pong 演示 <https://godotengine.org/asset-library/asset/2728>`__

- `2D 运动学角色演示 <https://godotengine.org/asset-library/asset/2719>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------+---------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_RectangleShape2D_property_size>` | ``Vector2(20, 20)`` |
   +-------------------------------+---------------------------------------------------+---------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RectangleShape2D_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(20, 20)`` :ref:`🔗<class_RectangleShape2D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

该矩形的宽度和高度。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
