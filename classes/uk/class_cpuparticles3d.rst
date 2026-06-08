:github_url: hide

.. _class_CPUParticles3D:

CPUParticles3D
==============

**Успадковує:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Випромінювач 3D частин процесора.

.. rst-class:: classref-introduction-group

Опис
--------

На основі 3D частинки ЦП використовуються для створення різних систем частинок і ефектів.

Дивись також :ref:`GPUParticles3D<class_GPUParticles3D>`, що забезпечує той самий функціонал з прискоренням обладнання, але не може працювати на старих пристроях.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Системи частинок (3D) <../tutorials/3d/particles/index>`

.. rst-class:: classref-reftable-group

Властивості
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

Методи
------------

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

Сигнали
--------------

.. _class_CPUParticles3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_CPUParticles3D_signal_finished>`

Випробувано, коли всі активні частинки закінчили обробку. Коли :ref:`one_shot<class_CPUParticles3D_property_one_shot>` вимкнено, частинки будуть оброблятися безперервно, тому це ніколи не вдається.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_CPUParticles3D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_CPUParticles3D_DrawOrder>`

.. _class_CPUParticles3D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

Терміни нараховуються в порядку, передбаченому.

.. _class_CPUParticles3D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

Терміни нараховуються в порядку денного життя. Іншими словами, частинка з найвищим терміном придатна на фронті.

.. _class_CPUParticles3D_constant_DRAW_ORDER_VIEW_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **DRAW_ORDER_VIEW_DEPTH** = ``2``

Терміни натягуються для глибини.

.. rst-class:: classref-item-separator

----

.. _enum_CPUParticles3D_Parameter:

.. rst-class:: classref-enumeration

enum **Parameter**: :ref:`🔗<enum_CPUParticles3D_Parameter>`

.. _class_CPUParticles3D_constant_PARAM_INITIAL_LINEAR_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_INITIAL_LINEAR_VELOCITY** = ``0``

Використовуйте з :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`, і :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для встановлення початкових властивостей швидкості.

.. _class_CPUParticles3D_constant_PARAM_ANGULAR_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANGULAR_VELOCITY** = ``1``

Використовуйте з :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`, і :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для встановлення кутових властивостей швидкості.

.. _class_CPUParticles3D_constant_PARAM_ORBIT_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ORBIT_VELOCITY** = ``2``

Використовуйте з :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`, і :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для встановлення орбітальних властивостей швидкості.

.. _class_CPUParticles3D_constant_PARAM_LINEAR_ACCEL:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_LINEAR_ACCEL** = ``3``

Використовуйте з :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`, і :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для встановлення лінійних властивостей прискорення.

.. _class_CPUParticles3D_constant_PARAM_RADIAL_ACCEL:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_RADIAL_ACCEL** = ``4``

Використовуйте з :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`, і :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для встановлення радіального прискорення властивостей.

.. _class_CPUParticles3D_constant_PARAM_TANGENTIAL_ACCEL:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_TANGENTIAL_ACCEL** = ``5``

Використовуйте з :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`, і :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для встановлення тангенціальних властивостей прискорення.

.. _class_CPUParticles3D_constant_PARAM_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_DAMPING** = ``6``

Використовуйте з :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`, і :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для встановлення демпферних властивостей.

.. _class_CPUParticles3D_constant_PARAM_ANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANGLE** = ``7``

Використовуйте з :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`, і :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для встановлення кутових властивостей.

.. _class_CPUParticles3D_constant_PARAM_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_SCALE** = ``8``

Використовуйте з :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`, і :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для встановлення вагових властивостей.

.. _class_CPUParticles3D_constant_PARAM_HUE_VARIATION:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_HUE_VARIATION** = ``9``

Використовуйте з :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`, і :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для встановлення параметрів відтінку.

.. _class_CPUParticles3D_constant_PARAM_ANIM_SPEED:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANIM_SPEED** = ``10``

Використовуйте з :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`, і :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для встановлення параметрів анімації.

.. _class_CPUParticles3D_constant_PARAM_ANIM_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANIM_OFFSET** = ``11``

Використовуйте з :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`, і :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для встановлення анімаційних офсетних властивостей.

.. _class_CPUParticles3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_MAX** = ``12``

Представляємо розмір параметра :ref:`Parameter<enum_CPUParticles3D_Parameter>`.

.. rst-class:: classref-item-separator

----

.. _enum_CPUParticles3D_ParticleFlags:

.. rst-class:: classref-enumeration

enum **ParticleFlags**: :ref:`🔗<enum_CPUParticles3D_ParticleFlags>`

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY** = ``0``

Використовуйте з :ref:`set_particle_flag()<class_CPUParticles3D_method_set_particle_flag>` для встановлення :ref:`particle_flag_align_y<class_CPUParticles3D_property_particle_flag_align_y>`.

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_ROTATE_Y:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_ROTATE_Y** = ``1``

Використовуйте разом з :ref:`set_particle_flag()<class_CPUParticles3D_method_set_particle_flag>` для встановлення :ref:`particle_flag_rotate_y<class_CPUParticles3D_property_particle_flag_rotate_y>`.

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_DISABLE_Z:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_DISABLE_Z** = ``2``

Використовуйте разом з методом :ref:`set_particle_flag()<class_CPUParticles3D_method_set_particle_flag>` для встановлення :ref:`particle_flag_disable_z<class_CPUParticles3D_property_particle_flag_disable_z>`.

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_MAX** = ``3``

Представляємо розмір :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_CPUParticles3D_EmissionShape:

.. rst-class:: classref-enumeration

enum **EmissionShape**: :ref:`🔗<enum_CPUParticles3D_EmissionShape>`

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_POINT:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_POINT** = ``0``

Всі частинки будуть вдаватися з однієї точки.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_SPHERE:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_SPHERE** = ``1``

У об'ємі сфери будуть видані частки.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_SPHERE_SURFACE:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_SPHERE_SURFACE** = ``2``

На поверхні сфери нанесуть частки.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_BOX:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_BOX** = ``3``

У об'ємі коробки нанесені частки.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_POINTS:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_POINTS** = ``4``

Часті дії будуть видані на позиції, вибраному випадковим чином серед :ref:`emission_points<class_CPUParticles3D_property_emission_points>`. Колір частинок буде модулювати :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>`.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_DIRECTED_POINTS** = ``5``

Часті дії будуть видані на позиції, вибраному випадковим чином серед :ref:`emission_points<class_CPUParticles3D_property_emission_points>`. Швидкість і обертання частинок буде встановлена на основі :ref:`emission_normals<class_CPUParticles3D_property_emission_normals>`. Колір частинок буде модулювати :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>`.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_RING:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_RING** = ``6``

У кільцях або циліндрі нанесені частки.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_MAX** = ``7``

Представляємо розмір :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CPUParticles3D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_CPUParticles3D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

Кількість частинок, які випромінюються в одному циклі викидів.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angle_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **angle_curve** :ref:`🔗<class_CPUParticles3D_property_angle_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Обертання кожної частинки буде анімовано вздовж цієї :ref:`Curve<class_Curve>`. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angle_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **angle_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angle_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальний кут.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angle_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **angle_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angle_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мінімальний кут.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angular_velocity_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **angular_velocity_curve** :ref:`🔗<class_CPUParticles3D_property_angular_velocity_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Кутова (швидкість обертання) кожної частинки змінюватиметься вздовж цієї :ref:`Curve<class_Curve>` протягом її життя. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angular_velocity_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angular_velocity_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальна початкова кутова швидкістю (швидкість обертання) наноситься на кожну *частинку *.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angular_velocity_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angular_velocity_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мінімальна початкова кутова швидкість (швидкістю обертання) наноситься на кожну *частинку *.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_offset_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **anim_offset_curve** :ref:`🔗<class_CPUParticles3D_property_anim_offset_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Зсув анімації кожної частинки змінюватиметься вздовж цієї :ref:`Curve<class_Curve>`. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_offset_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_offset_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_offset_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальна анімація офсету.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_offset_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_offset_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_offset_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мінімальна анімація офсету.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_speed_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **anim_speed_curve** :ref:`🔗<class_CPUParticles3D_property_anim_speed_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Швидкість анімації кожної частинки змінюватиметься вздовж цієї :ref:`Curve<class_Curve>`. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_speed_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_speed_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_speed_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальна швидкість анімації частинок.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_speed_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_speed_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_speed_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мінімальна швидкість анімації частинок.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CPUParticles3D_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

Кожен початковий колір частинки.

\ **Примітка:** :ref:`color<class_CPUParticles3D_property_color>` мультиплікації кольорів вершини частинок. Щоб мати видимий ефект на :ref:`BaseMaterial3D<class_BaseMaterial3D>`, ``пам'ятний базиMaterial3D.vertex_color_use_as_albedo`` *must* ``true``. Для :ref:`ShaderMaterial<class_ShaderMaterial>` ``ALBEDO *= COLOR.rgb;`` необхідно вставляти в шейдер `` фрагмент()``. В іншому випадку :ref:`color<class_CPUParticles3D_property_color>` не буде видимого ефекту.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_color_initial_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_initial_ramp** :ref:`🔗<class_CPUParticles3D_property_color_initial_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_initial_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_initial_ramp**\ (\ )

Початковий колір кожної частинки змінюватиметься вздовж цього :ref:`Gradient<class_Gradient>` (помноженого на :ref:`color<class_CPUParticles3D_property_color>`).

\ **Примітка:** :ref:`color_initial_ramp<class_CPUParticles3D_property_color_initial_ramp>` перемножує кольори вершин сіті частинок. Щоб мати видимий ефект на :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *має* бути ``true``. Для :ref:`ShaderMaterial<class_ShaderMaterial>`, ``ALBEDO *= COLOR.rgb;`` має бути вставлено у функцію ``fragment()`` шейдера. В іншому випадку, :ref:`color_initial_ramp<class_CPUParticles3D_property_color_initial_ramp>` не матиме видимого ефекту.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_color_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_ramp** :ref:`🔗<class_CPUParticles3D_property_color_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_ramp**\ (\ )

Колір кожної частинки змінюватиметься вздовж цього :ref:`Gradient<class_Gradient>` протягом її життя (помноженого на :ref:`color<class_CPUParticles3D_property_color>`).

\ **Примітка:** :ref:`color_ramp<class_CPUParticles3D_property_color_ramp>` перемножує кольори вершин сіті частинок. Щоб мати видимий ефект на :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *має* бути ``true``. Для :ref:`ShaderMaterial<class_ShaderMaterial>`, ``ALBEDO *= COLOR.rgb;`` має бути вставлено у функцію ``fragment()`` шейдера. В іншому випадку :ref:`color_ramp<class_CPUParticles3D_property_color_ramp>` не матиме видимого ефекту.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_damping_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **damping_curve** :ref:`🔗<class_CPUParticles3D_property_damping_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Демпфування змінюватиметься вздовж цієї :ref:`Curve<class_Curve>`. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_damping_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_damping_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальне пошкодження.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_damping_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_damping_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мінімальне пошкодження.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **direction** = ``Vector3(1, 0, 0)`` :ref:`🔗<class_CPUParticles3D_property_direction>`

.. rst-class:: classref-property-setget

- |void| **set_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_direction**\ (\ )

Блок векторний, що визначає напрямок викидів частинок.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **draw_order** = ``0`` :ref:`🔗<class_CPUParticles3D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **get_draw_order**\ (\ )

Порядок малювання частинок.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_box_extents:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **emission_box_extents** :ref:`🔗<class_CPUParticles3D_property_emission_box_extents>`

.. rst-class:: classref-property-setget

- |void| **set_emission_box_extents**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_emission_box_extents**\ (\ )

У випадку, якщо :ref:`emission_shape<class_CPUParticles3D_property_emission_shape>` встановлюється до :ref:`EMISSION_SHAPE_BOX<class_CPUParticles3D_constant_EMISSION_SHAPE_BOX>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **emission_colors** = ``PackedColorArray()`` :ref:`🔗<class_CPUParticles3D_property_emission_colors>`

.. rst-class:: classref-property-setget

- |void| **set_emission_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_emission_colors**\ (\ )

Налаштовує :ref:`Color<class_Color>` для модуляції частинок при використанні :ref:`EMISSION_SHAPE_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_POINTS>` або :ref:`EMISSION_SHAPE_DIRECTED_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS>`.

\ **Примітка:** :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>` мультиплікації колірних гамок з сітки вершин. Щоб мати видимий ефект на :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`базиMaterial3D.vertex_color_use_as_albedo<class_базиMaterial3D_member_vertex_color_use_as_albedo>` *must* ``true``. Для :ref:`ShaderMaterial<class_ShaderMaterial>` ``ALBEDO *= COLOR.rgb;`` необхідно вставляти в фрагменті шейра `` ()``. В іншому випадку, :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>` не буде видимого ефекту.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_normals:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **emission_normals** :ref:`🔗<class_CPUParticles3D_property_emission_normals>`

.. rst-class:: classref-property-setget

- |void| **set_emission_normals**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_emission_normals**\ (\ )

При використанні :ref:`EMISSION_SHAPE_DIRECTED_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS>` ввімкнено частинки.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_points:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **emission_points** :ref:`🔗<class_CPUParticles3D_property_emission_points>`

.. rst-class:: classref-property-setget

- |void| **set_emission_points**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_emission_points**\ (\ )

Налаштовує початкові позиції для спавних частинок при використанні :ref:`EMISSION_SHAPE_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_POINTS>` або :ref:`EMISSION_SHAPE_DIRECTED_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_axis:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **emission_ring_axis** :ref:`🔗<class_CPUParticles3D_property_emission_ring_axis>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_axis**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_emission_ring_axis**\ (\ )

Ось кільце при використанні випромінювача :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_cone_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_cone_angle** :ref:`🔗<class_CPUParticles3D_property_emission_ring_cone_angle>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_cone_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_cone_angle**\ (\ )

Кут конуса при використанні випромінювача :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`. За замовчуванням кут 90 градусів створює кільце, а кут 0 градусів - конус. Проміжні значення призведуть до кільця, де один кінець більший за інший.

\ **Примітка:** Залежно від :ref:`emission_ring_height<class_CPUParticles3D_property_emission_ring_height>`, кут може бути затиснутий, якщо кінець кільця досягне ідеального конуса.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_height** :ref:`🔗<class_CPUParticles3D_property_emission_ring_height>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_height**\ (\ )

Висота кільця при використанні випромінювача :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_inner_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_inner_radius** :ref:`🔗<class_CPUParticles3D_property_emission_ring_inner_radius>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_inner_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_inner_radius**\ (\ )

Внутрішній радіус кільця при використанні випромінювача :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_radius** :ref:`🔗<class_CPUParticles3D_property_emission_ring_radius>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_radius**\ (\ )

Радіус кільця при використанні випромінювача :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_shape:

.. rst-class:: classref-property

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **emission_shape** = ``0`` :ref:`🔗<class_CPUParticles3D_property_emission_shape>`

.. rst-class:: classref-property-setget

- |void| **set_emission_shape**\ (\ value\: :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>`\ )
- :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **get_emission_shape**\ (\ )

Частинки будуть викидатися всередині цієї області.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_sphere_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_sphere_radius** :ref:`🔗<class_CPUParticles3D_property_emission_sphere_radius>`

.. rst-class:: classref-property-setget

- |void| **set_emission_sphere_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_sphere_radius**\ (\ )

Радіус сфери, якщо :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` встановлюється до :ref:`EMISSION_SHAPE_SPHERE<class_CPUParticles3D_constant_EMISSION_SHAPE_SPHERE>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_CPUParticles3D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

Якщо ``true``, частинки вдаються. :ref:`emitting<class_CPUParticles3D_property_emitting>` може бути використаний для запуску та припинення частинок з випромінювання. Тим не менш, якщо :ref:`one_shot<class_CPUParticles3D_property_one_shot>` є ``true`` налаштування :ref:`emitting<class_CPUParticles3D_property_emitting>` до ``true`` не перезапустити цикл випромінювання до після обробки всіх активних частинок. Ви можете використовувати сигнал :ref:`finished<class_CPUParticles3D_signal_finished>`, який буде повідомлено один раз, коли всі активні частинки закінчуються обробкою.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

Як швидко викидаються частинки в циклі емісії. Якщо більше ``0``, з'явиться проміжок викидів до наступного циклу.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``0`` :ref:`🔗<class_CPUParticles3D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

Швидкість рами частинок фіксується до значення. Наприклад, зміна значення до 2 призведе до зменшення частинок на 2 кадри на другий. Зверніть увагу, що це не сповільнює саму систему частинок.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_flatness:

.. rst-class:: classref-property

:ref:`float<class_float>` **flatness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_flatness>`

.. rst-class:: classref-property-setget

- |void| **set_flatness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_flatness**\ (\ )

Кількість ``пам'яті поширення`` в літаку Y/Z. Значення ``1`` обмежує частинки до площини X / Z.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_CPUParticles3D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

Якщо ``true``, результати розрахунку дробової дельти, яка має ефект відображення гладких частинок.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_gravity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity** = ``Vector3(0, -9.8, 0)`` :ref:`🔗<class_CPUParticles3D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity**\ (\ )

Гравітність наноситься на кожну частинку.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_hue_variation_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **hue_variation_curve** :ref:`🔗<class_CPUParticles3D_property_hue_variation_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Відтінок кожної частинки змінюватиметься вздовж цієї :ref:`Curve<class_Curve>`. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_hue_variation_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **hue_variation_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_hue_variation_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальна варіація відтінку.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_hue_variation_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **hue_variation_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_hue_variation_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мінімальна зміна відтінку.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_initial_velocity_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **initial_velocity_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_initial_velocity_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальне значення початкової швидкості.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_initial_velocity_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **initial_velocity_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_initial_velocity_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мінімальне значення початкової швидкості.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

Кількість часу кожної частинки буде існувати.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_lifetime_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime_randomness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_lifetime_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime_randomness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime_randomness**\ (\ )

Термін служби частинок випадковим чином.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_linear_accel_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **linear_accel_curve** :ref:`🔗<class_CPUParticles3D_property_linear_accel_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Лінійне прискорення кожної частинки змінюватиметься вздовж цієї :ref:`Curve<class_Curve>`. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_linear_accel_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_accel_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_linear_accel_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальна лінійна прискорення.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_linear_accel_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_accel_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_linear_accel_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мінімальне лінійне прискорення.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_CPUParticles3D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

Якщо ``true``, частинки використовують координаційний простір материнської вершини (відомі як локальні координати). Це спричинить частинки для переміщення та обертання вздовж вершини **CPUParticles3D** (і його батьки), коли він переміщається або обертається. Якщо ``false``, частинки використовують глобальні координати; вони не перейдуть або обертаються вздовж вузла **CPUParticles3D** (і його батьки), коли він переміщається або обертається.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_CPUParticles3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

:ref:`Mesh<class_Mesh>` використовується для кожної частинки. Якщо ``null``, частинки будуть сфери.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_CPUParticles3D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

Якщо ``true``, виникає лише один цикл викидів. Якщо встановити ``true`` під час циклу, емісія буде припинена в кінці циклу.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_orbit_velocity_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **orbit_velocity_curve** :ref:`🔗<class_CPUParticles3D_property_orbit_velocity_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Орбітальна швидкість кожної частинки змінюватиметься вздовж цієї :ref:`Curve<class_Curve>`. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_orbit_velocity_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **orbit_velocity_max** :ref:`🔗<class_CPUParticles3D_property_orbit_velocity_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальна швидкість орбіти.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_orbit_velocity_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **orbit_velocity_min** :ref:`🔗<class_CPUParticles3D_property_orbit_velocity_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мінімальна швидкість орбіти.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_particle_flag_align_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particle_flag_align_y** = ``false`` :ref:`🔗<class_CPUParticles3D_property_particle_flag_align_y>`

.. rst-class:: classref-property-setget

- |void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|

Вирівнююча вісь Y з напрямком її швидкості.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_particle_flag_disable_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particle_flag_disable_z** = ``false`` :ref:`🔗<class_CPUParticles3D_property_particle_flag_disable_z>`

.. rst-class:: classref-property-setget

- |void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|

Якщо ``true``, частинки не рухаються на осі Z.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_particle_flag_rotate_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particle_flag_rotate_y** = ``false`` :ref:`🔗<class_CPUParticles3D_property_particle_flag_rotate_y>`

.. rst-class:: classref-property-setget

- |void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|

Якщо ``true``, частинки обертаються навколо осі Y :ref:`angle_min<class_CPUParticles3D_property_angle_min>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

Система частинок починається, якщо вона вже була запущена протягом багатьох секунд.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_radial_accel_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **radial_accel_curve** :ref:`🔗<class_CPUParticles3D_property_radial_accel_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Радіальне прискорення кожної частинки змінюватиметься вздовж цієї :ref:`Curve<class_Curve>`. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_radial_accel_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_accel_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_radial_accel_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальна радіальна прискорення.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_radial_accel_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_accel_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_radial_accel_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мінімальне радіальне прискорення.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

Відносність термінів життя емісії.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_amount_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_amount_curve** :ref:`🔗<class_CPUParticles3D_property_scale_amount_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Масштаб кожної частинки змінюватиметься вздовж цієї :ref:`Curve<class_Curve>`. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_amount_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **scale_amount_max** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_scale_amount_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальна вага.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_amount_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **scale_amount_min** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_scale_amount_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мінімальна вага.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_curve_x:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_curve_x** :ref:`🔗<class_CPUParticles3D_property_scale_curve_x>`

.. rst-class:: classref-property-setget

- |void| **set_scale_curve_x**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_scale_curve_x**\ (\ )

Викривлення для ваги над життям, вздовж осі x.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_curve_y:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_curve_y** :ref:`🔗<class_CPUParticles3D_property_scale_curve_y>`

.. rst-class:: classref-property-setget

- |void| **set_scale_curve_y**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_scale_curve_y**\ (\ )

Викривлення для масштабу над життям, вздовж осі я.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_curve_z:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_curve_z** :ref:`🔗<class_CPUParticles3D_property_scale_curve_z>`

.. rst-class:: classref-property-setget

- |void| **set_scale_curve_z**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_scale_curve_z**\ (\ )

Викривлення для масштабу над життям, вздовж осі Z.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_CPUParticles3D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Встановлює випадкове початкове число, яке використовується системою частинок. Ефективно, лише якщо :ref:`use_fixed_seed<class_CPUParticles3D_property_use_fixed_seed>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Співвідношення швидкості масштабування частинок. Значення ``0`` можна використовувати для паузи частинок.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_split_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **split_scale** = ``false`` :ref:`🔗<class_CPUParticles3D_property_split_scale>`

.. rst-class:: classref-property-setget

- |void| **set_split_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_split_scale**\ (\ )

Якщо встановити до ``true``, можна вказати три різних кривих масштабів, одну за вісь масштабу.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_spread:

.. rst-class:: classref-property

:ref:`float<class_float>` **spread** = ``45.0`` :ref:`🔗<class_CPUParticles3D_property_spread>`

.. rst-class:: classref-property-setget

- |void| **set_spread**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_spread**\ (\ )

Діапазон початкового напрямку частинок від `` +спред`` до ``-спред.`` градусів. Застосовується до площин X / Z і Y / Z.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_tangential_accel_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **tangential_accel_curve** :ref:`🔗<class_CPUParticles3D_property_tangential_accel_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Тангенціальне прискорення кожної частинки змінюватиметься вздовж цієї :ref:`Curve<class_Curve>`. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_tangential_accel_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **tangential_accel_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_tangential_accel_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальне прискорення тангенсу.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_tangential_accel_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **tangential_accel_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_tangential_accel_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мінімальне прискорення тангенсу.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_CPUParticles3D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

Якщо ``true``, частинки використовуватимуть той самий сімпл для кожної симуляції, використовуючи сімпл, визначений у :ref:`seed<class_CPUParticles3D_property_seed>`. Це корисно у ситуаціях, коли візуальний результат має бути однаковим у всіх відтвореннях, наприклад, при використанні режиму Movie Maker.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_visibility_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **visibility_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_CPUParticles3D_property_visibility_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_visibility_aabb**\ (\ )

:ref:`AABB<class_AABB>`, що визначає область вершини, який повинен бути видимим на екрані для системи частинок, щоб бути активним.

Вирощувати коробку, якщо частинки раптово з'являються / з'являються, коли вершина надходить / виводить екран. :ref:`AABB<class_AABB>` може бути вирощений за допомогою коду або з **Пачастини → Generate AABB** редактор інструментом.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_CPUParticles3D_method_capture_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **capture_aabb**\ (\ ) |const| :ref:`🔗<class_CPUParticles3D_method_capture_aabb>`

Повертає вісь вирівнюючу коробку, яка містить всі частинки, які активні в поточній рамі.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_CPUParticles3D_method_convert_from_particles>`

Налаштовує властивості цього вузла, щоб відповідати даній :ref:`GPUParticles3D<class_GPUParticles3D>` вершині з призначеним :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_param_curve:

.. rst-class:: classref-method

:ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_param_curve>`

Повертає параметр :ref:`Curve<class_Curve>` параметра, вказаний параметром :ref:`Parameter<enum_CPUParticles3D_Parameter>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_param_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_param_max>`

Повертає максимальний діапазон значень для даного параметра.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_param_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_param_min>`

Повертає діапазон мінімального значення для даного параметра.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_particle_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_particle_flag>`

Повертає увімкнений стан заданого прапора частинки.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_request_particles_process:

.. rst-class:: classref-method

|void| **request_particles_process**\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_CPUParticles3D_method_request_particles_process>`

Запитує у частинок додатковий час обробки протягом одного кадру.

\ ``process_time`` визначає час, протягом якого частинки будуть оброблятися, коли випромінювання увімкнено. ``process_time_residual`` визначає час, протягом якого частинки будуть оброблятися, коли випромінювання вимкнено для симуляції. У поєднанні з :ref:`speed_scale<class_CPUParticles3D_property_speed_scale>`, встановленим на ``0.0``, це корисно для перемотування часової шкали системи частинок.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_restart:

.. rst-class:: classref-method

|void| **restart**\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CPUParticles3D_method_restart>`

Перезапускає емітер частинок.

Якщо ``keep_seed`` має значення ``true``, поточне випадкове початкове число буде збережено. Корисно для пошуку та відтворення.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_param_curve:

.. rst-class:: classref-method

|void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_param_curve>`

Встановлює :ref:`Curve<class_Curve>` параметра, заданого ``eunm Parameter``. Має бути одиницею вимірювання :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_param_max:

.. rst-class:: classref-method

|void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_param_max>`

Налаштовує максимальне значення для даного параметра.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_param_min:

.. rst-class:: classref-method

|void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_param_min>`

Налаштовує мінімальне значення для даного параметра.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_particle_flag:

.. rst-class:: classref-method

|void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_particle_flag>`

Вмикає або вимикає заданий прапор частинки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
