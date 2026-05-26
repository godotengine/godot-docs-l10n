:github_url: hide

.. _class_GPUParticles3D:

GPUParticles3D
==============

**继承：** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D 粒子发射器。

.. rst-class:: classref-introduction-group

描述
----

3D 粒子节点，用于创建各种粒子系统和效果。\ **GPUParticles3D** 的特点是，发射器以给定的速度产生一定数量的粒子。

使用 :ref:`process_material<class_GPUParticles3D_property_process_material>` 属性来添加一个配置粒子外观和行为的 :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`\ 。或者，你可以添加一个应用于所有粒子的 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`粒子系统（3D） <../tutorials/3d/particles/index>`

- :doc:`用粒子控制数千条鱼 <../tutorials/performance/vertex_animation/controlling_thousands_of_fish>`

- `第三人称射击（TPS）演示 <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

属性
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

信号
----

.. _class_GPUParticles3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_GPUParticles3D_signal_finished>`

所有活动粒子完成处理时发出。立即重启发射周期请调用 :ref:`restart()<class_GPUParticles3D_method_restart>`\ 。

禁用 :ref:`one_shot<class_GPUParticles3D_property_one_shot>` 时不会发出该信号，因为会持续发出并处理粒子。

\ **注意：**\ 由于粒子是在 GPU 上计算的，所以 :ref:`one_shot<class_GPUParticles3D_property_one_shot>` 的发射器在收到该信号后可能存在一小段特殊时期，在此期间将 :ref:`emitting<class_GPUParticles3D_property_emitting>` 设为 ``true`` 无法重启发射周期。改成调用 :ref:`restart()<class_GPUParticles3D_method_restart>` 就可以避免这段延迟。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_GPUParticles3D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_GPUParticles3D_DrawOrder>`

.. _class_GPUParticles3D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

粒子按发射顺序绘制。

.. _class_GPUParticles3D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

粒子按照剩余寿命的顺序绘制。换句话说，寿命最长的粒子被绘制在前面。

.. _class_GPUParticles3D_constant_DRAW_ORDER_REVERSE_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_REVERSE_LIFETIME** = ``2``

粒子按照剩余寿命的相反顺序绘制。换句话说，寿命最短的粒子被绘制在前面。

.. _class_GPUParticles3D_constant_DRAW_ORDER_VIEW_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_VIEW_DEPTH** = ``3``

粒子按深度顺序绘制。

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles3D_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_GPUParticles3D_EmitFlags>`

.. _class_GPUParticles3D_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

粒子在指定位置开始。

.. _class_GPUParticles3D_constant_EMIT_FLAG_ROTATION_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_ROTATION_SCALE** = ``2``

粒子以指定的旋转和缩放开始。

.. _class_GPUParticles3D_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

粒子从指定的速度向量开始，该向量定义了发射方向和速度。

.. _class_GPUParticles3D_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

粒子以指定的颜色开始。

.. _class_GPUParticles3D_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

粒子以指定的 ``CUSTOM`` 数据开始。

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

常量
----

.. _class_GPUParticles3D_constant_MAX_DRAW_PASSES:

.. rst-class:: classref-constant

**MAX_DRAW_PASSES** = ``4`` :ref:`🔗<class_GPUParticles3D_constant_MAX_DRAW_PASSES>`

支持的最大绘制阶段数。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GPUParticles3D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_GPUParticles3D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

一个发射周期内发射的粒子数。有效发射速率为每秒 ``(amount * amount_ratio) / lifetime`` 个粒子。较高的值会增加 GPU 要求，即使在给定时间并非所有粒子都可见或 :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` 减少。

\ **注意：**\ 更改该值将导致粒子系统重新启动。为了避免这种情况，请更改 :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_amount_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **amount_ratio** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_amount_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_amount_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amount_ratio**\ (\ )

实际应该发射的粒子的比率。如果被设置为低于 ``1.0`` 的值，则会将整个生命周期内发射的粒子数量设置为 ``amount * amount_ratio``\ 。与更改 :ref:`amount<class_GPUParticles3D_property_amount>` 不同，发射时更改 :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` 不会影响已发射的粒子，也不会导致粒子系统重新启动。\ :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` 可用于创建使发射粒子的数量随时间变化的效果。

\ **注意：**\ 减少 :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` 不会带来性能优势，因为无论 :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` 是多少，都需要为粒子总数 :ref:`amount<class_GPUParticles3D_property_amount>` 分配和处理资源。如果你不打算在粒子发射时更改发射的粒子数量，请确保将 :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` 设置为 ``1`` 并根据你的喜好更改 :ref:`amount<class_GPUParticles3D_property_amount>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_collision_base_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_base_size** = ``0.01`` :ref:`🔗<class_GPUParticles3D_property_collision_base_size>`

.. rst-class:: classref-property-setget

- |void| **set_collision_base_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_base_size**\ (\ )

粒子碰撞的基本直径（以米为单位）。如果碰撞时粒子似乎沉入地下，请增加该值。如果粒子在碰撞时出现漂浮，请减小该值。仅当 :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` 为 :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` 或 :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>` 时有效。

\ **注意：**\ 粒子始终具有球形碰撞形状。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **draw_order** = ``0`` :ref:`🔗<class_GPUParticles3D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **get_draw_order**\ (\ )

粒子绘制顺序。

\ **注意：**\ :ref:`DRAW_ORDER_INDEX<class_GPUParticles3D_constant_DRAW_ORDER_INDEX>` 是支持 TAA 等效果的运动向量的唯一选项。如果粒子不透明，建议使用该绘制顺序来修复重影伪影。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_1:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_1** :ref:`🔗<class_GPUParticles3D_property_draw_pass_1>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

第一绘制阶段所绘制的 :ref:`Mesh<class_Mesh>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_2:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_2** :ref:`🔗<class_GPUParticles3D_property_draw_pass_2>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

第二绘制阶段所绘制的 :ref:`Mesh<class_Mesh>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_3:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_3** :ref:`🔗<class_GPUParticles3D_property_draw_pass_3>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

第三绘制阶段所绘制的 :ref:`Mesh<class_Mesh>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_4:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_4** :ref:`🔗<class_GPUParticles3D_property_draw_pass_4>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

第四绘制阶段所绘制的 :ref:`Mesh<class_Mesh>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_passes:

.. rst-class:: classref-property

:ref:`int<class_int>` **draw_passes** = ``1`` :ref:`🔗<class_GPUParticles3D_property_draw_passes>`

.. rst-class:: classref-property-setget

- |void| **set_draw_passes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_draw_passes**\ (\ )

渲染粒子时的绘制阶段数。

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

如果为 ``true``\ ，则正在发射粒子。\ :ref:`emitting<class_GPUParticles3D_property_emitting>` 可用于启动和停止粒子发射。但是，如果 :ref:`one_shot<class_GPUParticles3D_property_one_shot>` 为 ``true``\ ，则将 :ref:`emitting<class_GPUParticles3D_property_emitting>` 设置为 ``true`` 将不会重新启动该发射循环，除非所有活动粒子都已完成处理。一旦所有活动粒子完成处理，可以使用 :ref:`finished<class_GPUParticles3D_signal_finished>` 信号来收取通知。

\ **注意：**\ 对于 :ref:`one_shot<class_GPUParticles3D_property_one_shot>` 发射器，由于粒子是在 GPU 上计算的，因此在收到 :ref:`finished<class_GPUParticles3D_signal_finished>` 信号后可能会有一段短暂的时间，在此期间将其设置为 ``true`` 将不会重新启动发射循环。

\ **提示：**\ 如果你的 :ref:`one_shot<class_GPUParticles3D_property_one_shot>` 发射器需要在收到 :ref:`finished<class_GPUParticles3D_signal_finished>` 信号后立即重新启动发射粒子，请考虑调用 :ref:`restart()<class_GPUParticles3D_method_restart>` 而不是设置 :ref:`emitting<class_GPUParticles3D_property_emitting>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

每次发射之间的时间比。如果为 ``0``\ ，则粒子是连续发射的。如果为 ``1``\ ，则所有的粒子都同时发射。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``30`` :ref:`🔗<class_GPUParticles3D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

粒子系统的帧速率被固定为一个值。例如，将值更改为 2 会使粒子以每秒 2 帧的速度渲染。请注意，这并不会降低粒子系统本身的模拟速度。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_GPUParticles3D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

如果为 ``为true``\ ，则使用分数增量 delta 计算，将具有更平滑的粒子显示效果。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_interp_to_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **interp_to_end** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_interp_to_end>`

.. rst-class:: classref-property-setget

- |void| **set_interp_to_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interp_to_end**\ (\ )

导致该节点中的所有粒子插值到其生命周期结束时。

\ **注意：**\ 这仅在与 :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` 一起使用时才有效。对于自定义进程着色器，需要手动实现。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_interpolate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interpolate** = ``true`` :ref:`🔗<class_GPUParticles3D_property_interpolate>`

.. rst-class:: classref-property-setget

- |void| **set_interpolate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_interpolate**\ (\ )

启用粒子插值，当\ :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` 低于屏幕刷新率时，使粒子运动更平滑。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

每个粒子存在的时间（以秒为单位）。有效发射速率为每秒 ``(amount * amount_ratio) / lifetime`` 个粒子。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_GPUParticles3D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

如果为 ``true``\ ，则粒子使用父节点的坐标空间（称为局部坐标）。这将导致粒子在移动或旋转时沿着 **GPUParticles3D** 节点（及其父节点）移动和旋转。如果为 ``false``\ ，则粒子使用全局坐标；当移动或旋转时，它们不会沿着 **GPUParticles3D** 节点（及其父节点）移动或旋转。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_GPUParticles3D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

如果为 ``true``\ ，将只发出 :ref:`amount<class_GPUParticles3D_property_amount>` 数量的粒子。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

动画开始之前预处理粒子的时间量。允许你在粒子开始发射后的一段时间内启动动画。

\ **注意：**\ 如果设置为较高的数字可能会非常耗费资源，因为它需要每秒运行与 :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` 相等的次数的粒子着色器（如果 :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` 为 0 则为 30 次）。在极端情况下，这甚至可能导致 GPU 崩溃，因为在单个帧中完成的工作量过大。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_process_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **process_material** :ref:`🔗<class_GPUParticles3D_property_process_material>`

.. rst-class:: classref-property-setget

- |void| **set_process_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_process_material**\ (\ )

用于处理粒子的 :ref:`Material<class_Material>` 。可以是 :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` 或 :ref:`ShaderMaterial<class_ShaderMaterial>` 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

发出随机率。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_GPUParticles3D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

设置粒子系统所使用的随机数种子。仅在 :ref:`use_fixed_seed<class_GPUParticles3D_property_use_fixed_seed>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

速度缩放比例。\ ``0`` 的值可被用于暂停粒子。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_sub_emitter:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **sub_emitter** = ``NodePath("")`` :ref:`🔗<class_GPUParticles3D_property_sub_emitter>`

.. rst-class:: classref-property-setget

- |void| **set_sub_emitter**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_sub_emitter**\ (\ )

到将被用作子发射器（请参阅 :ref:`ParticleProcessMaterial.sub_emitter_mode<class_ParticleProcessMaterial_property_sub_emitter_mode>`\ ）的另一个 **GPUParticles3D** 节点的路径。子发射器可被用于实现烟花、碰撞火花、气泡弹出水滴等效果。

\ **注意：**\ 当 :ref:`sub_emitter<class_GPUParticles3D_property_sub_emitter>` 被设置时，该目标 **GPUParticles3D** 节点将不再自行发射粒子。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_trail_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trail_enabled** = ``false`` :ref:`🔗<class_GPUParticles3D_property_trail_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_trail_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_trail_enabled**\ (\ )

如果为 ``true``\ ，则使用网格蒙皮系统来启用粒子尾迹。旨在与 :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` 和 :ref:`TubeTrailMesh<class_TubeTrailMesh>` 一起使用。

\ **注意：**\ 还必须在粒子网格的材质上启用 :ref:`BaseMaterial3D.use_particle_trails<class_BaseMaterial3D_property_use_particle_trails>`\ 。否则，将 :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>` 设置为 ``true`` 将无效。

\ **注意：**\ 与 :ref:`GPUParticles2D<class_GPUParticles2D>` 不同，尾迹部分及其细分的数量是在 :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` 或 :ref:`TubeTrailMesh<class_TubeTrailMesh>` 的属性中设置的。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_trail_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **trail_lifetime** = ``0.3`` :ref:`🔗<class_GPUParticles3D_property_trail_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_trail_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_trail_lifetime**\ (\ )

代表粒子轨迹的时间量（以秒为单位）。仅当 :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>` 为 ``true`` 时有效。

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

如果为 ``true``\ ，则每次模拟中粒子会使用 :ref:`seed<class_GPUParticles3D_property_seed>` 中定义的种子。适用于需要在重放时保持视觉效果一致的情况，例如使用 Movie Maker 模式时。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_visibility_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **visibility_aabb** = ``AABB(-4, -4, -4, 8, 8, 8)`` :ref:`🔗<class_GPUParticles3D_property_visibility_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_visibility_aabb**\ (\ )

:ref:`AABB<class_AABB>` 确定节点的区域，该区域需要在屏幕上可见，才能使粒子系统处于活动状态。\ :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` 被添加到 AABB 的每个轴上。粒子碰撞和吸引只会发生在该区域内。

如果在节点进入/退出屏幕时，粒子突然出现/消失，则应该增大矩形。\ :ref:`AABB<class_AABB>` 可以通过代码，或使用 **粒子 → 生成 AABB** 编辑器工具生成。

\ **注意：**\ 如果该属性被设置为非默认值，\ :ref:`visibility_aabb<class_GPUParticles3D_property_visibility_aabb>` 会被 :ref:`GeometryInstance3D.custom_aabb<class_GeometryInstance3D_property_custom_aabb>` 覆盖。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GPUParticles3D_method_capture_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **capture_aabb**\ (\ ) |const| :ref:`🔗<class_GPUParticles3D_method_capture_aabb>`

返回包含当前帧中所有活动粒子的轴对齐边界框。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_GPUParticles3D_method_convert_from_particles>`

设置该节点的属性以匹配给定的 :ref:`CPUParticles3D<class_CPUParticles3D>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_emit_particle:

.. rst-class:: classref-method

|void| **emit_particle**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, velocity\: :ref:`Vector3<class_Vector3>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GPUParticles3D_method_emit_particle>`

发射单个粒子。是否应用 ``xform``\ 、\ ``velocity``\ 、\ ``color`` 和 ``custom`` 取决于 ``flags`` 的值。见 :ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>`\ 。

默认的 ParticleProcessMaterial 会覆盖 ``color``\ ，使用 ``custom`` 的内容作为 ``(rotation, age, animation, lifetime)``\ 。

\ **注意：**\ :ref:`emit_particle()<class_GPUParticles3D_method_emit_particle>` 只有 Forward+ 和 Mobile 渲染方法支持，Compatibility 不支持。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_get_draw_pass_mesh:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticles3D_method_get_draw_pass_mesh>`

返回在索引 ``pass`` 处绘制的 :ref:`Mesh<class_Mesh>` 。

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

重新开始粒子发射周期，清除现存粒子。要避免粒子从视口中凭空消失，请在调用前等待 :ref:`finished<class_GPUParticles3D_signal_finished>` 信号。

\ **注意：**\ 只有 :ref:`one_shot<class_GPUParticles3D_property_one_shot>` 的发射器会发出 :ref:`finished<class_GPUParticles3D_signal_finished>` 信号。

如果 ``keep_seed`` 为 ``true``\ ，则会保留当前的随机数种子。适用于跳转播放。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_set_draw_pass_mesh:

.. rst-class:: classref-method

|void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_GPUParticles3D_method_set_draw_pass_mesh>`

设置在索引 ``pass`` 处绘制的 :ref:`Mesh<class_Mesh>` 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
