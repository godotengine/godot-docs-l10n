:github_url: hide

.. _class_CharacterBody2D:

CharacterBody2D
===============

**继承：** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

专门用于通过脚本移动的角色的 2D 物理物体。

.. rst-class:: classref-introduction-group

描述
----

**CharacterBody2D** 是针对用户控制的物理体的特化类。它们不会受到物理的影响，但会影响路径上的其他物理体。除了由 :ref:`PhysicsBody2D.move_and_collide()<class_PhysicsBody2D_method_move_and_collide>` 提供的常见的碰撞检测之外，它们主要用于提供移动对象的高阶 API，能够检测墙壁和斜坡（\ :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 方法）。因此适用于需要高度可配置的物理体，因为通常是用户控制的角色，所以必须按照特定的方式移动、与世界发生碰撞。

如果是移动平台等不需要复杂移动和碰撞检测的游戏对象，\ :ref:`AnimatableBody2D<class_AnimatableBody2D>` 更方便配置。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`物理介绍 <../tutorials/physics/physics_introduction>`

- :doc:`排查物理问题 <../tutorials/physics/troubleshooting_physics_issues>`

- :doc:`运动学角色（2D） <../tutorials/physics/kinematic_character_2d>`

- :doc:`使用 CharacterBody2D <../tutorials/physics/using_character_body_2d>`

- `2D 运动学角色演示 <https://godotengine.org/asset-library/asset/2719>`__

- `2D 平台跳跃演示 <https://godotengine.org/asset-library/asset/2727>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_block_on_wall<class_CharacterBody2D_property_floor_block_on_wall>`     | ``true``           |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_constant_speed<class_CharacterBody2D_property_floor_constant_speed>`   | ``false``          |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                    | :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`             | ``0.7853982``      |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                    | :ref:`floor_snap_length<class_CharacterBody2D_property_floor_snap_length>`         | ``1.0``            |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_stop_on_slope<class_CharacterBody2D_property_floor_stop_on_slope>`     | ``true``           |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                        | :ref:`max_slides<class_CharacterBody2D_property_max_slides>`                       | ``4``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`MotionMode<enum_CharacterBody2D_MotionMode>`           | :ref:`motion_mode<class_CharacterBody2D_property_motion_mode>`                     | ``0``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                        | :ref:`platform_floor_layers<class_CharacterBody2D_property_platform_floor_layers>` | ``4294967295``     |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` | :ref:`platform_on_leave<class_CharacterBody2D_property_platform_on_leave>`         | ``0``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                        | :ref:`platform_wall_layers<class_CharacterBody2D_property_platform_wall_layers>`   | ``0``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                    | :ref:`safe_margin<class_CharacterBody2D_property_safe_margin>`                     | ``0.08``           |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`slide_on_ceiling<class_CharacterBody2D_property_slide_on_ceiling>`           | ``true``           |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`up_direction<class_CharacterBody2D_property_up_direction>`                   | ``Vector2(0, -1)`` |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`velocity<class_CharacterBody2D_property_velocity>`                           | ``Vector2(0, 0)``  |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                    | :ref:`wall_min_slide_angle<class_CharacterBody2D_property_wall_min_slide_angle>`   | ``0.2617994``      |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`apply_floor_snap<class_CharacterBody2D_method_apply_floor_snap>`\ (\ )                                                                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                               | :ref:`get_floor_angle<class_CharacterBody2D_method_get_floor_angle>`\ (\ up_direction\: :ref:`Vector2<class_Vector2>` = Vector2(0, -1)\ ) |const| |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                           | :ref:`get_floor_normal<class_CharacterBody2D_method_get_floor_normal>`\ (\ ) |const|                                                              |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                           | :ref:`get_last_motion<class_CharacterBody2D_method_get_last_motion>`\ (\ ) |const|                                                                |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision2D<class_KinematicCollision2D>` | :ref:`get_last_slide_collision<class_CharacterBody2D_method_get_last_slide_collision>`\ (\ )                                                      |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                           | :ref:`get_platform_velocity<class_CharacterBody2D_method_get_platform_velocity>`\ (\ ) |const|                                                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                           | :ref:`get_position_delta<class_CharacterBody2D_method_get_position_delta>`\ (\ ) |const|                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                           | :ref:`get_real_velocity<class_CharacterBody2D_method_get_real_velocity>`\ (\ ) |const|                                                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision2D<class_KinematicCollision2D>` | :ref:`get_slide_collision<class_CharacterBody2D_method_get_slide_collision>`\ (\ slide_idx\: :ref:`int<class_int>`\ )                             |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`get_slide_collision_count<class_CharacterBody2D_method_get_slide_collision_count>`\ (\ ) |const|                                            |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                           | :ref:`get_wall_normal<class_CharacterBody2D_method_get_wall_normal>`\ (\ ) |const|                                                                |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_ceiling<class_CharacterBody2D_method_is_on_ceiling>`\ (\ ) |const|                                                                    |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_ceiling_only<class_CharacterBody2D_method_is_on_ceiling_only>`\ (\ ) |const|                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_floor<class_CharacterBody2D_method_is_on_floor>`\ (\ ) |const|                                                                        |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_floor_only<class_CharacterBody2D_method_is_on_floor_only>`\ (\ ) |const|                                                              |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_wall<class_CharacterBody2D_method_is_on_wall>`\ (\ ) |const|                                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_wall_only<class_CharacterBody2D_method_is_on_wall_only>`\ (\ ) |const|                                                                |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`move_and_slide<class_CharacterBody2D_method_move_and_slide>`\ (\ )                                                                          |
   +---------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_CharacterBody2D_MotionMode:

.. rst-class:: classref-enumeration

enum **MotionMode**: :ref:`🔗<enum_CharacterBody2D_MotionMode>`

.. _class_CharacterBody2D_constant_MOTION_MODE_GROUNDED:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody2D_MotionMode>` **MOTION_MODE_GROUNDED** = ``0``

请在墙壁、天花板、地板等概念有意义时应用。在该模式下，物体运动会对斜坡作出反应（加减速）。该模式适合平台跳跃等侧视角游戏。

.. _class_CharacterBody2D_constant_MOTION_MODE_FLOATING:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody2D_MotionMode>` **MOTION_MODE_FLOATING** = ``1``

请在没有地板和天花板等概念时应用。所有碰撞都会作为 ``on_wall``\ （撞墙）汇报。在该模式下，滑动时的速度恒定。该模式适合俯视角游戏。

.. rst-class:: classref-item-separator

----

.. _enum_CharacterBody2D_PlatformOnLeave:

.. rst-class:: classref-enumeration

enum **PlatformOnLeave**: :ref:`🔗<enum_CharacterBody2D_PlatformOnLeave>`

.. _class_CharacterBody2D_constant_PLATFORM_ON_LEAVE_ADD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_VELOCITY** = ``0``

离开移动平台时，将最后的平台速度添加到 :ref:`velocity<class_CharacterBody2D_property_velocity>` 中。

.. _class_CharacterBody2D_constant_PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY** = ``1``

离开移动平台时，将最后的平台速度添加到 :ref:`velocity<class_CharacterBody2D_property_velocity>` 中，但是忽略向下的运动。如果想要在平台向下移动时保持完整的跳跃高度，就非常有用。

.. _class_CharacterBody2D_constant_PLATFORM_ON_LEAVE_DO_NOTHING:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_DO_NOTHING** = ``2``

离开平台时什么也不做。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CharacterBody2D_property_floor_block_on_wall:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_block_on_wall** = ``true`` :ref:`🔗<class_CharacterBody2D_property_floor_block_on_wall>`

.. rst-class:: classref-property-setget

- |void| **set_floor_block_on_wall_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_block_on_wall_enabled**\ (\ )

如果为 ``true``\ ，则该物体将只能在地板上移动。此选项能够避免在墙壁上行走，但允许沿墙壁向下滑动。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_floor_constant_speed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_constant_speed** = ``false`` :ref:`🔗<class_CharacterBody2D_property_floor_constant_speed>`

.. rst-class:: classref-property-setget

- |void| **set_floor_constant_speed_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_constant_speed_enabled**\ (\ )

如果为 ``false``\ （默认），则该物体在下坡时会移动得更快，在上坡时会移动得更慢。

如果为 ``true``\ ，则无论坡度如何，该物体在地面上都会以相同的速度移动。请注意，你需要使用 :ref:`floor_snap_length<class_CharacterBody2D_property_floor_snap_length>` 以恒定速度粘着至向下的斜坡。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_floor_max_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_max_angle** = ``0.7853982`` :ref:`🔗<class_CharacterBody2D_property_floor_max_angle>`

.. rst-class:: classref-property-setget

- |void| **set_floor_max_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_max_angle**\ (\ )

调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 时，斜坡仍被视为地板（或天花板）而不是墙壁的最大角度（单位为弧度）。默认值等于 45 度。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_floor_snap_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_snap_length** = ``1.0`` :ref:`🔗<class_CharacterBody2D_property_floor_snap_length>`

.. rst-class:: classref-property-setget

- |void| **set_floor_snap_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_snap_length**\ (\ )

设置吸附距离。设为非 ``0.0`` 值时，该物体在调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 时会保持附着到斜坡上。吸附向量会根据给定的距离和 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 反方向决定。

只要吸附向量与地面有接触，该物体就会逆 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 移动，保持附着到表面。如果该物体是沿着 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 移动的，则不会应用吸附，这样跳跃时或者被其他物体推动时就能够不再附着地面。如果想要在应用吸附时无视速度，请使用 :ref:`apply_floor_snap()<class_CharacterBody2D_method_apply_floor_snap>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_floor_stop_on_slope:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_stop_on_slope** = ``true`` :ref:`🔗<class_CharacterBody2D_property_floor_stop_on_slope>`

.. rst-class:: classref-property-setget

- |void| **set_floor_stop_on_slope_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_stop_on_slope_enabled**\ (\ )

如果为 ``true``\ ，则该物体静止时，调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 不会让它在斜坡上发生滑动。

如果为 ``false``\ ，则 :ref:`velocity<class_CharacterBody2D_property_velocity>` 施加向下的力时，该物体会在地板的斜坡上发生滑动。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_max_slides:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_slides** = ``4`` :ref:`🔗<class_CharacterBody2D_property_max_slides>`

.. rst-class:: classref-property-setget

- |void| **set_max_slides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_slides**\ (\ )

调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 时，物体在停止之前可以改变方向的最大次数。必须大于零。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_motion_mode:

.. rst-class:: classref-property

:ref:`MotionMode<enum_CharacterBody2D_MotionMode>` **motion_mode** = ``0`` :ref:`🔗<class_CharacterBody2D_property_motion_mode>`

.. rst-class:: classref-property-setget

- |void| **set_motion_mode**\ (\ value\: :ref:`MotionMode<enum_CharacterBody2D_MotionMode>`\ )
- :ref:`MotionMode<enum_CharacterBody2D_MotionMode>` **get_motion_mode**\ (\ )

设置运动模式，定义 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 的行为。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_platform_floor_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_floor_layers** = ``4294967295`` :ref:`🔗<class_CharacterBody2D_property_platform_floor_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_floor_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_floor_layers**\ (\ )

用于检测地板物体的碰撞层，该地板物体会被用作 **CharacterBody2D** 所要跟随的移动平台。默认情况下会检测所有地板物体并传播其速度。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_platform_on_leave:

.. rst-class:: classref-property

:ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **platform_on_leave** = ``0`` :ref:`🔗<class_CharacterBody2D_property_platform_on_leave>`

.. rst-class:: classref-property-setget

- |void| **set_platform_on_leave**\ (\ value\: :ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>`\ )
- :ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **get_platform_on_leave**\ (\ )

设置离开移动平台时要应用的行为。为了达到物理准确，默认会应用你离开时最后的平台速度。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_platform_wall_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_wall_layers** = ``0`` :ref:`🔗<class_CharacterBody2D_property_platform_wall_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_wall_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_wall_layers**\ (\ )

用于检测墙壁物体的碰撞层，该墙壁物体会被用作 **CharacterBody2D** 所要跟随的移动平台。默认情况下会忽略所有墙壁物体。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_safe_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **safe_margin** = ``0.08`` :ref:`🔗<class_CharacterBody2D_property_safe_margin>`

.. rst-class:: classref-property-setget

- |void| **set_safe_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_safe_margin**\ (\ )

额外边距，用于在调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 时进行碰撞恢复。

如果该物体与另一个物体至少有这么近，就会认为它们正在碰撞，并在执行实际运动前推开。

值较高时，对碰撞的检测会更加灵活，有助于持续检测墙壁和地板。

值较低时，会强制碰撞算法进行更精确的检测，因此可以在特别需要精度的情况下使用，例如在非常低的缩放下避免可见的抖动，或者为了让一堆角色物体的达到稳定。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_slide_on_ceiling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **slide_on_ceiling** = ``true`` :ref:`🔗<class_CharacterBody2D_property_slide_on_ceiling>`

.. rst-class:: classref-property-setget

- |void| **set_slide_on_ceiling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_slide_on_ceiling_enabled**\ (\ )

如果为 ``true``\ ，则该物体在跳到天花板时会滑动；如果为 ``false``\ ，则会停止并垂直下落。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_up_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **up_direction** = ``Vector2(0, -1)`` :ref:`🔗<class_CharacterBody2D_property_up_direction>`

.. rst-class:: classref-property-setget

- |void| **set_up_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_up_direction**\ (\ )

指向上方的向量，用于在调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 时决定什么是墙壁、什么是地板（或者天花板）。默认为 :ref:`Vector2.UP<class_Vector2_constant_UP>`\ 。因为会对该向量进行归一化，所以不能等于 :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`\ ，如果你想要让所有碰撞都被报告为墙壁，请考虑使用 :ref:`MOTION_MODE_FLOATING<class_CharacterBody2D_constant_MOTION_MODE_FLOATING>` 作为 :ref:`motion_mode<class_CharacterBody2D_property_motion_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_CharacterBody2D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

Current velocity vector in pixels per second, used and modified during calls to :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`.

\ **Note:** A common mistake is setting this property to the desired velocity multiplied by ``delta``, which produces a motion vector in pixels.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_wall_min_slide_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **wall_min_slide_angle** = ``0.2617994`` :ref:`🔗<class_CharacterBody2D_property_wall_min_slide_angle>`

.. rst-class:: classref-property-setget

- |void| **set_wall_min_slide_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wall_min_slide_angle**\ (\ )

物体遇到墙面时允许发生滑动的最小角度（单位为弧度）。默认值等于 15 度。只有在 :ref:`motion_mode<class_CharacterBody2D_property_motion_mode>` 为 :ref:`MOTION_MODE_FLOATING<class_CharacterBody2D_constant_MOTION_MODE_FLOATING>` 时该属性才会影响运动。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_CharacterBody2D_method_apply_floor_snap:

.. rst-class:: classref-method

|void| **apply_floor_snap**\ (\ ) :ref:`🔗<class_CharacterBody2D_method_apply_floor_snap>`

允许手动应用向地板的吸附，无论该物体的速度多大。\ :ref:`is_on_floor()<class_CharacterBody2D_method_is_on_floor>` 返回 ``true`` 时这个函数什么都不做。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_floor_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_floor_angle**\ (\ up_direction\: :ref:`Vector2<class_Vector2>` = Vector2(0, -1)\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_floor_angle>`

返回地板在最近一次碰撞点的碰撞角度，依据为 ``up_direction``\ ，默认为 :ref:`Vector2.UP<class_Vector2_constant_UP>`\ 。该值始终为正数，只有在调用了 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 并且 :ref:`is_on_floor()<class_CharacterBody2D_method_is_on_floor>` 返回值为 ``true`` 时才有效。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_floor_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_floor_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_floor_normal>`

返回最近一次碰撞点的地面法线。只有在调用了 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 并且 :ref:`is_on_floor()<class_CharacterBody2D_method_is_on_floor>` 返回值为 ``true`` 时才有效。

\ **警告：**\ 碰撞法线并不总是与表面法线相同。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_last_motion:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_last_motion**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_last_motion>`

返回最近一次调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 时施加给该 **CharacterBody2D** 的最后一次运动。如果发生了滑动，则该移动可以拆分为多次运动，此方法返回的是最后一次，可用于获取当前的移动方向。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_last_slide_collision:

.. rst-class:: classref-method

:ref:`KinematicCollision2D<class_KinematicCollision2D>` **get_last_slide_collision**\ (\ ) :ref:`🔗<class_CharacterBody2D_method_get_last_slide_collision>`

Returns a :ref:`KinematicCollision2D<class_KinematicCollision2D>` if a collision occurred. The returned value contains information about the latest collision that occurred during the last call to :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. Returns ``null`` if no collision occurred. See also :ref:`get_slide_collision()<class_CharacterBody2D_method_get_slide_collision>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_platform_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_platform_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_platform_velocity>`

返回位于最近一次碰撞点的平台线速度。仅在调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 后有效。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_position_delta:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_position_delta**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_position_delta>`

返回最近一次调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 所产生的运动（位置增量）。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_real_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_real_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_real_velocity>`

返回最近一次调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 之后的当前真实速度。例如，即便速度为水平方向，爬坡时你也会斜向移动。此方法返回的就是那个斜向移动，与返回请求速度的 :ref:`velocity<class_CharacterBody2D_property_velocity>` 相对。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_slide_collision:

.. rst-class:: classref-method

:ref:`KinematicCollision2D<class_KinematicCollision2D>` **get_slide_collision**\ (\ slide_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CharacterBody2D_method_get_slide_collision>`

Returns a :ref:`KinematicCollision2D<class_KinematicCollision2D>`, which contains information about a collision that occurred during the last call to :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. Since the body can collide several times in a single call to :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`, you must specify the index of the collision in the range 0 to (:ref:`get_slide_collision_count()<class_CharacterBody2D_method_get_slide_collision_count>` - 1). See also :ref:`get_last_slide_collision()<class_CharacterBody2D_method_get_last_slide_collision>`.

\ **Example:** Iterate through the collisions with a ``for`` loop:


.. tabs::

 .. code-tab:: gdscript

    for i in get_slide_collision_count():
        var collision = get_slide_collision(i)
        print("Collided with: ", collision.get_collider().name)

 .. code-tab:: csharp

    for (int i = 0; i < GetSlideCollisionCount(); i++)
    {
        KinematicCollision2D collision = GetSlideCollision(i);
        GD.Print("Collided with: ", (collision.GetCollider() as Node).Name);
    }



.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_slide_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_slide_collision_count**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_slide_collision_count>`

返回最近一次调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 时，该物体发生碰撞并改变方向的次数。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_wall_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_wall_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_wall_normal>`

返回最近一次碰撞点的墙面法线。只有在调用了 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 并且 :ref:`is_on_wall()<class_CharacterBody2D_method_is_on_wall>` 返回值为 ``true`` 时才有效。

\ **警告：**\ 碰撞法线并不总是与表面法线相同。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_ceiling:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_ceiling>`

如果最近一次调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 时，该物体和天花板发生了碰撞，则返回 ``true``\ 。否则返回 ``false``\ 。决定表面是否为“天花板”的是 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 和 :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_ceiling_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_ceiling_only>`

如果最近一次调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 时，该物体仅和天花板发生了碰撞，则返回 ``true``\ 。否则返回 ``false``\ 。决定表面是否为“天花板”的是 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 和 :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_floor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_floor>`

如果最近一次调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 时，该物体和地板发生了碰撞，则返回 ``true``\ 。否则返回 ``false``\ 。决定表面是否为“地板”的是 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 和 :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_floor_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_floor_only>`

如果最近一次调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 时，该物体仅和地板发生了碰撞，则返回 ``true``\ 。否则返回 ``false``\ 。决定表面是否为“地板”的是 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 和 :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_wall:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_wall>`

如果最近一次调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 时，该物体和墙壁发生了碰撞，则返回 ``true``\ 。否则返回 ``false``\ 。决定表面是否为“墙壁”的是 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 和 :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_wall_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_wall_only>`

如果最近一次调用 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 时，该物体仅和墙壁发生了碰撞，则返回 ``true``\ 。否则返回 ``false``\ 。决定表面是否为“墙壁”的是 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 和 :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_move_and_slide:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **move_and_slide**\ (\ ) :ref:`🔗<class_CharacterBody2D_method_move_and_slide>`

根据 :ref:`velocity<class_CharacterBody2D_property_velocity>` 移动该物体。该物体如果与其他物体发生碰撞，则会沿着对方滑动（默认只在地板上滑动），不会立即停止移动。如果对方是 **CharacterBody2D** 或 :ref:`RigidBody2D<class_RigidBody2D>`\ ，还会受到对方运动的影响。可以用于制作移动、旋转的平台，也可用于推动其他节点。

该方法在计算时会自动使用物理步骤的 ``delta``\ ，所以应当在 :ref:`Node._physics_process()<class_Node_private_method__physics_process>`\ （或 :ref:`Node._physics_process()<class_Node_private_method__physics_process>` 中调用的方法）中使用。否则运行仿真会使用错误的速度。

发生滑动碰撞时会改变 :ref:`velocity<class_CharacterBody2D_property_velocity>`\ 。要获取最后一次碰撞，请调用 :ref:`get_last_slide_collision()<class_CharacterBody2D_method_get_last_slide_collision>`\ ，要获取碰撞的更多信息，请使用 :ref:`get_slide_collision()<class_CharacterBody2D_method_get_slide_collision>`\ 。

该物体接触到移动平台时，平台的速度会自动加入到该物体的运动中。平台运动所造成的碰撞始终为所有滑动碰撞中的第一个。

通用行为和可用属性会根据 :ref:`motion_mode<class_CharacterBody2D_property_motion_mode>` 发生改变。

如果该物体发生了碰撞，则返回 ``true``\ ，否则返回 ``false``\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
