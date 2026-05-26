:github_url: hide

.. _class_GPUParticles3D:

GPUParticles3D
==============

**繼承：** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D 粒子發射器。

.. rst-class:: classref-introduction-group

說明
----

3D particle node used to create a variety of particle systems and effects. **GPUParticles3D** features an emitter that generates some number of particles at a given rate.

Use :ref:`process_material<class_GPUParticles3D_property_process_material>` to add a :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` to configure particle appearance and behavior. Alternatively, you can add a :ref:`ShaderMaterial<class_ShaderMaterial>` which will be applied to all particles.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`粒子系統（3D） <../tutorials/3d/particles/index>`

- :doc:`用粒子控制數千條魚 <../tutorials/performance/vertex_animation/controlling_thousands_of_fish>`

- `第三人稱射擊（TPS）示範 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`amount<class_GPUParticles3D_property_amount>`                                                 | ``8``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`                                     | ``1.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`collision_base_size<class_GPUParticles3D_property_collision_base_size>`                       | ``0.01``                      |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>`                                                | :ref:`draw_order<class_GPUParticles3D_property_draw_order>`                                         | ``0``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                                        | :ref:`draw_pass_1<class_GPUParticles3D_property_draw_pass_1>`                                       |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                                        | :ref:`draw_pass_2<class_GPUParticles3D_property_draw_pass_2>`                                       |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                                        | :ref:`draw_pass_3<class_GPUParticles3D_property_draw_pass_3>`                                       |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                                                        | :ref:`draw_pass_4<class_GPUParticles3D_property_draw_pass_4>`                                       |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`draw_passes<class_GPUParticles3D_property_draw_passes>`                                       | ``1``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Skin<class_Skin>`                                                                        | :ref:`draw_skin<class_GPUParticles3D_property_draw_skin>`                                           |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`emitting<class_GPUParticles3D_property_emitting>`                                             | ``true``                      |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`explosiveness<class_GPUParticles3D_property_explosiveness>`                                   | ``0.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>`                                           | ``30``                        |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`fract_delta<class_GPUParticles3D_property_fract_delta>`                                       | ``true``                      |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`interp_to_end<class_GPUParticles3D_property_interp_to_end>`                                   | ``0.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`interpolate<class_GPUParticles3D_property_interpolate>`                                       | ``true``                      |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`lifetime<class_GPUParticles3D_property_lifetime>`                                             | ``1.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`local_coords<class_GPUParticles3D_property_local_coords>`                                     | ``false``                     |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`one_shot<class_GPUParticles3D_property_one_shot>`                                             | ``false``                     |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`preprocess<class_GPUParticles3D_property_preprocess>`                                         | ``0.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Material<class_Material>`                                                                | :ref:`process_material<class_GPUParticles3D_property_process_material>`                             |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`randomness<class_GPUParticles3D_property_randomness>`                                         | ``0.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                                                          | :ref:`seed<class_GPUParticles3D_property_seed>`                                                     | ``0``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`speed_scale<class_GPUParticles3D_property_speed_scale>`                                       | ``1.0``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`NodePath<class_NodePath>`                                                                | :ref:`sub_emitter<class_GPUParticles3D_property_sub_emitter>`                                       | ``NodePath("")``              |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>`                                   | ``false``                     |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                                                      | :ref:`trail_lifetime<class_GPUParticles3D_property_trail_lifetime>`                                 | ``0.3``                       |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>`                                      | :ref:`transform_align<class_GPUParticles3D_property_transform_align>`                               | ``0``                         |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`ParticlesTransformAlignAxis<enum_RenderingServer_ParticlesTransformAlignAxis>`           | :ref:`transform_align_axis<class_GPUParticles3D_property_transform_align_axis>`                     |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`ParticlesTransformAlignCustomSrc<enum_RenderingServer_ParticlesTransformAlignCustomSrc>` | :ref:`transform_align_channel_filter<class_GPUParticles3D_property_transform_align_channel_filter>` |                               |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                                                        | :ref:`use_fixed_seed<class_GPUParticles3D_property_use_fixed_seed>`                                 | ``false``                     |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
   | :ref:`AABB<class_AABB>`                                                                        | :ref:`visibility_aabb<class_GPUParticles3D_property_visibility_aabb>`                               | ``AABB(-4, -4, -4, 8, 8, 8)`` |
   +------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`capture_aabb<class_GPUParticles3D_method_capture_aabb>`\ (\ ) |const|                                                                                                                                                                                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`convert_from_particles<class_GPUParticles3D_method_convert_from_particles>`\ (\ particles\: :ref:`Node<class_Node>`\ )                                                                                                                                         |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`emit_particle<class_GPUParticles3D_method_emit_particle>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, velocity\: :ref:`Vector3<class_Vector3>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>` | :ref:`get_draw_pass_mesh<class_GPUParticles3D_method_get_draw_pass_mesh>`\ (\ pass\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`request_particles_process<class_GPUParticles3D_method_request_particles_process>`\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0.0\ )                                                                     |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`restart<class_GPUParticles3D_method_restart>`\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                               |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_draw_pass_mesh<class_GPUParticles3D_method_set_draw_pass_mesh>`\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )                                                                                                                        |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_GPUParticles3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_GPUParticles3D_signal_finished>`

Emitted when all active particles have finished processing. To immediately restart the emission cycle, call :ref:`restart()<class_GPUParticles3D_method_restart>`.

This signal is never emitted when :ref:`one_shot<class_GPUParticles3D_property_one_shot>` is disabled, as particles will be emitted and processed continuously.

\ **Note:** For :ref:`one_shot<class_GPUParticles3D_property_one_shot>` emitters, due to the particles being computed on the GPU, there may be a short period after receiving the signal during which setting :ref:`emitting<class_GPUParticles3D_property_emitting>` to ``true`` will not restart the emission cycle. This delay is avoided by instead calling :ref:`restart()<class_GPUParticles3D_method_restart>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_GPUParticles3D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_GPUParticles3D_DrawOrder>`

.. _class_GPUParticles3D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

粒子按發射順序繪製。

.. _class_GPUParticles3D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

Particles are drawn in order of remaining lifetime. In other words, the particle with the highest lifetime is drawn at the front.

.. _class_GPUParticles3D_constant_DRAW_ORDER_REVERSE_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_REVERSE_LIFETIME** = ``2``

Particles are drawn in reverse order of remaining lifetime. In other words, the particle with the lowest lifetime is drawn at the front.

.. _class_GPUParticles3D_constant_DRAW_ORDER_VIEW_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_VIEW_DEPTH** = ``3``

粒子按深度順序繪製。

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles3D_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_GPUParticles3D_EmitFlags>`

.. _class_GPUParticles3D_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

粒子在指定位置開始。

.. _class_GPUParticles3D_constant_EMIT_FLAG_ROTATION_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_ROTATION_SCALE** = ``2``

粒子以指定的旋轉和縮放開始。

.. _class_GPUParticles3D_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

粒子從指定的速度向量開始，該向量定義了發射方向和速度。

.. _class_GPUParticles3D_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

粒子以指定的顏色開始。

.. _class_GPUParticles3D_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

粒子以指定的 ``CUSTOM`` 資料開始。

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles3D_TransformAlign:

.. rst-class:: classref-enumeration

enum **TransformAlign**: :ref:`🔗<enum_GPUParticles3D_TransformAlign>`

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_DISABLED** = ``0``

Do not align particle transforms relative to the camera or velocity.

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Z_BILLBOARD:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Z_BILLBOARD** = ``1``

Align each particle's Z axis to face the camera.

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Y_TO_VELOCITY** = ``2``

Align each particle's Y axis to the velocity vector.

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY** = ``3``

Align each particle's Z axis to face the camera and Y axis to the velocity vector.

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_LOCAL_BILLBOARD:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_LOCAL_BILLBOARD** = ``4``

Align each particle's Z axis to face the camera, while preserving a given axis (X or Y).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_GPUParticles3D_constant_MAX_DRAW_PASSES:

.. rst-class:: classref-constant

**MAX_DRAW_PASSES** = ``4`` :ref:`🔗<class_GPUParticles3D_constant_MAX_DRAW_PASSES>`

支援的最大繪製階段數。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_GPUParticles3D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_GPUParticles3D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

The number of particles to emit in one emission cycle. The effective emission rate is ``(amount * amount_ratio) / lifetime`` particles per second. Higher values will increase GPU requirements, even if not all particles are visible at a given time or if :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` is decreased.

\ **Note:** Changing this value will cause the particle system to restart. To avoid this, change :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` instead.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_amount_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **amount_ratio** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_amount_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_amount_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amount_ratio**\ (\ )

The ratio of particles that should actually be emitted. If set to a value lower than ``1.0``, this will set the amount of emitted particles throughout the lifetime to ``amount * amount_ratio``. Unlike changing :ref:`amount<class_GPUParticles3D_property_amount>`, changing :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` while emitting does not affect already-emitted particles and doesn't cause the particle system to restart. :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` can be used to create effects that make the number of emitted particles vary over time.

\ **Note:** Reducing the :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` has no performance benefit, since resources need to be allocated and processed for the total :ref:`amount<class_GPUParticles3D_property_amount>` of particles regardless of the :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`. If you don't intend to change the number of particles emitted while the particles are emitting, make sure :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` is set to ``1`` and change :ref:`amount<class_GPUParticles3D_property_amount>` to your liking instead.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_collision_base_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_base_size** = ``0.01`` :ref:`🔗<class_GPUParticles3D_property_collision_base_size>`

.. rst-class:: classref-property-setget

- |void| **set_collision_base_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_base_size**\ (\ )

The base diameter for particle collision in meters. If particles appear to sink into the ground when colliding, increase this value. If particles appear to float when colliding, decrease this value. Only effective if :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` is :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` or :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`.

\ **Note:** Particles always have a spherical collision shape.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **draw_order** = ``0`` :ref:`🔗<class_GPUParticles3D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **get_draw_order**\ (\ )

Particle draw order.

\ **Note:** :ref:`DRAW_ORDER_INDEX<class_GPUParticles3D_constant_DRAW_ORDER_INDEX>` is the only option that supports motion vectors for effects like TAA. It is suggested to use this draw order if the particles are opaque to fix ghosting artifacts.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_1:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_1** :ref:`🔗<class_GPUParticles3D_property_draw_pass_1>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

第一繪製階段所繪製的 :ref:`Mesh<class_Mesh>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_2:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_2** :ref:`🔗<class_GPUParticles3D_property_draw_pass_2>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

第二繪製階段所繪製的 :ref:`Mesh<class_Mesh>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_3:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_3** :ref:`🔗<class_GPUParticles3D_property_draw_pass_3>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

第三繪製階段所繪製的 :ref:`Mesh<class_Mesh>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_4:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_4** :ref:`🔗<class_GPUParticles3D_property_draw_pass_4>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

第四繪製階段所繪製的 :ref:`Mesh<class_Mesh>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_passes:

.. rst-class:: classref-property

:ref:`int<class_int>` **draw_passes** = ``1`` :ref:`🔗<class_GPUParticles3D_property_draw_passes>`

.. rst-class:: classref-property-setget

- |void| **set_draw_passes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_draw_passes**\ (\ )

算繪粒子時的繪製階段數。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **draw_skin** :ref:`🔗<class_GPUParticles3D_property_draw_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_skin**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_GPUParticles3D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

If ``true``, particles are being emitted. :ref:`emitting<class_GPUParticles3D_property_emitting>` can be used to start and stop particles from emitting. However, if :ref:`one_shot<class_GPUParticles3D_property_one_shot>` is ``true`` setting :ref:`emitting<class_GPUParticles3D_property_emitting>` to ``true`` will not restart the emission cycle unless all active particles have finished processing. Use the :ref:`finished<class_GPUParticles3D_signal_finished>` signal to be notified once all active particles finish processing.

\ **Note:** For :ref:`one_shot<class_GPUParticles3D_property_one_shot>` emitters, due to the particles being computed on the GPU, there may be a short period after receiving the :ref:`finished<class_GPUParticles3D_signal_finished>` signal during which setting this to ``true`` will not restart the emission cycle.

\ **Tip:** If your :ref:`one_shot<class_GPUParticles3D_property_one_shot>` emitter needs to immediately restart emitting particles once :ref:`finished<class_GPUParticles3D_signal_finished>` signal is received, consider calling :ref:`restart()<class_GPUParticles3D_method_restart>` instead of setting :ref:`emitting<class_GPUParticles3D_property_emitting>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

每次發射之間的時間比。如果為 ``0``\ ，則粒子是連續發射的。如果為 ``1``\ ，則所有的粒子都同時發射。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``30`` :ref:`🔗<class_GPUParticles3D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

粒子系統的畫面播放速率被固定為一個值。例如，將值更改為 2 會使粒子以每秒 2 影格的速度算繪。請注意，這並不會降低粒子系統本身的類比速度。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_GPUParticles3D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

如果為 ``為true``\ ，則使用分數差異量 delta 計算，將具有更平滑的粒子顯示效果。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_interp_to_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **interp_to_end** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_interp_to_end>`

.. rst-class:: classref-property-setget

- |void| **set_interp_to_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interp_to_end**\ (\ )

Causes all the particles in this node to interpolate towards the end of their lifetime.

\ **Note:** This only works when used with a :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`. It needs to be manually implemented for custom process shaders.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_interpolate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interpolate** = ``true`` :ref:`🔗<class_GPUParticles3D_property_interpolate>`

.. rst-class:: classref-property-setget

- |void| **set_interpolate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_interpolate**\ (\ )

啟用粒子插值，當\ :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` 低於螢幕更新率時，使粒子運動更平滑。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

The amount of time each particle will exist (in seconds). The effective emission rate is ``(amount * amount_ratio) / lifetime`` particles per second.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_GPUParticles3D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

如果為 ``true``\ ，則粒子使用父節點的座標空間（稱為局部座標）。這將導致粒子在移動或旋轉時沿著 **GPUParticles3D** 節點（及其父節點）移動和旋轉。如果為 ``false``\ ，則粒子使用全域座標；當移動或旋轉時，它們不會沿著 **GPUParticles3D** 節點（及其父節點）移動或旋轉。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_GPUParticles3D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

If ``true``, only the number of particles equal to :ref:`amount<class_GPUParticles3D_property_amount>` will be emitted.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

Amount of time to preprocess the particles before animation starts. Lets you start the animation some time after particles have started emitting.

\ **Note:** This can be very expensive if set to a high number as it requires running the particle shader a number of times equal to the :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` (or 30, if :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` is 0) for every second. In extreme cases it can even lead to a GPU crash due to the volume of work done in a single frame.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_process_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **process_material** :ref:`🔗<class_GPUParticles3D_property_process_material>`

.. rst-class:: classref-property-setget

- |void| **set_process_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_process_material**\ (\ )

用於處理粒子的 :ref:`Material<class_Material>` 。可以是 :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` 或 :ref:`ShaderMaterial<class_ShaderMaterial>` 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

發出隨機率。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_GPUParticles3D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Sets the random seed used by the particle system. Only effective if :ref:`use_fixed_seed<class_GPUParticles3D_property_use_fixed_seed>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

速度縮放比例。\ ``0`` 的值可被用於暫停粒子。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_sub_emitter:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **sub_emitter** = ``NodePath("")`` :ref:`🔗<class_GPUParticles3D_property_sub_emitter>`

.. rst-class:: classref-property-setget

- |void| **set_sub_emitter**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_sub_emitter**\ (\ )

Path to another **GPUParticles3D** node that will be used as a subemitter (see :ref:`ParticleProcessMaterial.sub_emitter_mode<class_ParticleProcessMaterial_property_sub_emitter_mode>`). Subemitters can be used to achieve effects such as fireworks, sparks on collision, bubbles popping into water drops, and more.

\ **Note:** When :ref:`sub_emitter<class_GPUParticles3D_property_sub_emitter>` is set, the target **GPUParticles3D** node will no longer emit particles on its own.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_trail_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trail_enabled** = ``false`` :ref:`🔗<class_GPUParticles3D_property_trail_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_trail_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_trail_enabled**\ (\ )

如果為 ``true``\ ，則使用網格蒙皮系統來啟用粒子尾跡。旨在與 :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` 和 :ref:`TubeTrailMesh<class_TubeTrailMesh>` 一起使用。

\ **注意：**\ 還必須在粒子網格的材質上啟用 :ref:`BaseMaterial3D.use_particle_trails<class_BaseMaterial3D_property_use_particle_trails>`\ 。否則，將 :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>` 設定為 ``true`` 將無效。

\ **注意：**\ 與 :ref:`GPUParticles2D<class_GPUParticles2D>` 不同，尾跡部分及其細分的數量是在 :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` 或 :ref:`TubeTrailMesh<class_TubeTrailMesh>` 的屬性中設定的。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_trail_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **trail_lifetime** = ``0.3`` :ref:`🔗<class_GPUParticles3D_property_trail_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_trail_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_trail_lifetime**\ (\ )

代表粒子軌跡的時間量（以秒為單位）。僅當 :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_transform_align:

.. rst-class:: classref-property

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **transform_align** = ``0`` :ref:`🔗<class_GPUParticles3D_property_transform_align>`

.. rst-class:: classref-property-setget

- |void| **set_transform_align**\ (\ value\: :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>`\ )
- :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **get_transform_align**\ (\ )

The alignment of particles. Use this for billboarding and aligning to velocity.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_transform_align_axis:

.. rst-class:: classref-property

:ref:`ParticlesTransformAlignAxis<enum_RenderingServer_ParticlesTransformAlignAxis>` **transform_align_axis** :ref:`🔗<class_GPUParticles3D_property_transform_align_axis>`

.. rst-class:: classref-property-setget

- |void| **set_transform_align_axis**\ (\ value\: :ref:`ParticlesTransformAlignAxis<enum_RenderingServer_ParticlesTransformAlignAxis>`\ )
- :ref:`ParticlesTransformAlignAxis<enum_RenderingServer_ParticlesTransformAlignAxis>` **get_transform_align_axis**\ (\ )

When using transform align local billboard, which axis to use for the billboarding. Supports only X or Y.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_transform_align_channel_filter:

.. rst-class:: classref-property

:ref:`ParticlesTransformAlignCustomSrc<enum_RenderingServer_ParticlesTransformAlignCustomSrc>` **transform_align_channel_filter** :ref:`🔗<class_GPUParticles3D_property_transform_align_channel_filter>`

.. rst-class:: classref-property-setget

- |void| **set_transform_align_channel_filter**\ (\ value\: :ref:`ParticlesTransformAlignCustomSrc<enum_RenderingServer_ParticlesTransformAlignCustomSrc>`\ )
- :ref:`ParticlesTransformAlignCustomSrc<enum_RenderingServer_ParticlesTransformAlignCustomSrc>` **get_transform_align_channel_filter**\ (\ )

In the case of billboarded particles, which custom channel to read from to calculate their angle.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_GPUParticles3D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

If ``true``, particles will use the same seed for every simulation using the seed defined in :ref:`seed<class_GPUParticles3D_property_seed>`. This is useful for situations where the visual outcome should be consistent across replays, for example when using Movie Maker mode.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_visibility_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **visibility_aabb** = ``AABB(-4, -4, -4, 8, 8, 8)`` :ref:`🔗<class_GPUParticles3D_property_visibility_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_visibility_aabb**\ (\ )

The :ref:`AABB<class_AABB>` that determines the node's region which needs to be visible on screen for the particle system to be active. :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` is added on each of the AABB's axes. Particle collisions and attraction will only occur within this area.

Grow the box if particles suddenly appear/disappear when the node enters/exits the screen. The :ref:`AABB<class_AABB>` can be grown via code or with the **Particles → Generate AABB** editor tool.

\ **Note:** :ref:`visibility_aabb<class_GPUParticles3D_property_visibility_aabb>` is overridden by :ref:`GeometryInstance3D.custom_aabb<class_GeometryInstance3D_property_custom_aabb>` if that property is set to a non-default value.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_GPUParticles3D_method_capture_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **capture_aabb**\ (\ ) |const| :ref:`🔗<class_GPUParticles3D_method_capture_aabb>`

返回包含目前影格中所有活動粒子的軸對齊邊界框。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_GPUParticles3D_method_convert_from_particles>`

設定該節點的屬性以配對給定的 **GPUParticles3D** 節點，該給定節點已分配了一個 :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_emit_particle:

.. rst-class:: classref-method

|void| **emit_particle**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, velocity\: :ref:`Vector3<class_Vector3>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GPUParticles3D_method_emit_particle>`

Emits a single particle. Whether ``xform``, ``velocity``, ``color`` and ``custom`` are applied depends on the value of ``flags``. See :ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>`.

The default ParticleProcessMaterial will overwrite ``color`` and use the contents of ``custom`` as ``(rotation, age, animation, lifetime)``.

\ **Note:** :ref:`emit_particle()<class_GPUParticles3D_method_emit_particle>` is only supported on the Forward+ and Mobile rendering methods, not Compatibility.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_get_draw_pass_mesh:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticles3D_method_get_draw_pass_mesh>`

返回在索引 ``pass`` 處繪製的 :ref:`Mesh<class_Mesh>` 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_request_particles_process:

.. rst-class:: classref-method

|void| **request_particles_process**\ (\ process_time\: :ref:`float<class_float>`, process_time_residual\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_GPUParticles3D_method_request_particles_process>`

Requests the particles to process for extra process time during a single frame.

\ ``process_time`` defines the time that the particles will process while emitting is on. ``process_time_residual`` defines the time that particles will process with emitting turned off for the simulation. When combined with :ref:`speed_scale<class_GPUParticles3D_property_speed_scale>` set to ``0.0``, this is useful to be able to seek a particle system timeline.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_restart:

.. rst-class:: classref-method

|void| **restart**\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GPUParticles3D_method_restart>`

Restarts the particle emission cycle, clearing existing particles. To avoid particles vanishing from the viewport, wait for the :ref:`finished<class_GPUParticles3D_signal_finished>` signal before calling.

\ **Note:** The :ref:`finished<class_GPUParticles3D_signal_finished>` signal is only emitted by :ref:`one_shot<class_GPUParticles3D_property_one_shot>` emitters.

If ``keep_seed`` is ``true``, the current random seed will be preserved. Useful for seeking and playback.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_set_draw_pass_mesh:

.. rst-class:: classref-method

|void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_GPUParticles3D_method_set_draw_pass_mesh>`

設定在索引 ``pass`` 處繪製的 :ref:`Mesh<class_Mesh>` 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
