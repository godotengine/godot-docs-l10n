:github_url: hide

.. _class_Generic6DOFJoint3D:

Generic6DOFJoint3D
==================

**Hereda:** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una articulación física que permite un movimiento y rotación complejos entre dos cuerpos físicos 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

La articulación **Generic6DOFJoint3D** (6 grados de libertad) permite implementar tipos de articulaciones personalizados bloqueando la rotación y traslación de ciertos ejes.

Los primeros 3 grados de libertad representan el movimiento lineal de los cuerpos físicos y los últimos 3 grados de libertad representan el movimiento angular de los cuerpos físicos. Cada eje puede estar bloqueado o limitado.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_Generic6DOFJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_Generic6DOFJoint3D_Param>`

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_LOWER_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_LOWER_LIMIT** = ``0``

La diferencia mínima entre los puntos de pivote de sus ejes.

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_UPPER_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_UPPER_LIMIT** = ``1``

La diferencia máxima entre los puntos de pivote de sus ejes.

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_LIMIT_SOFTNESS** = ``2``

Un factor aplicado al movimiento a través de los ejes. Cuanto más bajo, más lento es el movimiento.

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_RESTITUTION** = ``3``

La cantidad de restitución en el movimiento de los ejes. Cuanto más bajo, más impulso se pierde.

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_DAMPING** = ``4``

La cantidad de amortiguación que ocurre en el movimiento lineal a través de los ejes.

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_MOTOR_TARGET_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_MOTOR_TARGET_VELOCITY** = ``5``

La velocidad que el motor lineal intentará alcanzar.

.. _class_Generic6DOFJoint3D_constant_PARAM_LINEAR_MOTOR_FORCE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_LINEAR_MOTOR_FORCE_LIMIT** = ``6``

**Obsoleto:** Use :ref:`PARAM_LINEAR_DRIVE_FORCE_LIMIT<class_Generic6DOFJoint3D_constant_PARAM_LINEAR_DRIVE_FORCE_LIMIT>` instead, which applies in both spring and motor modes.

La máxima fuerza que el motor lineal aplicará al intentar alcanzar el objetivo de velocidad.

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

La rotación mínima en dirección negativa para soltarse y girar alrededor de los ejes.

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_UPPER_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_UPPER_LIMIT** = ``11``

La rotación mínima en dirección positiva para soltarse y girar alrededor de los ejes.

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_LIMIT_SOFTNESS** = ``12``

La velocidad de todas las rotaciones a través de los ejes.

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_DAMPING** = ``13``

La cantidad de amortiguación rotacional en los ejes. Cuanto menor sea, mayor será el amortiguación.

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_RESTITUTION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_RESTITUTION** = ``14``

La cantidad de amortiguación rotacional a través de los ejes. Cuanto más bajo, más amortiguación se produce.

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_FORCE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_FORCE_LIMIT** = ``15``

La máxima cantidad de fuerza que puede ocurrir, al girar alrededor de los ejes.

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_ERP:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_ERP** = ``16``

Al girar sobre los ejes, este factor de tolerancia al error define cuánto se ralentiza la corrección. Cuanto más bajo, más lento.

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_MOTOR_TARGET_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_MOTOR_TARGET_VELOCITY** = ``17``

La velocidad del objetivo para el motor en los ejes.

.. _class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_MOTOR_FORCE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Generic6DOFJoint3D_Param>` **PARAM_ANGULAR_MOTOR_FORCE_LIMIT** = ``18``

**Obsoleto:** Use :ref:`PARAM_ANGULAR_DRIVE_TORQUE_LIMIT<class_Generic6DOFJoint3D_constant_PARAM_ANGULAR_DRIVE_TORQUE_LIMIT>` instead, which applies in both spring and motor modes.

Aceleración máxima para el motor en los ejes.

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

Representa el tamaño del enum :ref:`Param<enum_Generic6DOFJoint3D_Param>`.

.. rst-class:: classref-item-separator

----

.. _enum_Generic6DOFJoint3D_Flag:

.. rst-class:: classref-enumeration

enum **Flag**: :ref:`🔗<enum_Generic6DOFJoint3D_Flag>`

.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_LINEAR_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_LINEAR_LIMIT** = ``0``

Si se activa, el movimiento lineal es posible dentro de los límites dados.

.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_ANGULAR_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_ANGULAR_LIMIT** = ``1``

Si está activado, el movimiento de rotación es posible dentro de los límites dados.

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

**Obsoleto:** Use :ref:`FLAG_ENABLE_ANGULAR_MOTOR<class_Generic6DOFJoint3D_constant_FLAG_ENABLE_ANGULAR_MOTOR>` instead.

If enabled, there is a rotational or angular motor across these axes.

.. _class_Generic6DOFJoint3D_constant_FLAG_ENABLE_LINEAR_MOTOR:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_ENABLE_LINEAR_MOTOR** = ``5``

Si se activa, hay un motor lineal a través de estos ejes.

.. _class_Generic6DOFJoint3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_Generic6DOFJoint3D_Flag>` **FLAG_MAX** = ``6``

Representa el tamaño del enum :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

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

La cantidad de amortiguación rotacional a través del eje X.

Cuanto más bajo, más tiempo tarda un impulso de un lado en viajar al otro lado.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit_x/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

Si es ``true``, la rotación a través del eje X es limitada.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/erp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/erp** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/erp>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Al girar a través del eje X, este factor de tolerancia al error define cuánto se ralentiza la corrección. Cuanto más baja, más lenta.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La máxima cantidad de fuerza que puede ocurrir, al girar alrededor del eje X.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/lower_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/lower_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/lower_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La rotación mínima en dirección negativa para soltarse y girar alrededor del eje X.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/restitution** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La cantidad de restitución rotacional a través del eje X. Cuanto más bajo, más restitución se produce.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/softness** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La velocidad de todas las rotaciones a través del eje X.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_x/upper_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_x/upper_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_x/upper_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La mínima rotación en dirección positiva para soltarse y girar alrededor del eje X.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La cantidad de amortiguación rotacional a lo largo del eje Y. Cuanto menor sea, mayor amortiguación se produce.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit_y/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

Si es ``true``, la rotación a través del eje Y está limitada.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/erp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/erp** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/erp>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Al girar sobre el eje Y, este factor de tolerancia al error define cuánto se ralentiza la corrección. Cuanto más baja, más lenta.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La máxima cantidad de fuerza que puede ocurrir, al girar alrededor del eje Y.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/lower_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/lower_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/lower_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La mínima rotación en dirección negativa para soltarse y girar alrededor del eje Y.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/restitution** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La cantidad de restitución rotacional a través del eje Y. Cuanto más bajo, más restitución se produce.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/softness** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La velocidad de todas las rotaciones a través del eje Y.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_y/upper_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_y/upper_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_y/upper_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La mínima rotación en dirección positiva para soltarse y girar alrededor del eje Y.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La cantidad de amortiguación rotacional a lo largo del eje Z. Cuanto menor sea, mayor amortiguación se produce.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit_z/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

Si es ``true``, la rotación a través del eje Z está limitada.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/erp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/erp** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/erp>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Al girar a través del eje Z, este factor de tolerancia al error define cuánto se ralentiza la corrección. Cuanto más baja, más lenta.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La máxima cantidad de fuerza que puede ocurrir, al girar alrededor del eje Z.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/lower_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/lower_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/lower_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La rotación mínima en dirección negativa para soltarse y girar alrededor del eje Z.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/restitution** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La cantidad de restitución rotacional a través del eje Z. Cuanto más bajo, más restitución se produce.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/softness** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La velocidad de todas las rotaciones a través del eje Z.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_limit_z/upper_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit_z/upper_angle** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_limit_z/upper_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La rotación mínima en dirección positiva para soltarse y girar alrededor del eje Z.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_motor_x/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

Si es ``true``, se activa un motor rotativo en el eje X.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_x/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_x/force_limit** = ``300.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_x/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

**Obsoleto:** Use :ref:`angular_drive_x/torque_limit<class_Generic6DOFJoint3D_property_angular_drive_x/torque_limit>` instead, which applies in both spring and motor modes.

Aceleración máxima para el motor en el eje X.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_x/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_x/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_x/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Velocidad objetivo para el motor en el eje X.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_motor_y/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

Si es ``true``, se habilita un motor rotativo en el eje Y.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_y/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_y/force_limit** = ``300.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_y/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

**Obsoleto:** Use :ref:`angular_drive_y/torque_limit<class_Generic6DOFJoint3D_property_angular_drive_y/torque_limit>` instead, which applies in both spring and motor modes.

Aceleración máxima para el motor en el eje Y.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_y/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_y/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_y/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Velocidad objetivo para el motor en el eje Y.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_motor_z/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

Si es ``true``, se habilita un motor rotativo en el eje Z.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_z/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_z/force_limit** = ``300.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_z/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

**Obsoleto:** Use :ref:`angular_drive_z/torque_limit<class_Generic6DOFJoint3D_property_angular_drive_z/torque_limit>` instead, which applies in both spring and motor modes.

Aceleración máxima para el motor en el eje Z.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_angular_motor_z/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_motor_z/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_angular_motor_z/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La velocidad del objetivo para el motor en el eje Z.

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

La cantidad de amortiguación que ocurre en el movimiento X.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_limit_x/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

Si es ``true``, el movimiento lineal a través del eje X está limitado.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/lower_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/lower_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/lower_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La diferencia mínima entre los puntos de pivote del eje X.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/restitution** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La cantidad de restitución en el movimiento del eje X. Cuanto más bajo, más impulso se pierde.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/softness** = ``0.7`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Un factor aplicado al movimiento a través del eje X. Cuanto más bajo, más lento es el movimiento.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_x/upper_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_x/upper_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_x/upper_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La diferencia máxima entre los puntos de pivote del eje X.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La cantidad de amortiguación que ocurre en el movimiento Y.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_limit_y/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

Si es ``true``, el movimiento lineal a través del eje Y está limitado.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/lower_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/lower_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/lower_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La diferencia mínima entre los puntos de pivote del eje Y.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/restitution** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La cantidad de restitución en el movimiento del eje Y. Cuanto más bajo, más impulso se pierde.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/softness** = ``0.7`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Un factor aplicado al movimiento a través del eje Y. Cuanto más bajo, más lento es el movimiento.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_y/upper_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_y/upper_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_y/upper_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La máxima diferencia entre los puntos de pivote del eje Y .

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/damping** = ``1.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La cantidad de amortiguación que ocurre en el movimiento Z.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_limit_z/enabled** = ``true`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

Si es ``true``, el movimiento lineal a través del eje Z está limitado.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/lower_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/lower_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/lower_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La diferencia mínima entre los puntos de pivote del eje Z.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/restitution:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/restitution** = ``0.5`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/restitution>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La cantidad de restitución en el movimiento del eje Z. Cuanto más bajo, más impulso se pierde.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/softness** = ``0.7`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

Un factor aplicado al movimiento a través del eje Z. Cuanto más bajo, más lento es el movimiento.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_limit_z/upper_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_limit_z/upper_distance** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_limit_z/upper_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La máxima diferencia entre los puntos de pivote del eje Z .

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_x/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_motor_x/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_x/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_x**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

Si es ``true``, entonces hay un motor lineal en el eje X. Intentará alcanzar la velocidad objetivo mientras se mantiene dentro de los límites de la fuerza.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_x/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_x/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_x/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

**Obsoleto:** Use :ref:`linear_drive_x/force_limit<class_Generic6DOFJoint3D_property_linear_drive_x/force_limit>` instead, which applies in both spring and motor modes.

La máxima fuerza que el motor lineal puede aplicar en el eje X mientras intenta alcanzar la velocidad objetivo.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_x/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_x/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_x/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_x**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La velocidad que el motor lineal intentará alcanzar en el eje X.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_y/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_motor_y/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_y/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_y**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

Si es ``true``, entonces hay un motor lineal en el eje Y. Intentará alcanzar la velocidad objetivo mientras se mantiene dentro de los límites de la fuerza.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_y/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_y/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_y/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

**Obsoleto:** Use :ref:`linear_drive_y/force_limit<class_Generic6DOFJoint3D_property_linear_drive_y/force_limit>` instead, which applies in both spring and motor modes.

La máxima fuerza que el motor lineal puede aplicar sobre el eje Y mientras intenta alcanzar la velocidad objetivo.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_y/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_y/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_y/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_y**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La velocidad que el motor lineal intentará alcanzar en el eje Y.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_z/enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **linear_motor_z/enabled** = ``false`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_z/enabled>`

.. rst-class:: classref-property-setget

- |void| **set_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`, value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag_z**\ (\ flag\: :ref:`Flag<enum_Generic6DOFJoint3D_Flag>`\ ) |const|

Si es ``true``, entonces hay un motor lineal en el eje Z. Intentará alcanzar la velocidad objetivo mientras se mantiene dentro de los límites de la fuerza.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_z/force_limit:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_z/force_limit** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_z/force_limit>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

**Obsoleto:** Use :ref:`linear_drive_z/force_limit<class_Generic6DOFJoint3D_property_linear_drive_z/force_limit>` instead, which applies in both spring and motor modes.

La máxima fuerza que el motor lineal puede aplicar en el eje Z mientras intenta alcanzar la velocidad objetivo.

.. rst-class:: classref-item-separator

----

.. _class_Generic6DOFJoint3D_property_linear_motor_z/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_motor_z/target_velocity** = ``0.0`` :ref:`🔗<class_Generic6DOFJoint3D_property_linear_motor_z/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_z**\ (\ param\: :ref:`Param<enum_Generic6DOFJoint3D_Param>`\ ) |const|

La velocidad que el motor lineal intentará alcanzar en el eje Z.

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

Descripciones de Métodos
------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
