:github_url: hide

.. _class_RigidBody2D:

RigidBody2D
===========

**继承：** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`PhysicalBone2D<class_PhysicalBone2D>`

由物理仿真进行移动的 2D 物理体。

.. rst-class:: classref-introduction-group

描述
----

**RigidBody2D** 实现了完整的 2D 物理。这个物理体无法直接控制，必须对其施加力（重力、冲量等），物理仿真将计算由此产生的移动、旋转、对碰撞的反应以及对沿路其他物理体的影响等。

可以使用 :ref:`lock_rotation<class_RigidBody2D_property_lock_rotation>`\ 、\ :ref:`freeze<class_RigidBody2D_property_freeze>` 和 :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>` 调整该物理体的行为。通过修改该对象的 :ref:`mass<class_RigidBody2D_property_mass>` 等属性，你可以控制物理仿真对其的影响。

即使施加了力，刚体也会始终维持自身的形状和大小。适用于环境中可交互的对象，例如能够推倒的树木或者能够被推动的一堆箱子。

如果你需要直接影响物体，请优先使用 :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>`\ ，能够直接访问物理状态。

如果你需要覆盖默认的物理行为，你可以编写自定义的力整合函数。见 :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>`\ 。

\ **注意：**\ 频繁修改 **RigidBody2D** 的 2D 变换或 :ref:`linear_velocity<class_RigidBody2D_property_linear_velocity>` 可能导致无法预期的行为。这也会发生在 **RigidBody2D** 是不断移动的节点的子孙节点时，比如另一个 **RigidBody2D**\ ，因为祖先移动时会导致设置全局变换。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`物理介绍 <../tutorials/physics/physics_introduction>`

- :doc:`排查物理问题 <../tutorials/physics/troubleshooting_physics_issues>`

- `2D 物理平台跳跃演示 <https://godotengine.org/asset-library/asset/2725>`__

- `实例化演示 <https://godotengine.org/asset-library/asset/2716>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`angular_damp<class_RigidBody2D_property_angular_damp>`                           | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`DampMode<enum_RigidBody2D_DampMode>`                 | :ref:`angular_damp_mode<class_RigidBody2D_property_angular_damp_mode>`                 | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`angular_velocity<class_RigidBody2D_property_angular_velocity>`                   | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`can_sleep<class_RigidBody2D_property_can_sleep>`                                 | ``true``          |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>`                       | ``Vector2(0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` | :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>`             | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`constant_force<class_RigidBody2D_property_constant_force>`                       | ``Vector2(0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`constant_torque<class_RigidBody2D_property_constant_torque>`                     | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>`                     | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`CCDMode<enum_RigidBody2D_CCDMode>`                   | :ref:`continuous_cd<class_RigidBody2D_property_continuous_cd>`                         | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>`                 | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`freeze<class_RigidBody2D_property_freeze>`                                       | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>`             | :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>`                             | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`gravity_scale<class_RigidBody2D_property_gravity_scale>`                         | ``1.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`inertia<class_RigidBody2D_property_inertia>`                                     | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`linear_damp<class_RigidBody2D_property_linear_damp>`                             | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`DampMode<enum_RigidBody2D_DampMode>`                 | :ref:`linear_damp_mode<class_RigidBody2D_property_linear_damp_mode>`                   | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`linear_velocity<class_RigidBody2D_property_linear_velocity>`                     | ``Vector2(0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`lock_rotation<class_RigidBody2D_property_lock_rotation>`                         | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`mass<class_RigidBody2D_property_mass>`                                           | ``1.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                      | :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>`         | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>`              | :ref:`physics_material_override<class_RigidBody2D_property_physics_material_override>` |                   |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`sleeping<class_RigidBody2D_property_sleeping>`                                   | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`_integrate_forces<class_RigidBody2D_private_method__integrate_forces>`\ (\ state\: :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`\ ) |virtual|         |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_central_force<class_RigidBody2D_method_add_constant_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`\ )                                           |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_force<class_RigidBody2D_method_add_constant_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_torque<class_RigidBody2D_method_add_constant_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                            |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_central_force<class_RigidBody2D_method_apply_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`\ )                                                         |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_central_impulse<class_RigidBody2D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )                                   |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_force<class_RigidBody2D_method_apply_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_impulse<class_RigidBody2D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )         |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_torque<class_RigidBody2D_method_apply_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                                          |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_torque_impulse<class_RigidBody2D_method_apply_torque_impulse>`\ (\ torque\: :ref:`float<class_float>`\ )                                                          |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] | :ref:`get_colliding_bodies<class_RigidBody2D_method_get_colliding_bodies>`\ (\ ) |const|                                                                                      |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_contact_count<class_RigidBody2D_method_get_contact_count>`\ (\ ) |const|                                                                                            |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_axis_velocity<class_RigidBody2D_method_set_axis_velocity>`\ (\ axis_velocity\: :ref:`Vector2<class_Vector2>`\ )                                                     |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_RigidBody2D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_entered>`

当与另一个 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 发生碰撞时发出。需要将 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` 设置为 ``true``\ ，并将 :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` 设置得足够高以检测所有碰撞。如果 :ref:`TileSet<class_TileSet>` 具有碰撞 :ref:`Shape2D<class_Shape2D>`\ ，则 :ref:`TileMap<class_TileMap>` 将被检测。

\ ``body`` 是其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Node<class_Node>`\ ，如果该节点存在于树中。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_exited>`

当与另一个 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的碰撞结束时发出。需要将 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` 设置为 ``true``\ ，并将 :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` 设置得足够高以检测所有碰撞。如果 :ref:`TileSet<class_TileSet>` 具有碰撞 :ref:`Shape2D<class_Shape2D>`\ ，则 :ref:`TileMap<class_TileMap>` 将被检测。

\ ``body`` 是其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Node<class_Node>`\ ，如果该节点存在于树中。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_shape_entered>`

当该 RigidBody2D 的一个 :ref:`Shape2D<class_Shape2D>` 与另一个 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Shape2D<class_Shape2D>` 碰撞时发出。需要将 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` 设置为 ``true``\ ，并将 :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` 设置得足够高以检测所有碰撞。如果 :ref:`TileSet<class_TileSet>` 具有 Collision :ref:`Shape2D<class_Shape2D>`\ ，则 :ref:`TileMap<class_TileMap>` 会被检测到。

\ ``body_rid`` 由 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用的其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileSet<class_TileSet>` 的 :ref:`CollisionObject2D<class_CollisionObject2D>` 的 :ref:`RID<class_RID>`\ 。

\ ``body`` 其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Node<class_Node>`\ ，如果该节点存在于树中。

\ ``body_shape_index`` 由 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用的其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Shape2D<class_Shape2D>` 的索引。该 :ref:`CollisionShape2D<class_CollisionShape2D>` 节点可以使用 ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))`` 获取。

\ ``local_shape_index`` 由 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用的该 RigidBody2D 的 :ref:`Shape2D<class_Shape2D>` 的索引。该 :ref:`CollisionShape2D<class_CollisionShape2D>` 节点可以使用 ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))`` 获取。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_shape_exited>`

当该 RigidBody2D 的一个 :ref:`Shape2D<class_Shape2D>` 与另一个 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Shape2D<class_Shape2D>` 之间的碰撞结束时发出。需要将 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` 设置为 ``true``\ ，并将 :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` 设置得足够高以检测所有碰撞。如果 :ref:`TileSet<class_TileSet>` 具有 Collision :ref:`Shape2D<class_Shape2D>`\ ，则 :ref:`TileMap<class_TileMap>` 会被检测到。

\ ``body_rid`` 由 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用的其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileSet<class_TileSet>` 的 :ref:`CollisionObject2D<class_CollisionObject2D>` 的 :ref:`RID<class_RID>`\ 。

\ ``body`` 其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Node<class_Node>`\ ，如果该节点存在于树中。

\ ``body_shape_index`` 由 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用的其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Shape2D<class_Shape2D>` 的索引。该 :ref:`CollisionShape2D<class_CollisionShape2D>` 节点可以使用 ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))`` 获取。

\ ``local_shape_index`` 由 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用的该 RigidBody2D 的 :ref:`Shape2D<class_Shape2D>` 的索引。该 :ref:`CollisionShape2D<class_CollisionShape2D>` 节点可以使用 ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))`` 获取。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_sleeping_state_changed:

.. rst-class:: classref-signal

**sleeping_state_changed**\ (\ ) :ref:`🔗<class_RigidBody2D_signal_sleeping_state_changed>`

当物理引擎改变物体的睡眠状态时发出。

\ **注意：**\ 改变 :ref:`sleeping<class_RigidBody2D_property_sleeping>` 的值不会触发这个信号。只有当物理引擎改变了睡眠状态或者使用了 ``emit_signal("sleeping_state_changed")`` 时，它才会被发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_RigidBody2D_FreezeMode:

.. rst-class:: classref-enumeration

enum **FreezeMode**: :ref:`🔗<enum_RigidBody2D_FreezeMode>`

.. _class_RigidBody2D_constant_FREEZE_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **FREEZE_MODE_STATIC** = ``0``

静态物体冻结模式（默认）。物体不受重力和力的影响。它只能由用户的代码移动，并且其他物体沿其路径运动时，不会与之发生碰撞。

.. _class_RigidBody2D_constant_FREEZE_MODE_KINEMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **FREEZE_MODE_KINEMATIC** = ``1``

运动物体的冻结模式。类似于 :ref:`FREEZE_MODE_STATIC<class_RigidBody2D_constant_FREEZE_MODE_STATIC>` ，但是在移动时会与其路径上的其他物体发生碰撞。适用于需要动画的冻结物体。

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_CenterOfMassMode:

.. rst-class:: classref-enumeration

enum **CenterOfMassMode**: :ref:`🔗<enum_RigidBody2D_CenterOfMassMode>`

.. _class_RigidBody2D_constant_CENTER_OF_MASS_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_AUTO** = ``0``

在此模式下，该物体的质心将基于其形状自动计算。此处的前提是各个形状的原点也是对应的质心。

.. _class_RigidBody2D_constant_CENTER_OF_MASS_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_CUSTOM** = ``1``

在此模式下，物体的质心通过 :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>` 设置。默认为物体的原点位置。

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_DampMode:

.. rst-class:: classref-enumeration

enum **DampMode**: :ref:`🔗<enum_RigidBody2D_DampMode>`

.. _class_RigidBody2D_constant_DAMP_MODE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody2D_DampMode>` **DAMP_MODE_COMBINE** = ``0``

在这种模式下，物体的阻尼值将被加到区域中设置的任何值或默认值。

.. _class_RigidBody2D_constant_DAMP_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody2D_DampMode>` **DAMP_MODE_REPLACE** = ``1``

在这种模式下，物体的阻尼值将替换掉区域中设置的任何值或默认值。

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_CCDMode:

.. rst-class:: classref-enumeration

enum **CCDMode**: :ref:`🔗<enum_RigidBody2D_CCDMode>`

.. _class_RigidBody2D_constant_CCD_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_DISABLED** = ``0``

禁用连续碰撞检测。这是检测物体碰撞的最快方法，但可能会错过小型、快速移动的物体。

.. _class_RigidBody2D_constant_CCD_MODE_CAST_RAY:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_CAST_RAY** = ``1``

使用射线投射启用连续碰撞检测。这比形状投射快，但精度较低。

.. _class_RigidBody2D_constant_CCD_MODE_CAST_SHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_CAST_SHAPE** = ``2``

使用形状投射启用连续碰撞检测。这是最慢的 CCD 方法，也是最精确的。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_RigidBody2D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

减缓物体的旋转。默认情况下，物体将使用 :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>` 设置，或由 :ref:`Area2D<class_Area2D>` 设置的任何值覆盖。根据 :ref:`angular_damp_mode<class_RigidBody2D_property_angular_damp_mode>`\ ，你可以设置 :ref:`angular_damp_mode<class_RigidBody2D_property_angular_damp_mode>` 以添加到或替换物体的阻尼值。

有关阻尼的更多详细信息，请参见 :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>` 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_angular_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody2D_DampMode>` **angular_damp_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_angular_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody2D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody2D_DampMode>` **get_angular_damp_mode**\ (\ )

定义如何应用 :ref:`angular_damp<class_RigidBody2D_property_angular_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_velocity**\ (\ )

物体的旋转速度，单位为\ *弧度*\ 每秒。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_can_sleep:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_sleep** = ``true`` :ref:`🔗<class_RigidBody2D_property_can_sleep>`

.. rst-class:: classref-property-setget

- |void| **set_can_sleep**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_able_to_sleep**\ (\ )

如果为 ``true``\ ，则物体未运动时可以进入睡眠模式。见 :ref:`sleeping<class_RigidBody2D_property_sleeping>` 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **center_of_mass** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_center_of_mass**\ (\ )

当 :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>` 设置为 :ref:`CENTER_OF_MASS_MODE_CUSTOM<class_RigidBody2D_constant_CENTER_OF_MASS_MODE_CUSTOM>` 时，物体的自定义质心相对于物体原点位置的位置。这是物体的平衡点，只有施加在质心内的力才会引起线性加速度。施加在质心之外的力会引起角加速度。

当 :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>` 设置为 :ref:`CENTER_OF_MASS_MODE_AUTO<class_RigidBody2D_constant_CENTER_OF_MASS_MODE_AUTO>`\ （默认值）时，会自动确定质心，但这不会更新 :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>` 的值。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_center_of_mass_mode:

.. rst-class:: classref-property

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **center_of_mass_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_center_of_mass_mode>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass_mode**\ (\ value\: :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>`\ )
- :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **get_center_of_mass_mode**\ (\ )

定义设置物体质心的方式。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_constant_force:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **constant_force** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_constant_force>`

.. rst-class:: classref-property-setget

- |void| **set_constant_force**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_constant_force**\ (\ )

在每个物理更新期间施加到物体的总恒定位置的力。

见 :ref:`add_constant_force()<class_RigidBody2D_method_add_constant_force>` 和 :ref:`add_constant_central_force()<class_RigidBody2D_method_add_constant_central_force>` 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_constant_torque:

.. rst-class:: classref-property

:ref:`float<class_float>` **constant_torque** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_constant_torque>`

.. rst-class:: classref-property-setget

- |void| **set_constant_torque**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_constant_torque**\ (\ )

在每个物理更新期间施加的物体的总恒定旋转力。

见 :ref:`add_constant_torque()<class_RigidBody2D_method_add_constant_torque>` 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_contact_monitor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **contact_monitor** = ``false`` :ref:`🔗<class_RigidBody2D_property_contact_monitor>`

.. rst-class:: classref-property-setget

- |void| **set_contact_monitor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_contact_monitor_enabled**\ (\ )

如果为 ``true``\ ，则该 RigidBody2D 将在与其他物体碰撞时发出信号。

\ **注意：**\ 默认情况下，报告的最大接触数被设置为 0，表示不会记录任何内容，见 :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_continuous_cd:

.. rst-class:: classref-property

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **continuous_cd** = ``0`` :ref:`🔗<class_RigidBody2D_property_continuous_cd>`

.. rst-class:: classref-property-setget

- |void| **set_continuous_collision_detection_mode**\ (\ value\: :ref:`CCDMode<enum_RigidBody2D_CCDMode>`\ )
- :ref:`CCDMode<enum_RigidBody2D_CCDMode>` **get_continuous_collision_detection_mode**\ (\ )

连续碰撞检测模式。

连续碰撞检测尝试预测一个移动的物体会在哪里碰撞，而不是移动它并在碰撞后纠正它的运动。连续碰撞检测速度较慢，但更精确，并且与快速移动的小物体发生碰撞时遗漏更少。可以使用光线投射和形状投射方法。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_custom_integrator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_integrator** = ``false`` :ref:`🔗<class_RigidBody2D_property_custom_integrator>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_integrator**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_integrator**\ (\ )

如果 ``true``\ ，则该物体的标准力积分（如重力或阻尼）将被禁用。除了碰撞响应之外，如果覆盖了 :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>` 方法，则物体将仅按照该方法确定的方式移动。

设置该属性将在内部调用方法 :ref:`PhysicsServer2D.body_set_omit_force_integration()<class_PhysicsServer2D_method_body_set_omit_force_integration>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_freeze:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **freeze** = ``false`` :ref:`🔗<class_RigidBody2D_property_freeze>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_freeze_enabled**\ (\ )

If ``true``, the body is frozen. Gravity and forces are not applied anymore.

See :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>` to set the body's behavior when frozen.

\ **Note:** For a body that is always frozen, use :ref:`StaticBody2D<class_StaticBody2D>` or :ref:`AnimatableBody2D<class_AnimatableBody2D>` instead.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_freeze_mode:

.. rst-class:: classref-property

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **freeze_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_freeze_mode>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_mode**\ (\ value\: :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>`\ )
- :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **get_freeze_mode**\ (\ )

The body's freeze mode. Determines the body's behavior when :ref:`freeze<class_RigidBody2D_property_freeze>` is ``true``.

\ **Note:** For a body that is always frozen, use :ref:`StaticBody2D<class_StaticBody2D>` or :ref:`AnimatableBody2D<class_AnimatableBody2D>` instead.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_gravity_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_scale** = ``1.0`` :ref:`🔗<class_RigidBody2D_property_gravity_scale>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_scale**\ (\ )

乘以施加在物体上的重力。物体的重力是由 :ref:`ProjectSettings.physics/2d/default_gravity<class_ProjectSettings_property_physics/2d/default_gravity>` 项目设置和/或任何由 :ref:`Area2D<class_Area2D>` 应用的额外重力向量计算出来的。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_inertia:

.. rst-class:: classref-property

:ref:`float<class_float>` **inertia** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_inertia>`

.. rst-class:: classref-property-setget

- |void| **set_inertia**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inertia**\ (\ )

该物体的转动惯量。与质量类似，但用于旋转：用于确定需要施加多少力矩才能让该物体旋转。通常会自动根据质量和形状计算转动惯量，但这个属性能够让你设置自定义的值。

设置为 ``0`` 时，会自动计算惯量（默认值）。

\ **注意：**\ 自动计算出惯量后，这个值不会改变。请使用 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 获取计算出的惯量。


.. tabs::

 .. code-tab:: gdscript

    @onready var ball = $Ball

    func get_ball_inertia():
        return 1.0 / PhysicsServer2D.body_get_direct_state(ball.get_rid()).inverse_inertia

 .. code-tab:: csharp

    private RigidBody2D _ball;

    public override void _Ready()
    {
        _ball = GetNode<RigidBody2D>("Ball");
    }

    private float GetBallInertia()
    {
        return 1.0f / PhysicsServer2D.BodyGetDirectState(_ball.GetRid()).InverseInertia;
    }



.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

抑制物体的运动。默认情况下，物体将使用 :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>` 设置或物体所在的 :ref:`Area2D<class_Area2D>` 的覆盖值。取决于 :ref:`linear_damp_mode<class_RigidBody2D_property_linear_damp_mode>`\ ，你可以将 :ref:`linear_damp<class_RigidBody2D_property_linear_damp>` 设置为添加或替换物体的阻尼值。

有关阻尼的更多详细信息，请参阅 :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody2D_DampMode>` **linear_damp_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_linear_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody2D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody2D_DampMode>` **get_linear_damp_mode**\ (\ )

定义如何应用 :ref:`linear_damp<class_RigidBody2D_property_linear_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **linear_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_linear_velocity**\ (\ )

该实体的线速度，单位为像素每秒。可以偶尔使用，但是\ **不要每一帧都去设置**\ ，因为物理可能在另一个线程中运行，并且以不同的间隔。使用 :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>` 作为你的进程循环，以精确控制物体状态。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_lock_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **lock_rotation** = ``false`` :ref:`🔗<class_RigidBody2D_property_lock_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_lock_rotation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_lock_rotation_enabled**\ (\ )

如果为 ``true``\ ，则该物体不能旋转。重力和力只施加线性运动。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_RigidBody2D_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

实体的质量。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_max_contacts_reported:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_contacts_reported** = ``0`` :ref:`🔗<class_RigidBody2D_property_max_contacts_reported>`

.. rst-class:: classref-property-setget

- |void| **set_max_contacts_reported**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_contacts_reported**\ (\ )

将记录的最大接触点数。需要一个大于 0 的值，并将 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` 设置为 ``true`` 以开始注册接触。使用 :ref:`get_contact_count()<class_RigidBody2D_method_get_contact_count>` 检索计数或使用 :ref:`get_colliding_bodies()<class_RigidBody2D_method_get_colliding_bodies>` 检索已发生碰撞的物体。

\ **注意：**\ 接触点的数量不同于碰撞的数量。平行边之间的碰撞将导致两个接触点（每个端点一个），平行面之间的碰撞将导致四个接触点（每个角落一个）。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_RigidBody2D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

物体的物理材质。

如果为该属性指定了一种材质，则将使用该材质代替任何其他物理材质，例如继承的材质。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** = ``false`` :ref:`🔗<class_RigidBody2D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleeping**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

如果为 ``true`` ，该刚体将不会移动，也不会计算受力，直到被另一个物体唤醒，例如通过碰撞或使用 :ref:`apply_impulse()<class_RigidBody2D_method_apply_impulse>` 或 :ref:`apply_force()<class_RigidBody2D_method_apply_force>` 方法。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_RigidBody2D_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ state\: :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`\ ) |virtual| :ref:`🔗<class_RigidBody2D_private_method__integrate_forces>`

在物理处理过程中被调用，允许你读取并安全地修改对象的模拟状态。默认情况下，它在标准力积分之前调用，但 :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>` 属性允许你禁用标准力积分并对物体进行完全自定义的力积分。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_central_force>`

在不影响旋转的情况下，添加一个定向的恒定力，该力会随着时间的推移而持续施加，直到使用 ``constant_force = Vector2(0, 0)`` 清除。

这相当于在物体的质心处，使用 :ref:`add_constant_force()<class_RigidBody2D_method_add_constant_force>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_force>`

向实体添加一个恒定的定位力，持续施加，直到用 ``constant_force = Vector2(0, 0)`` 清除。

\ ``position`` 是在全局坐标中距实体原点的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_torque>`

添加一个恒定的旋转力矩，而不影响位置，该力会随着时间的推移不断施加，直到使用 ``constant_torque = 0`` 清除。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_central_force>`

施加一个不影响旋转的定向力。该力是时间相关的，意味着每次物理更新都会施加。

这相当于在物体的质心处，使用 :ref:`apply_force()<class_RigidBody2D_method_apply_force>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_central_impulse>`

施加一个不影响的旋转定向冲量。

冲量与时间无关！每帧应用一个冲量，会产生一个依赖于帧速率的力。出于这个原因，它应该只在模拟一次性影响时使用（否则使用 “_force”函数）。

这相当于在物体的质心处，使用 :ref:`apply_impulse()<class_RigidBody2D_method_apply_impulse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_force>`

对实体施加一个定位力。力是时间相关的，意味着每次物理更新都会被施加。

\ ``position`` 是在全局坐标中距实体原点的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_impulse>`

向实体施加一个定位冲量。

冲量是时间无关的！每帧施加一个冲量将产生一个依赖于帧速率的力。出于这个原因，它应该只在模拟一次性影响时使用（否则使用“_force”函数）。

\ ``position`` 是在全局坐标中距实体原点的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_torque>`

施加旋转力但不影响位置。力是与时间相关的，应该每次物理更新时都要进行施加。

\ **注意：**\ 有 :ref:`inertia<class_RigidBody2D_property_inertia>` 才能正常工作。要让 :ref:`inertia<class_RigidBody2D_property_inertia>` 存在，必须有一个 :ref:`CollisionShape2D<class_CollisionShape2D>` 作为该节点的子节点，或者你也可以手动设置 :ref:`inertia<class_RigidBody2D_property_inertia>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_torque_impulse>`

在不影响位置的情况下，向实体施加一个旋转冲量。

冲量是时间无关的！每帧施加一个冲量将产生依赖于帧速率的力。出于这个原因，它应该只在模拟一次性影响时使用（否则使用“_force”函数）。

\ **注意：**\ 需要 :ref:`inertia<class_RigidBody2D_property_inertia>` 才能发挥作用。要具有 :ref:`inertia<class_RigidBody2D_property_inertia>`\ ，活动的 :ref:`CollisionShape2D<class_CollisionShape2D>` 必须是该节点的一个子节点，或者可以手动设置 :ref:`inertia<class_RigidBody2D_property_inertia>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_colliding_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] **get_colliding_bodies**\ (\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_colliding_bodies>`

返回与此物体发生碰撞的物体的列表。需要将 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` 设置为 ``true``\ ，并将 :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` 设置足够高以侦测所有碰撞。

\ **注意：**\ 此测试的结果不会立即在移动物体后得出。为了提高性能，碰撞列表每帧更新一次，且在物理迭代之前进行。可考虑改用信号来代替。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_contact_count>`

返回此物体与其他物体的接触数。默认情况下，除非配置监视接触的物体（见 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>`\ ），否则返回 0。

\ **注意：**\ 要获取正在碰撞的物体，请使用 :ref:`get_colliding_bodies()<class_RigidBody2D_method_get_colliding_bodies>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_set_axis_velocity:

.. rst-class:: classref-method

|void| **set_axis_velocity**\ (\ axis_velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_set_axis_velocity>`

设置物体在给定轴上的速度。给定矢量轴上的速度将设置为给定向量长度。这对于跳跃行为很有用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
