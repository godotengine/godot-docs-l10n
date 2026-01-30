:github_url: hide

.. _class_Generic6DOFJoint3D:

Generic6DOFJoint3D
==================

**繼承：** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

一種物理關節，允許在兩個 3D 物理物件之間進行複雜的移動和旋轉。

.. rst-class:: classref-introduction-group

說明
----

**Generic6DOFJoint3D**\ （6 Degrees Of Freedom，六自由度）關節允許通過鎖定某些軸的旋轉和平移來實作自訂型別的關節。

前三個自由度代表物理體的線性運動，後三個自由度代表物理題的角度運動。每個軸都可以進行鎖定或限制。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/damping<class_Generic6DOFJoint3D_property_angular_limit_x/damping>`                       | ``1.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`angular_limit_x/enabled<class_Generic6DOFJoint3D_property_angular_limit_x/enabled>`                       | ``true``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/erp<class_Generic6DOFJoint3D_property_angular_limit_x/erp>`                               | ``0.5``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/force_limit<class_Generic6DOFJoint3D_property_angular_limit_x/force_limit>`               | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/lower_angle<class_Generic6DOFJoint3D_property_angular_limit_x/lower_angle>`               | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/restitution<class_Generic6DOFJoint3D_property_angular_limit_x/restitution>`               | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/softness<class_Generic6DOFJoint3D_property_angular_limit_x/softness>`                     | ``0.5``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_x/upper_angle<class_Generic6DOFJoint3D_property_angular_limit_x/upper_angle>`               | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/damping<class_Generic6DOFJoint3D_property_angular_limit_y/damping>`                       | ``1.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`angular_limit_y/enabled<class_Generic6DOFJoint3D_property_angular_limit_y/enabled>`                       | ``true``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/erp<class_Generic6DOFJoint3D_property_angular_limit_y/erp>`                               | ``0.5``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/force_limit<class_Generic6DOFJoint3D_property_angular_limit_y/force_limit>`               | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/lower_angle<class_Generic6DOFJoint3D_property_angular_limit_y/lower_angle>`               | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/restitution<class_Generic6DOFJoint3D_property_angular_limit_y/restitution>`               | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/softness<class_Generic6DOFJoint3D_property_angular_limit_y/softness>`                     | ``0.5``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_y/upper_angle<class_Generic6DOFJoint3D_property_angular_limit_y/upper_angle>`               | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/damping<class_Generic6DOFJoint3D_property_angular_limit_z/damping>`                       | ``1.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`angular_limit_z/enabled<class_Generic6DOFJoint3D_property_angular_limit_z/enabled>`                       | ``true``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/erp<class_Generic6DOFJoint3D_property_angular_limit_z/erp>`                               | ``0.5``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/force_limit<class_Generic6DOFJoint3D_property_angular_limit_z/force_limit>`               | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/lower_angle<class_Generic6DOFJoint3D_property_angular_limit_z/lower_angle>`               | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/restitution<class_Generic6DOFJoint3D_property_angular_limit_z/restitution>`               | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/softness<class_Generic6DOFJoint3D_property_angular_limit_z/softness>`                     | ``0.5``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_limit_z/upper_angle<class_Generic6DOFJoint3D_property_angular_limit_z/upper_angle>`               | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`angular_motor_x/enabled<class_Generic6DOFJoint3D_property_angular_motor_x/enabled>`                       | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_motor_x/force_limit<class_Generic6DOFJoint3D_property_angular_motor_x/force_limit>`               | ``300.0`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_motor_x/target_velocity<class_Generic6DOFJoint3D_property_angular_motor_x/target_velocity>`       | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`angular_motor_y/enabled<class_Generic6DOFJoint3D_property_angular_motor_y/enabled>`                       | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_motor_y/force_limit<class_Generic6DOFJoint3D_property_angular_motor_y/force_limit>`               | ``300.0`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_motor_y/target_velocity<class_Generic6DOFJoint3D_property_angular_motor_y/target_velocity>`       | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`angular_motor_z/enabled<class_Generic6DOFJoint3D_property_angular_motor_z/enabled>`                       | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_motor_z/force_limit<class_Generic6DOFJoint3D_property_angular_motor_z/force_limit>`               | ``300.0`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_motor_z/target_velocity<class_Generic6DOFJoint3D_property_angular_motor_z/target_velocity>`       | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_spring_x/damping<class_Generic6DOFJoint3D_property_angular_spring_x/damping>`                     | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`angular_spring_x/enabled<class_Generic6DOFJoint3D_property_angular_spring_x/enabled>`                     | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_spring_x/equilibrium_point<class_Generic6DOFJoint3D_property_angular_spring_x/equilibrium_point>` | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_spring_x/stiffness<class_Generic6DOFJoint3D_property_angular_spring_x/stiffness>`                 | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_spring_y/damping<class_Generic6DOFJoint3D_property_angular_spring_y/damping>`                     | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`angular_spring_y/enabled<class_Generic6DOFJoint3D_property_angular_spring_y/enabled>`                     | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_spring_y/equilibrium_point<class_Generic6DOFJoint3D_property_angular_spring_y/equilibrium_point>` | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_spring_y/stiffness<class_Generic6DOFJoint3D_property_angular_spring_y/stiffness>`                 | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_spring_z/damping<class_Generic6DOFJoint3D_property_angular_spring_z/damping>`                     | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`angular_spring_z/enabled<class_Generic6DOFJoint3D_property_angular_spring_z/enabled>`                     | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_spring_z/equilibrium_point<class_Generic6DOFJoint3D_property_angular_spring_z/equilibrium_point>` | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`angular_spring_z/stiffness<class_Generic6DOFJoint3D_property_angular_spring_z/stiffness>`                 | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_x/damping<class_Generic6DOFJoint3D_property_linear_limit_x/damping>`                         | ``1.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`linear_limit_x/enabled<class_Generic6DOFJoint3D_property_linear_limit_x/enabled>`                         | ``true``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_x/lower_distance<class_Generic6DOFJoint3D_property_linear_limit_x/lower_distance>`           | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_x/restitution<class_Generic6DOFJoint3D_property_linear_limit_x/restitution>`                 | ``0.5``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_x/softness<class_Generic6DOFJoint3D_property_linear_limit_x/softness>`                       | ``0.7``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_x/upper_distance<class_Generic6DOFJoint3D_property_linear_limit_x/upper_distance>`           | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_y/damping<class_Generic6DOFJoint3D_property_linear_limit_y/damping>`                         | ``1.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`linear_limit_y/enabled<class_Generic6DOFJoint3D_property_linear_limit_y/enabled>`                         | ``true``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_y/lower_distance<class_Generic6DOFJoint3D_property_linear_limit_y/lower_distance>`           | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_y/restitution<class_Generic6DOFJoint3D_property_linear_limit_y/restitution>`                 | ``0.5``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_y/softness<class_Generic6DOFJoint3D_property_linear_limit_y/softness>`                       | ``0.7``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_y/upper_distance<class_Generic6DOFJoint3D_property_linear_limit_y/upper_distance>`           | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_z/damping<class_Generic6DOFJoint3D_property_linear_limit_z/damping>`                         | ``1.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`linear_limit_z/enabled<class_Generic6DOFJoint3D_property_linear_limit_z/enabled>`                         | ``true``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_z/lower_distance<class_Generic6DOFJoint3D_property_linear_limit_z/lower_distance>`           | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_z/restitution<class_Generic6DOFJoint3D_property_linear_limit_z/restitution>`                 | ``0.5``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_z/softness<class_Generic6DOFJoint3D_property_linear_limit_z/softness>`                       | ``0.7``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_limit_z/upper_distance<class_Generic6DOFJoint3D_property_linear_limit_z/upper_distance>`           | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`linear_motor_x/enabled<class_Generic6DOFJoint3D_property_linear_motor_x/enabled>`                         | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_motor_x/force_limit<class_Generic6DOFJoint3D_property_linear_motor_x/force_limit>`                 | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_motor_x/target_velocity<class_Generic6DOFJoint3D_property_linear_motor_x/target_velocity>`         | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`linear_motor_y/enabled<class_Generic6DOFJoint3D_property_linear_motor_y/enabled>`                         | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_motor_y/force_limit<class_Generic6DOFJoint3D_property_linear_motor_y/force_limit>`                 | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_motor_y/target_velocity<class_Generic6DOFJoint3D_property_linear_motor_y/target_velocity>`         | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`linear_motor_z/enabled<class_Generic6DOFJoint3D_property_linear_motor_z/enabled>`                         | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_motor_z/force_limit<class_Generic6DOFJoint3D_property_linear_motor_z/force_limit>`                 | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_motor_z/target_velocity<class_Generic6DOFJoint3D_property_linear_motor_z/target_velocity>`         | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_spring_x/damping<class_Generic6DOFJoint3D_property_linear_spring_x/damping>`                       | ``0.01``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`linear_spring_x/enabled<class_Generic6DOFJoint3D_property_linear_spring_x/enabled>`                       | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_spring_x/equilibrium_point<class_Generic6DOFJoint3D_property_linear_spring_x/equilibrium_point>`   | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_spring_x/stiffness<class_Generic6DOFJoint3D_property_linear_spring_x/stiffness>`                   | ``0.01``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_spring_y/damping<class_Generic6DOFJoint3D_property_linear_spring_y/damping>`                       | ``0.01``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`linear_spring_y/enabled<class_Generic6DOFJoint3D_property_linear_spring_y/enabled>`                       | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_spring_y/equilibrium_point<class_Generic6DOFJoint3D_property_linear_spring_y/equilibrium_point>`   | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_spring_y/stiffness<class_Generic6DOFJoint3D_property_linear_spring_y/stiffness>`                   | ``0.01``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_spring_z/damping<class_Generic6DOFJoint3D_property_linear_spring_z/damping>`                       | ``0.01``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`linear_spring_z/enabled<class_Generic6DOFJoint3D_property_linear_spring_z/enabled>`                       | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_spring_z/equilibrium_point<class_Generic6DOFJoint3D_property_linear_spring_z/equilibrium_point>`   | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`linear_spring_z/stiffness<class_Generic6DOFJoint3D_property_linear_spring_z/stiffness>`                   | ``0.01``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_flag_x<class_Generic6DOFJoint3D_method_get_flag_x>`\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|                                 |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_flag_y<class_Generic6DOFJoint3D_method_get_flag_y>`\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|                                 |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_flag_z<class_Generic6DOFJoint3D_method_get_flag_z>`\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|                                 |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param_x<class_Generic6DOFJoint3D_method_get_param_x>`\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|                            |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param_y<class_Generic6DOFJoint3D_method_get_param_y>`\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|                            |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param_z<class_Generic6DOFJoint3D_method_get_param_z>`\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|                            |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_flag_x<class_Generic6DOFJoint3D_method_set_flag_x>`\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )        |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_flag_y<class_Generic6DOFJoint3D_method_set_flag_y>`\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )        |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_flag_z<class_Generic6DOFJoint3D_method_set_flag_z>`\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )        |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param_x<class_Generic6DOFJoint3D_method_set_param_x>`\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param_y<class_Generic6DOFJoint3D_method_set_param_y>`\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param_z<class_Generic6DOFJoint3D_method_set_param_z>`\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Generic6DOFJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_Generic6DOFJoint3D_Param>`

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_LOWER_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_LOWER_LIMIT** = ``0``

軸心點的軸之間的最小差異。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_UPPER_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_UPPER_LIMIT** = ``1``

軸心點的軸之間的最大差異。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_LIMIT_SOFTNESS** = ``2``

適用於跨軸移動的一個係數。值越低，移動的就越慢。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_RESTITUTION** = ``3``

軸的運動的恢復量。值越低，動量損失越大。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_DAMPING** = ``4``

發生在跨軸線性運動的阻尼量。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_MOTOR_TARGET_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_MOTOR_TARGET_VELOCITY** = ``5``

線性馬達將嘗試達到的速度。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_MOTOR_FORCE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_MOTOR_FORCE_LIMIT** = ``6``

線性馬達在試圖達到速度目標時將施加的最大力。

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_SPRING_STIFFNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_SPRING_STIFFNESS** = ``7``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_SPRING_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_SPRING_DAMPING** = ``8``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_SPRING_EQUILIBRIUM_POINT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_SPRING_EQUILIBRIUM_POINT** = ``9``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_LOWER_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_LOWER_LIMIT** = ``10``

負方向的最小旋轉，以脫離和繞軸旋轉。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_UPPER_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_UPPER_LIMIT** = ``11``

正方向的最小旋轉，以掙脫和繞軸旋轉。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_LIMIT_SOFTNESS** = ``12``

所有跨軸旋轉的速度。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_DAMPING** = ``13``

跨該軸的旋轉阻尼量。值越低，發生的阻尼就越多。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_RESTITUTION** = ``14``

在各軸上的旋轉恢復量。值越低，發生的恢復量越大。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_FORCE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_FORCE_LIMIT** = ``15``

圍繞 Z 軸旋轉時，可能發生的最大力。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_ERP:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_ERP** = ``16``

當跨軸旋轉時，這個誤差容限係數定義了修正的速度被減慢的程度。值越低，旋轉越慢。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_MOTOR_TARGET_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_MOTOR_TARGET_VELOCITY** = ``17``

軸上馬達的目標速度。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_MOTOR_FORCE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_MOTOR_FORCE_LIMIT** = ``18``

馬達在軸上的最大加速度。

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_SPRING_STIFFNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_SPRING_STIFFNESS** = ``19``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_SPRING_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_SPRING_DAMPING** = ``20``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT** = ``21``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_MAX** = ``22``

代表 :ref:`Param<enum_Generic6DOFJoint3D_Param>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_Generic6DOFJoint3D_Flag:

.. rst-class:: classref-enumeration

enum **Flag**: :ref:`🔗<enum_Generic6DOFJoint3D_Flag>`

.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_LINEAR_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_LINEAR_LIMIT** = ``0``

如果啟用，在給定範圍內可以進行線性運動。

.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_ANGULAR_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_ANGULAR_LIMIT** = ``1``

如果啟用，在給定的限度內可以進行旋轉運動。

.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_LINEAR_SPRING:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_LINEAR_SPRING** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_ANGULAR_SPRING:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_ANGULAR_SPRING** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_MOTOR:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_MOTOR** = ``4``

如果啟用，則存在跨這些軸的旋轉馬達。

.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_LINEAR_MOTOR:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_LINEAR_MOTOR** = ``5``

如果啟用，則存在跨這些軸的線性馬達。

.. _class_Generic6DOFJoint3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_MAX** = ``6``

代表 :ref:`Flag<enum_Generic6DOFJoint3D_Flag>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Generic6DOFJoint3D_property_angular_limit_x/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨 X 軸的旋轉阻尼量。

越低，來自一側的脈衝到達另一側的時間越長。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit_x/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果為 ``true``\ ，則跨越 X 軸的旋轉將受到限制。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/erp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/erp** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/erp>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

當在X軸上旋轉時，這個誤差容限係數定義了修正的速度被減慢的程度。值越低，旋轉越慢。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

繞 X 軸旋轉時所能產生的最大力。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/lower_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/lower_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/lower_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

負方向的最小旋轉，以掙脫並圍繞 X 軸旋轉。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/restitution** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

X 軸上的旋轉恢復量。值越小，產生的恢復量越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/softness** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨越 X 軸的所有旋轉的速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/upper_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/upper_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/upper_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

正方向的最小旋轉，以掙脫並繞 X 軸旋轉。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Y軸上的旋轉阻尼量。值越小，產生的阻尼就越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit_y/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果為 ``true``\ ，則跨越 Y 軸的旋轉將受到限制。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/erp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/erp** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/erp>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

當在 Y 軸上旋轉時，這個誤差容限係數定義了修正的速度被減慢的程度。值越低，旋轉越慢。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

圍繞 Y 軸旋轉時，可能發生的最大力。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/lower_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/lower_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/lower_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

負方向的最小旋轉，以掙脫並圍繞 Y 軸旋轉。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/restitution** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨越 Y 軸的旋轉恢復量。越低，發生的恢復量越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/softness** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨越 Y 軸的所有旋轉的速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/upper_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/upper_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/upper_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

正方向的最小旋轉，以掙脫並繞 Y 軸旋轉。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨越 Z 軸的旋轉阻尼量。值越小，產生的阻尼就越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit_z/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果為 ``true``\ ，則跨越 Z 軸的旋轉將受到限制。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/erp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/erp** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/erp>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

當在 Z 軸上旋轉時，這個誤差容限係數定義了修正的速度被減慢的程度。值越低，旋轉越慢。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

圍繞 Z 軸旋轉時，可能發生的最角度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/lower_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/lower_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/lower_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

負方向的最小旋轉，以掙脫並圍繞 Z 軸旋轉。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/restitution** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨越 Z 軸的旋轉恢復量。越低，發生的恢復量越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/softness** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

跨越 Z 軸的所有旋轉的速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/upper_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/upper_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/upper_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

正方向的最小旋轉，並繞 Z 軸旋轉。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_motor_x/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果為 ``true``\ ，則啟用 X 軸的旋轉馬達。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_x/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_x/force_limit** = ``300.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_x/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

在 X 軸旋轉的最大加速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_x/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_x/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_x/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

X 軸上馬達的目標速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_motor_y/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果為 ``true``\ ，則啟用 Y 軸的旋轉馬達。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_y/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_y/force_limit** = ``300.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_y/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

馬達在 X 軸的最大加速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_y/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_y/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_y/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

馬達在 Y 軸的目標速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_motor_z/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果為 ``true``\ ，則啟用 Z 軸的旋轉馬達。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_z/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_z/force_limit** = ``300.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_z/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

馬達在 Z 軸的最大加速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_z/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_z/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_z/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Z 軸上馬達的目標速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_x/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_x/damping** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_x/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_spring_x/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_x/equilibrium_point:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_x/equilibrium_point** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_x/equilibrium_point>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_x/stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_x/stiffness** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_x/stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_y/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_y/damping** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_y/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_spring_y/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_y/equilibrium_point:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_y/equilibrium_point** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_y/equilibrium_point>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_y/stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_y/stiffness** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_y/stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_z/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_z/damping** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_z/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_spring_z/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_z/equilibrium_point:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_z/equilibrium_point** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_z/equilibrium_point>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_spring_z/stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_spring_z/stiffness** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_spring_z/stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

發生在 X 運動的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_limit_x/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果為 ``true``\ ，則跨越 X 軸的線性運動將受到限制。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/lower_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/lower_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/lower_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

軸心點的 X 軸之間的最小差異。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/restitution** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

X 軸運動的恢復量。越低，動量損失越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/softness** = ``0.7`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

套用於 X 軸上移動的一個係數。值越低，移動的就越慢。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/upper_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/upper_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/upper_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

軸心點的 X 軸之間的最大差異。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

發生在 Y 運動的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_limit_y/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果為 ``true``\ ，則跨越 Y 軸的線性運動將受到限制。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/lower_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/lower_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/lower_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

軸心點的 Y 軸之間的最小差異。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/restitution** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Y 軸運動的恢復量。值越低，動量損失越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/softness** = ``0.7`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

套用於 Y 軸上移動的一個係數。值越低，移動的就越慢。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/upper_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/upper_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/upper_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

軸心點的 Y 軸之間的最大差異。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

發生在 Z 運動的阻尼量。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_limit_z/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果為 ``true``\ ，則跨越 Z 軸的線性運動將受到限制。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/lower_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/lower_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/lower_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

軸心點的 Z 軸之間的最小差異。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/restitution** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Y 軸運動的恢復量。越低，動量損失越大。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/softness** = ``0.7`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

適用於跨 Z 軸移動的一個係數。值越低，移動的就越慢。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/upper_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/upper_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/upper_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

軸心點的 Z 軸之間的最大差異。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_motor_x/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果為 ``true``\ ，則 X 軸上存在線性馬達。它將試圖達到目標速度，同時保持在力的限度內。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_x/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_x/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_x/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

當嘗試達到目標速度時，線性馬達可以在 X 軸上套用的最大力。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_x/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_x/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_x/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

線性馬達在 X 軸上嘗試達到的速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_motor_y/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果為 ``true``\ ，則 Y 軸上存在線性馬達。它將試圖達到目標速度，同時保持在力的限度內。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_y/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_y/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_y/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

直線馬達在試圖達到目標速度時可施加在 Y 軸上的最大力。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_y/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_y/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_y/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

線性馬達在 Y 軸上將會達到的速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_motor_z/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

如果為 ``true``\ ，則 Z 軸上存在線性馬達。它將試圖達到目標速度，同時保持在力的限度內。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_z/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_z/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_z/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

當試圖達到目標速度時，線性馬達可以在 X 軸上套用的最大力。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_z/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_z/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_z/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

線性馬達在 Z 軸上試圖達到的速度。

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_x/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_x/damping** = ``0.01`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_x/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_spring_x/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_x/equilibrium_point:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_x/equilibrium_point** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_x/equilibrium_point>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_x/stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_x/stiffness** = ``0.01`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_x/stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_y/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_y/damping** = ``0.01`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_y/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_spring_y/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_y/equilibrium_point:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_y/equilibrium_point** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_y/equilibrium_point>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_y/stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_y/stiffness** = ``0.01`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_y/stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_z/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_z/damping** = ``0.01`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_z/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_spring_z/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_z/equilibrium_point:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_z/equilibrium_point** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_z/equilibrium_point>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_spring_z/stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_spring_z/stiffness** = ``0.01`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_spring_z/stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Generic6DOFJoint3D_method_get_flag_x:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_get_flag_x>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_get_flag_y:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_get_flag_y>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_get_flag_z:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_get_flag_z>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_get_param_x:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_get_param_x>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_get_param_y:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_get_param_y>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_get_param_z:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const| :ref:`🔗<class_Generic6DOFJoint3D_method_get_param_z>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_set_flag_x:

.. rst-class:: classref-method

|void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_set_flag_x>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_set_flag_y:

.. rst-class:: classref-method

|void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_set_flag_y>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_set_flag_z:

.. rst-class:: classref-method

|void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_set_flag_z>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_set_param_x:

.. rst-class:: classref-method

|void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_set_param_x>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_set_param_y:

.. rst-class:: classref-method

|void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_set_param_y>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_method_set_param_z:

.. rst-class:: classref-method

|void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Generic6DOFJoint3D_method_set_param_z>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
