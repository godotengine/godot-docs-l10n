:github_url: hide

.. _class_GrooveJoint2D:

GrooveJoint2D
=============

**继承：** :ref:`Joint2D<class_Joint2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

将两个物理体的运动限制在某个固定轴上的物理关节。

.. rst-class:: classref-introduction-group

描述
----

将两个物理体的运动限制在某个固定轴上的物理关节。例如代表活塞基底的 :ref:`StaticBody2D<class_StaticBody2D>` 可以附加至代表能够上下移动的活塞头的 :ref:`RigidBody2D<class_RigidBody2D>` 之上。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`initial_offset<class_GrooveJoint2D_property_initial_offset>` | ``25.0`` |
   +---------------------------+--------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`length<class_GrooveJoint2D_property_length>`                 | ``50.0`` |
   +---------------------------+--------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GrooveJoint2D_property_initial_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **initial_offset** = ``25.0`` :ref:`🔗<class_GrooveJoint2D_property_initial_offset>`

.. rst-class:: classref-property-setget

- |void| **set_initial_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_initial_offset**\ (\ )

这个物体B的初始锚点位置，由关键的原点和沿关节Y轴（沿着沟槽）的局部偏移 :ref:`initial_offset<class_GrooveJoint2D_property_initial_offset>` 定义。

.. rst-class:: classref-item-separator

----

.. _class_GrooveJoint2D_property_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **length** = ``50.0`` :ref:`🔗<class_GrooveJoint2D_property_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

沟槽的长度。沟槽是从关键原点沿着关节局部 Y 轴朝向 :ref:`length<class_GrooveJoint2D_property_length>` 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
