:github_url: hide

.. _class_SliderJoint3D:

SliderJoint3D
=============

**繼承：** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

一種物理關節，能夠將 3D 物理體的移動限制在相對於另一個物理體的某個軸上。

.. rst-class:: classref-introduction-group

說明
----

一種物理關節，能夠將 3D 物理體的移動限制在相對於另一個物理體的某個軸上。例如物體 A 是代表活塞基底的 :ref:`StaticBody3D<class_StaticBody3D>`\ ，而物體 B 是代表活塞頭的 :ref:`RigidBody3D<class_RigidBody3D>`\ ，能夠上下移動。

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_SliderJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_SliderJoint3D_Param>`

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_UPPER** = ``0``

用於存取 :ref:`linear_limit/upper_distance<class_SliderJoint3D_property_linear_limit/upper_distance>` 的常數。阻尼發生前軸心點之間在 X 軸上的最大差異。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_LOWER** = ``1``

用於存取 :ref:`linear_limit/lower_distance<class_SliderJoint3D_property_linear_limit/lower_distance>` 的常數。阻尼發生前軸心點之間在 X 軸上的最小差異。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_SOFTNESS** = ``2``

用於存取 :ref:`linear_limit/softness<class_SliderJoint3D_property_linear_limit/softness>` 的常數。一旦超出限制，將應用該因子以沿著滑桿軸移動。該因子越低，移動越慢。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_RESTITUTION** = ``3``

用於存取 :ref:`linear_limit/restitution<class_SliderJoint3D_property_linear_limit/restitution>` 的常數。超出限制後的恢復量。越低，損失的速度能量越多。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_LIMIT_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_LIMIT_DAMPING** = ``4``

用於存取 :ref:`linear_limit/damping<class_SliderJoint3D_property_linear_limit/damping>` 的常數。一旦超出滑桿限制的阻尼量。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_MOTION_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_MOTION_SOFTNESS** = ``5``

用於存取 :ref:`linear_motion/softness<class_SliderJoint3D_property_linear_motion/softness>` 的常數。只要滑塊在限制範圍內，就會套用至滑桿軸上的移動的係數。值越低，移動越慢。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_MOTION_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_MOTION_RESTITUTION** = ``6``

用於存取 :ref:`linear_motion/restitution<class_SliderJoint3D_property_linear_motion/restitution>` 的常數。滑塊限制內的恢復量。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_MOTION_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_MOTION_DAMPING** = ``7``

用於存取 :ref:`linear_motion/damping<class_SliderJoint3D_property_linear_motion/damping>` 的常數。滑塊限制內的阻尼量。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_ORTHOGONAL_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_ORTHOGONAL_SOFTNESS** = ``8``

用於存取 :ref:`linear_ortho/softness<class_SliderJoint3D_property_linear_ortho/softness>` 的常數。套用至垂直於滑塊的軸上移動的係數。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_ORTHOGONAL_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_ORTHOGONAL_RESTITUTION** = ``9``

用於存取 :ref:`linear_motion/restitution<class_SliderJoint3D_property_linear_motion/restitution>` 的常數。當移動穿過垂直於滑塊的軸時的恢復量。

.. _class_SliderJoint3D_constant_PARAM_LINEAR_ORTHOGONAL_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_LINEAR_ORTHOGONAL_DAMPING** = ``10``

用於存取 :ref:`linear_motion/damping<class_SliderJoint3D_property_linear_motion/damping>` 的常數。當移動穿過垂直於滑塊的軸時的阻尼量。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_UPPER** = ``11``

用於存取 :ref:`angular_limit/upper_angle<class_SliderJoint3D_property_angular_limit/upper_angle>` 的常數。滑塊旋轉的上限。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_LOWER** = ``12``

用於存取 :ref:`angular_limit/lower_angle<class_SliderJoint3D_property_angular_limit/lower_angle>` 的常數。滑塊的旋轉下限。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_SOFTNESS** = ``13``

用於存取 :ref:`angular_limit/softness<class_SliderJoint3D_property_angular_limit/softness>` 的常數。一旦超過極限，套用至所有旋轉的係數。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_RESTITUTION** = ``14``

用於存取 :ref:`angular_limit/restitution<class_SliderJoint3D_property_angular_limit/restitution>` 的常數。超過限制時旋轉的恢復量。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_LIMIT_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_LIMIT_DAMPING** = ``15``

用於存取 :ref:`angular_limit/damping<class_SliderJoint3D_property_angular_limit/damping>` 的常數。超過極限時旋轉的阻尼量。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_MOTION_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_MOTION_SOFTNESS** = ``16``

用於存取 :ref:`angular_motion/softness<class_SliderJoint3D_property_angular_motion/softness>` 的常數。套用至所有受限旋轉的係數。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_MOTION_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_MOTION_RESTITUTION** = ``17``

用於存取 :ref:`angular_motion/restitution<class_SliderJoint3D_property_angular_motion/restitution>` 的常數。極限時旋轉的恢復量。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_MOTION_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_MOTION_DAMPING** = ``18``

用於存取 :ref:`angular_motion/damping<class_SliderJoint3D_property_angular_motion/damping>` 的常數。極限時旋轉的阻尼量。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_ORTHOGONAL_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_ORTHOGONAL_SOFTNESS** = ``19``

用於存取 :ref:`angular_ortho/softness<class_SliderJoint3D_property_angular_ortho/softness>` 的常數。套用至與滑桿正交的軸的所有旋轉的係數。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_ORTHOGONAL_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_ORTHOGONAL_RESTITUTION** = ``20``

用於存取 :ref:`angular_ortho/restitution<class_SliderJoint3D_property_angular_ortho/restitution>` 的常數。垂直於滑塊的軸上的旋轉恢復量。

.. _class_SliderJoint3D_constant_PARAM_ANGULAR_ORTHOGONAL_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_ANGULAR_ORTHOGONAL_DAMPING** = ``21``

用於存取 :ref:`angular_ortho/damping<class_SliderJoint3D_property_angular_ortho/damping>` 的常數。垂直於滑塊的軸上的旋轉阻尼量。

.. _class_SliderJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_SliderJoint3D_Param>` **PARAM_MAX** = ``22``

代表 :ref:`Param<enum_SliderJoint3D_Param>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SliderJoint3D_property_angular_limit/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/damping** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

超過限制時旋轉的阻尼量。

較低的阻尼值允許由主體 A 發起的旋轉以較慢的速度傳播到主體 B。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/lower_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/lower_angle** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/lower_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

滑桿旋轉的下限。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

當超過極限時，旋轉的恢復量。

不影響阻尼。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

套用於所有旋轉超過限制後的係數。

在 0 和 1 之間時使所有旋轉變慢。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_limit/upper_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/upper_angle** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_angular_limit/upper_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

滑桿旋轉的上限。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_motion/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motion/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_motion/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

極限內旋轉的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_motion/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motion/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_angular_motion/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

極限內旋轉的恢復量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_motion/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motion/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_motion/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

套用於所有受限旋轉的係數。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_ortho/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_ortho/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_ortho/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

垂直於滑桿的軸上的旋轉阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_ortho/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_ortho/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_angular_ortho/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

垂直於滑桿的軸上的旋轉恢復量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_angular_ortho/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_ortho/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_angular_ortho/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

套用於與滑動條正交的軸的所有旋轉的係數。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

一旦超過 :ref:`linear_limit/lower_distance<class_SliderJoint3D_property_linear_limit/lower_distance>` 和 :ref:`linear_limit/upper_distance<class_SliderJoint3D_property_linear_limit/upper_distance>` 所定義的極限，就會產生的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/lower_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/lower_distance** = ``-1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/lower_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

阻尼發生前軸心點之間在 X 軸上的最小差異。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

超出限制後的補償。數值越低，損失的速度能量越多。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

一旦超過極限，套用於滑桿軸上移動的係數。越低，運動越慢。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_limit/upper_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit/upper_distance** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_limit/upper_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

阻尼發生前軸心點之間在 X 軸上的最大差異。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_motion/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motion/damping** = ``0.0`` :ref:`🔗<class_SliderJoint3D_property_linear_motion/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

滑桿內部的阻尼量受到限制。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_motion/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motion/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_linear_motion/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

滑桿限制內的恢復量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_motion/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motion/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_motion/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

只要滑桿在限制範圍內，就套用於滑桿軸上移動的係數。越低，運動越慢。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_ortho/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_ortho/damping** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_ortho/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

當移動穿過垂直於滑桿的軸時的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_ortho/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_ortho/restitution** = ``0.7`` :ref:`🔗<class_SliderJoint3D_property_linear_ortho/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

當移動穿過垂直於滑桿的軸時的恢復量。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_property_linear_ortho/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_ortho/softness** = ``1.0`` :ref:`🔗<class_SliderJoint3D_property_linear_ortho/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const|

套用於在垂直於滑桿的軸上移動的係數。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SliderJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`\ ) |const| :ref:`🔗<class_SliderJoint3D_method_get_param>`

回傳給定參數的值。

.. rst-class:: classref-item-separator

----

.. _class_SliderJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_SliderJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SliderJoint3D_method_set_param>`

將 ``value`` 賦值給指定的參數。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
