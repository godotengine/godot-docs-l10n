:github_url: hide

.. meta::
	:keywords: ragdoll

.. _class_PhysicalBone3D:

PhysicalBone3D
==============

**继承：** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于让 :ref:`Skeleton3D<class_Skeleton3D>` 中的骨骼对物理作出反应的物理体。

.. rst-class:: classref-introduction-group

描述
----

**PhysicalBone3D** 节点是一个物理体，可用于使 :ref:`Skeleton3D<class_Skeleton3D>` 中的骨骼对物理做出反应。

\ **注意：**\ 为了通过射线投射检测物理骨骼，父级 :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>` 的 :ref:`SkeletonModifier3D.active<class_SkeletonModifier3D_property_active>` 属性必须为 ``true``\ ，并且 :ref:`Skeleton3D<class_Skeleton3D>` 的骨骼必须正确分配给 **PhysicalBone3D**\ ；这意味着 :ref:`get_bone_id()<class_PhysicalBone3D_method_get_bone_id>` 应该返回一个有效的 id（\ ``>= 0``\ ）。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`布娃娃系统 <../tutorials/physics/ragdoll_system>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>`           | ``0.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`DampMode<enum_PhysicalBone3D_DampMode>`   | :ref:`angular_damp_mode<class_PhysicalBone3D_property_angular_damp_mode>` | ``0``                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`angular_velocity<class_PhysicalBone3D_property_angular_velocity>`   | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`body_offset<class_PhysicalBone3D_property_body_offset>`             | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`bounce<class_PhysicalBone3D_property_bounce>`                       | ``0.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`can_sleep<class_PhysicalBone3D_property_can_sleep>`                 | ``true``                                            |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`custom_integrator<class_PhysicalBone3D_property_custom_integrator>` | ``false``                                           |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`friction<class_PhysicalBone3D_property_friction>`                   | ``1.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity_scale<class_PhysicalBone3D_property_gravity_scale>`         | ``1.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`joint_offset<class_PhysicalBone3D_property_joint_offset>`           | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`joint_rotation<class_PhysicalBone3D_property_joint_rotation>`       | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`JointType<enum_PhysicalBone3D_JointType>` | :ref:`joint_type<class_PhysicalBone3D_property_joint_type>`               | ``0``                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>`             | ``0.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`DampMode<enum_PhysicalBone3D_DampMode>`   | :ref:`linear_damp_mode<class_PhysicalBone3D_property_linear_damp_mode>`   | ``0``                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`linear_velocity<class_PhysicalBone3D_property_linear_velocity>`     | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`mass<class_PhysicalBone3D_property_mass>`                           | ``1.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_integrate_forces<class_PhysicalBone3D_private_method__integrate_forces>`\ (\ state\: :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`\ ) |virtual|    |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`apply_central_impulse<class_PhysicalBone3D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ )                                              |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`apply_impulse<class_PhysicalBone3D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_bone_id<class_PhysicalBone3D_method_get_bone_id>`\ (\ ) |const|                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_simulate_physics<class_PhysicalBone3D_method_get_simulate_physics>`\ (\ )                                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_simulating_physics<class_PhysicalBone3D_method_is_simulating_physics>`\ (\ )                                                                                       |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_PhysicalBone3D_DampMode:

.. rst-class:: classref-enumeration

enum **DampMode**: :ref:`🔗<enum_PhysicalBone3D_DampMode>`

.. _class_PhysicalBone3D_constant_DAMP_MODE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **DAMP_MODE_COMBINE** = ``0``

在这种模式下，物体的阻尼值将被加到区域中设置的任何值或默认值。

.. _class_PhysicalBone3D_constant_DAMP_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **DAMP_MODE_REPLACE** = ``1``

在这种模式下，物体的阻尼值将替换掉区域中设置的任何值或默认值。

.. rst-class:: classref-item-separator

----

.. _enum_PhysicalBone3D_JointType:

.. rst-class:: classref-enumeration

enum **JointType**: :ref:`🔗<enum_PhysicalBone3D_JointType>`

.. _class_PhysicalBone3D_constant_JOINT_TYPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_NONE** = ``0``

PhysicsBone3D 未应用任何关节。

.. _class_PhysicalBone3D_constant_JOINT_TYPE_PIN:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_PIN** = ``1``

PhysicsBone3D 应用了钉固关节。

.. _class_PhysicalBone3D_constant_JOINT_TYPE_CONE:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_CONE** = ``2``

PhysicsBone3D 应用了锥形关节。

.. _class_PhysicalBone3D_constant_JOINT_TYPE_HINGE:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_HINGE** = ``3``

PhysicsBone3D 应用了铰链关节。

.. _class_PhysicalBone3D_constant_JOINT_TYPE_SLIDER:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_SLIDER** = ``4``

PhysicsBone3D 应用了滑杆关节。

.. _class_PhysicalBone3D_constant_JOINT_TYPE_6DOF:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_6DOF** = ``5``

PhysicsBone3D 应用了六自由度关节。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PhysicalBone3D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.0`` :ref:`🔗<class_PhysicalBone3D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

阻碍物体的旋转。默认情况下，物体将使用项目设置 :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>`\ ，或物体所在的 :ref:`Area3D<class_Area3D>` 中设置的任何覆盖值。取决于 :ref:`angular_damp_mode<class_PhysicalBone3D_property_angular_damp_mode>`\ ，可以设置 :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>` 以增加或替换物体的阻尼值。

有关阻尼的更多详细信息，请参阅 :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_angular_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **angular_damp_mode** = ``0`` :ref:`🔗<class_PhysicalBone3D_property_angular_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_mode**\ (\ value\: :ref:`DampMode<enum_PhysicalBone3D_DampMode>`\ )
- :ref:`DampMode<enum_PhysicalBone3D_DampMode>` **get_angular_damp_mode**\ (\ )

定义如何应用 :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

该 PhysicalBone3D 的旋转速度，以每秒\ *弧度*\ 为单位。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_body_offset:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **body_offset** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_body_offset>`

.. rst-class:: classref-property-setget

- |void| **set_body_offset**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_body_offset**\ (\ )

设置该物体的变换。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_bounce:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce** = ``0.0`` :ref:`🔗<class_PhysicalBone3D_property_bounce>`

.. rst-class:: classref-property-setget

- |void| **set_bounce**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce**\ (\ )

身体的反弹力。值范围从 ``0`` （无反弹）到 ``1``\ （完全反弹）。

\ **注意：**\ 即使将 :ref:`bounce<class_PhysicalBone3D_property_bounce>` 设置为 ``1.0``\ ，由于线性和角度阻尼，一些能量也会随着时间的推移而损失。要让 **PhysicalBone3D** 随时间推移保留其所有能量，请将 :ref:`bounce<class_PhysicalBone3D_property_bounce>` 设置为 ``1.0``\ 、\ :ref:`linear_damp_mode<class_PhysicalBone3D_property_linear_damp_mode>` 设置为 :ref:`DAMP_MODE_REPLACE<class_PhysicalBone3D_constant_DAMP_MODE_REPLACE>`\ 、\ :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>` 设置为 ``0.0``\ 、\ :ref:`angular_damp_mode<class_PhysicalBone3D_property_angular_damp_mode>` 设置为 :ref:`DAMP_MODE_REPLACE<class_PhysicalBone3D_constant_DAMP_MODE_REPLACE>`\ 、并将 :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>` 设置为 ``0.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_can_sleep:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_sleep** = ``true`` :ref:`🔗<class_PhysicalBone3D_property_can_sleep>`

.. rst-class:: classref-property-setget

- |void| **set_can_sleep**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_able_to_sleep**\ (\ )

如果为 ``true``\ ，则会在不移动时停用该物体，所以它在被外力唤醒前不会参与模拟。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_custom_integrator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_integrator** = ``false`` :ref:`🔗<class_PhysicalBone3D_property_custom_integrator>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_integrator**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_integrator**\ (\ )

如果为 ``true``\ ，则该物体的标准力积分（如重力或阻尼）将被禁用。除了碰撞响应之外，如果覆盖了 :ref:`_integrate_forces()<class_PhysicalBone3D_private_method__integrate_forces>` 方法，则物体将仅按照该方法确定的方式移动。

设置该属性将在内部调用方法 :ref:`PhysicsServer3D.body_set_omit_force_integration()<class_PhysicsServer3D_method_body_set_omit_force_integration>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_friction:

.. rst-class:: classref-property

:ref:`float<class_float>` **friction** = ``1.0`` :ref:`🔗<class_PhysicalBone3D_property_friction>`

.. rst-class:: classref-property-setget

- |void| **set_friction**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_friction**\ (\ )

该物体的摩擦，从 ``0``\ （无摩擦）到 ``1``\ （最大摩擦）。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_gravity_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_scale** = ``1.0`` :ref:`🔗<class_PhysicalBone3D_property_gravity_scale>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_scale**\ (\ )

与 :ref:`ProjectSettings.physics/3d/default_gravity<class_ProjectSettings_property_physics/3d/default_gravity>` 相乘，得到该物体的重力。例如取值为 ``1.0`` 就是正常重力，\ ``2.0`` 就是双倍重力，\ ``0.5`` 会让应用到这个对象的重力减半。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_joint_offset:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **joint_offset** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_joint_offset>`

.. rst-class:: classref-property-setget

- |void| **set_joint_offset**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_joint_offset**\ (\ )

设置该关节的变换。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_joint_rotation:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **joint_rotation** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_joint_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_joint_rotation**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_joint_rotation**\ (\ )

设置该关节的旋转，单位为弧度。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_joint_type:

.. rst-class:: classref-property

:ref:`JointType<enum_PhysicalBone3D_JointType>` **joint_type** = ``0`` :ref:`🔗<class_PhysicalBone3D_property_joint_type>`

.. rst-class:: classref-property-setget

- |void| **set_joint_type**\ (\ value\: :ref:`JointType<enum_PhysicalBone3D_JointType>`\ )
- :ref:`JointType<enum_PhysicalBone3D_JointType>` **get_joint_type**\ (\ )

设置关节类型。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.0`` :ref:`🔗<class_PhysicalBone3D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

阻碍物体的运动。默认情况下，物体将使用 :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>`\ ，或物体所在的 :ref:`Area3D<class_Area3D>` 中设置的任何覆盖值。取决于 :ref:`linear_damp_mode<class_PhysicalBone3D_property_linear_damp_mode>`\ ，可以设置 :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>` 以增加或替换物体的阻尼值。

有关阻尼的更多详细信息，请参阅 :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_linear_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **linear_damp_mode** = ``0`` :ref:`🔗<class_PhysicalBone3D_property_linear_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_mode**\ (\ value\: :ref:`DampMode<enum_PhysicalBone3D_DampMode>`\ )
- :ref:`DampMode<enum_PhysicalBone3D_DampMode>` **get_linear_damp_mode**\ (\ )

定义如何应用 :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

物体的线速度，单位为单位每秒。可以偶尔使用，但是\ **不要每一帧都设置它**\ ，因为物理可能在另一个线程中运行，并且以不同的间隔。使用 :ref:`_integrate_forces()<class_PhysicalBone3D_private_method__integrate_forces>` 作为你的进程循环，以精确控制物体状态。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_PhysicalBone3D_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

实体的质量。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PhysicalBone3D_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ state\: :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`\ ) |virtual| :ref:`🔗<class_PhysicalBone3D_private_method__integrate_forces>`

在物理处理过程中被调用，允许你读取并安全地修改对象的模拟状态。默认情况下，它在标准力积分之前调用，但 :ref:`custom_integrator<class_PhysicalBone3D_property_custom_integrator>` 属性允许你禁用标准力积分并对物体进行完全自定义的力积分。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicalBone3D_method_apply_central_impulse>`

施加不影响旋转的定向冲量。

冲量与时间无关！每帧都应用冲量会产生依赖于帧率的力。因此只应该用于模拟一次性冲击（否则请使用“_integrate_forces”函数）。

等价于在物体的质心处使用 :ref:`apply_impulse()<class_PhysicalBone3D_method_apply_impulse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicalBone3D_method_apply_impulse>`

施加不影响旋转的定位冲量。

冲量与时间无关！每帧都应用冲量会产生依赖于帧率的力。因此只应该用于模拟一次性冲击（否则请使用“_integrate_forces”函数）。

等价于在物体的质心处使用 :ref:`apply_impulse()<class_PhysicalBone3D_method_apply_impulse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_get_bone_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_id**\ (\ ) |const| :ref:`🔗<class_PhysicalBone3D_method_get_bone_id>`

返回 PhysicsBone3D 的唯一标识符。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_get_simulate_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_simulate_physics**\ (\ ) :ref:`🔗<class_PhysicalBone3D_method_get_simulate_physics>`

如果 PhysicsBone3D 允许进行物理模拟，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) :ref:`🔗<class_PhysicalBone3D_method_is_simulating_physics>`

如果 PhysicsBone3D 正在进行物理模拟，则返回 ``true``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
