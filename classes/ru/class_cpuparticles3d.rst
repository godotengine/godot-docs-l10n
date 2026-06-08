:github_url: hide

.. _class_CPUParticles3D:

CPUParticles3D
==============

**Наследует:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D-излучатель частиц на базе процессора.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел 3D-частиц на базе ЦП, используемый для создания различных систем частиц и эффектов.

См. также :ref:`GPUParticles3D<class_GPUParticles3D>`, который обеспечивает ту же функциональность с аппаратным ускорением, но может не работать на старых устройствах.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Системы частиц (3D) <../tutorials/3d/particles/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Сигналы
--------------

.. _class_CPUParticles3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_CPUParticles3D_signal_finished>`

Выпускается, когда все активные частицы завершили обработку. Когда :ref:`one_shot<class_CPUParticles3D_property_one_shot>` отключен, частицы будут обрабатываться непрерывно, поэтому это никогда не выпускается.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_CPUParticles3D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_CPUParticles3D_DrawOrder>`

.. _class_CPUParticles3D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

Частицы рисуются в порядке испускания.

.. _class_CPUParticles3D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

Частицы рисуются в порядке оставшегося времени жизни. Другими словами, частица с наибольшим временем жизни рисуется спереди.

.. _class_CPUParticles3D_constant_DRAW_ORDER_VIEW_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **DRAW_ORDER_VIEW_DEPTH** = ``2``

Частицы рисуются в порядке глубины.

.. rst-class:: classref-item-separator

----

.. _enum_CPUParticles3D_Parameter:

.. rst-class:: classref-enumeration

enum **Parameter**: :ref:`🔗<enum_CPUParticles3D_Parameter>`

.. _class_CPUParticles3D_constant_PARAM_INITIAL_LINEAR_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_INITIAL_LINEAR_VELOCITY** = ``0``

Используйте с :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` и :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для установки начальных свойств скорости.

.. _class_CPUParticles3D_constant_PARAM_ANGULAR_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANGULAR_VELOCITY** = ``1``

Используйте с :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` и :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для установки свойств угловой скорости.

.. _class_CPUParticles3D_constant_PARAM_ORBIT_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ORBIT_VELOCITY** = ``2``

Используйте с :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` и :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для задания свойств орбитальной скорости.

.. _class_CPUParticles3D_constant_PARAM_LINEAR_ACCEL:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_LINEAR_ACCEL** = ``3``

Используйте с :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` и :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для установки свойств линейного ускорения.

.. _class_CPUParticles3D_constant_PARAM_RADIAL_ACCEL:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_RADIAL_ACCEL** = ``4``

Используйте с :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` и :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для установки свойств радиального ускорения.

.. _class_CPUParticles3D_constant_PARAM_TANGENTIAL_ACCEL:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_TANGENTIAL_ACCEL** = ``5``

Используйте с :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` и :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для установки свойств тангенциального ускорения.

.. _class_CPUParticles3D_constant_PARAM_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_DAMPING** = ``6``

Используйте с :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` и :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для установки свойств демпфирования.

.. _class_CPUParticles3D_constant_PARAM_ANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANGLE** = ``7``

Используйте с :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` и :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для установки свойств угла.

.. _class_CPUParticles3D_constant_PARAM_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_SCALE** = ``8``

Используйте с :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` и :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для установки свойств масштаба.

.. _class_CPUParticles3D_constant_PARAM_HUE_VARIATION:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_HUE_VARIATION** = ``9``

Используйте с :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` и :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для установки свойств изменения оттенка.

.. _class_CPUParticles3D_constant_PARAM_ANIM_SPEED:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANIM_SPEED** = ``10``

Используйте с :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` и :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для установки свойств скорости анимации.

.. _class_CPUParticles3D_constant_PARAM_ANIM_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANIM_OFFSET** = ``11``

Используйте с :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`, :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>` и :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` для установки свойств смещения анимации.

.. _class_CPUParticles3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_MAX** = ``12``

Представляет размер перечисления :ref:`Parameter<enum_CPUParticles3D_Parameter>`.

.. rst-class:: classref-item-separator

----

.. _enum_CPUParticles3D_ParticleFlags:

.. rst-class:: classref-enumeration

enum **ParticleFlags**: :ref:`🔗<enum_CPUParticles3D_ParticleFlags>`

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY** = ``0``

Используйте с :ref:`set_particle_flag()<class_CPUParticles3D_method_set_particle_flag>` для установки :ref:`partial_flag_align_y<class_CPUParticles3D_property_partial_flag_align_y>`.

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_ROTATE_Y:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_ROTATE_Y** = ``1``

Используйте с :ref:`set_particle_flag()<class_CPUParticles3D_method_set_particle_flag>` для установки :ref:`partial_flag_rotate_y<class_CPUParticles3D_property_partial_flag_rotate_y>`.

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_DISABLE_Z:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_DISABLE_Z** = ``2``

Используйте с :ref:`set_particle_flag()<class_CPUParticles3D_method_set_particle_flag>` для установки :ref:`particle_flag_disable_z<class_CPUParticles3D_property_particle_flag_disable_z>`.

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_MAX** = ``3``

Представляет размер перечисления :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`.

.. rst-class:: classref-item-separator

----

.. _enum_CPUParticles3D_EmissionShape:

.. rst-class:: classref-enumeration

enum **EmissionShape**: :ref:`🔗<enum_CPUParticles3D_EmissionShape>`

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_POINT:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_POINT** = ``0``

Все частицы будут испускаться из одной точки.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_SPHERE:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_SPHERE** = ``1``

Частицы будут испускаться в объеме сферы.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_SPHERE_SURFACE:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_SPHERE_SURFACE** = ``2``

Частицы будут испускаться на поверхность сферы.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_BOX:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_BOX** = ``3``

Частицы будут испускаться в объеме коробки.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_POINTS:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_POINTS** = ``4``

Частицы будут испускаться в точке, выбранной случайным образом среди :ref:`emission_points<class_CPUParticles3D_property_emission_points>`. Цвет частиц будет модулироваться :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>`.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_DIRECTED_POINTS** = ``5``

Частицы будут испускаться в позиции, выбранной случайным образом среди :ref:`emission_points<class_CPUParticles3D_property_emission_points>`. Скорость и вращение частиц будут установлены на основе :ref:`emission_normals<class_CPUParticles3D_property_emission_normals>`. Цвет частиц будет модулироваться :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>`.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_RING:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_RING** = ``6``

Частицы будут выбрасываться в кольцо или цилиндр.

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_MAX** = ``7``

Представляет размер перечисления :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CPUParticles3D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_CPUParticles3D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

Количество частиц, выбрасываемых за один цикл выброса.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angle_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **angle_curve** :ref:`🔗<class_CPUParticles3D_property_angle_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Вращение каждой частицы будет анимировано вдоль этой :ref:`Curve<class_Curve>`. Должна быть единица :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angle_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **angle_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angle_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальный угол.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angle_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **angle_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angle_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Минимальный угол.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angular_velocity_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **angular_velocity_curve** :ref:`🔗<class_CPUParticles3D_property_angular_velocity_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Угловая скорость каждой частицы (скорость вращения) будет изменяться вдоль этой :ref:`Curve<class_Curve>` в течение ее жизни. Должна быть единицей :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angular_velocity_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angular_velocity_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальная начальная угловая скорость (ск. вращения), приложенная к каждой частице в *градусах* в секунду.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angular_velocity_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angular_velocity_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Минимальная начальная угловая скорость (ск. вращения), приложенная к каждой частице в *градусах* в секунду.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_offset_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **anim_offset_curve** :ref:`🔗<class_CPUParticles3D_property_anim_offset_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Смещение анимации каждой частицы будет меняться вдоль этой :ref:`Curve<class_Curve>`. Должно быть единицей :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_offset_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_offset_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_offset_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальное смещение анимации.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_offset_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_offset_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_offset_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Минимальное смещение анимации.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_speed_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **anim_speed_curve** :ref:`🔗<class_CPUParticles3D_property_anim_speed_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Скорость анимации каждой частицы будет меняться вдоль этой ``Кривой``. Должна быть единицей ``Кривой``.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_speed_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_speed_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_speed_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальная скорость анимации частиц.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_speed_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_speed_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_speed_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Минимальная скорость анимации частиц.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CPUParticles3D_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

Начальный цвет каждой частицы.

\ **Примечание:** :ref:`color<class_CPUParticles3D_property_color>` умножает цвета вершин сетки частиц. Чтобы иметь видимый эффект на :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *должен* быть ``true``. Для :ref:`ShaderMaterial<class_ShaderMaterial>` ``ALBEDO *= COLOR.rgb;`` должен быть вставлен в функцию шейдера ``fragment()``. В противном случае :ref:`color<class_CPUParticles3D_property_color>` не будет иметь видимого эффекта.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_color_initial_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_initial_ramp** :ref:`🔗<class_CPUParticles3D_property_color_initial_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_initial_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_initial_ramp**\ (\ )

Начальный цвет каждой частицы будет меняться вдоль этого :ref:`Gradient<class_Gradient>` (умноженного на :ref:`color<class_CPUParticles3D_property_color>`).

\ **Примечание:** :ref:`color_initial_ramp<class_CPUParticles3D_property_color_initial_ramp>` умножает цвета вершин сетки частиц. Чтобы иметь видимый эффект на :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *должен* быть ``true``. Для :ref:`ShaderMaterial<class_ShaderMaterial>` ``ALBEDO *= COLOR.rgb;`` должен быть вставлен в функцию шейдера ``fragment()``. В противном случае :ref:`color_initial_ramp<class_CPUParticles3D_property_color_initial_ramp>` не будет иметь видимого эффекта.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_color_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_ramp** :ref:`🔗<class_CPUParticles3D_property_color_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_ramp**\ (\ )

Цвет каждой частицы будет меняться по этому :ref:`Gradient<class_Gradient>` в течение ее жизни (умножается на :ref:`color<class_CPUParticles3D_property_color>`).

\ **Примечание:** :ref:`color_ramp<class_CPUParticles3D_property_color_ramp>` умножает цвета вершин сетки частицы. Чтобы иметь видимый эффект на :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *должен* быть ``true``. Для :ref:`ShaderMaterial<class_ShaderMaterial>` ``ALBEDO *= COLOR.rgb;`` должен быть вставлен в функцию шейдера ``fragment()``. В противном случае :ref:`color_ramp<class_CPUParticles3D_property_color_ramp>` не будет иметь видимого эффекта.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_damping_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **damping_curve** :ref:`🔗<class_CPUParticles3D_property_damping_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Затухание будет меняться вдоль этой :ref:`Curve<class_Curve>`. Должно быть единицей :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_damping_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_damping_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальное демпфирование.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_damping_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_damping_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Минимальное затухание.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **direction** = ``Vector3(1, 0, 0)`` :ref:`🔗<class_CPUParticles3D_property_direction>`

.. rst-class:: classref-property-setget

- |void| **set_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_direction**\ (\ )

Единичный вектор, задающий направление испускания частиц.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **draw_order** = ``0`` :ref:`🔗<class_CPUParticles3D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **get_draw_order**\ (\ )

Порядок отрисовки частиц.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_box_extents:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **emission_box_extents** :ref:`🔗<class_CPUParticles3D_property_emission_box_extents>`

.. rst-class:: classref-property-setget

- |void| **set_emission_box_extents**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_emission_box_extents**\ (\ )

Размеры прямоугольника, если :ref:`emission_shape<class_CPUParticles3D_property_emission_shape>` установлен в :ref:`EMISSION_SHAPE_BOX<class_CPUParticles3D_constant_EMISSION_SHAPE_BOX>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **emission_colors** = ``PackedColorArray()`` :ref:`🔗<class_CPUParticles3D_property_emission_colors>`

.. rst-class:: classref-property-setget

- |void| **set_emission_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_emission_colors**\ (\ )

Устанавливает ``Цвет``-а для модуляции частиц при использовании :ref:`EMISSION_SHAPE_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_POINTS>` или :ref:`EMISSION_SHAPE_DIRECTED_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS>`.

\ **Примечание:** :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>` умножает цвета вершин сетки частиц. Чтобы иметь видимый эффект на :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *должен* быть ``true``. Для :ref:`ShaderMaterial<class_ShaderMaterial>` ``ALBEDO *= COLOR.rgb;`` должен быть вставлен в функцию шейдера ``fragment()``. В противном случае :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>` не будет иметь видимого эффекта.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_normals:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **emission_normals** :ref:`🔗<class_CPUParticles3D_property_emission_normals>`

.. rst-class:: classref-property-setget

- |void| **set_emission_normals**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_emission_normals**\ (\ )

Задает направление, в котором будут испускаться частицы при использовании :ref:`EMISSION_SHAPE_DIRECTED_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_points:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **emission_points** :ref:`🔗<class_CPUParticles3D_property_emission_points>`

.. rst-class:: classref-property-setget

- |void| **set_emission_points**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_emission_points**\ (\ )

Устанавливает начальные позиции для создания частиц при использовании :ref:`EMISSION_SHAPE_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_POINTS>` или :ref:`EMISSION_SHAPE_DIRECTED_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_axis:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **emission_ring_axis** :ref:`🔗<class_CPUParticles3D_property_emission_ring_axis>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_axis**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_emission_ring_axis**\ (\ )

Ось кольца при использовании излучателя :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_cone_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_cone_angle** :ref:`🔗<class_CPUParticles3D_property_emission_ring_cone_angle>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_cone_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_cone_angle**\ (\ )

Угол конуса при использовании эмиттера :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`. Угол по умолчанию 90 градусов приводит к кольцу, а угол 0 градусов приводит к конусу. Промежуточные значения приведут к кольцу, где один конец больше другого.

\ **Примечание:** В зависимости от :ref:`emission_ring_height<class_CPUParticles3D_property_emission_ring_height>` угол может быть зафиксирован, если конец кольца достигнут, чтобы сформировать идеальный конус.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_height** :ref:`🔗<class_CPUParticles3D_property_emission_ring_height>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_height**\ (\ )

Высота кольца при использовании излучателя :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_inner_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_inner_radius** :ref:`🔗<class_CPUParticles3D_property_emission_ring_inner_radius>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_inner_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_inner_radius**\ (\ )

Внутренний радиус кольца при использовании излучателя :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_radius** :ref:`🔗<class_CPUParticles3D_property_emission_ring_radius>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_radius**\ (\ )

Радиус кольца при использовании излучателя :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_shape:

.. rst-class:: classref-property

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **emission_shape** = ``0`` :ref:`🔗<class_CPUParticles3D_property_emission_shape>`

.. rst-class:: classref-property-setget

- |void| **set_emission_shape**\ (\ value\: :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>`\ )
- :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **get_emission_shape**\ (\ )

Внутри этой области будут испускаться частицы.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_sphere_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_sphere_radius** :ref:`🔗<class_CPUParticles3D_property_emission_sphere_radius>`

.. rst-class:: classref-property-setget

- |void| **set_emission_sphere_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_sphere_radius**\ (\ )

Радиус сферы, если :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` установлен на :ref:`EMISSION_SHAPE_SPHERE<class_CPUParticles3D_constant_EMISSION_SHAPE_SPHERE>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_CPUParticles3D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

Если ``true``, частицы испускаются. :ref:`emitting<class_CPUParticles3D_property_emitting>` можно использовать для запуска и остановки испускания частиц. Однако, если :ref:`one_shot<class_CPUParticles3D_property_one_shot>` равно ``true``, установка :ref:`emitting<class_CPUParticles3D_property_emitting>` в ``true`` не перезапустит цикл испускания, пока все активные частицы не закончат обработку. Вы можете использовать сигнал ``signalfinished``, чтобы получать уведомления, как только все активные частицы закончат обработку.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

Насколько быстро выбрасываются частицы в цикле эмиссии. Если больше ``0``, то будет разрыв в эмиссии до начала следующего цикла.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``0`` :ref:`🔗<class_CPUParticles3D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

Частота кадров системы частиц зафиксирована на значении. Например, изменение значения на 2 заставит частицы рендериться со скоростью 2 кадра в секунду. Обратите внимание, что это не замедляет саму систему частиц.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_flatness:

.. rst-class:: classref-property

:ref:`float<class_float>` **flatness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_flatness>`

.. rst-class:: classref-property-setget

- |void| **set_flatness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_flatness**\ (\ )

Величина :ref:`spread<class_CPUParticles3D_property_spread>` в плоскости Y/Z. Значение ``1`` ограничивает частицы плоскостью X/Z.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_CPUParticles3D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

Если ``true``, то выполняется дробный расчет дельты, который обеспечивает более плавный эффект отображения частиц.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_gravity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity** = ``Vector3(0, -9.8, 0)`` :ref:`🔗<class_CPUParticles3D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity**\ (\ )

Гравитация действует на каждую частицу.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_hue_variation_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **hue_variation_curve** :ref:`🔗<class_CPUParticles3D_property_hue_variation_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Оттенок каждой частицы будет меняться вдоль этой :ref:`Curve<class_Curve>`. Должна быть единица :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_hue_variation_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **hue_variation_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_hue_variation_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Макс. вариативность оттенков.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_hue_variation_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **hue_variation_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_hue_variation_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мин. вариативность оттенков.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_initial_velocity_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **initial_velocity_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_initial_velocity_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Максимальное значение начальной скорости.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_initial_velocity_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **initial_velocity_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_initial_velocity_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Минимальное значение начальной скорости.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

Количество времени, в течение которого каждая частица будет существовать.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_lifetime_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime_randomness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_lifetime_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime_randomness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime_randomness**\ (\ )

Коэффициент случайности времени жизни частицы.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_linear_accel_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **linear_accel_curve** :ref:`🔗<class_CPUParticles3D_property_linear_accel_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Линейное ускорение каждой частицы будет изменяться вдоль этой :ref:`Curve<class_Curve>`. Должно быть единицей :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_linear_accel_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_accel_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_linear_accel_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Макс. линейное ускорение.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_linear_accel_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_accel_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_linear_accel_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мин. линейное ускорение.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_CPUParticles3D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

Если ``true``, частицы используют координатное пространство родительского узла (известное как локальные координаты). Это заставит частицы двигаться и вращаться вдоль узла **CPUParticles3D** (и его родителей) при его перемещении или повороте. Если ``false``, частицы используют глобальные координаты; они не будут двигаться или вращаться вдоль узла **CPUParticles3D** (и его родителей) при его перемещении или повороте.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_CPUParticles3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

:ref:`Mesh<class_Mesh>` используется для каждой частицы. Если ``null``, частицы будут сферами.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_CPUParticles3D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

Если ``true``, происходит только один цикл эмиссии. Если установить ``true`` во время цикла, эмиссия прекратится в конце цикла.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_orbit_velocity_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **orbit_velocity_curve** :ref:`🔗<class_CPUParticles3D_property_orbit_velocity_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Орбитальная скорость каждой частицы будет меняться вдоль этой :ref:`Curve<class_Curve>`. Должна быть единицей :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_orbit_velocity_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **orbit_velocity_max** :ref:`🔗<class_CPUParticles3D_property_orbit_velocity_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Макс. орбитальная скорость.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_orbit_velocity_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **orbit_velocity_min** :ref:`🔗<class_CPUParticles3D_property_orbit_velocity_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мин. орбитальная скорость.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_particle_flag_align_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particle_flag_align_y** = ``false`` :ref:`🔗<class_CPUParticles3D_property_particle_flag_align_y>`

.. rst-class:: classref-property-setget

- |void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|

Совместите ось Y частицы с направлением ее скорости.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_particle_flag_disable_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particle_flag_disable_z** = ``false`` :ref:`🔗<class_CPUParticles3D_property_particle_flag_disable_z>`

.. rst-class:: classref-property-setget

- |void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|

Если ``true``, частицы не будут двигаться по оси Z.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_particle_flag_rotate_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particle_flag_rotate_y** = ``false`` :ref:`🔗<class_CPUParticles3D_property_particle_flag_rotate_y>`

.. rst-class:: classref-property-setget

- |void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|

Если ``true``, частицы вращаются вокруг оси Y на :ref:`angle_min<class_CPUParticles3D_property_angle_min>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

Система частиц запускается так, как будто она уже проработала указанное количество секунд.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_radial_accel_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **radial_accel_curve** :ref:`🔗<class_CPUParticles3D_property_radial_accel_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Радиальное ускорение каждой частицы будет изменяться вдоль этой :ref:`Curve<class_Curve>`. Должно быть единицей :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_radial_accel_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_accel_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_radial_accel_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Макс. радиальное ускорение.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_radial_accel_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_accel_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_radial_accel_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мин. радиальное ускорение.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

Коэффициент случайности времени жизни излучения.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_amount_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_amount_curve** :ref:`🔗<class_CPUParticles3D_property_scale_amount_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Масштаб каждой частицы будет меняться вдоль этой :ref:`Curve<class_Curve>`. Должен быть единицей :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_amount_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **scale_amount_max** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_scale_amount_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Макс. масштаб.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_amount_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **scale_amount_min** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_scale_amount_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Миним. масштаб.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_curve_x:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_curve_x** :ref:`🔗<class_CPUParticles3D_property_scale_curve_x>`

.. rst-class:: classref-property-setget

- |void| **set_scale_curve_x**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_scale_curve_x**\ (\ )

Кривая шкалы на протяжении жизни по оси x.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_curve_y:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_curve_y** :ref:`🔗<class_CPUParticles3D_property_scale_curve_y>`

.. rst-class:: classref-property-setget

- |void| **set_scale_curve_y**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_scale_curve_y**\ (\ )

Кривая шкалы на протяжении жизни по оси y.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_curve_z:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_curve_z** :ref:`🔗<class_CPUParticles3D_property_scale_curve_z>`

.. rst-class:: classref-property-setget

- |void| **set_scale_curve_z**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_scale_curve_z**\ (\ )

Кривая шкалы на протяжении жизни по оси z.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_CPUParticles3D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Устанавливает случайное семя, используемое системой частиц. Действует только если :ref:`use_fixed_seed<class_CPUParticles3D_property_use_fixed_seed>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Коэффициент масштабирования скорости работы системы частиц. Значение ``0`` может использоваться для остановки частиц.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_split_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **split_scale** = ``false`` :ref:`🔗<class_CPUParticles3D_property_split_scale>`

.. rst-class:: classref-property-setget

- |void| **set_split_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_split_scale**\ (\ )

Если задано значение ``true``, можно указать три различные кривые шкалы, по одной на каждую ось шкалы.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_spread:

.. rst-class:: classref-property

:ref:`float<class_float>` **spread** = ``45.0`` :ref:`🔗<class_CPUParticles3D_property_spread>`

.. rst-class:: classref-property-setget

- |void| **set_spread**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_spread**\ (\ )

Начальный диапазон направления каждой частицы составляет от ``+spread`` до ``-spread`` градусов. Применяется к плоскостям X/Z и Y/Z.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_tangential_accel_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **tangential_accel_curve** :ref:`🔗<class_CPUParticles3D_property_tangential_accel_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Тангенциальное ускорение каждой частицы будет меняться вдоль этой :ref:`Curve<class_Curve>`. Должно быть единицей :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_tangential_accel_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **tangential_accel_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_tangential_accel_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Макс. касательное ускорение.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_tangential_accel_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **tangential_accel_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_tangential_accel_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Мин. касательное ускорение.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_CPUParticles3D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

Если ``true``, частицы будут использовать одно и то же семя для каждой симуляции, используя семя, определенное в :ref:`seed<class_CPUParticles3D_property_seed>`. Это полезно в ситуациях, когда визуальный результат должен быть согласованным между повторами, например, при использовании режима Movie Maker.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_visibility_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **visibility_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_CPUParticles3D_property_visibility_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_visibility_aabb**\ (\ )

:ref:`AABB<class_AABB>`, который определяет область узла, которая должна быть видна на экране, чтобы система частиц была активной.

Увеличьте поле, если частицы внезапно появляются/исчезают, когда узел входит/выходит из экрана. :ref:`AABB<class_AABB>` можно увеличить с помощью кода или с помощью инструмента редактора **Particles → Generate AABB\ ``[/b``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_CPUParticles3D_method_capture_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **capture_aabb**\ (\ ) |const| :ref:`🔗<class_CPUParticles3D_method_capture_aabb>`

Возвращает выровненный по осям ограничивающий прямоугольник, содержащий все частицы, активные в текущем кадре.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_CPUParticles3D_method_convert_from_particles>`

Устанавливает свойства этого узла для соответствия заданному узлу :ref:`GPUParticles3D<class_GPUParticles3D>` с назначенным :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_param_curve:

.. rst-class:: classref-method

:ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_param_curve>`

Возвращает :ref:`Curve<class_Curve>` параметра, указанного в :ref:`Parameter<enum_CPUParticles3D_Parameter>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_param_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_param_max>`

Возвращает максимальный диапазон значений для заданного параметра.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_param_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_param_min>`

Возвращает минимальный диапазон значений для заданного параметра.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_particle_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_particle_flag>`

Возвращает включенное состояние заданного флага частицы.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_request_particles_process:

.. rst-class:: classref-method

|void| **request_particles_process**\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_CPUParticles3D_method_request_particles_process>`

Запрашивает у частиц дополнительное время обработки в течение одного кадра.

\ ``process_time`` определяет время обработки частиц при включенном излучении. ``process_time_residual`` определяет время обработки частиц при выключенном излучении для моделирования. В сочетании с :ref:`speed_scale<class_CPUParticles3D_property_speed_scale>`, установленным на ``0.0``, это полезно для возможности поиска временной шкалы системы частиц.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_restart:

.. rst-class:: classref-method

|void| **restart**\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CPUParticles3D_method_restart>`

Перезапускает излучатель частиц.

Если ``keep_seed`` равен ``true``, текущее случайное семя будет сохранено. Полезно для поиска и воспроизведения.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_param_curve:

.. rst-class:: classref-method

|void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_param_curve>`

Устанавливает :ref:`Curve<class_Curve>` параметра, указанного в :ref:`Parameter<enum_CPUParticles3D_Parameter>`. Должен быть единицей :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_param_max:

.. rst-class:: classref-method

|void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_param_max>`

Устанавливает максимальное значение для данного параметра.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_param_min:

.. rst-class:: classref-method

|void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_param_min>`

Устанавливает минимальное значение для данного параметра.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_particle_flag:

.. rst-class:: classref-method

|void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_particle_flag>`

Включает или отключает указанный флаг частицы.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
