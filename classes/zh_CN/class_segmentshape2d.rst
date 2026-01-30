:github_url: hide

.. _class_SegmentShape2D:

SegmentShape2D
==============

**继承：** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

2D 线段形状，旨在用于物理学。

.. rst-class:: classref-introduction-group

描述
----

2D 线段形状，旨在用于物理学。通常用于为 :ref:`CollisionShape2D<class_CollisionShape2D>` 提供形状。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`a<class_SegmentShape2D_property_a>` | ``Vector2(0, 0)``  |
   +-------------------------------+-------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`b<class_SegmentShape2D_property_b>` | ``Vector2(0, 10)`` |
   +-------------------------------+-------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SegmentShape2D_property_a:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **a** = ``Vector2(0, 0)`` :ref:`🔗<class_SegmentShape2D_property_a>`

.. rst-class:: classref-property-setget

- |void| **set_a**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_a**\ (\ )

该段的第一点的位置。

.. rst-class:: classref-item-separator

----

.. _class_SegmentShape2D_property_b:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **b** = ``Vector2(0, 10)`` :ref:`🔗<class_SegmentShape2D_property_b>`

.. rst-class:: classref-property-setget

- |void| **set_b**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_b**\ (\ )

该段的第二个点的位置。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
