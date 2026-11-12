:github_url: hide

.. _class_Generic6DOFJoint3D:

Generic6DOFJoint3D
==================

**继承：** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

一种物理关节，允许在两个 3D 物理对象之间进行复杂的移动和旋转。

.. rst-class:: classref-introduction-group

描述
----

**Generic6DOFJoint3D**\ （6 Degrees Of Freedom，六自由度）关节允许通过锁定某些轴的旋转和平移来实现自定义类型的关节。

前三个自由度代表物理体的线性运动，后三个自由度代表物理题的角度运动。每个轴都可以进行锁定或限制。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_drive_x/torque_limit<class_Generic6DOFJoint3D_property_angular_drive_x/torque_limit>`             | ``3.4028235e+38`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_drive_y/torque_limit<class_Generic6DOFJoint3D_property_angular_drive_y/torque_limit>`             | ``3.4028235e+38`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_drive_z/torque_limit<class_Generic6DOFJoint3D_property_angular_drive_z/torque_limit>`             | ``3.4028235e+38`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/damping<class_Generic6DOFJoint3D_property_angular_limit_x/damping>`                       | ``1.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`angular_limit_x/enabled<class_Generic6DOFJoint3D_property_angular_limit_x/enabled>`                       | ``true``          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/erp<class_Generic6DOFJoint3D_property_angular_limit_x/erp>`                               | ``0.5``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/force_limit<class_Generic6DOFJoint3D_property_angular_limit_x/force_limit>`               | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/lower_angle<class_Generic6DOFJoint3D_property_angular_limit_x/lower_angle>`               | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/restitution<class_Generic6DOFJoint3D_property_angular_limit_x/restitution>`               | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/softness<class_Generic6DOFJoint3D_property_angular_limit_x/softness>`                     | ``0.5``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/upper_angle<class_Generic6DOFJoint3D_property_angular_limit_x/upper_angle>`               | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/damping<class_Generic6DOFJoint3D_property_angular_limit_y/damping>`                       | ``1.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`angular_limit_y/enabled<class_Generic6DOFJoint3D_property_angular_limit_y/enabled>`                       | ``true``          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/erp<class_Generic6DOFJoint3D_property_angular_limit_y/erp>`                               | ``0.5``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/force_limit<class_Generic6DOFJoint3D_property_angular_limit_y/force_limit>`               | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/lower_angle<class_Generic6DOFJoint3D_property_angular_limit_y/lower_angle>`               | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/restitution<class_Generic6DOFJoint3D_property_angular_limit_y/restitution>`               | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/softness<class_Generic6DOFJoint3D_property_angular_limit_y/softness>`                     | ``0.5``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/upper_angle<class_Generic6DOFJoint3D_property_angular_limit_y/upper_angle>`               | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/damping<class_Generic6DOFJoint3D_property_angular_limit_z/damping>`                       | ``1.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`angular_limit_z/enabled<class_Generic6DOFJoint3D_property_angular_limit_z/enabled>`                       | ``true``          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/erp<class_Generic6DOFJoint3D_property_angular_limit_z/erp>`                               | ``0.5``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/force_limit<class_Generic6DOFJoint3D_property_angular_limit_z/force_limit>`               | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/lower_angle<class_Generic6DOFJoint3D_property_angular_limit_z/lower_angle>`               | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/restitution<class_Generic6DOFJoint3D_property_angular_limit_z/restitution>`               | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/softness<class_Generic6DOFJoint3D_property_angular_limit_z/softness>`                     | ``0.5``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/upper_angle<class_Generic6DOFJoint3D_property_angular_limit_z/upper_angle>`               | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`angular_motor_x/enabled<class_Generic6DOFJoint3D_property_angular_motor_x/enabled>`                       | ``false``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_motor_x/force_limit<class_Generic6DOFJoint3D_property_angular_motor_x/force_limit>`               | ``300.0``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_motor_x/target_velocity<class_Generic6DOFJoint3D_property_angular_motor_x/target_velocity>`       | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`angular_motor_y/enabled<class_Generic6DOFJoint3D_property_angular_motor_y/enabled>`                       | ``false``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_motor_y/force_limit<class_Generic6DOFJoint3D_property_angular_motor_y/force_limit>`               | ``300.0``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_motor_y/target_velocity<class_Generic6DOFJoint3D_property_angular_motor_y/target_velocity>`       | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`angular_motor_z/enabled<class_Generic6DOFJoint3D_property_angular_motor_z/enabled>`                       | ``false``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_motor_z/force_limit<class_Generic6DOFJoint3D_property_angular_motor_z/force_limit>`               | ``300.0``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_motor_z/target_velocity<class_Generic6DOFJoint3D_property_angular_motor_z/target_velocity>`       | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_spring_x/damping<class_Generic6DOFJoint3D_property_angular_spring_x/damping>`                     | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`angular_spring_x/enabled<class_Generic6DOFJoint3D_property_angular_spring_x/enabled>`                     | ``false``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_spring_x/equilibrium_point<class_Generic6DOFJoint3D_property_angular_spring_x/equilibrium_point>` | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_spring_x/stiffness<class_Generic6DOFJoint3D_property_angular_spring_x/stiffness>`                 | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_spring_y/damping<class_Generic6DOFJoint3D_property_angular_spring_y/damping>`                     | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`angular_spring_y/enabled<class_Generic6DOFJoint3D_property_angular_spring_y/enabled>`                     | ``false``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_spring_y/equilibrium_point<class_Generic6DOFJoint3D_property_angular_spring_y/equilibrium_point>` | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_spring_y/stiffness<class_Generic6DOFJoint3D_property_angular_spring_y/stiffness>`                 | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_spring_z/damping<class_Generic6DOFJoint3D_property_angular_spring_z/damping>`                     | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`angular_spring_z/enabled<class_Generic6DOFJoint3D_property_angular_spring_z/enabled>`                     | ``false``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_spring_z/equilibrium_point<class_Generic6DOFJoint3D_property_angular_spring_z/equilibrium_point>` | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`angular_spring_z/stiffness<class_Generic6DOFJoint3D_property_angular_spring_z/stiffness>`                 | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_drive_x/force_limit<class_Generic6DOFJoint3D_property_linear_drive_x/force_limit>`                 | ``3.4028235e+38`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_drive_y/force_limit<class_Generic6DOFJoint3D_property_linear_drive_y/force_limit>`                 | ``3.4028235e+38`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_drive_z/force_limit<class_Generic6DOFJoint3D_property_linear_drive_z/force_limit>`                 | ``3.4028235e+38`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_x/damping<class_Generic6DOFJoint3D_property_linear_limit_x/damping>`                         | ``1.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`linear_limit_x/enabled<class_Generic6DOFJoint3D_property_linear_limit_x/enabled>`                         | ``true``          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_x/lower_distance<class_Generic6DOFJoint3D_property_linear_limit_x/lower_distance>`           | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_x/restitution<class_Generic6DOFJoint3D_property_linear_limit_x/restitution>`                 | ``0.5``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_x/softness<class_Generic6DOFJoint3D_property_linear_limit_x/softness>`                       | ``0.7``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_x/upper_distance<class_Generic6DOFJoint3D_property_linear_limit_x/upper_distance>`           | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_y/damping<class_Generic6DOFJoint3D_property_linear_limit_y/damping>`                         | ``1.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`linear_limit_y/enabled<class_Generic6DOFJoint3D_property_linear_limit_y/enabled>`                         | ``true``          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_y/lower_distance<class_Generic6DOFJoint3D_property_linear_limit_y/lower_distance>`           | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_y/restitution<class_Generic6DOFJoint3D_property_linear_limit_y/restitution>`                 | ``0.5``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_y/softness<class_Generic6DOFJoint3D_property_linear_limit_y/softness>`                       | ``0.7``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_y/upper_distance<class_Generic6DOFJoint3D_property_linear_limit_y/upper_distance>`           | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_z/damping<class_Generic6DOFJoint3D_property_linear_limit_z/damping>`                         | ``1.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`linear_limit_z/enabled<class_Generic6DOFJoint3D_property_linear_limit_z/enabled>`                         | ``true``          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_z/lower_distance<class_Generic6DOFJoint3D_property_linear_limit_z/lower_distance>`           | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_z/restitution<class_Generic6DOFJoint3D_property_linear_limit_z/restitution>`                 | ``0.5``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_z/softness<class_Generic6DOFJoint3D_property_linear_limit_z/softness>`                       | ``0.7``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_limit_z/upper_distance<class_Generic6DOFJoint3D_property_linear_limit_z/upper_distance>`           | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`linear_motor_x/enabled<class_Generic6DOFJoint3D_property_linear_motor_x/enabled>`                         | ``false``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_motor_x/force_limit<class_Generic6DOFJoint3D_property_linear_motor_x/force_limit>`                 | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_motor_x/target_velocity<class_Generic6DOFJoint3D_property_linear_motor_x/target_velocity>`         | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`linear_motor_y/enabled<class_Generic6DOFJoint3D_property_linear_motor_y/enabled>`                         | ``false``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_motor_y/force_limit<class_Generic6DOFJoint3D_property_linear_motor_y/force_limit>`                 | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_motor_y/target_velocity<class_Generic6DOFJoint3D_property_linear_motor_y/target_velocity>`         | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`linear_motor_z/enabled<class_Generic6DOFJoint3D_property_linear_motor_z/enabled>`                         | ``false``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_motor_z/force_limit<class_Generic6DOFJoint3D_property_linear_motor_z/force_limit>`                 | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_motor_z/target_velocity<class_Generic6DOFJoint3D_property_linear_motor_z/target_velocity>`         | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_spring_x/damping<class_Generic6DOFJoint3D_property_linear_spring_x/damping>`                       | ``0.01``          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`linear_spring_x/enabled<class_Generic6DOFJoint3D_property_linear_spring_x/enabled>`                       | ``false``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_spring_x/equilibrium_point<class_Generic6DOFJoint3D_property_linear_spring_x/equilibrium_point>`   | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_spring_x/stiffness<class_Generic6DOFJoint3D_property_linear_spring_x/stiffness>`                   | ``0.01``          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_spring_y/damping<class_Generic6DOFJoint3D_property_linear_spring_y/damping>`                       | ``0.01``          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`linear_spring_y/enabled<class_Generic6DOFJoint3D_property_linear_spring_y/enabled>`                       | ``false``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_spring_y/equilibrium_point<class_Generic6DOFJoint3D_property_linear_spring_y/equilibrium_point>`   | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_spring_y/stiffness<class_Generic6DOFJoint3D_property_linear_spring_y/stiffness>`                   | ``0.01``          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_spring_z/damping<class_Generic6DOFJoint3D_property_linear_spring_z/damping>`                       | ``0.01``          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`   | :ref:`linear_spring_z/enabled<class_Generic6DOFJoint3D_property_linear_spring_z/enabled>`                       | ``false``         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_spring_z/equilibrium_point<class_Generic6DOFJoint3D_property_linear_spring_z/equilibrium_point>`   | ``0.0``           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>` | :ref:`linear_spring_z/stiffness<class_Generic6DOFJoint3D_property_linear_spring_z/stiffness>`                   | ``0.01``          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`clear_angular_target_rotation<class_Generic6DOFJoint3D_method_clear_angular_target_rotation>`\ (\ )                                                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`get_angular_target_rotation<class_Generic6DOFJoint3D_method_get_angular_target_rotation>`\ (\ ) |const|                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`get_flag_x<class_Generic6DOFJoint3D_method_get_flag_x>`\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`get_flag_y<class_Generic6DOFJoint3D_method_get_flag_y>`\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`get_flag_z<class_Generic6DOFJoint3D_method_get_flag_z>`\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_param_x<class_Generic6DOFJoint3D_method_get_param_x>`\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_param_y<class_Generic6DOFJoint3D_method_get_param_y>`\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_param_z<class_Generic6DOFJoint3D_method_get_param_z>`\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`has_target_rotation<class_Generic6DOFJoint3D_method_has_target_rotation>`\ (\ ) |const|                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_angular_target_rotation<class_Generic6DOFJoint3D_method_set_angular_target_rotation>`\ (\ target_rotation\: :ref:`Quaternion<class_Quaternion>`\ )  |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_flag_x<class_Generic6DOFJoint3D_method_set_flag_x>`\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_flag_y<class_Generic6DOFJoint3D_method_set_flag_y>`\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_flag_z<class_Generic6DOFJoint3D_method_set_flag_z>`\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )        |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_param_x<class_Generic6DOFJoint3D_method_set_param_x>`\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_param_y<class_Generic6DOFJoint3D_method_set_param_y>`\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_param_z<class_Generic6DOFJoint3D_method_set_param_z>`\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_Generic6DOFJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_Generic6DOFJoint3D_Param>`

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_LOWER_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_LOWER_LIMIT** = ``0``

轴心点的轴之间的最小差异。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_UPPER_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_UPPER_LIMIT** = ``1``

轴心点的轴之间的最大差异。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_LIMIT_SOFTNESS** = ``2``

适用于跨轴移动的一个系数。值越低，移动的就越慢。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_RESTITUTION** = ``3``

轴的运动的恢复量。值越低，动量损失越大。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_DAMPING** = ``4``

发生在跨轴线性运动的阻尼量。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_MOTOR_TARGET_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_MOTOR_TARGET_VELOCITY** = ``5``

线性马达将尝试达到的速度。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_MOTOR_FORCE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_MOTOR_FORCE_LIMIT** = ``6``

**已弃用：** Use :ref:`PARAM_LINEAR_DRIVE_FORCE_LIMIT<class_Generic6DOFJoint3D_constant_PARAM_LINEAR_DRIVE_FORCE_LIMIT>` instead, which applies in both spring and motor modes.

线性马达在试图达到速度目标时将施加的最大力。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_SPRING_STIFFNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_SPRING_STIFFNESS** = ``7``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_SPRING_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_SPRING_DAMPING** = ``8``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_SPRING_EQUILIBRIUM_POINT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_SPRING_EQUILIBRIUM_POINT** = ``9``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_LOWER_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_LOWER_LIMIT** = ``10``

负方向的最小旋转，以脱离和绕轴旋转。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_UPPER_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_UPPER_LIMIT** = ``11``

正方向的最小旋转，以挣脱和绕轴旋转。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_LIMIT_SOFTNESS** = ``12``

所有跨轴旋转的速度。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_DAMPING** = ``13``

跨该轴的旋转阻尼量。值越低，发生的阻尼就越多。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_RESTITUTION** = ``14``

在各轴上的旋转恢复量。值越低，发生的恢复量越大。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_FORCE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_FORCE_LIMIT** = ``15``

围绕 Z 轴旋转时，可能发生的最大力。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_ERP:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_ERP** = ``16``

当跨轴旋转时，这个误差容限系数定义了修正的速度被减慢的程度。值越低，旋转越慢。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_MOTOR_TARGET_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_MOTOR_TARGET_VELOCITY** = ``17``

轴上电机的目标速度。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_MOTOR_FORCE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_MOTOR_FORCE_LIMIT** = ``18``

**已弃用：** Use :ref:`PARAM_ANGULAR_DRIVE_TORQUE_LIMIT<class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_DRIVE_TORQUE_LIMIT>` instead, which applies in both spring and motor modes.

马达在轴上的最大加速度。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_SPRING_STIFFNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_SPRING_STIFFNESS** = ``19``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_SPRING_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_SPRING_DAMPING** = ``20``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT** = ``21``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_DRIVE_FORCE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_DRIVE_FORCE_LIMIT** = ``22``

The maximum force the joint can apply along this linear axis.

Used by both the spring drive and the linear motor; supersedes :ref:`PARAM_LINEAR_MOTOR_FORCE_LIMIT<class_Generic6DOFJoint3D_constant_PARAM_LINEAR_MOTOR_FORCE_LIMIT>` when set.

\ **Note:** Only for Jolt backend. Other 3D physics backends may ignore this value.

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_DRIVE_TORQUE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_DRIVE_TORQUE_LIMIT** = ``23``

The maximum torque the joint can apply around this angular axis.

Used by both the spring drive and the angular motor; supersedes :ref:`PARAM_ANGULAR_MOTOR_FORCE_LIMIT<class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_MOTOR_FORCE_LIMIT>` when set.

\ **Note:** Only for Jolt backend. Other 3D physics backends may ignore this value.

.. _class_Generic6DOFJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_MAX** = ``24``

代表 :ref:`Param<enum_Generic6DOFJoint3D_Param>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_Generic6DOFJoint3D_Flag:

.. rst-class:: classref-enumeration

enum **Flag**: :ref:`🔗<enum_Generic6DOFJoint3D_Flag>`

.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_LINEAR_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_LINEAR_LIMIT** = ``0``

如果启用，在给定范围内可以进行线性运动。

.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_ANGULAR_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_ANGULAR_LIMIT** = ``1``

如果启用，在给定的限度内可以进行旋转运动。

.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_LINEAR_SPRING:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_LINEAR_SPRING** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_ANGULAR_SPRING:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_ANGULAR_SPRING** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_ANGULAR_MOTOR:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_ANGULAR_MOTOR** = ``4``

If enabled, there is a rotational or angular motor across these axes.

.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_MOTOR:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_MOTOR** = ``4``

**已弃用：** Use :ref:`FLAG_ENABLE_ANGULAR_MOTOR<class_Generic6DOFJoint3D_constant_FLAG_ENABLE_ANGULAR_MOTOR>` instead.

If enabled, there is a rotational or angular motor across these axes.

.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_LINEAR_MOTOR:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_LINEAR_MOTOR** = ``5``

如果启用，则存在跨这些轴的线性马达。

.. _class_Generic6DOFJoint3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_MAX** = ``6``

代表 :ref:`Flag<enum_Generic6DOFJoint3D_Flag>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Generic6DOFJoint3D_property_angular_drive_x/torque_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_drive_x/torque_limit** = ``3.4028235e+38`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_drive_x/torque_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

The maximum torque the joint can apply around the X angular axis. Used by both the spring drive and the angular motor; supersedes :ref:`angular_motor_x/force_limit<class_Generic6DOFJoint3D_property_angular_motor_x/force_limit>` when explicitly set.

\ **Note:** Only for Jolt backend. Other 3D physics backends may ignore this value.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_drive_y/torque_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_drive_y/torque_limit** = ``3.4028235e+38`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_drive_y/torque_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

The maximum torque the joint can apply around the Y angular axis. Used by both the spring drive and the angular motor; supersedes :ref:`angular_motor_y/force_limit<class_Generic6DOFJoint3D_property_angular_motor_y/force_limit>` when explicitly set.

\ **Note:** Only for Jolt backend. Other 3D physics backends may ignore this value.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_drive_z/torque_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_drive_z/torque_limit** = ``3.4028235e+38`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_drive_z/torque_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

The maximum torque the joint can apply around the Z angular axis. Used by both the spring drive and the angular motor; supersedes :ref:`angular_motor_z/force_limit<class_Generic6DOFJoint3D_property_angular_motor_z/force_limit>` when explicitly set.

\ **Note:** Only for Jolt backend. Other 3D physics backends may ignore this value.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨 X 轴的旋转阻尼量。

越低，来自一侧的冲量到达另一侧的时间越长。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit_x/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果为 ``true``\ ，则跨越 X 轴的旋转将受到限制。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/erp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/erp** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/erp>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

当在X轴上旋转时，这个误差容限系数定义了修正的速度被减慢的程度。值越低，旋转越慢。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

绕 X 轴旋转时所能产生的最大力。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/lower_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/lower_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/lower_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

负方向的最小旋转，以挣脱并围绕 X 轴旋转。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/restitution** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

X 轴上的旋转恢复量。值越小，产生的恢复量越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/softness** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨越 X 轴的所有旋转的速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/upper_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/upper_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/upper_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

正方向的最小旋转，以挣脱并绕 X 轴旋转。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Y轴上的旋转阻尼量。值越小，产生的阻尼就越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit_y/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果为 ``true``\ ，则跨越 Y 轴的旋转将受到限制。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/erp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/erp** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/erp>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

当在 Y 轴上旋转时，这个误差容限系数定义了修正的速度被减慢的程度。值越低，旋转越慢。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

围绕 Y 轴旋转时，可能发生的最大力。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/lower_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/lower_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/lower_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

负方向的最小旋转，以挣脱并围绕 Y 轴旋转。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/restitution** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨越 Y 轴的旋转恢复量。越低，发生的恢复量越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/softness** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨越 Y 轴的所有旋转的速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/upper_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/upper_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/upper_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

正方向的最小旋转，以挣脱并绕 Y 轴旋转。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨越 Z 轴的旋转阻尼量。值越小，产生的阻尼就越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit_z/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果为 ``true``\ ，则跨越 Z 轴的旋转将受到限制。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/erp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/erp** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/erp>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

当在 Z 轴上旋转时，这个误差容限系数定义了修正的速度被减慢的程度。值越低，旋转越慢。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

围绕 Z 轴旋转时，可能发生的最角度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/lower_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/lower_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/lower_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

负方向的最小旋转，以挣脱并围绕 Z 轴旋转。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/restitution** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨越 Z 轴的旋转恢复量。越低，发生的恢复量越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/softness** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨越 Z 轴的所有旋转的速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/upper_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/upper_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/upper_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

正方向的最小旋转，并绕 Z 轴旋转。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_motor_x/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果为 ``true``\ ，则启用 X 轴的旋转马达。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_x/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_x/force_limit** = ``300.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_x/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

**已弃用：** Use :ref:`angular_drive_x/torque_limit<class_Generic6DOFJoint3D_property_angular_drive_x/torque_limit>` instead, which applies in both spring and motor modes.

在 X 轴旋转的最大加速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_x/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_x/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_x/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

X 轴上电机的目标速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_motor_y/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果为 ``true``\ ，则启用 Y 轴的旋转马达。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_y/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_y/force_limit** = ``300.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_y/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

**已弃用：** Use :ref:`angular_drive_y/torque_limit<class_Generic6DOFJoint3D_property_angular_drive_y/torque_limit>` instead, which applies in both spring and motor modes.

电机在 X 轴的最大加速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_y/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_y/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_y/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

电机在 Y 轴的目标速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_motor_z/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果为 ``true``\ ，则启用 Z 轴的旋转马达。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_z/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_z/force_limit** = ``300.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_z/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

**已弃用：** Use :ref:`angular_drive_z/torque_limit<class_Generic6DOFJoint3D_property_angular_drive_z/torque_limit>` instead, which applies in both spring and motor modes.

电机在 Z 轴的最大加速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_z/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_z/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_z/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Z 轴上电机的目标速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_x/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_x/damping** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_x/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_spring_x/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_x/equilibrium_point:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_x/equilibrium_point** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_x/equilibrium_point>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_x/stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_x/stiffness** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_x/stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_y/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_y/damping** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_y/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_spring_y/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_y/equilibrium_point:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_y/equilibrium_point** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_y/equilibrium_point>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_y/stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_y/stiffness** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_y/stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_z/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_z/damping** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_z/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_spring_z/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_z/equilibrium_point:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_z/equilibrium_point** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_z/equilibrium_point>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_z/stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_z/stiffness** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_z/stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_drive_x/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_drive_x/force_limit** = ``3.4028235e+38`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_drive_x/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

The maximum force the joint can apply along the X linear axis. Used by both the spring drive and the linear motor; supersedes :ref:`linear_motor_x/force_limit<class_Generic6DOFJoint3D_property_linear_motor_x/force_limit>` when explicitly set.

\ **Note:** Only for Jolt backend. Other 3D physics backends may ignore this value.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_drive_y/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_drive_y/force_limit** = ``3.4028235e+38`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_drive_y/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

The maximum force the joint can apply along the Y linear axis. Used by both the spring drive and the linear motor; supersedes :ref:`linear_motor_y/force_limit<class_Generic6DOFJoint3D_property_linear_motor_y/force_limit>` when explicitly set.

\ **Note:** Only for Jolt backend. Other 3D physics backends may ignore this value.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_drive_z/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_drive_z/force_limit** = ``3.4028235e+38`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_drive_z/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

The maximum force the joint can apply along the Z linear axis. Used by both the spring drive and the linear motor; supersedes :ref:`linear_motor_z/force_limit<class_Generic6DOFJoint3D_property_linear_motor_z/force_limit>` when explicitly set.

\ **Note:** Only for Jolt backend. Other 3D physics backends may ignore this value.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

发生在 X 运动的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_limit_x/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果为 ``true``\ ，则跨越 X 轴的线性运动将受到限制。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/lower_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/lower_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/lower_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

轴心点的 X 轴之间的最小差异。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/restitution** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

X 轴运动的恢复量。越低，动量损失越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/softness** = ``0.7`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

应用于 X 轴上移动的一个系数。值越低，移动的就越慢。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/upper_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/upper_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/upper_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

轴心点的 X 轴之间的最大差异。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

发生在 Y 运动的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_limit_y/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果为 ``true``\ ，则跨越 Y 轴的线性运动将受到限制。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/lower_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/lower_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/lower_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

轴心点的 Y 轴之间的最小差异。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/restitution** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Y 轴运动的恢复量。值越低，动量损失越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/softness** = ``0.7`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

应用于 Y 轴上移动的一个系数。值越低，移动的就越慢。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/upper_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/upper_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/upper_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

轴心点的 Y 轴之间的最大差异。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

发生在 Z 运动的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_limit_z/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果为 ``true``\ ，则跨越 Z 轴的线性运动将受到限制。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/lower_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/lower_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/lower_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

轴心点的 Z 轴之间的最小差异。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/restitution** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Y 轴运动的恢复量。越低，动量损失越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/softness** = ``0.7`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

适用于跨 Z 轴移动的一个系数。值越低，移动的就越慢。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/upper_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/upper_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/upper_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

轴心点的 Z 轴之间的最大差异。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_motor_x/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果为 ``true``\ ，则 X 轴上存在线性马达。它将试图达到目标速度，同时保持在力的限度内。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_x/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_x/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_x/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

**已弃用：** Use :ref:`linear_drive_x/force_limit<class_Generic6DOFJoint3D_property_linear_drive_x/force_limit>` instead, which applies in both spring and motor modes.

当尝试达到目标速度时，线性马达可以在 X 轴上应用的最大力。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_x/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_x/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_x/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

线性马达在 X 轴上尝试达到的速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_motor_y/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果为 ``true``\ ，则 Y 轴上存在线性马达。它将试图达到目标速度，同时保持在力的限度内。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_y/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_y/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_y/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

**已弃用：** Use :ref:`linear_drive_y/force_limit<class_Generic6DOFJoint3D_property_linear_drive_y/force_limit>` instead, which applies in both spring and motor modes.

直线电机在试图达到目标速度时可施加在 Y 轴上的最大力。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_y/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_y/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_y/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

线性马达在 Y 轴上将会达到的速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_motor_z/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果为 ``true``\ ，则 Z 轴上存在线性马达。它将试图达到目标速度，同时保持在力的限度内。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_z/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_z/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_z/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

**已弃用：** Use :ref:`linear_drive_z/force_limit<class_Generic6DOFJoint3D_property_linear_drive_z/force_limit>` instead, which applies in both spring and motor modes.

当试图达到目标速度时，线性马达可以在 X 轴上应用的最大力。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_z/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_z/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_z/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

线性马达在 Z 轴上试图达到的速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_x/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_x/damping** = ``0.01`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_x/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_spring_x/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_x/equilibrium_point:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_x/equilibrium_point** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_x/equilibrium_point>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_x/stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_x/stiffness** = ``0.01`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_x/stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_y/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_y/damping** = ``0.01`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_y/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_spring_y/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_y/equilibrium_point:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_y/equilibrium_point** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_y/equilibrium_point>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_y/stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_y/stiffness** = ``0.01`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_y/stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_z/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_z/damping** = ``0.01`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_z/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_spring_z/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_z/equilibrium_point:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_z/equilibrium_point** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_z/equilibrium_point>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_z/stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_z/stiffness** = ``0.01`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_z/stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Generic6DOFJoint3D_method_clear_angular_target_rotation:

.. rst-class:: classref-method

|void| **clear_angular_target_rotation**\ (\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_clear_angular_target_rotation>`

Clears the quaternion angular target. After clearing, the joint is driven by :ref:`PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT<class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT>` on each axis as configured.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_get_angular_target_rotation:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_angular_target_rotation**\ (\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_get_angular_target_rotation>`

Returns the joint's current angular target as a body-space quaternion. If no explicit target was set via :ref:`set_angular_target_rotation()<class_Generic6DOFJoint3D_method_set_angular_target_rotation>`, the value is derived from :ref:`PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT<class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT>` on backends that support it; other backends return the identity quaternion.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_get_flag_x:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_get_flag_x>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_get_flag_y:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_get_flag_y>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_get_flag_z:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_get_flag_z>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_get_param_x:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_get_param_x>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_get_param_y:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_get_param_y>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_get_param_z:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_get_param_z>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_has_target_rotation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_target_rotation**\ (\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_has_target_rotation>`

Returns ``true`` if a quaternion angular target was explicitly set via :ref:`set_angular_target_rotation()<class_Generic6DOFJoint3D_method_set_angular_target_rotation>` and has not been cleared. Returns ``false`` when the joint is driven by :ref:`PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT<class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT>` only.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_set_angular_target_rotation:

.. rst-class:: classref-method

|void| **set_angular_target_rotation**\ (\ target_rotation\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_set_angular_target_rotation>`

Sets the target angular orientation as a body-space quaternion describing the desired orientation of body B relative to body A. Replaces any previously set target and supersedes :ref:`PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT<class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT>` until :ref:`clear_angular_target_rotation()<class_Generic6DOFJoint3D_method_clear_angular_target_rotation>` is called.

\ **Note:** Only for Jolt backend. Other 3D physics backends may ignore this value.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_set_flag_x:

.. rst-class:: classref-method

|void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_set_flag_x>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_set_flag_y:

.. rst-class:: classref-method

|void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_set_flag_y>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_set_flag_z:

.. rst-class:: classref-method

|void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_set_flag_z>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_set_param_x:

.. rst-class:: classref-method

|void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_set_param_x>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_set_param_y:

.. rst-class:: classref-method

|void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_set_param_y>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_set_param_z:

.. rst-class:: classref-method

|void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_set_param_z>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
