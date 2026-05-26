:github_url: hide

.. _class_CPUParticles3D:

CPUParticles3D
==============

**Hereda:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un emisor de partículas 3D que utiliza la CPU.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Nodo de partículas 3D basado en la CPU utilizado para crear una variedad de sistemas y efectos de partículas.

Véase también :ref:`GPUParticles3D<class_GPUParticles3D>`, que proporciona la misma funcionalidad con aceleración por hardware, pero puede que no funcione en dispositivos más antiguos.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Sistemas de partículas (3D) <../tutorials/3d/particles/index>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`int<class_int>`                                   | :ref:`amount<class_CPUParticles3D_property_amount>`                                         | ``8``                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`angle_curve<class_CPUParticles3D_property_angle_curve>`                               |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`angle_max<class_CPUParticles3D_property_angle_max>`                                   | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`angle_min<class_CPUParticles3D_property_angle_min>`                                   | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`angular_velocity_curve<class_CPUParticles3D_property_angular_velocity_curve>`         |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`angular_velocity_max<class_CPUParticles3D_property_angular_velocity_max>`             | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`angular_velocity_min<class_CPUParticles3D_property_angular_velocity_min>`             | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`anim_offset_curve<class_CPUParticles3D_property_anim_offset_curve>`                   |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`anim_offset_max<class_CPUParticles3D_property_anim_offset_max>`                       | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`anim_offset_min<class_CPUParticles3D_property_anim_offset_min>`                       | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`anim_speed_curve<class_CPUParticles3D_property_anim_speed_curve>`                     |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`anim_speed_max<class_CPUParticles3D_property_anim_speed_max>`                         | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`anim_speed_min<class_CPUParticles3D_property_anim_speed_min>`                         | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Color<class_Color>`                               | :ref:`color<class_CPUParticles3D_property_color>`                                           | ``Color(1, 1, 1, 1)``      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Gradient<class_Gradient>`                         | :ref:`color_initial_ramp<class_CPUParticles3D_property_color_initial_ramp>`                 |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Gradient<class_Gradient>`                         | :ref:`color_ramp<class_CPUParticles3D_property_color_ramp>`                                 |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`damping_curve<class_CPUParticles3D_property_damping_curve>`                           |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`damping_max<class_CPUParticles3D_property_damping_max>`                               | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`damping_min<class_CPUParticles3D_property_damping_min>`                               | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`direction<class_CPUParticles3D_property_direction>`                                   | ``Vector3(1, 0, 0)``       |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>`         | :ref:`draw_order<class_CPUParticles3D_property_draw_order>`                                 | ``0``                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`emission_box_extents<class_CPUParticles3D_property_emission_box_extents>`             |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`         | :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>`                       | ``PackedColorArray()``     |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`     | :ref:`emission_normals<class_CPUParticles3D_property_emission_normals>`                     |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`     | :ref:`emission_points<class_CPUParticles3D_property_emission_points>`                       |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`emission_ring_axis<class_CPUParticles3D_property_emission_ring_axis>`                 |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`emission_ring_cone_angle<class_CPUParticles3D_property_emission_ring_cone_angle>`     |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`emission_ring_height<class_CPUParticles3D_property_emission_ring_height>`             |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`emission_ring_inner_radius<class_CPUParticles3D_property_emission_ring_inner_radius>` |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`emission_ring_radius<class_CPUParticles3D_property_emission_ring_radius>`             |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` | :ref:`emission_shape<class_CPUParticles3D_property_emission_shape>`                         | ``0``                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`emission_sphere_radius<class_CPUParticles3D_property_emission_sphere_radius>`         |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`emitting<class_CPUParticles3D_property_emitting>`                                     | ``true``                   |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`explosiveness<class_CPUParticles3D_property_explosiveness>`                           | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`int<class_int>`                                   | :ref:`fixed_fps<class_CPUParticles3D_property_fixed_fps>`                                   | ``0``                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`flatness<class_CPUParticles3D_property_flatness>`                                     | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`fract_delta<class_CPUParticles3D_property_fract_delta>`                               | ``true``                   |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`gravity<class_CPUParticles3D_property_gravity>`                                       | ``Vector3(0, -9.8, 0)``    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`hue_variation_curve<class_CPUParticles3D_property_hue_variation_curve>`               |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`hue_variation_max<class_CPUParticles3D_property_hue_variation_max>`                   | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`hue_variation_min<class_CPUParticles3D_property_hue_variation_min>`                   | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`initial_velocity_max<class_CPUParticles3D_property_initial_velocity_max>`             | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`initial_velocity_min<class_CPUParticles3D_property_initial_velocity_min>`             | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`lifetime<class_CPUParticles3D_property_lifetime>`                                     | ``1.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`lifetime_randomness<class_CPUParticles3D_property_lifetime_randomness>`               | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`linear_accel_curve<class_CPUParticles3D_property_linear_accel_curve>`                 |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`linear_accel_max<class_CPUParticles3D_property_linear_accel_max>`                     | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`linear_accel_min<class_CPUParticles3D_property_linear_accel_min>`                     | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`local_coords<class_CPUParticles3D_property_local_coords>`                             | ``false``                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Mesh<class_Mesh>`                                 | :ref:`mesh<class_CPUParticles3D_property_mesh>`                                             |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`one_shot<class_CPUParticles3D_property_one_shot>`                                     | ``false``                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`orbit_velocity_curve<class_CPUParticles3D_property_orbit_velocity_curve>`             |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`orbit_velocity_max<class_CPUParticles3D_property_orbit_velocity_max>`                 |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`orbit_velocity_min<class_CPUParticles3D_property_orbit_velocity_min>`                 |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`particle_flag_align_y<class_CPUParticles3D_property_particle_flag_align_y>`           | ``false``                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`particle_flag_disable_z<class_CPUParticles3D_property_particle_flag_disable_z>`       | ``false``                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`particle_flag_rotate_y<class_CPUParticles3D_property_particle_flag_rotate_y>`         | ``false``                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`preprocess<class_CPUParticles3D_property_preprocess>`                                 | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`radial_accel_curve<class_CPUParticles3D_property_radial_accel_curve>`                 |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`radial_accel_max<class_CPUParticles3D_property_radial_accel_max>`                     | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`radial_accel_min<class_CPUParticles3D_property_radial_accel_min>`                     | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`randomness<class_CPUParticles3D_property_randomness>`                                 | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`scale_amount_curve<class_CPUParticles3D_property_scale_amount_curve>`                 |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`scale_amount_max<class_CPUParticles3D_property_scale_amount_max>`                     | ``1.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`scale_amount_min<class_CPUParticles3D_property_scale_amount_min>`                     | ``1.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`scale_curve_x<class_CPUParticles3D_property_scale_curve_x>`                           |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`scale_curve_y<class_CPUParticles3D_property_scale_curve_y>`                           |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`scale_curve_z<class_CPUParticles3D_property_scale_curve_z>`                           |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`int<class_int>`                                   | :ref:`seed<class_CPUParticles3D_property_seed>`                                             | ``0``                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`speed_scale<class_CPUParticles3D_property_speed_scale>`                               | ``1.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`split_scale<class_CPUParticles3D_property_split_scale>`                               | ``false``                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`spread<class_CPUParticles3D_property_spread>`                                         | ``45.0``                   |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Curve<class_Curve>`                               | :ref:`tangential_accel_curve<class_CPUParticles3D_property_tangential_accel_curve>`         |                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`tangential_accel_max<class_CPUParticles3D_property_tangential_accel_max>`             | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                               | :ref:`tangential_accel_min<class_CPUParticles3D_property_tangential_accel_min>`             | ``0.0``                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`use_fixed_seed<class_CPUParticles3D_property_use_fixed_seed>`                         | ``false``                  |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`                                 | :ref:`visibility_aabb<class_CPUParticles3D_property_visibility_aabb>`                       | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`   | :ref:`capture_aabb<class_CPUParticles3D_method_capture_aabb>`\ (\ ) |const|                                                                                                                      |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`convert_from_particles<class_CPUParticles3D_method_convert_from_particles>`\ (\ particles\: :ref:`Node<class_Node>`\ )                                                                     |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`get_param_curve<class_CPUParticles3D_method_get_param_curve>`\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|                                                       |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param_max<class_CPUParticles3D_method_get_param_max>`\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|                                                           |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param_min<class_CPUParticles3D_method_get_param_min>`\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|                                                           |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_particle_flag<class_CPUParticles3D_method_get_particle_flag>`\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|                                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`request_particles_process<class_CPUParticles3D_method_request_particles_process>`\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0.0\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`restart<class_CPUParticles3D_method_restart>`\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ )                                                                                           |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param_curve<class_CPUParticles3D_method_set_param_curve>`\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )                            |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param_max<class_CPUParticles3D_method_set_param_max>`\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )                                |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param_min<class_CPUParticles3D_method_set_param_min>`\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )                                |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_particle_flag<class_CPUParticles3D_method_set_particle_flag>`\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ )         |
   +---------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_CPUParticles3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_CPUParticles3D_signal_finished>`

Emitida cuando todas las partículas activas han terminado de procesarse. Cuando :ref:`one_shot<class_CPUParticles3D_property_one_shot>` está desactivado, las partículas se procesarán continuamente, por lo que esto nunca se emite.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_CPUParticles3D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_CPUParticles3D_DrawOrder>`

.. _class_CPUParticles3D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

Las partículas se dibujan en el orden en que se emiten.

.. _class_CPUParticles3D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

Las partículas se dibujan en orden de vida útil restante. En otras palabras, la partícula con la vida útil más alta se dibuja al frente.

.. _class_CPUParticles3D_constant_DRAW_ORDER_VIEW_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **DRAW_ORDER_VIEW_DEPTH** = ``2``

Las partículas se dibujan en orden de profundidad.

.. rst-class:: classref-item-separator

----

.. _enum_CPUParticles3D_Parameter:

.. rst-class:: classref-enumeration

enum **Parameter**: :ref:`🔗<enum_CPUParticles3D_Parameter>`

.. _class_CPUParticles3D_constant_PARAM_INITIAL_LINEAR_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_INITIAL_LINEAR_VELOCITY** = ``0``

Utilizar con :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` y :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` para establecer las propiedades de la velocidad inicial.

.. _class_CPUParticles3D_constant_PARAM_ANGULAR_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANGULAR_VELOCITY** = ``1``

Utilizar con :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` y :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` para establecer las propiedades de la velocidad angular.

.. _class_CPUParticles3D_constant_PARAM_ORBIT_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ORBIT_VELOCITY** = ``2``

Utilizar con :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` y :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` para establecer las propiedades de la velocidad orbital.

.. _class_CPUParticles3D_constant_PARAM_LINEAR_ACCEL:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_LINEAR_ACCEL** = ``3``

Utilizar con :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` y :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` para establecer las propiedades de la aceleración lineal.

.. _class_CPUParticles3D_constant_PARAM_RADIAL_ACCEL:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_RADIAL_ACCEL** = ``4``

Utilizar con :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` y :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` para establecer las propiedades de la aceleración radial.

.. _class_CPUParticles3D_constant_PARAM_TANGENTIAL_ACCEL:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_TANGENTIAL_ACCEL** = ``5``

Utilízalo con :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` y :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` para establecer propiedades de aceleración tangencial.

.. _class_CPUParticles3D_constant_PARAM_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_DAMPING** = ``6``

Utilízalo con :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` y :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` para establecer propiedades de amortiguación.

.. _class_CPUParticles3D_constant_PARAM_ANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANGLE** = ``7``

Utilízalo con :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` y :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` para establecer propiedades de ángulo.

.. _class_CPUParticles3D_constant_PARAM_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_SCALE** = ``8``

Utilízalo con :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` y :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` para establecer propiedades de escala.

.. _class_CPUParticles3D_constant_PARAM_HUE_VARIATION:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_HUE_VARIATION** = ``9``

Utilízalo con :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` y :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` para establecer propiedades de variación de tono.

.. _class_CPUParticles3D_constant_PARAM_ANIM_SPEED:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANIM_SPEED** = ``10``

Utilízalo con :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` y :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` para establecer las propiedades de velocidad de la animación.

.. _class_CPUParticles3D_constant_PARAM_ANIM_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANIM_OFFSET** = ``11``

Utilízalo con :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` y :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` para establecer las propiedades de desplazamiento de la animación.

.. _class_CPUParticles3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_MAX** = ``12``

Representa el tamaño del enumerado :ref:`Parameter<enum_CPUParticles3D_Parameter>`.

.. rst-class:: classref-item-separator

----

.. _enum_CPUParticles3D_ParticleFlags:

.. rst-class:: classref-enumeration

enum **ParticleFlags**: :ref:`🔗<enum_CPUParticles3D_ParticleFlags>`

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY** = ``0``

Utilizar con :ref:`set_particle_flag()<class_CPUParticles3D_method_set_particle_flag>` para establecer :ref:`particle_flag_align_y<class_CPUParticles3D_property_particle_flag_align_y>`.

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_ROTATE_Y:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_ROTATE_Y** = ``1``

Utilizar con :ref:`set_particle_flag()<class_CPUParticles3D_method_set_particle_flag>` para establecer :ref:`particle_flag_rotate_y<class_CPUParticles3D_property_particle_flag_rotate_y>`.

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_DISABLE_Z:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_DISABLE_Z** = ``2``

Utiliza con :ref:`set_particle_flag()<class_CPUParticles3D_method_set_particle_flag>` para establecer :ref:`particle_flag_disable_z<class_CPUParticles3D_property_particle_flag_disable_z>`.

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_MAX** = ``3``

Representa el tamaño del enum :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`.

.. rst-class:: classref-item-separator

----

.. _enum_CPUParticles3D_EmissionShape:

.. rst-class:: classref-enumeration

enum **EmissionShape**: :ref:`🔗<enum_CPUParticles3D_EmissionShape>`

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_POINT:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_POINT** = ``0``

Todas las partículas serán emitidas desde un único punto.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_SPHERE:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_SPHERE** = ``1``

Las partículas se emitirán en el volumen de una esfera.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_SPHERE_SURFACE:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_SPHERE_SURFACE** = ``2``

Las partículas se emitirán sobre la superficie de una esfera.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_BOX:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_BOX** = ``3``

Se emitirán partículas en el volumen de una caja.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_POINTS:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_POINTS** = ``4``

Las partículas se emitirán en una posición elegida al azar entre :ref:`emission_points<class_CPUParticles3D_property_emission_points>`. El color de las partículas será modulado por :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>`.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_DIRECTED_POINTS** = ``5``

Las partículas se emitirán en una posición elegida al azar entre :ref:`emission_points<class_CPUParticles3D_property_emission_points>`. La velocidad y rotación de las partículas se fijarán en base a :ref:`emission_normals<class_CPUParticles3D_property_emission_normals>`. El color de las partículas será modulado por :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>`.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_RING:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_RING** = ``6``

Las partículas se emitirán en un anillo o cilindro.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_MAX** = ``7``

Representa el tamaño del enum :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CPUParticles3D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_CPUParticles3D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

Número de partículas emitidas en un ciclo de emisión.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angle_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **angle_curve** :ref:`🔗<class_CPUParticles3D_property_angle_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

La rotación de cada partícula se animará a lo largo de esta :ref:`Curve<class_Curve>`. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angle_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **angle_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angle_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Ángulo máximo.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angle_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **angle_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angle_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Ángulo mínimo.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angular_velocity_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **angular_velocity_curve** :ref:`🔗<class_CPUParticles3D_property_angular_velocity_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

La velocidad angular (velocidad de rotación) de cada partícula variará a lo largo de esta :ref:`Curve<class_Curve>` durante su vida útil. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angular_velocity_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angular_velocity_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Velocidad angular inicial máxima (velocidad de rotación) aplicada a cada partícula en *grados* por segundo.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angular_velocity_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angular_velocity_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Velocidad angular inicial mínima (velocidad de rotación) aplicada a cada partícula en *grados* por segundo.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_offset_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **anim_offset_curve** :ref:`🔗<class_CPUParticles3D_property_anim_offset_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

El desplazamiento de animación de cada partícula variará a lo largo de esta :ref:`Curve<class_Curve>`. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_offset_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_offset_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_offset_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Desplazamiento máximo de la animación.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_offset_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_offset_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_offset_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Desplazamiento mínimo de la animación.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_speed_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **anim_speed_curve** :ref:`🔗<class_CPUParticles3D_property_anim_speed_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

La velocidad de animación de cada partícula variará a lo largo de esta :ref:`Curve<class_Curve>`. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_speed_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_speed_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_speed_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Velocidad máxima de animación de partículas.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_speed_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_speed_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_speed_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Velocidad mínima de animación de partículas.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CPUParticles3D_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

Color inicial de cada partícula.

\ **Nota:** :ref:`color<class_CPUParticles3D_property_color>` multiplica los colores de los vértices de la malla de partículas. Para que tenga un efecto visible en un :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *debe* ser ``true``. Para un :ref:`ShaderMaterial<class_ShaderMaterial>`, ``ALBEDO *= COLOR.rgb;`` debe insertarse en la función ``fragment()`` del shader. De lo contrario, :ref:`color<class_CPUParticles3D_property_color>` no tendrá ningún efecto visible.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_color_initial_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_initial_ramp** :ref:`🔗<class_CPUParticles3D_property_color_initial_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_initial_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_initial_ramp**\ (\ )

El color inicial de cada partícula variará a lo largo de este :ref:`Gradient<class_Gradient>` (multiplicado con :ref:`color<class_CPUParticles3D_property_color>`).

\ **Nota:** :ref:`color_initial_ramp<class_CPUParticles3D_property_color_initial_ramp>` multiplica los colores de los vértices de la malla de partículas. Para que tenga un efecto visible en un :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *debe* ser ``true``. Para un :ref:`ShaderMaterial<class_ShaderMaterial>`, ``ALBEDO *= COLOR.rgb;`` debe insertarse en la función ``fragment()`` del shader. De lo contrario, :ref:`color_initial_ramp<class_CPUParticles3D_property_color_initial_ramp>` no tendrá ningún efecto visible.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_color_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_ramp** :ref:`🔗<class_CPUParticles3D_property_color_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_ramp**\ (\ )

El color de cada partícula variará a lo largo de este :ref:`Gradient<class_Gradient>` durante su vida útil (multiplicado con :ref:`color<class_CPUParticles3D_property_color>`).

\ **Nota:** :ref:`color_ramp<class_CPUParticles3D_property_color_ramp>` multiplica los colores de los vértices de la malla de partículas. Para que tenga un efecto visible en un :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *debe* ser ``true``. Para un :ref:`ShaderMaterial<class_ShaderMaterial>`, ``ALBEDO *= COLOR.rgb;`` debe insertarse en la función ``fragment()`` del shader. De lo contrario, :ref:`color_ramp<class_CPUParticles3D_property_color_ramp>` no tendrá ningún efecto visible.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_damping_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **damping_curve** :ref:`🔗<class_CPUParticles3D_property_damping_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

La amortiguación variará a lo largo de esta :ref:`Curve<class_Curve>`. Debe ser una unidad :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_damping_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_damping_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Damping máximo.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_damping_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_damping_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Amortiguación mínima.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **direction** = ``Vector3(1, 0, 0)`` :ref:`🔗<class_CPUParticles3D_property_direction>`

.. rst-class:: classref-property-setget

- |void| **set_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_direction**\ (\ )

Vector unitario que especifica la dirección de emisión de las partículas.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **draw_order** = ``0`` :ref:`🔗<class_CPUParticles3D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **get_draw_order**\ (\ )

Orden de dibujado de partículas.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_box_extents:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **emission_box_extents** :ref:`🔗<class_CPUParticles3D_property_emission_box_extents>`

.. rst-class:: classref-property-setget

- |void| **set_emission_box_extents**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_emission_box_extents**\ (\ )

La extensión del rectángulo si :ref:`emission_shape<class_CPUParticles3D_property_emission_shape>` se fija en :ref:`EMISSION_SHAPE_BOX<class_CPUParticles3D_constant_EMISSION_SHAPE_BOX>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **emission_colors** = ``PackedColorArray()`` :ref:`🔗<class_CPUParticles3D_property_emission_colors>`

.. rst-class:: classref-property-setget

- |void| **set_emission_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_emission_colors**\ (\ )

Establece los :ref:`Color<class_Color>`\ s para modular las partículas cuando se utiliza :ref:`EMISSION_SHAPE_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_POINTS>` o :ref:`EMISSION_SHAPE_DIRECTED_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS>`.

\ **Nota:** :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>` multiplica los colores de los vértices de la malla de partículas. Para que tenga un efecto visible en un :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *debe* ser ``true``. Para un :ref:`ShaderMaterial<class_ShaderMaterial>`, ``ALBEDO *= COLOR.rgb;`` debe insertarse en la función ``fragment()`` del shader. De lo contrario, :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>` no tendrá ningún efecto visible.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_normals:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **emission_normals** :ref:`🔗<class_CPUParticles3D_property_emission_normals>`

.. rst-class:: classref-property-setget

- |void| **set_emission_normals**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_emission_normals**\ (\ )

Establece la dirección en la que las partículas serán emitidas cuando se use :ref:`EMISSION_SHAPE_DIRECTED_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_points:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **emission_points** :ref:`🔗<class_CPUParticles3D_property_emission_points>`

.. rst-class:: classref-property-setget

- |void| **set_emission_points**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_emission_points**\ (\ )

Establece las posiciones iniciales para generar partículas cuando se utiliza :ref:`EMISSION_SHAPE_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_POINTS>` o :ref:`EMISSION_SHAPE_DIRECTED_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_axis:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **emission_ring_axis** :ref:`🔗<class_CPUParticles3D_property_emission_ring_axis>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_axis**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_emission_ring_axis**\ (\ )

El eje del anillo cuando se utiliza el emisor :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_cone_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_cone_angle** :ref:`🔗<class_CPUParticles3D_property_emission_ring_cone_angle>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_cone_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_cone_angle**\ (\ )

El ángulo del cono cuando se utiliza el emisor :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`. El ángulo predeterminado de 90 grados da como resultado un anillo, mientras que un ángulo de 0 grados da como resultado un cono. Los valores intermedios darán como resultado un anillo donde un extremo es más grande que el otro.

\ **Nota:** Dependiendo de :ref:`emission_ring_height<class_CPUParticles3D_property_emission_ring_height>`, el ángulo puede ser limitado si se alcanza el extremo del anillo para formar un cono perfecto.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_height** :ref:`🔗<class_CPUParticles3D_property_emission_ring_height>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_height**\ (\ )

La altura del anillo cuando se utiliza el emisor :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_inner_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_inner_radius** :ref:`🔗<class_CPUParticles3D_property_emission_ring_inner_radius>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_inner_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_inner_radius**\ (\ )

El radio interior del anillo cuando se utiliza el emisor :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_radius** :ref:`🔗<class_CPUParticles3D_property_emission_ring_radius>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_radius**\ (\ )

El radio del anillo cuando se utiliza el emisor :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_shape:

.. rst-class:: classref-property

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **emission_shape** = ``0`` :ref:`🔗<class_CPUParticles3D_property_emission_shape>`

.. rst-class:: classref-property-setget

- |void| **set_emission_shape**\ (\ value\: :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>`\ )
- :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **get_emission_shape**\ (\ )

Se emitirán partículas dentro de esta región.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_sphere_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_sphere_radius** :ref:`🔗<class_CPUParticles3D_property_emission_sphere_radius>`

.. rst-class:: classref-property-setget

- |void| **set_emission_sphere_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_sphere_radius**\ (\ )

El radio de la esfera si :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` se fija en :ref:`EMISSION_SHAPE_SPHERE<class_CPUParticles3D_constant_EMISSION_SHAPE_SPHERE>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_CPUParticles3D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

Si es ``true``, se están emitiendo partículas. :ref:`emitting<class_CPUParticles3D_property_emitting>` se puede usar para iniciar y detener la emisión de partículas. Sin embargo, si :ref:`one_shot<class_CPUParticles3D_property_one_shot>` es ``true``, establecer :ref:`emitting<class_CPUParticles3D_property_emitting>` como ``true`` no reiniciará el ciclo de emisión hasta que todas las partículas activas terminen de procesarse. Puedes usar la señal :ref:`finished<class_CPUParticles3D_signal_finished>` para recibir una notificación cuando todas las partículas activas terminen de procesarse.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

La rapidez con la que se emiten las partículas en un ciclo de emisión. Si es mayor que ``0``, habrá una espacio de tiempo en las emisiones antes de que comience el siguiente ciclo.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``0`` :ref:`🔗<class_CPUParticles3D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

La velocidad de fotogramas del sistema de partículas se fija a un valor. Por ejemplo, cambiar el valor a 2 hará que las partículas se rendericen a 2 fotogramas por segundo. Ten en cuenta que esto no ralentiza el sistema de partículas en sí mismo.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_flatness:

.. rst-class:: classref-property

:ref:`float<class_float>` **flatness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_flatness>`

.. rst-class:: classref-property-setget

- |void| **set_flatness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_flatness**\ (\ )

Cantidad de :ref:`spread<class_CPUParticles3D_property_spread>` en el plano Y/Z. Un valor de ``1`` restringe las partículas al plano X/Z.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_CPUParticles3D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

Si es ``true``, resulta en un cálculo delta fraccionario que tiene un efecto de visualización de partículas más suave.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_gravity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity** = ``Vector3(0, -9.8, 0)`` :ref:`🔗<class_CPUParticles3D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity**\ (\ )

La gravedad aplicada a cada partícula.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_hue_variation_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **hue_variation_curve** :ref:`🔗<class_CPUParticles3D_property_hue_variation_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

El tono de cada partícula variará a lo largo de esta :ref:`Curve<class_Curve>`. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_hue_variation_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **hue_variation_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_hue_variation_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Variación máxima de tono.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_hue_variation_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **hue_variation_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_hue_variation_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Variación mínima de tono.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_initial_velocity_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **initial_velocity_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_initial_velocity_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Valor máximo de la velocidad inicial.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_initial_velocity_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **initial_velocity_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_initial_velocity_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Valor mínimo de la velocidad inicial.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

Cantidad de tiempo que cada partícula existirá.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_lifetime_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime_randomness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_lifetime_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime_randomness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime_randomness**\ (\ )

El ratio de aleatoriedad del tiempo de vida de las partículas.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_linear_accel_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **linear_accel_curve** :ref:`🔗<class_CPUParticles3D_property_linear_accel_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

La aceleración lineal de cada partícula variará a lo largo de esta :ref:`Curve<class_Curve>`. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_linear_accel_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_accel_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_linear_accel_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Aceleración lineal máxima.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_linear_accel_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_accel_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_linear_accel_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Aceleración lineal mínima.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_CPUParticles3D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

Si es ``true``, las partículas usan el espacio de coordenadas del nodo padre (conocido como coordenadas locales). Esto hará que las partículas se muevan y giren junto con el nodo **CPUParticles3D** (y sus padres) cuando este se mueva o gire. Si es ``false``, las partículas usan coordenadas globales; no se moverán ni girarán junto con el nodo **CPUParticles3D** (y sus padres) cuando este se mueva o gire.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_CPUParticles3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

La :ref:`Mesh<class_Mesh>` usada para cada partícula. Si ``null``, las partículas serán esferas.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_CPUParticles3D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

Si es ``true``, sólo se produce un ciclo de emisión. Si se establece ``true`` durante un ciclo, la emisión se detendrá al final del ciclo.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_orbit_velocity_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **orbit_velocity_curve** :ref:`🔗<class_CPUParticles3D_property_orbit_velocity_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

La velocidad orbital de cada partícula variará a lo largo de esta :ref:`Curve<class_Curve>`. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_orbit_velocity_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **orbit_velocity_max** :ref:`🔗<class_CPUParticles3D_property_orbit_velocity_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Velocidad máxima de órbita.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_orbit_velocity_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **orbit_velocity_min** :ref:`🔗<class_CPUParticles3D_property_orbit_velocity_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Velocidad mínima de órbita.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_particle_flag_align_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particle_flag_align_y** = ``false`` :ref:`🔗<class_CPUParticles3D_property_particle_flag_align_y>`

.. rst-class:: classref-property-setget

- |void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|

Alinea el eje Y de la partícula con la dirección de su velocidad.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_particle_flag_disable_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particle_flag_disable_z** = ``false`` :ref:`🔗<class_CPUParticles3D_property_particle_flag_disable_z>`

.. rst-class:: classref-property-setget

- |void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|

Si es ``true``, las partículas no se moverán en el eje Z.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_particle_flag_rotate_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particle_flag_rotate_y** = ``false`` :ref:`🔗<class_CPUParticles3D_property_particle_flag_rotate_y>`

.. rst-class:: classref-property-setget

- |void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|

Si es ``true``, las partículas giran alrededor del eje Y por :ref:`angle_min<class_CPUParticles3D_property_angle_min>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

El sistema de partículas se inicia como si ya hubiera funcionado durante este número de segundos.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_radial_accel_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **radial_accel_curve** :ref:`🔗<class_CPUParticles3D_property_radial_accel_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

La aceleración radial de cada partícula variará a lo largo de esta :ref:`Curve<class_Curve>`. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_radial_accel_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_accel_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_radial_accel_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Aceleración radial máxima.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_radial_accel_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_accel_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_radial_accel_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Aceleración radial mínima.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

Proporción de aleatoriedad de la vida útil de las emisiones.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_amount_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_amount_curve** :ref:`🔗<class_CPUParticles3D_property_scale_amount_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

La escala de cada partícula variará a lo largo de esta :ref:`Curve<class_Curve>`. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_amount_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **scale_amount_max** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_scale_amount_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Escala máxima.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_amount_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **scale_amount_min** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_scale_amount_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Escala mínima.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_curve_x:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_curve_x** :ref:`🔗<class_CPUParticles3D_property_scale_curve_x>`

.. rst-class:: classref-property-setget

- |void| **set_scale_curve_x**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_scale_curve_x**\ (\ )

Curva para la escala a lo largo de la vida útil, a lo largo del eje X.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_curve_y:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_curve_y** :ref:`🔗<class_CPUParticles3D_property_scale_curve_y>`

.. rst-class:: classref-property-setget

- |void| **set_scale_curve_y**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_scale_curve_y**\ (\ )

Curva para la escala a lo largo de la vida útil, a lo largo del eje Y.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_curve_z:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_curve_z** :ref:`🔗<class_CPUParticles3D_property_scale_curve_z>`

.. rst-class:: classref-property-setget

- |void| **set_scale_curve_z**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_scale_curve_z**\ (\ )

Curva de la escala a lo largo de la vida, a lo largo del eje Z.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_CPUParticles3D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Establece la semilla aleatoria utilizada por el sistema de partículas. Solo es efectivo si :ref:`use_fixed_seed<class_CPUParticles3D_property_use_fixed_seed>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

El sistema de partículas está funcionando a una velocidad de escalada. Un valor de ``0`` puede ser usado para pausar las partículas.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_split_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **split_scale** = ``false`` :ref:`🔗<class_CPUParticles3D_property_split_scale>`

.. rst-class:: classref-property-setget

- |void| **set_split_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_split_scale**\ (\ )

Si se establece en ``true``, se pueden especificar tres curvas de escala diferentes, una por eje de escala.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_spread:

.. rst-class:: classref-property

:ref:`float<class_float>` **spread** = ``45.0`` :ref:`🔗<class_CPUParticles3D_property_spread>`

.. rst-class:: classref-property-setget

- |void| **set_spread**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_spread**\ (\ )

La dirección inicial de cada partícula va desde ``+spread`` hasta ``-spread`` grados. Aplicado a los planos X/Z y Y/Z.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_tangential_accel_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **tangential_accel_curve** :ref:`🔗<class_CPUParticles3D_property_tangential_accel_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

La aceleración tangencial de cada partícula variará a lo largo de esta :ref:`Curve<class_Curve>`. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_tangential_accel_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **tangential_accel_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_tangential_accel_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Aceleración tangencial máxima.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_tangential_accel_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **tangential_accel_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_tangential_accel_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Aceleración tangencial mínima.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_CPUParticles3D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

Si es ``true``, las partículas usarán la misma semilla para cada simulación utilizando la semilla definida en :ref:`seed<class_CPUParticles3D_property_seed>`. Esto es útil para situaciones en las que el resultado visual debe ser consistente en las repeticiones, por ejemplo, cuando se utiliza el modo Movie Maker.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_visibility_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **visibility_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_CPUParticles3D_property_visibility_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_visibility_aabb**\ (\ )

El :ref:`AABB<class_AABB>` que determina la región del nodo que debe estar visible en la pantalla para que el sistema de partículas esté activo.

Aumenta el tamaño del cuadro si las partículas aparecen/desaparecen repentinamente cuando el nodo entra/sale de la pantalla. El :ref:`AABB<class_AABB>` puede aumentarse mediante código o con la herramienta del editor **Partículas → Generar AABB**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_CPUParticles3D_method_capture_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **capture_aabb**\ (\ ) |const| :ref:`🔗<class_CPUParticles3D_method_capture_aabb>`

Devuelve el cuadro delimitador alineado con el eje que contiene todas las partículas que están activas en el cuadro actual.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_CPUParticles3D_method_convert_from_particles>`

Establece las propiedades de este nodo para que coincidan con un nodo :ref:`GPUParticles3D<class_GPUParticles3D>` dado con un :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` asignado.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_param_curve:

.. rst-class:: classref-method

:ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_param_curve>`

Devuelve la :ref:`Curve<class_Curve>` del parámetro especificado por :ref:`Parameter<enum_CPUParticles3D_Parameter>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_param_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_param_max>`

Devuelve el rango de valores máximo para el parámetro dado.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_param_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_param_min>`

Devuelve el rango de valores mínimo para el parámetro dado.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_particle_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_particle_flag>`

Devuelve el estado habilitado de la bandera de partícula dada.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_request_particles_process:

.. rst-class:: classref-method

|void| **request_particles_process**\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_CPUParticles3D_method_request_particles_process>`

Requests the particles to process for extra process time during a single frame.

\ ``process_time`` defines the time that the particles will process while emitting is on. ``process_time_residual`` defines the time that particles will process with emitting turned off for the simulation. When combined with :ref:`speed_scale<class_CPUParticles3D_property_speed_scale>` set to ``0.0``, this is useful to be able to seek a particle system timeline.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_restart:

.. rst-class:: classref-method

|void| **restart**\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CPUParticles3D_method_restart>`

Reinicia el emisor de partículas.

Si ``keep_seed`` es ``true``, se conservará la semilla aleatoria actual. Útil para búsquedas y reproducción.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_param_curve:

.. rst-class:: classref-method

|void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_param_curve>`

Establece la :ref:`Curve<class_Curve>` del parámetro especificado por :ref:`Parameter<enum_CPUParticles3D_Parameter>`. Debe ser una :ref:`Curve<class_Curve>` unitaria.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_param_max:

.. rst-class:: classref-method

|void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_param_max>`

Establece el valor máximo para el parámetro dado.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_param_min:

.. rst-class:: classref-method

|void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_param_min>`

Establece el valor mínimo para el parámetro dado.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_particle_flag:

.. rst-class:: classref-method

|void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_particle_flag>`

Habilita o deshabilita la bandera dada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
