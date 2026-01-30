:github_url: hide

.. _class_ConeTwistJoint3D:

ConeTwistJoint3D
================

**继承：** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

以模拟球窝关节的方式连接两个 3D 物理物体的物理关节。

.. rst-class:: classref-introduction-group

描述
----

以模拟球窝关节的方式连接两个 3D 物理物体的物理关节。扭转轴被初始化为 **ConeTwistJoint3D** 的 X 轴。一旦物理体摆动，扭转轴将被计算为两个物理体局部空间中关节的 X 轴的中间值。可用作肩膀、臀部等肢体，也可以用作从天花板荡下的灯之类的对象。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`bias<class_ConeTwistJoint3D_property_bias>`             | ``0.3``       |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`relaxation<class_ConeTwistJoint3D_property_relaxation>` | ``1.0``       |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`softness<class_ConeTwistJoint3D_property_softness>`     | ``0.8``       |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`swing_span<class_ConeTwistJoint3D_property_swing_span>` | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`twist_span<class_ConeTwistJoint3D_property_twist_span>` | ``3.1415927`` |
   +---------------------------+---------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_ConeTwistJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_ConeTwistJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_ConeTwistJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_ConeTwistJoint3D_Param>`

.. _class_ConeTwistJoint3D_constant_PARAM_SWING_SPAN:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_SWING_SPAN** = ``0``

摆动是围绕垂直于扭转轴的轴线，从一边到另一边的旋转。

摆动跨度定义了沿摆动轴旋转多少不会得到校正。

可以被定义为 **ConeTwistJoint3D** 中的松动。

如果低于 0.05，该行为将被锁定。

.. _class_ConeTwistJoint3D_constant_PARAM_TWIST_SPAN:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_TWIST_SPAN** = ``1``

扭转是绕扭转轴的旋转，此值定义了关节可以扭转多远。

如果低于 0.05，则扭转被锁定。

.. _class_ConeTwistJoint3D_constant_PARAM_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_BIAS** = ``2``

摆动或扭转的速度。

越高，速度越快。

.. _class_ConeTwistJoint3D_constant_PARAM_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_SOFTNESS** = ``3``

关节开始扭转的难易程度。如果太低，则需要更多的力才能开始扭转关节。

.. _class_ConeTwistJoint3D_constant_PARAM_RELAXATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_RELAXATION** = ``4``

定义两侧的摆动速度和扭转速度差异同步的速度。

.. _class_ConeTwistJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_ConeTwistJoint3D_Param>` **PARAM_MAX** = ``5``

代表 :ref:`Param<enum_ConeTwistJoint3D_Param>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ConeTwistJoint3D_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.3`` :ref:`🔗<class_ConeTwistJoint3D_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

摆动或扭转的速度。

越高，速度越快。

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **relaxation** = ``1.0`` :ref:`🔗<class_ConeTwistJoint3D_property_relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

定义两侧的摆动速度和扭转速度差异同步的速度。

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **softness** = ``0.8`` :ref:`🔗<class_ConeTwistJoint3D_property_softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

关节开始扭转的难易程度。如果太低，则需要更多的力才能开始扭转关节。

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_swing_span:

.. rst-class:: classref-property

:ref:`float<class_float>` **swing_span** = ``0.7853982`` :ref:`🔗<class_ConeTwistJoint3D_property_swing_span>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

摆动是围绕垂直于扭转轴的轴线，从一边到另一边的旋转。

摆动跨度定义了沿摆动轴旋转多少不会得到校正。

可以被定义为 **ConeTwistJoint3D** 中的松动。

如果低于 0.05，该行为将被锁定。

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_property_twist_span:

.. rst-class:: classref-property

:ref:`float<class_float>` **twist_span** = ``3.1415927`` :ref:`🔗<class_ConeTwistJoint3D_property_twist_span>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const|

扭转是绕扭转轴的旋转，此值定义了关节可以扭转多远。

如果低于 0.05，则扭转被锁定。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_ConeTwistJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`\ ) |const| :ref:`🔗<class_ConeTwistJoint3D_method_get_param>`

返回指定参数的值。

.. rst-class:: classref-item-separator

----

.. _class_ConeTwistJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_ConeTwistJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConeTwistJoint3D_method_set_param>`

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
