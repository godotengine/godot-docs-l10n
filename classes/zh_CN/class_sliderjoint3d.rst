:github_url: hide

.. _class_SliderJoint3D:

SliderJoint3D
=============

**继承：** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

一种物理关节，能够将 3D 物理体的移动限制在相对于另一个物理体的某个轴上。

.. rst-class:: classref-introduction-group

描述
----

一种物理关节，能够将 3D 物理体的移动限制在相对于另一个物理体的某个轴上。例如物体 A 是代表活塞基底的 :ref:`StaticBody3D<class_StaticBody3D>`\ ，而物体 B 是代表活塞头的 :ref:`RigidBody3D<class_RigidBody3D>`\ ，能够上下移动。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/damping<class_SliderJoint3D_property_angular_limit/damping>`             | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/lower_angle<class_SliderJoint3D_property_angular_limit/lower_angle>`     | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/restitution<class_SliderJoint3D_property_angular_limit/restitution>`     | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/softness<class_SliderJoint3D_property_angular_limit/softness>`           | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_limit/upper_angle<class_SliderJoint3D_property_angular_limit/upper_angle>`     | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_motion/damping<class_SliderJoint3D_property_angular_motion/damping>`           | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_motion/restitution<class_SliderJoint3D_property_angular_motion/restitution>`   | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_motion/softness<class_SliderJoint3D_property_angular_motion/softness>`         | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_ortho/damping<class_SliderJoint3D_property_angular_ortho/damping>`             | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_ortho/restitution<class_SliderJoint3D_property_angular_ortho/restitution>`     | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`angular_ortho/softness<class_SliderJoint3D_property_angular_ortho/softness>`           | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/damping<class_SliderJoint3D_property_linear_limit/damping>`               | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/lower_distance<class_SliderJoint3D_property_linear_limit/lower_distance>` | ``-1.0`` |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/restitution<class_SliderJoint3D_property_linear_limit/restitution>`       | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/softness<class_SliderJoint3D_property_linear_limit/softness>`             | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_limit/upper_distance<class_SliderJoint3D_property_linear_limit/upper_distance>` | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_motion/damping<class_SliderJoint3D_property_linear_motion/damping>`             | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_motion/restitution<class_SliderJoint3D_property_linear_motion/restitution>`     | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_motion/softness<class_SliderJoint3D_property_linear_motion/softness>`           | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_ortho/damping<class_SliderJoint3D_property_linear_ortho/damping>`               | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_ortho/restitution<class_SliderJoint3D_property_linear_ortho/restitution>`       | ``0.7``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`linear_ortho/softness<class_SliderJoint3D_property_linear_ortho/softness>`             | ``1.0``  |
   +---------------------------+----------------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_SliderJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_SliderJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_SliderJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_SliderJoint3D_Param>`

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_UPPER** = ``0``

用于访问 :ref:`linear_limit/upper_distance<class_SliderJoint3D_property_linear_limit/upper_distance>` 的常量。阻尼发生前轴心点之间在 X 轴上的最大差异。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_LOWER** = ``1``

用于访问 :ref:`linear_limit/lower_distance<class_SliderJoint3D_property_linear_limit/lower_distance>` 的常量。阻尼发生前轴心点之间在 X 轴上的最小差异。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_SOFTNESS** = ``2``

用于访问 :ref:`linear_limit/softness<class_SliderJoint3D_property_linear_limit/softness>` 的常量。一旦超出限制，将应用该因子以沿着滑杆轴移动。该因子越低，移动越慢。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_RESTITUTION** = ``3``

用于访问 :ref:`linear_limit/restitution<class_SliderJoint3D_property_linear_limit/restitution>` 的常量。超出限制后的恢复量。越低，损失的速度能量越多。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_DAMPING** = ``4``

用于访问 :ref:`linear_limit/damping<class_SliderJoint3D_property_linear_limit/damping>` 的常量。一旦超出滑杆限制的阻尼量。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_MOTION_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_MOTION_SOFTNESS** = ``5``

用于访问 :ref:`linear_motion/softness<class_SliderJoint3D_property_linear_motion/softness>` 的常量。只要滑块在限制范围内，就会应用于滑杆轴上的移动的系数。值越低，移动越慢。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_MOTION_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_MOTION_RESTITUTION** = ``6``

用于访问 :ref:`linear_motion/restitution<class_SliderJoint3D_property_linear_motion/restitution>` 的常量。滑块限制内的恢复量。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_MOTION_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_MOTION_DAMPING** = ``7``

用于访问 :ref:`linear_motion/damping<class_SliderJoint3D_property_linear_motion/damping>` 的常量。滑块限制内的阻尼量。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_ORTHOGONAL_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_ORTHOGONAL_SOFTNESS** = ``8``

用于访问 :ref:`linear_ortho/softness<class_SliderJoint3D_property_linear_ortho/softness>` 的常量。应用于垂直于滑块的轴上移动的系数。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_ORTHOGONAL_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_ORTHOGONAL_RESTITUTION** = ``9``

用于访问 :ref:`linear_motion/restitution<class_SliderJoint3D_property_linear_motion/restitution>` 的常量。当移动穿过垂直于滑块的轴时的恢复量。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_ORTHOGONAL_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_ORTHOGONAL_DAMPING** = ``10``

用于访问 :ref:`linear_motion/damping<class_SliderJoint3D_property_linear_motion/damping>` 的常量。当移动穿过垂直于滑块的轴时的阻尼量。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_UPPER** = ``11``

用于访问 :ref:`angular_limit/upper_angle<class_SliderJoint3D_property_angular_limit/upper_angle>` 的常量。滑块旋转的上限。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_LOWER** = ``12``

用于访问 :ref:`angular_limit/lower_angle<class_SliderJoint3D_property_angular_limit/lower_angle>` 的常量。滑块的旋转下限。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_SOFTNESS** = ``13``

用于访问 :ref:`angular_limit/softness<class_SliderJoint3D_property_angular_limit/softness>` 的常量。一旦超过极限，应用于所有旋转的系数。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_RESTITUTION** = ``14``

用于访问 :ref:`angular_limit/restitution<class_SliderJoint3D_property_angular_limit/restitution>` 的常量。超过限制时旋转的恢复量。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_DAMPING** = ``15``

用于访问 :ref:`angular_limit/damping<class_SliderJoint3D_property_angular_limit/damping>` 的常量。超过极限时旋转的阻尼量。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_MOTION_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_MOTION_SOFTNESS** = ``16``

用于访问 :ref:`angular_motion/softness<class_SliderJoint3D_property_angular_motion/softness>` 的常量。应用于所有受限旋转的系数。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_MOTION_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_MOTION_RESTITUTION** = ``17``

用于访问 :ref:`angular_motion/restitution<class_SliderJoint3D_property_angular_motion/restitution>` 的常量。极限时旋转的恢复量。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_MOTION_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_MOTION_DAMPING** = ``18``

用于访问 :ref:`angular_motion/damping<class_SliderJoint3D_property_angular_motion/damping>` 的常量。极限时旋转的阻尼量。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_ORTHOGONAL_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_ORTHOGONAL_SOFTNESS** = ``19``

用于访问 :ref:`angular_ortho/softness<class_SliderJoint3D_property_angular_ortho/softness>` 的常量。应用于与滑杆正交的轴的所有旋转的系数。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_ORTHOGONAL_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_ORTHOGONAL_RESTITUTION** = ``20``

用于访问 :ref:`angular_ortho/restitution<class_SliderJoint3D_property_angular_ortho/restitution>` 的常量。垂直于滑块的轴上的旋转恢复量。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_ORTHOGONAL_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_ORTHOGONAL_DAMPING** = ``21``

用于访问 :ref:`angular_ortho/damping<class_SliderJoint3D_property_angular_ortho/damping>` 的常量。垂直于滑块的轴上的旋转阻尼量。

.. _class_SliderJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_MAX** = ``22``

代表 :ref:`Param<enum_SliderJoint3D_Param>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SliderJoint3D_property_angular_limit/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/damping** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

超过限制时旋转的阻尼量。

较低的阻尼值允许由主体 A 发起的旋转以较慢的速度传播到主体 B。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/lower_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/lower_angle** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/lower_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

滑块旋转的下限。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

当超过极限时，旋转的恢复量。

不影响阻尼。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

应用于所有旋转超过限制后的系数。

在 0 和 1 之间时使所有旋转变慢。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/upper_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/upper_angle** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/upper_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

滑块旋转的上限。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_motion/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motion/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_motion/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

极限内旋转的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_motion/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motion/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_angular_motion/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

极限内旋转的恢复量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_motion/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motion/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_motion/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

应用于所有受限旋转的系数。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_ortho/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_ortho/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_ortho/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

垂直于滑块的轴上的旋转阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_ortho/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_ortho/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_angular_ortho/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

垂直于滑块的轴上的旋转恢复量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_ortho/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_ortho/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_ortho/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

应用于与滑杆正交的轴的所有旋转的系数。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

一旦超过 :ref:`linear_limit/lower_distance<class_SliderJoint3D_property_linear_limit/lower_distance>` 和 :ref:`linear_limit/upper_distance<class_SliderJoint3D_property_linear_limit/upper_distance>` 所定义的极限，就会产生的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/lower_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/lower_distance** = ``-1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/lower_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

阻尼发生前轴心点之间在 X 轴上的最小差异。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

超出限制后的补偿。数值越低，损失的速度能量越多。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

一旦超过极限，应用于滑块轴上移动的系数。越低，运动越慢。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/upper_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/upper_distance** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/upper_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

阻尼发生前轴心点之间在 X 轴上的最大差异。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_motion/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motion/damping** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_linear_motion/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

滑块内部的阻尼量受到限制。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_motion/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motion/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_linear_motion/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

滑块限制内的恢复量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_motion/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motion/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_motion/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

只要滑块在限制范围内，就应用于滑块轴上移动的系数。越低，运动越慢。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_ortho/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_ortho/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_ortho/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

当移动穿过垂直于滑块的轴时的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_ortho/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_ortho/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_linear_ortho/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

当移动穿过垂直于滑块的轴时的恢复量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_ortho/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_ortho/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_ortho/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

应用于在垂直于滑块的轴上移动的系数。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SliderJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const| :ref:`🔗<class_SliderJoint3D_method_get_param>`

返回给定参数的值。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SliderJoint3D_method_set_param>`

将 ``value`` 赋值给指定的参数。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
