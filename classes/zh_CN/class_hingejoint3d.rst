:github_url: hide

.. _class_HingeJoint3D:

HingeJoint3D
============

**继承：** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

限制 3D 物理体旋转轴的物理关节，旋转轴相对于另一个物理体。

.. rst-class:: classref-introduction-group

描述
----

限制 3D 物理体旋转轴的物理关节，旋转轴相对于另一个物理体。例如甲物体可以是代表门铰链的 :ref:`StaticBody3D<class_StaticBody3D>`\ ，\ :ref:`RigidBody3D<class_RigidBody3D>` 可以围绕它旋转。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/bias<class_HingeJoint3D_property_angular_limit/bias>`             | ``0.3``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`bool<class_bool>`   | :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>`         | ``false``      |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/lower<class_HingeJoint3D_property_angular_limit/lower>`           | ``-1.5707964`` |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/relaxation<class_HingeJoint3D_property_angular_limit/relaxation>` | ``1.0``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/softness<class_HingeJoint3D_property_angular_limit/softness>`     | ``0.9``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/upper<class_HingeJoint3D_property_angular_limit/upper>`           | ``1.5707964``  |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`bool<class_bool>`   | :ref:`motor/enable<class_HingeJoint3D_property_motor/enable>`                         | ``false``      |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`motor/max_impulse<class_HingeJoint3D_property_motor/max_impulse>`               | ``1.0``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`motor/target_velocity<class_HingeJoint3D_property_motor/target_velocity>`       | ``1.0``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`params/bias<class_HingeJoint3D_property_params/bias>`                           | ``0.3``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_flag<class_HingeJoint3D_method_get_flag>`\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const|                                 |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_HingeJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_flag<class_HingeJoint3D_method_set_flag>`\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ )      |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_HingeJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_HingeJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_HingeJoint3D_Param>`

.. _class_HingeJoint3D_constant_PARAM_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_BIAS** = ``0``

两个物体向不同方向移动时被拉回到一起的速度。

.. _class_HingeJoint3D_constant_PARAM_LIMIT_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_UPPER** = ``1``

最大的旋转量。只有在\ :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>`\ 为 ``true`` 时才有效。

.. _class_HingeJoint3D_constant_PARAM_LIMIT_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_LOWER** = ``2``

最小的旋转量。只有在\ :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>`\ 为 ``true`` 时才有效。

.. _class_HingeJoint3D_constant_PARAM_LIMIT_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_BIAS** = ``3``

垂直于铰链的轴线上的旋转得到纠正的速度。

.. _class_HingeJoint3D_constant_PARAM_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_SOFTNESS** = ``4``

**已弃用：** This property is never used by the engine and is kept for compatibility purpose.



.. _class_HingeJoint3D_constant_PARAM_LIMIT_RELAXATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_RELAXATION** = ``5``

该值越低，旋转速度越慢。

.. _class_HingeJoint3D_constant_PARAM_MOTOR_TARGET_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_MOTOR_TARGET_VELOCITY** = ``6``

目标马达的目标速度。

.. _class_HingeJoint3D_constant_PARAM_MOTOR_MAX_IMPULSE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_MOTOR_MAX_IMPULSE** = ``7``

马达的最大加速度。

.. _class_HingeJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_MAX** = ``8``

代表 :ref:`Param<enum_HingeJoint3D_Param>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_HingeJoint3D_Flag:

.. rst-class:: classref-enumeration

enum **Flag**: :ref:`🔗<enum_HingeJoint3D_Flag>`

.. _class_HingeJoint3D_constant_FLAG_USE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_HingeJoint3D_Flag>` **FLAG_USE_LIMIT** = ``0``

如果为 ``true``,则会对由\ :ref:`angular_limit/lower<class_HingeJoint3D_property_angular_limit/lower>`\ 和\ :ref:`angular_limit/upper<class_HingeJoint3D_property_angular_limit/upper>`\ 定义的铰链最大和最小旋转量产生影响。

.. _class_HingeJoint3D_constant_FLAG_ENABLE_MOTOR:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_HingeJoint3D_Flag>` **FLAG_ENABLE_MOTOR** = ``1``

激活后，电机会使铰链转动。

.. _class_HingeJoint3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_HingeJoint3D_Flag>` **FLAG_MAX** = ``2``

代表 :ref:`Flag<enum_HingeJoint3D_Flag>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_HingeJoint3D_property_angular_limit/bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/bias** = ``0.3`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

垂直于铰链的轴线上的旋转得到纠正的速度。

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit/enable** = ``false`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/enable>`

.. rst-class:: classref-property-setget

- |void| **set_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const|

如果为 ``true``,则会对由\ :ref:`angular_limit/lower<class_HingeJoint3D_property_angular_limit/lower>`\ 和\ :ref:`angular_limit/upper<class_HingeJoint3D_property_angular_limit/upper>`\ 定义的铰链最大和最小旋转量产生影响。

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/lower:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/lower** = ``-1.5707964`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/lower>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

最小的旋转量。只有在\ :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>`\ 为 ``true`` 时才有效。

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/relaxation** = ``1.0`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

该值越低，旋转速度越慢。

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/softness** = ``0.9`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

**已弃用：** This property is never set by the engine and is kept for compatibility purposes.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/upper:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/upper** = ``1.5707964`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/upper>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

最大的旋转量。只有在\ :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>`\ 为 ``true`` 时才有效。

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_motor/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **motor/enable** = ``false`` :ref:`🔗<class_HingeJoint3D_property_motor/enable>`

.. rst-class:: classref-property-setget

- |void| **set_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const|

激活后，电机会使铰链转动。

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_motor/max_impulse:

.. rst-class:: classref-property

:ref:`float<class_float>` **motor/max_impulse** = ``1.0`` :ref:`🔗<class_HingeJoint3D_property_motor/max_impulse>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

马达的最大加速度。

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_motor/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **motor/target_velocity** = ``1.0`` :ref:`🔗<class_HingeJoint3D_property_motor/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

目标马达的目标速度。

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_params/bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/bias** = ``0.3`` :ref:`🔗<class_HingeJoint3D_property_params/bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

两个物体向不同方向移动时被拉回到一起的速度。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_HingeJoint3D_method_get_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const| :ref:`🔗<class_HingeJoint3D_method_get_flag>`

返回指定标志的值。

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const| :ref:`🔗<class_HingeJoint3D_method_get_param>`

返回指定参数的值。

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_method_set_flag:

.. rst-class:: classref-method

|void| **set_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_HingeJoint3D_method_set_flag>`

如果为 ``true``\ ，启用指定的标志。

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_HingeJoint3D_method_set_param>`

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
