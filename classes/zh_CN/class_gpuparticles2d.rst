:github_url: hide

.. _class_GPUParticles2D:

GPUParticles2D
==============

**继承：** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

2D 粒子发射器。

.. rst-class:: classref-introduction-group

描述
----

2D 粒子节点，用于创建各种粒子系统和效果。\ **GPUParticles2D** 是一个发射器，特点是以给定的速度生成一定数量的粒子。

使用 :ref:`process_material<class_GPUParticles2D_property_process_material>` 属性来添加一个配置粒子的外观和行为的 :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`\ 。或者，你可以添加一个应用于所有粒子的 :ref:`ShaderMaterial<class_ShaderMaterial>`\ 。

2D 粒子可以选择与 :ref:`LightOccluder2D<class_LightOccluder2D>` 碰撞，但它们不会与 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 节点碰撞。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`粒子系统（2D） <../tutorials/2d/particle_systems_2d>`

- `2D 粒子演示 <https://godotengine.org/asset-library/asset/2724>`__

- `2D Dodge The Creeps 演示（玩家身后的拖尾使用的是 GPUParticles2D） <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`amount<class_GPUParticles2D_property_amount>`                                         | ``8``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>`                             | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`collision_base_size<class_GPUParticles2D_property_collision_base_size>`               | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` | :ref:`draw_order<class_GPUParticles2D_property_draw_order>`                                 | ``1``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`emitting<class_GPUParticles2D_property_emitting>`                                     | ``true``                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`explosiveness<class_GPUParticles2D_property_explosiveness>`                           | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>`                                   | ``30``                          |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`fract_delta<class_GPUParticles2D_property_fract_delta>`                               | ``true``                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`interp_to_end<class_GPUParticles2D_property_interp_to_end>`                           | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`interpolate<class_GPUParticles2D_property_interpolate>`                               | ``true``                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`lifetime<class_GPUParticles2D_property_lifetime>`                                     | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`local_coords<class_GPUParticles2D_property_local_coords>`                             | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`one_shot<class_GPUParticles2D_property_one_shot>`                                     | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`preprocess<class_GPUParticles2D_property_preprocess>`                                 | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`Material<class_Material>`                 | :ref:`process_material<class_GPUParticles2D_property_process_material>`                     |                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`randomness<class_GPUParticles2D_property_randomness>`                                 | ``0.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`seed<class_GPUParticles2D_property_seed>`                                             | ``0``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`speed_scale<class_GPUParticles2D_property_speed_scale>`                               | ``1.0``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`sub_emitter<class_GPUParticles2D_property_sub_emitter>`                               | ``NodePath("")``                |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`Texture2D<class_Texture2D>`               | :ref:`texture<class_GPUParticles2D_property_texture>`                                       |                                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>`                           | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`float<class_float>`                       | :ref:`trail_lifetime<class_GPUParticles2D_property_trail_lifetime>`                         | ``0.3``                         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`trail_section_subdivisions<class_GPUParticles2D_property_trail_section_subdivisions>` | ``4``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`int<class_int>`                           | :ref:`trail_sections<class_GPUParticles2D_property_trail_sections>`                         | ``8``                           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`use_fixed_seed<class_GPUParticles2D_property_use_fixed_seed>`                         | ``false``                       |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+
   | :ref:`Rect2<class_Rect2>`                       | :ref:`visibility_rect<class_GPUParticles2D_property_visibility_rect>`                       | ``Rect2(-100, -100, 200, 200)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------+---------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`capture_rect<class_GPUParticles2D_method_capture_rect>`\ (\ ) |const|                                                                                                                                                                                          |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`convert_from_particles<class_GPUParticles2D_method_convert_from_particles>`\ (\ particles\: :ref:`Node<class_Node>`\ )                                                                                                                                         |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`emit_particle<class_GPUParticles2D_method_emit_particle>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, velocity\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`request_particles_process<class_GPUParticles2D_method_request_particles_process>`\ (\ process_time\: :ref:`float<class_float>`\ )                                                                                                                              |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`restart<class_GPUParticles2D_method_restart>`\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                               |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_GPUParticles2D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_GPUParticles2D_signal_finished>`

所有活动粒子完成处理时发出。立即重启发射周期请调用 :ref:`restart()<class_GPUParticles2D_method_restart>`\ 。

禁用 :ref:`one_shot<class_GPUParticles2D_property_one_shot>` 时不会发出该信号，因为会持续发出并处理粒子。

\ **注意：**\ 由于粒子是在 GPU 上计算的，所以 :ref:`one_shot<class_GPUParticles2D_property_one_shot>` 的发射器在收到该信号后可能存在一小段特殊时期，在此期间将 :ref:`emitting<class_GPUParticles2D_property_emitting>` 设为 ``true`` 无法重启发射周期。改成调用 :ref:`restart()<class_GPUParticles2D_method_restart>` 就可以避免这段延迟。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_GPUParticles2D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_GPUParticles2D_DrawOrder>`

.. _class_GPUParticles2D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

粒子按发射顺序绘制。

.. _class_GPUParticles2D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

粒子按照剩余寿命的顺序绘制。换句话说，寿命最长的粒子被绘制在前面。

.. _class_GPUParticles2D_constant_DRAW_ORDER_REVERSE_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **DRAW_ORDER_REVERSE_LIFETIME** = ``2``

粒子按照剩余寿命的相反顺序绘制。换句话说，寿命最短的粒子被绘制在前面。

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles2D_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_GPUParticles2D_EmitFlags>`

.. _class_GPUParticles2D_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

粒子在指定位置开始。

.. _class_GPUParticles2D_constant_EMIT_FLAG_ROTATION_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_ROTATION_SCALE** = ``2``

粒子以指定的旋转和缩放开始。

.. _class_GPUParticles2D_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

粒子从指定的速度向量开始，该向量定义了发射方向和速度。

.. _class_GPUParticles2D_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

粒子以指定的颜色开始。

.. _class_GPUParticles2D_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

粒子以指定的 ``CUSTOM`` 数据开始。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_GPUParticles2D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_GPUParticles2D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

一个发射周期内发射的粒子数。有效发射速率为每秒 ``(amount * amount_ratio) / lifetime`` 个粒子。较高的值会增加 GPU 要求，即使在给定时间并非所有粒子都可见或 :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` 减少。

\ **注意：**\ 更改该值将导致粒子系统重新启动。为了避免这种情况，请更改 :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_amount_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **amount_ratio** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_amount_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_amount_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amount_ratio**\ (\ )

实际应该发射的粒子的比率。如果被设置为低于 ``1.0`` 的值，则会将整个生命周期内发射的粒子数量设置为 ``amount * amount_ratio``\ 。与更改 :ref:`amount<class_GPUParticles2D_property_amount>` 不同，发射时更改 :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` 不会影响已发射的粒子，也不会导致粒子系统重新启动。\ :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` 可用于创建使发射粒子的数量随时间变化的效果。

\ **注意：**\ 减少 :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` 不会带来性能优势，因为无论 :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` 是多少，都需要为粒子总数 :ref:`amount<class_GPUParticles2D_property_amount>` 分配和处理资源。如果你不打算在粒子发射时更改发射的粒子数量，请确保将 :ref:`amount_ratio<class_GPUParticles2D_property_amount_ratio>` 设置为 ``1`` 并根据你的喜好更改 :ref:`amount<class_GPUParticles2D_property_amount>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_collision_base_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_base_size** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_collision_base_size>`

.. rst-class:: classref-property-setget

- |void| **set_collision_base_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_base_size**\ (\ )

粒子碰撞半径的乘数。\ ``1.0`` 对应于该精灵的大小。如果碰撞时粒子似乎沉入地下，请增加该值。如果粒子在碰撞时出现漂浮，请减小该值。仅当 :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` 为 :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` 或 :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>` 时有效。

\ **注意：**\ 粒子始终具有球形碰撞形状。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **draw_order** = ``1`` :ref:`🔗<class_GPUParticles2D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_GPUParticles2D_DrawOrder>` **get_draw_order**\ (\ )

粒子绘制顺序。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_GPUParticles2D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

如果为 ``true``\ ，则正在发射粒子。\ :ref:`emitting<class_GPUParticles2D_property_emitting>` 可用于启动和停止粒子发射。但是，如果 :ref:`one_shot<class_GPUParticles2D_property_one_shot>` 为 ``true``\ ，则将 :ref:`emitting<class_GPUParticles2D_property_emitting>` 设置为 ``true`` 将不会重新启动该发射循环，除非所有活动粒子都已完成处理。一旦所有活动粒子完成处理，可以使用 :ref:`finished<class_GPUParticles2D_signal_finished>` 信号来收取通知。

\ **注意：**\ 对于 :ref:`one_shot<class_GPUParticles2D_property_one_shot>` 发射器，由于粒子是在 GPU 上计算的，因此在收到 :ref:`finished<class_GPUParticles2D_signal_finished>` 信号后可能会有一段短暂的时间，在此期间将其设置为 ``true`` 将不会重新启动发射循环。

\ **提示：**\ 如果你的 :ref:`one_shot<class_GPUParticles2D_property_one_shot>` 发射器需要在收到 :ref:`finished<class_GPUParticles2D_signal_finished>` 信号后立即重新启动发射粒子，请考虑调用 :ref:`restart()<class_GPUParticles2D_method_restart>` 而不是设置 :ref:`emitting<class_GPUParticles2D_property_emitting>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

粒子在单个发射周期中的发射有多急。如果大于 ``0``\ ，则在下一个发射周期开始之前，发射会出现一个间隔。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``30`` :ref:`🔗<class_GPUParticles2D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

粒子系统的帧速率被固定为一个值。例如，将值更改为 2 会使粒子以每秒 2 帧的速度渲染。请注意，这并不会降低粒子系统本身的模拟速度。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_GPUParticles2D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

如果为 ``为true``\ ，则使用分数增量 delta 计算，将具有更平滑的粒子显示效果。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_interp_to_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **interp_to_end** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_interp_to_end>`

.. rst-class:: classref-property-setget

- |void| **set_interp_to_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interp_to_end**\ (\ )

导致该节点中的所有粒子插值到其生命周期结束时。

\ **注意：**\ 这仅在与 :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` 一起使用时才有效。对于自定义进程着色器，需要手动实现。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_interpolate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interpolate** = ``true`` :ref:`🔗<class_GPUParticles2D_property_interpolate>`

.. rst-class:: classref-property-setget

- |void| **set_interpolate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_interpolate**\ (\ )

启用粒子插值，当\ :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` 低于屏幕刷新率时，使粒子运动更平滑。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

每个粒子存在的时间（以秒为单位）。有效发射速率为每秒 ``(amount * amount_ratio) / lifetime`` 个粒子。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_GPUParticles2D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

如果为 ``true``\ ，则粒子使用父节点的坐标空间（称为局部坐标）。这将导致粒子在移动或旋转时沿着 **GPUParticles2D** 节点（及其父节点）移动和旋转。如果为 ``false``\ ，则粒子使用全局坐标；当移动或旋转时，它们不会沿着 **GPUParticles2D** 节点（及其父节点）移动或旋转。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_GPUParticles2D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

如果为 ``true``\ ，则只发生一个发射周期。如果在某个周期内设置为 ``true``\ ，则发射将在该周期结束时停止。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

粒子系统启动时仿佛已经运行了这么多秒。

\ **注意：**\ 如果设置为较高的数字可能会非常耗费资源，因为它需要每秒运行与 :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` 相等次数的粒子着色器（如果 :ref:`fixed_fps<class_GPUParticles2D_property_fixed_fps>` 为 0 则为 30 次）。在极端情况下，这甚至可能导致 GPU 崩溃，因为在单个帧中完成的工作量过大。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_process_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **process_material** :ref:`🔗<class_GPUParticles2D_property_process_material>`

.. rst-class:: classref-property-setget

- |void| **set_process_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_process_material**\ (\ )

用于处理粒子的 :ref:`Material<class_Material>` 。可以是 :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` 或 :ref:`ShaderMaterial<class_ShaderMaterial>` 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_GPUParticles2D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

发射寿命随机率。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_GPUParticles2D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

设置粒子系统所使用的随机数种子。仅在 :ref:`use_fixed_seed<class_GPUParticles2D_property_use_fixed_seed>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_GPUParticles2D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

粒子系统的运行速度的缩放率。\ ``0`` 值可用于暂停粒子。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_sub_emitter:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **sub_emitter** = ``NodePath("")`` :ref:`🔗<class_GPUParticles2D_property_sub_emitter>`

.. rst-class:: classref-property-setget

- |void| **set_sub_emitter**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_sub_emitter**\ (\ )

到将被用作子发射器（请参阅 :ref:`ParticleProcessMaterial.sub_emitter_mode<class_ParticleProcessMaterial_property_sub_emitter_mode>`\ ）的另一个 **GPUParticles2D** 节点的路径。子发射器可被用于实现烟花、碰撞火花、气泡弹出水滴等效果。

\ **注意：**\ 当 :ref:`sub_emitter<class_GPUParticles2D_property_sub_emitter>` 被设置时，该目标 **GPUParticles2D** 节点将不再自行发射粒子。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_GPUParticles2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

粒子纹理。如果为 ``null``\ ，则粒子将是大小为 1×1 像素的正方形。

\ **注意：**\ 要使用翻页纹理，请将新的 :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` 分配给 **GPUParticles2D** 的 :ref:`CanvasItem.material<class_CanvasItem_property_material>` 属性，然后启用 :ref:`CanvasItemMaterial.particles_animation<class_CanvasItemMaterial_property_particles_animation>` 并设置 :ref:`CanvasItemMaterial.particles_anim_h_frames<class_CanvasItemMaterial_property_particles_anim_h_frames>`\ 、\ :ref:`CanvasItemMaterial.particles_anim_v_frames<class_CanvasItemMaterial_property_particles_anim_v_frames>` 和 :ref:`CanvasItemMaterial.particles_anim_loop<class_CanvasItemMaterial_property_particles_anim_loop>` 来匹配该翻页纹理。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trail_enabled** = ``false`` :ref:`🔗<class_GPUParticles2D_property_trail_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_trail_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_trail_enabled**\ (\ )

如果\ ``true`` ，可以使用网格换肤系统来启用粒子轨迹。

\ **注意：**\ 与\ :ref:`GPUParticles3D<class_GPUParticles3D>`\ 不同的是，trail sections和subdivisions的数量是通过属性\ :ref:`trail_sections<class_GPUParticles2D_property_trail_sections>`\ 和\ :ref:`trail_section_subdivisions<class_GPUParticles2D_property_trail_section_subdivisions>`\ 设置的。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **trail_lifetime** = ``0.3`` :ref:`🔗<class_GPUParticles2D_property_trail_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_trail_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_trail_lifetime**\ (\ )

代表粒子轨迹的时间量（以秒为单位）。仅当 :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_section_subdivisions:

.. rst-class:: classref-property

:ref:`int<class_int>` **trail_section_subdivisions** = ``4`` :ref:`🔗<class_GPUParticles2D_property_trail_section_subdivisions>`

.. rst-class:: classref-property-setget

- |void| **set_trail_section_subdivisions**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_trail_section_subdivisions**\ (\ )

用于粒子尾迹渲染的细分数。较高的值可以产生更平滑的尾迹曲线，但由于增加了网格的复杂度，因此会牺牲性能。另见 :ref:`trail_sections<class_GPUParticles2D_property_trail_sections>`\ 。仅当 :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_trail_sections:

.. rst-class:: classref-property

:ref:`int<class_int>` **trail_sections** = ``8`` :ref:`🔗<class_GPUParticles2D_property_trail_sections>`

.. rst-class:: classref-property-setget

- |void| **set_trail_sections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_trail_sections**\ (\ )

用于粒子轨迹渲染的部分数。较高的值可以产生更平滑的尾迹曲线，但由于增加了网格的复杂度，因此会牺牲性能。另见 :ref:`trail_section_subdivisions<class_GPUParticles2D_property_trail_section_subdivisions>`\ 。仅当 :ref:`trail_enabled<class_GPUParticles2D_property_trail_enabled>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_GPUParticles2D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

如果为 ``true``\ ，则每次模拟中粒子会使用 :ref:`seed<class_GPUParticles2D_property_seed>` 中定义的种子。适用于需要在重放时保持视觉效果一致的情况，例如使用 Movie Maker 模式时。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_property_visibility_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **visibility_rect** = ``Rect2(-100, -100, 200, 200)`` :ref:`🔗<class_GPUParticles2D_property_visibility_rect>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_visibility_rect**\ (\ )

:ref:`Rect2<class_Rect2>` 确定节点的区域，该区域需要在屏幕上可见才能使粒子系统处于活动状态。

如果当节点进入/退出屏幕时粒子突然出现/消失，则增长矩形。\ :ref:`Rect2<class_Rect2>` 可以通过代码或使用 **Particles → Generate Visibility Rect** 编辑器工具生成。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GPUParticles2D_method_capture_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **capture_rect**\ (\ ) |const| :ref:`🔗<class_GPUParticles2D_method_capture_rect>`

返回一个包含所有已有粒子位置的矩形。

\ **注意：**\ 当使用线程渲染时，该方法会同步渲染线程。经常调用它可能会对性能产生负面影响。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_GPUParticles2D_method_convert_from_particles>`

设置该节点的属性以匹配给定的 :ref:`CPUParticles2D<class_CPUParticles2D>` 节点。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_emit_particle:

.. rst-class:: classref-method

|void| **emit_particle**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, velocity\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GPUParticles2D_method_emit_particle>`

发射单个粒子。是否应用 ``xform``\ 、\ ``velocity``\ 、\ ``color`` 和 ``custom`` 取决于 ``flags`` 的值。见 :ref:`EmitFlags<enum_GPUParticles2D_EmitFlags>`\ 。

默认的 ParticleProcessMaterial 会覆盖 ``color``\ ，使用 ``custom`` 的内容作为 ``(rotation, age, animation, lifetime)``\ 。

\ **注意：**\ :ref:`emit_particle()<class_GPUParticles2D_method_emit_particle>` 只有 Forward+ 和 Mobile 渲染方法支持，Compatibility 不支持。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_request_particles_process:

.. rst-class:: classref-method

|void| **request_particles_process**\ (\ process_time\: :ref:`float<class_float>`\ ) :ref:`🔗<class_GPUParticles2D_method_request_particles_process>`

请求让粒子在一帧中使用额外的处理时间进行处理。

适用于粒子回放，需要与 :ref:`use_fixed_seed<class_GPUParticles2D_property_use_fixed_seed>` 配合使用，或者调用 :ref:`restart()<class_GPUParticles2D_method_restart>` 时将 ``keep_seed`` 参数设为 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles2D_method_restart:

.. rst-class:: classref-method

|void| **restart**\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GPUParticles2D_method_restart>`

重新开始粒子发射周期，清除现存粒子。要避免粒子从视口中凭空消失，请在调用前等待 :ref:`finished<class_GPUParticles2D_signal_finished>` 信号。

\ **注意：**\ 只有 :ref:`one_shot<class_GPUParticles2D_property_one_shot>` 的发射器会发出 :ref:`finished<class_GPUParticles2D_signal_finished>` 信号。

如果 ``keep_seed`` 为 ``true``\ ，则会保留当前的随机数种子。适用于跳转播放。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
