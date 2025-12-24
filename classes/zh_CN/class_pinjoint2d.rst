:github_url: hide

.. _class_PinJoint2D:

PinJoint2D
==========

**继承：** :ref:`Joint2D<class_Joint2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

将两个 2D 物理体通过单点进行连接的物理关节，能够让它们自由旋转。

.. rst-class:: classref-introduction-group

描述
----

将两个 2D 物理体通过单点进行连接的物理关节，能够让它们自由旋转。例如可以将 :ref:`RigidBody2D<class_RigidBody2D>` 连接到 :ref:`StaticBody2D<class_StaticBody2D>` 上，从而创建钟摆或跷跷板。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`angular_limit_enabled<class_PinJoint2D_property_angular_limit_enabled>` | ``false`` |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_lower<class_PinJoint2D_property_angular_limit_lower>`     | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_upper<class_PinJoint2D_property_angular_limit_upper>`     | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`motor_enabled<class_PinJoint2D_property_motor_enabled>`                 | ``false`` |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`motor_target_velocity<class_PinJoint2D_property_motor_target_velocity>` | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`softness<class_PinJoint2D_property_softness>`                           | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PinJoint2D_property_angular_limit_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit_enabled** = ``false`` :ref:`🔗<class_PinJoint2D_property_angular_limit_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_angular_limit_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_angular_limit_enabled**\ (\ )

如果为 ``true``\ ，则应用由 :ref:`angular_limit_lower<class_PinJoint2D_property_angular_limit_lower>` 和 :ref:`angular_limit_upper<class_PinJoint2D_property_angular_limit_upper>` 定义的销的最大和最小旋转。

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_angular_limit_lower:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_lower** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_angular_limit_lower>`

.. rst-class:: classref-property-setget

- |void| **set_angular_limit_lower**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_limit_lower**\ (\ )

最小的旋转量。只有在 :ref:`angular_limit_enabled<class_PinJoint2D_property_angular_limit_enabled>` 为 ``true`` 时才有效。

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_angular_limit_upper:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_upper** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_angular_limit_upper>`

.. rst-class:: classref-property-setget

- |void| **set_angular_limit_upper**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_limit_upper**\ (\ )

最大的旋转量。只有在 :ref:`angular_limit_enabled<class_PinJoint2D_property_angular_limit_enabled>` 为 ``true`` 时才有效。

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_motor_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **motor_enabled** = ``false`` :ref:`🔗<class_PinJoint2D_property_motor_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_motor_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_motor_enabled**\ (\ )

激活后，马达会转动该销。

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_motor_target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **motor_target_velocity** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_motor_target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_motor_target_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_motor_target_velocity**\ (\ )

马达的目标速度。单位为弧度每秒。

.. rst-class:: classref-item-separator

----

.. _class_PinJoint2D_property_softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **softness** = ``0.0`` :ref:`🔗<class_PinJoint2D_property_softness>`

.. rst-class:: classref-property-setget

- |void| **set_softness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_softness**\ (\ )

这个值越高，与被牵制的两个物体之间的的联系就越灵活。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
