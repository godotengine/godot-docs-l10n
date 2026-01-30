:github_url: hide

.. _class_CPUParticles3D:

CPUParticles3D
==============

**繼承：** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基於 CPU 的 3D 粒子發射器。

.. rst-class:: classref-introduction-group

說明
----

基於 CPU 的 3D 粒子節點，可用於建立各種粒子系統、粒子效果。

另見 :ref:`GPUParticles3D<class_GPUParticles3D>`\ ，利用硬體加速提供了相同的功能，但可能無法在較舊的裝置上運作。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`粒子系統（3D） <../tutorials/3d/particles/index>`

.. rst-class:: classref-reftable-group

屬性
----

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

方法
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`   | :ref:`capture_aabb<class_CPUParticles3D_method_capture_aabb>`\ (\ ) |const|                                                                                                              |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`convert_from_particles<class_CPUParticles3D_method_convert_from_particles>`\ (\ particles\: :ref:`Node<class_Node>`\ )                                                             |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Curve<class_Curve>` | :ref:`get_param_curve<class_CPUParticles3D_method_get_param_curve>`\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|                                               |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param_max<class_CPUParticles3D_method_get_param_max>`\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|                                                   |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param_min<class_CPUParticles3D_method_get_param_min>`\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|                                                   |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_particle_flag<class_CPUParticles3D_method_get_particle_flag>`\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|                           |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`request_particles_process<class_CPUParticles3D_method_request_particles_process>`\ (\ process_time\: :ref:`float<class_float>`\ )                                                  |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`restart<class_CPUParticles3D_method_restart>`\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ )                                                                                   |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param_curve<class_CPUParticles3D_method_set_param_curve>`\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )                    |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param_max<class_CPUParticles3D_method_set_param_max>`\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )                        |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param_min<class_CPUParticles3D_method_set_param_min>`\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )                        |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_particle_flag<class_CPUParticles3D_method_set_particle_flag>`\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ ) |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_CPUParticles3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_CPUParticles3D_signal_finished>`

所有活動粒子完成處理時發出。當 :ref:`one_shot<class_CPUParticles3D_property_one_shot>` 停用時，粒子將連續處理，因此永遠不會發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_CPUParticles3D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_CPUParticles3D_DrawOrder>`

.. _class_CPUParticles3D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

粒子按發射順序繪製。

.. _class_CPUParticles3D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

Particles are drawn in order of remaining lifetime. In other words, the particle with the highest lifetime is drawn at the front.

.. _class_CPUParticles3D_constant_DRAW_ORDER_VIEW_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **DRAW_ORDER_VIEW_DEPTH** = ``2``

粒子按深度順序繪製。

.. rst-class:: classref-item-separator

----

.. _enum_CPUParticles3D_Parameter:

.. rst-class:: classref-enumeration

enum **Parameter**: :ref:`🔗<enum_CPUParticles3D_Parameter>`

.. _class_CPUParticles3D_constant_PARAM_INITIAL_LINEAR_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_INITIAL_LINEAR_VELOCITY** = ``0``

與 :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`\ 、\ :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`\ 、\ :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` 一起使用，設定初始速度屬性。

.. _class_CPUParticles3D_constant_PARAM_ANGULAR_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANGULAR_VELOCITY** = ``1``

與 :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`\ 、\ :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`\ 、\ :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` 一起使用，設定角速度屬性。

.. _class_CPUParticles3D_constant_PARAM_ORBIT_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ORBIT_VELOCITY** = ``2``

與 :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`\ 、\ :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`\ 、\ :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` 一起使用，設定軌道速度屬性。

.. _class_CPUParticles3D_constant_PARAM_LINEAR_ACCEL:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_LINEAR_ACCEL** = ``3``

與 :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`\ 、\ :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`\ 、\ :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` 一起使用，設定線性加速度屬性。

.. _class_CPUParticles3D_constant_PARAM_RADIAL_ACCEL:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_RADIAL_ACCEL** = ``4``

與 :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`\ 、\ :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`\ 、\ :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` 一起使用，設定徑向加速度屬性。

.. _class_CPUParticles3D_constant_PARAM_TANGENTIAL_ACCEL:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_TANGENTIAL_ACCEL** = ``5``

與 :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`\ 、\ :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`\ 、\ :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` 一起使用，設定切向加速度屬性。

.. _class_CPUParticles3D_constant_PARAM_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_DAMPING** = ``6``

與 :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`\ 、\ :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`\ 、\ :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` 一起使用，設定阻尼屬性。

.. _class_CPUParticles3D_constant_PARAM_ANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANGLE** = ``7``

與 :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`\ 、\ :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`\ 、\ :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` 一起使用，設定角度屬性。

.. _class_CPUParticles3D_constant_PARAM_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_SCALE** = ``8``

與 :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`\ 、\ :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`\ 、\ :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` 一起使用，設定縮放屬性。

.. _class_CPUParticles3D_constant_PARAM_HUE_VARIATION:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_HUE_VARIATION** = ``9``

與 :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`\ 、\ :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`\ 、\ :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` 一起使用，設定色相變化屬性。

.. _class_CPUParticles3D_constant_PARAM_ANIM_SPEED:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANIM_SPEED** = ``10``

與 :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`\ 、\ :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`\ 、\ :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` 一起使用，設定動畫速度屬性。

.. _class_CPUParticles3D_constant_PARAM_ANIM_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_ANIM_OFFSET** = ``11``

與 :ref:`set_param_min()<class_CPUParticles3D_method_set_param_min>`\ 、\ :ref:`set_param_max()<class_CPUParticles3D_method_set_param_max>`\ 、\ :ref:`set_param_curve()<class_CPUParticles3D_method_set_param_curve>` 一起使用，設定動畫偏移屬性。

.. _class_CPUParticles3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Parameter<enum_CPUParticles3D_Parameter>` **PARAM_MAX** = ``12``

代表 :ref:`Parameter<enum_CPUParticles3D_Parameter>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_CPUParticles3D_ParticleFlags:

.. rst-class:: classref-enumeration

enum **ParticleFlags**: :ref:`🔗<enum_CPUParticles3D_ParticleFlags>`

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY** = ``0``

與 :ref:`set_particle_flag()<class_CPUParticles3D_method_set_particle_flag>` 一起使用，設定 :ref:`particle_flag_align_y<class_CPUParticles3D_property_particle_flag_align_y>`\ 。

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_ROTATE_Y:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_ROTATE_Y** = ``1``

與 :ref:`set_particle_flag()<class_CPUParticles3D_method_set_particle_flag>` 一起使用，設定 :ref:`particle_flag_rotate_y<class_CPUParticles3D_property_particle_flag_rotate_y>`\ 。

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_DISABLE_Z:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_DISABLE_Z** = ``2``

與 :ref:`set_particle_flag()<class_CPUParticles3D_method_set_particle_flag>` 一起使用，設定\ :ref:`particle_flag_disable_z<class_CPUParticles3D_property_particle_flag_disable_z>`\ 。

.. _class_CPUParticles3D_constant_PARTICLE_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` **PARTICLE_FLAG_MAX** = ``3``

代表 :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_CPUParticles3D_EmissionShape:

.. rst-class:: classref-enumeration

enum **EmissionShape**: :ref:`🔗<enum_CPUParticles3D_EmissionShape>`

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_POINT:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_POINT** = ``0``

所有粒子將從單個點發射。

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_SPHERE:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_SPHERE** = ``1``

粒子將在球體的體積中發射。

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_SPHERE_SURFACE:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_SPHERE_SURFACE** = ``2``

粒子將在球體表面發射。

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_BOX:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_BOX** = ``3``

粒子將在盒子的體積中發射。

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_POINTS:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_POINTS** = ``4``

粒子將在 :ref:`emission_points<class_CPUParticles3D_property_emission_points>` 中隨機選擇的位置發射。粒子顏色將通過 :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>` 進行調變。

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_DIRECTED_POINTS** = ``5``

粒子將在 :ref:`emission_points<class_CPUParticles3D_property_emission_points>` 中隨機選擇的位置發射。粒子的速度和旋轉將基於 :ref:`emission_normals<class_CPUParticles3D_property_emission_normals>` 進行設定。粒子顏色將通過 :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>` 進行調變。

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_RING:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_RING** = ``6``

粒子將以環形或圓柱的形式發射出來。

.. _class_CPUParticles3D_constant_EMISSION_SHAPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **EMISSION_SHAPE_MAX** = ``7``

代表 :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` 列舉的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CPUParticles3D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_CPUParticles3D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

單個發射週期內發射的粒子數。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angle_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **angle_curve** :ref:`🔗<class_CPUParticles3D_property_angle_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Each particle's rotation will be animated along this :ref:`Curve<class_Curve>`. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angle_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **angle_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angle_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最大角度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angle_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **angle_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angle_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最小角度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angular_velocity_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **angular_velocity_curve** :ref:`🔗<class_CPUParticles3D_property_angular_velocity_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Each particle's angular velocity (rotation speed) will vary along this :ref:`Curve<class_Curve>` over its lifetime. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angular_velocity_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angular_velocity_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

套用於每個粒子的最大初始角速度（旋轉速度），單位：\ *度*\ 每秒。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_angular_velocity_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_angular_velocity_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

套用於每個粒子的最小初始角速度（旋轉速度），單位：\ *度*\ 每秒 。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_offset_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **anim_offset_curve** :ref:`🔗<class_CPUParticles3D_property_anim_offset_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Each particle's animation offset will vary along this :ref:`Curve<class_Curve>`. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_offset_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_offset_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_offset_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最大動畫偏移。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_offset_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_offset_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_offset_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最小動畫偏移。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_speed_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **anim_speed_curve** :ref:`🔗<class_CPUParticles3D_property_anim_speed_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Each particle's animation speed will vary along this :ref:`Curve<class_Curve>`. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_speed_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_speed_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_speed_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最大粒子動畫速度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_anim_speed_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **anim_speed_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_anim_speed_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最小粒子動畫速度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CPUParticles3D_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

每個粒子的初始顏色。

\ **注意：**\ :ref:`color<class_CPUParticles3D_property_color>` 乘以粒子網格的頂點顏色。要在 :ref:`BaseMaterial3D<class_BaseMaterial3D>` 上產生可見效果，\ :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *必須*\ 為 ``true``\ 。對於 :ref:`ShaderMaterial<class_ShaderMaterial>`\ ，必須在著色器的 ``fragment()`` 函式中插入 ``ALBEDO *= COLOR.rgb;``\ 。否則，\ :ref:`color<class_CPUParticles3D_property_color>` 將沒有可見效果。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_color_initial_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_initial_ramp** :ref:`🔗<class_CPUParticles3D_property_color_initial_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_initial_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_initial_ramp**\ (\ )

Each particle's initial color will vary along this :ref:`Gradient<class_Gradient>` (multiplied with :ref:`color<class_CPUParticles3D_property_color>`).

\ **Note:** :ref:`color_initial_ramp<class_CPUParticles3D_property_color_initial_ramp>` multiplies the particle mesh's vertex colors. To have a visible effect on a :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *must* be ``true``. For a :ref:`ShaderMaterial<class_ShaderMaterial>`, ``ALBEDO *= COLOR.rgb;`` must be inserted in the shader's ``fragment()`` function. Otherwise, :ref:`color_initial_ramp<class_CPUParticles3D_property_color_initial_ramp>` will have no visible effect.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_color_ramp:

.. rst-class:: classref-property

:ref:`Gradient<class_Gradient>` **color_ramp** :ref:`🔗<class_CPUParticles3D_property_color_ramp>`

.. rst-class:: classref-property-setget

- |void| **set_color_ramp**\ (\ value\: :ref:`Gradient<class_Gradient>`\ )
- :ref:`Gradient<class_Gradient>` **get_color_ramp**\ (\ )

Each particle's color will vary along this :ref:`Gradient<class_Gradient>` over its lifetime (multiplied with :ref:`color<class_CPUParticles3D_property_color>`).

\ **Note:** :ref:`color_ramp<class_CPUParticles3D_property_color_ramp>` multiplies the particle mesh's vertex colors. To have a visible effect on a :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *must* be ``true``. For a :ref:`ShaderMaterial<class_ShaderMaterial>`, ``ALBEDO *= COLOR.rgb;`` must be inserted in the shader's ``fragment()`` function. Otherwise, :ref:`color_ramp<class_CPUParticles3D_property_color_ramp>` will have no visible effect.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_damping_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **damping_curve** :ref:`🔗<class_CPUParticles3D_property_damping_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Damping will vary along this :ref:`Curve<class_Curve>`. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_damping_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_damping_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最大阻尼。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_damping_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_damping_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最小阻尼。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **direction** = ``Vector3(1, 0, 0)`` :ref:`🔗<class_CPUParticles3D_property_direction>`

.. rst-class:: classref-property-setget

- |void| **set_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_direction**\ (\ )

指定粒子發射方向的單位向量。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **draw_order** = ``0`` :ref:`🔗<class_CPUParticles3D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_CPUParticles3D_DrawOrder>` **get_draw_order**\ (\ )

Particle draw order.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_box_extents:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **emission_box_extents** :ref:`🔗<class_CPUParticles3D_property_emission_box_extents>`

.. rst-class:: classref-property-setget

- |void| **set_emission_box_extents**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_emission_box_extents**\ (\ )

:ref:`emission_shape<class_CPUParticles3D_property_emission_shape>` 被設定為 :ref:`EMISSION_SHAPE_BOX<class_CPUParticles3D_constant_EMISSION_SHAPE_BOX>` 時，該矩形的範圍。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **emission_colors** = ``PackedColorArray()`` :ref:`🔗<class_CPUParticles3D_property_emission_colors>`

.. rst-class:: classref-property-setget

- |void| **set_emission_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_emission_colors**\ (\ )

設定使用 :ref:`EMISSION_SHAPE_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_POINTS>` 或 :ref:`EMISSION_SHAPE_DIRECTED_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS>` 時對粒子進行調變的 :ref:`Color<class_Color>`\ 。

\ **注意：**\ :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>` 會與粒子網格的頂點顏色相乘。要在 :ref:`BaseMaterial3D<class_BaseMaterial3D>` 上產生可見效果，\ :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` *必須*\ 為 ``true``\ 。對於 :ref:`ShaderMaterial<class_ShaderMaterial>`\ ，必須在著色器的 ``fragment()`` 函式中插入 ``ALBEDO *= COLOR.rgb;``\ 。否則 :ref:`emission_colors<class_CPUParticles3D_property_emission_colors>` 不會產生可見效果。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_normals:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **emission_normals** :ref:`🔗<class_CPUParticles3D_property_emission_normals>`

.. rst-class:: classref-property-setget

- |void| **set_emission_normals**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_emission_normals**\ (\ )

設定使用 :ref:`EMISSION_SHAPE_DIRECTED_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS>` 時粒子發射的方向。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_points:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **emission_points** :ref:`🔗<class_CPUParticles3D_property_emission_points>`

.. rst-class:: classref-property-setget

- |void| **set_emission_points**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_emission_points**\ (\ )

設定使用 :ref:`EMISSION_SHAPE_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_POINTS>` 或 :ref:`EMISSION_SHAPE_DIRECTED_POINTS<class_CPUParticles3D_constant_EMISSION_SHAPE_DIRECTED_POINTS>` 時出生粒子的初始位置。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_axis:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **emission_ring_axis** :ref:`🔗<class_CPUParticles3D_property_emission_ring_axis>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_axis**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_emission_ring_axis**\ (\ )

使用形為 :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>` 的發射器時環的軸。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_cone_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_cone_angle** :ref:`🔗<class_CPUParticles3D_property_emission_ring_cone_angle>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_cone_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_cone_angle**\ (\ )

The angle of the cone when using the emitter :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>`. The default angle of 90 degrees results in a ring, while an angle of 0 degrees results in a cone. Intermediate values will result in a ring where one end is larger than the other.

\ **Note:** Depending on :ref:`emission_ring_height<class_CPUParticles3D_property_emission_ring_height>`, the angle may be clamped if the ring's end is reached to form a perfect cone.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_height** :ref:`🔗<class_CPUParticles3D_property_emission_ring_height>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_height**\ (\ )

使用形為 :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>` 的發射器時環的高度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_inner_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_inner_radius** :ref:`🔗<class_CPUParticles3D_property_emission_ring_inner_radius>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_inner_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_inner_radius**\ (\ )

使用形為 :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>` 的發射器時環的內半徑。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_ring_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_ring_radius** :ref:`🔗<class_CPUParticles3D_property_emission_ring_radius>`

.. rst-class:: classref-property-setget

- |void| **set_emission_ring_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_ring_radius**\ (\ )

使用形為 :ref:`EMISSION_SHAPE_RING<class_CPUParticles3D_constant_EMISSION_SHAPE_RING>` 的發射器時環的半徑。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_shape:

.. rst-class:: classref-property

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **emission_shape** = ``0`` :ref:`🔗<class_CPUParticles3D_property_emission_shape>`

.. rst-class:: classref-property-setget

- |void| **set_emission_shape**\ (\ value\: :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>`\ )
- :ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` **get_emission_shape**\ (\ )

Particles will be emitted inside this region.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emission_sphere_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_sphere_radius** :ref:`🔗<class_CPUParticles3D_property_emission_sphere_radius>`

.. rst-class:: classref-property-setget

- |void| **set_emission_sphere_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_sphere_radius**\ (\ )

:ref:`EmissionShape<enum_CPUParticles3D_EmissionShape>` 被設定為 :ref:`EMISSION_SHAPE_SPHERE<class_CPUParticles3D_constant_EMISSION_SHAPE_SPHERE>`\ 時，該球體的半徑。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_CPUParticles3D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

如果 ``true``\ ，則正在發射粒子。\ :ref:`emitting<class_CPUParticles3D_property_emitting>` 可用於啟動和停止粒子發射。但是，如果 :ref:`one_shot<class_CPUParticles3D_property_one_shot>` 為 ``true `` 將\ :ref:`emitting<class_CPUParticles3D_property_emitting>` 設為\ ``true`` 直到所有活動粒子完成處理後才會重新啟動發射週期。一旦所有活動粒子都完成，您可以使用\ :ref:`finished<class_CPUParticles3D_signal_finished>` 訊號來通知粒子完成處理。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

粒子在單個發射週期中的發射有多急。如果大於 ``0``\ ，則在下一個發射週期開始之前，發射會出現一個間隔。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``0`` :ref:`🔗<class_CPUParticles3D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

粒子系統的畫面播放速率被固定為一個值。例如，將值更改為 2 會使粒子以每秒 2 影格的速度算繪。請注意，這並不會降低粒子系統本身的速度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_flatness:

.. rst-class:: classref-property

:ref:`float<class_float>` **flatness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_flatness>`

.. rst-class:: classref-property-setget

- |void| **set_flatness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_flatness**\ (\ )

Y/Z 平面中的 :ref:`spread<class_CPUParticles3D_property_spread>` 數量。值 ``1`` 將粒子限制在 X/Z 平面上。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_CPUParticles3D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

如果為 ``為true``\ ，則使用分數差異量 delta 計算，將具有更平滑的粒子顯示效果。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_gravity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity** = ``Vector3(0, -9.8, 0)`` :ref:`🔗<class_CPUParticles3D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity**\ (\ )

套用於每個粒子的重力。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_hue_variation_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **hue_variation_curve** :ref:`🔗<class_CPUParticles3D_property_hue_variation_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Each particle's hue will vary along this :ref:`Curve<class_Curve>`. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_hue_variation_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **hue_variation_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_hue_variation_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最大色相變化。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_hue_variation_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **hue_variation_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_hue_variation_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最小色相變化。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_initial_velocity_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **initial_velocity_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_initial_velocity_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

初始速度的最大值。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_initial_velocity_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **initial_velocity_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_initial_velocity_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

初始速度的最小值。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

每個粒子存在的時間。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_lifetime_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime_randomness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_lifetime_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime_randomness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime_randomness**\ (\ )

粒子壽命隨機率。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_linear_accel_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **linear_accel_curve** :ref:`🔗<class_CPUParticles3D_property_linear_accel_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Each particle's linear acceleration will vary along this :ref:`Curve<class_Curve>`. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_linear_accel_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_accel_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_linear_accel_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最大線性加速度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_linear_accel_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_accel_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_linear_accel_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最小線性加速度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_CPUParticles3D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

如果為 ``true``\ ，粒子使用父節點的座標空間（稱為局部座標）。這將導致粒子在移動或旋轉時，沿著 **CPUParticles3D** 節點（及其父節點）移動和旋轉。如果為 ``false``\ ，則粒子使用全域座標；當移動或旋轉時，它們不會沿著 **CPUParticles3D** 節點（及其父節點）移動或旋轉。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_CPUParticles3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

每個粒子使用的 :ref:`Mesh<class_Mesh>`\ 。如果為 ``null``\ ，則粒子將為球形。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_CPUParticles3D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

如果為 ``true``\ ，則只發生一個發射週期。如果在某個週期內設定為 ``true``\ ，則發射將在該週期結束時停止。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_orbit_velocity_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **orbit_velocity_curve** :ref:`🔗<class_CPUParticles3D_property_orbit_velocity_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Each particle's orbital velocity will vary along this :ref:`Curve<class_Curve>`. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_orbit_velocity_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **orbit_velocity_max** :ref:`🔗<class_CPUParticles3D_property_orbit_velocity_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最大軌道速度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_orbit_velocity_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **orbit_velocity_min** :ref:`🔗<class_CPUParticles3D_property_orbit_velocity_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最小軌道速度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_particle_flag_align_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particle_flag_align_y** = ``false`` :ref:`🔗<class_CPUParticles3D_property_particle_flag_align_y>`

.. rst-class:: classref-property-setget

- |void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|

將粒子的 Y 軸與其速度方向對齊。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_particle_flag_disable_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particle_flag_disable_z** = ``false`` :ref:`🔗<class_CPUParticles3D_property_particle_flag_disable_z>`

.. rst-class:: classref-property-setget

- |void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|

如果為 ``true``\ ，則粒子將不會在 Z 軸上移動。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_particle_flag_rotate_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **particle_flag_rotate_y** = ``false`` :ref:`🔗<class_CPUParticles3D_property_particle_flag_rotate_y>`

.. rst-class:: classref-property-setget

- |void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const|

如果為 ``true``\ ，則粒子繞 Y 軸旋轉 :ref:`angle_min<class_CPUParticles3D_property_angle_min>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

粒子系統啟動時就好像已經運作了這麼多秒一樣。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_radial_accel_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **radial_accel_curve** :ref:`🔗<class_CPUParticles3D_property_radial_accel_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Each particle's radial acceleration will vary along this :ref:`Curve<class_Curve>`. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_radial_accel_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_accel_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_radial_accel_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最大徑向加速度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_radial_accel_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_accel_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_radial_accel_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最小徑向加速度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

發射壽命隨機率。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_amount_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_amount_curve** :ref:`🔗<class_CPUParticles3D_property_scale_amount_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Each particle's scale will vary along this :ref:`Curve<class_Curve>`. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_amount_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **scale_amount_max** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_scale_amount_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最大縮放。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_amount_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **scale_amount_min** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_scale_amount_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最小縮放。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_curve_x:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_curve_x** :ref:`🔗<class_CPUParticles3D_property_scale_curve_x>`

.. rst-class:: classref-property-setget

- |void| **set_scale_curve_x**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_scale_curve_x**\ (\ )

生命週期內，沿 X 軸的縮放曲線。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_curve_y:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_curve_y** :ref:`🔗<class_CPUParticles3D_property_scale_curve_y>`

.. rst-class:: classref-property-setget

- |void| **set_scale_curve_y**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_scale_curve_y**\ (\ )

生命週期內，沿 Y 軸的縮放曲線。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_scale_curve_z:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **scale_curve_z** :ref:`🔗<class_CPUParticles3D_property_scale_curve_z>`

.. rst-class:: classref-property-setget

- |void| **set_scale_curve_z**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_scale_curve_z**\ (\ )

生命週期內，沿 Z 軸的縮放曲線。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_CPUParticles3D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Sets the random seed used by the particle system. Only effective if :ref:`use_fixed_seed<class_CPUParticles3D_property_use_fixed_seed>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_CPUParticles3D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

粒子系統的運作速度的縮放率。\ ``0`` 值可用於暫停粒子。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_split_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **split_scale** = ``false`` :ref:`🔗<class_CPUParticles3D_property_split_scale>`

.. rst-class:: classref-property-setget

- |void| **set_split_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_split_scale**\ (\ )

如果設定為 ``true``\ ，則可以指定三條不同的縮放曲線，每個縮放軸一條。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_spread:

.. rst-class:: classref-property

:ref:`float<class_float>` **spread** = ``45.0`` :ref:`🔗<class_CPUParticles3D_property_spread>`

.. rst-class:: classref-property-setget

- |void| **set_spread**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_spread**\ (\ )

每個粒子的初始方向範圍為 ``+spread`` 至 ``-spread`` 度。適用於 X/Z 平面和 Y/Z 平面。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_tangential_accel_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **tangential_accel_curve** :ref:`🔗<class_CPUParticles3D_property_tangential_accel_curve>`

.. rst-class:: classref-property-setget

- |void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

Each particle's tangential acceleration will vary along this :ref:`Curve<class_Curve>`. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_tangential_accel_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **tangential_accel_max** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_tangential_accel_max>`

.. rst-class:: classref-property-setget

- |void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最大切向加速度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_tangential_accel_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **tangential_accel_min** = ``0.0`` :ref:`🔗<class_CPUParticles3D_property_tangential_accel_min>`

.. rst-class:: classref-property-setget

- |void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const|

最小切向加速度。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_CPUParticles3D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

If ``true``, particles will use the same seed for every simulation using the seed defined in :ref:`seed<class_CPUParticles3D_property_seed>`. This is useful for situations where the visual outcome should be consistent across replays, for example when using Movie Maker mode.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_property_visibility_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **visibility_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_CPUParticles3D_property_visibility_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_visibility_aabb**\ (\ )

The :ref:`AABB<class_AABB>` that determines the node's region which needs to be visible on screen for the particle system to be active.

Grow the box if particles suddenly appear/disappear when the node enters/exits the screen. The :ref:`AABB<class_AABB>` can be grown via code or with the **Particles → Generate AABB** editor tool.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_CPUParticles3D_method_capture_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **capture_aabb**\ (\ ) |const| :ref:`🔗<class_CPUParticles3D_method_capture_aabb>`

返回包含目前影格中所有活動粒子的軸對齊邊界框。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_CPUParticles3D_method_convert_from_particles>`

設定該節點的屬性以配對給定的 :ref:`GPUParticles3D<class_GPUParticles3D>` 節點，該給定節點已分配了一個 :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_param_curve:

.. rst-class:: classref-method

:ref:`Curve<class_Curve>` **get_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_param_curve>`

返回由 :ref:`Parameter<enum_CPUParticles3D_Parameter>` 指定的參數的 :ref:`Curve<class_Curve>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_param_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_param_max>`

返回給定參數的最大值範圍。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_param_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_param_min>`

返回給定參數的最小值範圍。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_get_particle_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`\ ) |const| :ref:`🔗<class_CPUParticles3D_method_get_particle_flag>`

Returns the enabled state of the given particle flag.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_request_particles_process:

.. rst-class:: classref-method

|void| **request_particles_process**\ (\ process_time\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CPUParticles3D_method_request_particles_process>`

Requests the particles to process for extra process time during a single frame.

Useful for particle playback, if used in combination with :ref:`use_fixed_seed<class_CPUParticles3D_property_use_fixed_seed>` or by calling :ref:`restart()<class_CPUParticles3D_method_restart>` with parameter ``keep_seed`` set to ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_restart:

.. rst-class:: classref-method

|void| **restart**\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CPUParticles3D_method_restart>`

Restarts the particle emitter.

If ``keep_seed`` is ``true``, the current random seed will be preserved. Useful for seeking and playback.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_param_curve:

.. rst-class:: classref-method

|void| **set_param_curve**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, curve\: :ref:`Curve<class_Curve>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_param_curve>`

Sets the :ref:`Curve<class_Curve>` of the parameter specified by :ref:`Parameter<enum_CPUParticles3D_Parameter>`. Should be a unit :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_param_max:

.. rst-class:: classref-method

|void| **set_param_max**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_param_max>`

設定給定參數的最大值。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_param_min:

.. rst-class:: classref-method

|void| **set_param_min**\ (\ param\: :ref:`Parameter<enum_CPUParticles3D_Parameter>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_param_min>`

設定給定參數的最小值。

.. rst-class:: classref-item-separator

----

.. _class_CPUParticles3D_method_set_particle_flag:

.. rst-class:: classref-method

|void| **set_particle_flag**\ (\ particle_flag\: :ref:`ParticleFlags<enum_CPUParticles3D_ParticleFlags>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CPUParticles3D_method_set_particle_flag>`

Enables or disables the given particle flag.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
