:github_url: hide

.. _class_PinJoint3D:

PinJoint3D
==========

**继承：** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

将两个 3D 物理体通过单点进行连接的物理关节，能够让它们自由旋转。

.. rst-class:: classref-introduction-group

描述
----

将两个 3D 物理体通过单点进行连接的物理关节，能够让它们自由旋转。例如，可以将 :ref:`RigidBody3D<class_RigidBody3D>` 连接到 :ref:`StaticBody3D<class_StaticBody3D>` 上，从而创建钟摆或跷跷板。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`params/bias<class_PinJoint3D_property_params/bias>`                   | ``0.3`` |
   +---------------------------+-----------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`params/damping<class_PinJoint3D_property_params/damping>`             | ``1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`params/impulse_clamp<class_PinJoint3D_property_params/impulse_clamp>` | ``0.0`` |
   +---------------------------+-----------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_PinJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_PinJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_PinJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_PinJoint3D_Param>`

.. _class_PinJoint3D_constant_PARAM_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_PinJoint3D_Param>` **PARAM_BIAS** = ``0``

被钉在一起的物体之间保持位置关系的力，越高越强。

.. _class_PinJoint3D_constant_PARAM_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_PinJoint3D_Param>` **PARAM_DAMPING** = ``1``

被钉在一起的物体之间保持共速的力。越高，力越大。

.. _class_PinJoint3D_constant_PARAM_IMPULSE_CLAMP:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_PinJoint3D_Param>` **PARAM_IMPULSE_CLAMP** = ``2``

如果大于 0，则这个值是此 Joint3D 产生的冲量的最大值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PinJoint3D_property_params/bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/bias** = ``0.3`` :ref:`🔗<class_PinJoint3D_property_params/bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|

被钉在一起的物体之间保持位置关系的力，越高越强。

.. rst-class:: classref-item-separator

----

.. _class_PinJoint3D_property_params/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/damping** = ``1.0`` :ref:`🔗<class_PinJoint3D_property_params/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|

被钉在一起的物体之间保持共速的力。越高，力越大。

.. rst-class:: classref-item-separator

----

.. _class_PinJoint3D_property_params/impulse_clamp:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/impulse_clamp** = ``0.0`` :ref:`🔗<class_PinJoint3D_property_params/impulse_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|

如果大于 0，则这个值是此 Joint3D 产生的冲量的最大值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PinJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const| :ref:`🔗<class_PinJoint3D_method_get_param>`

返回指定参数的值。

.. rst-class:: classref-item-separator

----

.. _class_PinJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PinJoint3D_method_set_param>`

设置指定参数的值。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
