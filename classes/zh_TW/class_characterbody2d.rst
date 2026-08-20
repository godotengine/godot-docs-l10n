:github_url: hide

.. _class_CharacterBody2D:

CharacterBody2D
===============

**繼承：** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

專門用於通過腳本移動的角色的 2D 物理物體。

.. rst-class:: classref-introduction-group

說明
----

**CharacterBody2D** 是針對使用者控制的物理體的特化類。它們不會受到物理的影響，但會影響路徑上的其他物理體。除了由 :ref:`PhysicsBody2D.move_and_collide()<class_PhysicsBody2D_method_move_and_collide>` 提供的常見的碰撞偵測之外，它們主要用於提供移動對象的高階 API，能夠偵測牆壁和斜坡（\ :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 方法）。因此適用於需要高度可配置的物理體，因為通常是使用者控制的角色，所以必須按照特定的方式移動、與世界發生碰撞。

如果是移動平臺等不需要複雜移動和碰撞偵測的遊戲物件，\ :ref:`AnimatableBody2D<class_AnimatableBody2D>` 更方便配置。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`物理介紹 <../tutorials/physics/physics_introduction>`

- :doc:`Troubleshooting physics issues <../tutorials/physics/troubleshooting_physics_issues>`

- :doc:`運動學角色（2D） <../tutorials/physics/kinematic_character_2d>`

- :doc:`使用 CharacterBody2D <../tutorials/physics/using_character_body_2d>`

- `2D 運動學角色演示 <https://godotengine.org/asset-library/asset/2719>`__

- `2D 平台範例 <https://godotengine.org/asset-library/asset/2727>`__

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_CharacterBody2D_MotionMode:

.. rst-class:: classref-enumeration

enum **MotionMode**: :ref:`🔗<enum_CharacterBody2D_MotionMode>`

.. _class_CharacterBody2D_constant_MOTION_MODE_GROUNDED:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody2D_MotionMode>` **MOTION_MODE_GROUNDED** = ``0``

請在牆壁、天花板、地板等概念有意義時套用。在該模式下，物體運動會對斜坡作出反應（加減速）。該模式適合平臺跳躍等側視角遊戲。

.. _class_CharacterBody2D_constant_MOTION_MODE_FLOATING:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody2D_MotionMode>` **MOTION_MODE_FLOATING** = ``1``

請在沒有地板和天花板等概念時套用。所有碰撞都會作為 ``on_wall``\ （撞牆）彙報。在該模式下，滑動時的速度恒定。該模式適合俯視角遊戲。

.. rst-class:: classref-item-separator

----

.. _enum_CharacterBody2D_PlatformOnLeave:

.. rst-class:: classref-enumeration

enum **PlatformOnLeave**: :ref:`🔗<enum_CharacterBody2D_PlatformOnLeave>`

.. _class_CharacterBody2D_constant_PLATFORM_ON_LEAVE_ADD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_VELOCITY** = ``0``

離開移動平臺時，將最後的平臺速度新增到 :ref:`velocity<class_CharacterBody2D_property_velocity>` 中。

.. _class_CharacterBody2D_constant_PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY** = ``1``

離開移動平臺時，將最後的平臺速度新增到 :ref:`velocity<class_CharacterBody2D_property_velocity>` 中，但是忽略向下的運動。如果想要在平臺向下移動時保持完整的跳躍高度，就非常有用。

.. _class_CharacterBody2D_constant_PLATFORM_ON_LEAVE_DO_NOTHING:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_DO_NOTHING** = ``2``

離開平臺時什麼也不做。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_CharacterBody2D_property_floor_block_on_wall:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_block_on_wall** = ``true`` :ref:`🔗<class_CharacterBody2D_property_floor_block_on_wall>`

.. rst-class:: classref-property-setget

- |void| **set_floor_block_on_wall_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_block_on_wall_enabled**\ (\ )

如果為 ``true``\ ，則該物體將只能在地板上移動。此選項能夠避免在牆壁上行走，但允許沿牆壁向下滑動。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_floor_constant_speed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_constant_speed** = ``false`` :ref:`🔗<class_CharacterBody2D_property_floor_constant_speed>`

.. rst-class:: classref-property-setget

- |void| **set_floor_constant_speed_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_constant_speed_enabled**\ (\ )

如果為 ``false``\ （預設），則該物體在下坡時會移動得更快，在上坡時會移動得更慢。

如果為 ``true``\ ，則無論坡度如何，該物體在地面上都會以相同的速度移動。請注意，你需要使用 :ref:`floor_snap_length<class_CharacterBody2D_property_floor_snap_length>` 以恒定速度粘著至向下的斜坡。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_floor_max_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_max_angle** = ``0.7853982`` :ref:`🔗<class_CharacterBody2D_property_floor_max_angle>`

.. rst-class:: classref-property-setget

- |void| **set_floor_max_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_max_angle**\ (\ )

呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 時，斜坡仍被視為地板（或天花板）而不是牆壁的最大角度（單位為弧度）。預設值等於 45 度。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_floor_snap_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_snap_length** = ``1.0`` :ref:`🔗<class_CharacterBody2D_property_floor_snap_length>`

.. rst-class:: classref-property-setget

- |void| **set_floor_snap_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_snap_length**\ (\ )

設定吸附距離。設為非 ``0.0`` 值時，該物體在呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 時會保持附著到斜坡上。吸附向量會根據給定的距離和 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 反方向決定。

只要吸附向量與地面有接觸，該物體就會逆 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 移動，保持附著到表面。如果該物體是沿著 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 移動的，則不會套用吸附，這樣跳躍時或者被其他物體推動時就能夠不再附著地面。如果想要在套用吸附時無視速度，請使用 :ref:`apply_floor_snap()<class_CharacterBody2D_method_apply_floor_snap>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_floor_stop_on_slope:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_stop_on_slope** = ``true`` :ref:`🔗<class_CharacterBody2D_property_floor_stop_on_slope>`

.. rst-class:: classref-property-setget

- |void| **set_floor_stop_on_slope_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_stop_on_slope_enabled**\ (\ )

如果為 ``true``\ ，則該物體靜止時，呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 不會讓它在斜坡上發生滑動。

如果為 ``false``\ ，則 :ref:`velocity<class_CharacterBody2D_property_velocity>` 施加向下的力時，該物體會在地板的斜坡上發生滑動。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_max_slides:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_slides** = ``4`` :ref:`🔗<class_CharacterBody2D_property_max_slides>`

.. rst-class:: classref-property-setget

- |void| **set_max_slides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_slides**\ (\ )

Maximum number of times the body can change direction before it stops when calling :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`. Must be greater than zero.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_motion_mode:

.. rst-class:: classref-property

:ref:`MotionMode<enum_CharacterBody2D_MotionMode>` **motion_mode** = ``0`` :ref:`🔗<class_CharacterBody2D_property_motion_mode>`

.. rst-class:: classref-property-setget

- |void| **set_motion_mode**\ (\ value\: :ref:`MotionMode<enum_CharacterBody2D_MotionMode>`\ )
- :ref:`MotionMode<enum_CharacterBody2D_MotionMode>` **get_motion_mode**\ (\ )

Sets the motion mode which defines the behavior of :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_platform_floor_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_floor_layers** = ``4294967295`` :ref:`🔗<class_CharacterBody2D_property_platform_floor_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_floor_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_floor_layers**\ (\ )

用於偵測地板物體的碰撞層，該地板物體會被用作 **CharacterBody2D** 所要跟隨的移動平臺。預設情況下會偵測所有地板物體並傳播其速度。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_platform_on_leave:

.. rst-class:: classref-property

:ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **platform_on_leave** = ``0`` :ref:`🔗<class_CharacterBody2D_property_platform_on_leave>`

.. rst-class:: classref-property-setget

- |void| **set_platform_on_leave**\ (\ value\: :ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>`\ )
- :ref:`PlatformOnLeave<enum_CharacterBody2D_PlatformOnLeave>` **get_platform_on_leave**\ (\ )

Sets the behavior to apply when you leave a moving platform. By default, to be physically accurate, when you leave the last platform velocity is applied.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_platform_wall_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_wall_layers** = ``0`` :ref:`🔗<class_CharacterBody2D_property_platform_wall_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_wall_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_wall_layers**\ (\ )

用於偵測牆壁物體的碰撞層，該牆壁物體會被用作 **CharacterBody2D** 所要跟隨的移動平臺。預設情況下會忽略所有牆壁物體。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_safe_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **safe_margin** = ``0.08`` :ref:`🔗<class_CharacterBody2D_property_safe_margin>`

.. rst-class:: classref-property-setget

- |void| **set_safe_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_safe_margin**\ (\ )

額外邊距，用於在呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 時進行碰撞恢復。

如果該物體與另一個物體至少有這麼近，就會認為它們正在碰撞，並在執行實際運動前推開。

值較高時，對碰撞的偵測會更加靈活，有助於持續偵測牆壁和地板。

值較低時，會強制碰撞演算法進行更精確的偵測，因此可以在特別需要精度的情況下使用，例如在非常低的縮放下避免可見的抖動，或者為了讓一堆角色物體的達到穩定。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_slide_on_ceiling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **slide_on_ceiling** = ``true`` :ref:`🔗<class_CharacterBody2D_property_slide_on_ceiling>`

.. rst-class:: classref-property-setget

- |void| **set_slide_on_ceiling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_slide_on_ceiling_enabled**\ (\ )

如果為 ``true``\ ，則該物體在跳到天花板時會滑動；如果為 ``false``\ ，則會停止並垂直下落。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_up_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **up_direction** = ``Vector2(0, -1)`` :ref:`🔗<class_CharacterBody2D_property_up_direction>`

.. rst-class:: classref-property-setget

- |void| **set_up_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_up_direction**\ (\ )

指向上方的向量，用於在呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 時判定何者爲牆壁、何者爲地板（或天花板）。預設爲 :ref:`Vector2.UP<class_Vector2_constant_UP>`\ 。由於向量會被正規化，因此不能等於 :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`\ ；若希望所有碰撞皆被判定爲撞牆，請考慮使用 :ref:`MOTION_MODE_FLOATING<class_CharacterBody2D_constant_MOTION_MODE_FLOATING>` 作為 :ref:`motion_mode<class_CharacterBody2D_property_motion_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_CharacterBody2D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

以每秒像素爲單位的速度向量，在呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 時會被使用及修改。

\ **注意：**\ 有個常見的錯誤是將此屬性設爲目標速度乘以 ``delta``\ ，這會變成以像素為單位的運動向量。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_property_wall_min_slide_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **wall_min_slide_angle** = ``0.2617994`` :ref:`🔗<class_CharacterBody2D_property_wall_min_slide_angle>`

.. rst-class:: classref-property-setget

- |void| **set_wall_min_slide_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wall_min_slide_angle**\ (\ )

Minimum angle (in radians) where the body is allowed to slide when it encounters a wall. The default value equals 15 degrees. This property only affects movement when :ref:`motion_mode<class_CharacterBody2D_property_motion_mode>` is :ref:`MOTION_MODE_FLOATING<class_CharacterBody2D_constant_MOTION_MODE_FLOATING>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_CharacterBody2D_method_apply_floor_snap:

.. rst-class:: classref-method

|void| **apply_floor_snap**\ (\ ) :ref:`🔗<class_CharacterBody2D_method_apply_floor_snap>`

允許手動套用向地板的吸附，無論該物體的速度多大。\ :ref:`is_on_floor()<class_CharacterBody2D_method_is_on_floor>` 返回 ``true`` 時這個函式什麼都不做。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_floor_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_floor_angle**\ (\ up_direction\: :ref:`Vector2<class_Vector2>` = Vector2(0, -1)\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_floor_angle>`

Returns the floor's collision angle at the last collision point according to ``up_direction``, which is :ref:`Vector2.UP<class_Vector2_constant_UP>` by default. This value is always positive and only valid after calling :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` and when :ref:`is_on_floor()<class_CharacterBody2D_method_is_on_floor>` returns ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_floor_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_floor_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_floor_normal>`

Returns the collision normal of the floor at the last collision point. Only valid after calling :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` and when :ref:`is_on_floor()<class_CharacterBody2D_method_is_on_floor>` returns ``true``.

\ **Warning:** The collision normal is not always the same as the surface normal.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_last_motion:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_last_motion**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_last_motion>`

返回最近一次呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 時施加給該 **CharacterBody2D** 的最後一次運動。如果發生了滑動，則該移動可以拆分為多次運動，此方法返回的是最後一次，可用於獲取目前的移動方向。

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

返回位於最近一次碰撞點的平臺線速度。僅在呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 後有效。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_position_delta:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_position_delta**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_position_delta>`

返回最近一次呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 所產生的運動（位置差異量）。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_real_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_real_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_real_velocity>`

返回最近一次呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 之後的目前真實速度。例如，即便速度為水平方向，爬坡時你也會斜向移動。此方法返回的就是那個斜向移動，與返回請求速度的 :ref:`velocity<class_CharacterBody2D_property_velocity>` 相對。

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

返回最近一次呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 時，該物體發生碰撞並改變方向的次數。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_get_wall_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_wall_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_get_wall_normal>`

Returns the collision normal of the wall at the last collision point. Only valid after calling :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` and when :ref:`is_on_wall()<class_CharacterBody2D_method_is_on_wall>` returns ``true``.

\ **Warning:** The collision normal is not always the same as the surface normal.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_ceiling:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_ceiling>`

如果最近一次呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 時，該物體和天花板發生了碰撞，則返回 ``true``\ 。否則返回 ``false``\ 。決定表面是否為“天花板”的是 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 和 :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_ceiling_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_ceiling_only>`

如果最近一次呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 時，該物體僅和天花板發生了碰撞，則返回 ``true``\ 。否則返回 ``false``\ 。決定表面是否為“天花板”的是 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 和 :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_floor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_floor>`

如果最近一次呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 時，該物體和地板發生了碰撞，則返回 ``true``\ 。否則返回 ``false``\ 。決定表面是否為“地板”的是 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 和 :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_floor_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_floor_only>`

如果最近一次呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 時，該物體僅和地板發生了碰撞，則返回 ``true``\ 。否則返回 ``false``\ 。決定表面是否為“地板”的是 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 和 :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_wall:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_wall>`

如果最近一次呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 時，該物體和牆壁發生了碰撞，則返回 ``true``\ 。否則返回 ``false``\ 。決定表面是否為“牆壁”的是 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 和 :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_is_on_wall_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody2D_method_is_on_wall_only>`

如果最近一次呼叫 :ref:`move_and_slide()<class_CharacterBody2D_method_move_and_slide>` 時，該物體僅和牆壁發生了碰撞，則返回 ``true``\ 。否則返回 ``false``\ 。決定表面是否為“牆壁”的是 :ref:`up_direction<class_CharacterBody2D_property_up_direction>` 和 :ref:`floor_max_angle<class_CharacterBody2D_property_floor_max_angle>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody2D_method_move_and_slide:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **move_and_slide**\ (\ ) :ref:`🔗<class_CharacterBody2D_method_move_and_slide>`

Moves the body based on :ref:`velocity<class_CharacterBody2D_property_velocity>`. If the body collides with another, it will slide along the other body (by default only on floor) rather than stop immediately. If the other body is a **CharacterBody2D** or :ref:`RigidBody2D<class_RigidBody2D>`, it will also be affected by the motion of the other body. You can use this to make moving and rotating platforms, or to make nodes push other nodes.

This method should be used in :ref:`Node._physics_process()<class_Node_private_method__physics_process>` (or in a method called by :ref:`Node._physics_process()<class_Node_private_method__physics_process>`), as it uses the physics step's ``delta`` value automatically in calculations. Otherwise, the simulation will run at an incorrect speed.

Modifies :ref:`velocity<class_CharacterBody2D_property_velocity>` if a slide collision occurred. To get the latest collision call :ref:`get_last_slide_collision()<class_CharacterBody2D_method_get_last_slide_collision>`, for detailed information about collisions that occurred, use :ref:`get_slide_collision()<class_CharacterBody2D_method_get_slide_collision>`.

When the body touches a moving platform, the platform's velocity is automatically added to the body motion. If a collision occurs due to the platform's motion, it will always be first in the slide collisions.

The general behavior and available properties change according to the :ref:`motion_mode<class_CharacterBody2D_property_motion_mode>`.

Returns ``true`` if the body collided, otherwise, returns ``false``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
