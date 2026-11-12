:github_url: hide

.. _class_RigidBody2D:

RigidBody2D
===========

**繼承：** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`PhysicalBone2D<class_PhysicalBone2D>`

由物理模擬進行移動的 2D 物理體。

.. rst-class:: classref-introduction-group

說明
----

**RigidBody2D** 實作了完整的 2D 物理。這個物理體無法直接控制，必須對其施加力（重力、衝量等），物理仿真將計算由此產生的移動、旋轉、對碰撞的反應以及對沿路其他物理體的影響等。

可以使用 :ref:`lock_rotation<class_RigidBody2D_property_lock_rotation>`\ 、\ :ref:`freeze<class_RigidBody2D_property_freeze>` 和 :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>` 調整該物理體的行為。通過修改該物件的 :ref:`mass<class_RigidBody2D_property_mass>` 等屬性，你可以控制物理仿真對其的影響。

即使施加了力，剛體也會始終維持自身的形狀和大小。適用於環境中可互動的物件，例如能夠推倒的樹木或者能夠被推動的一堆箱子。

如果你需要直接影響物體，請優先使用 :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>`\ ，能夠直接存取物理狀態。

如果你需要覆蓋預設的物理行為，你可以編寫自訂的力整合函式。見 :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>`\ 。

\ **注意：**\ 頻繁修改 **RigidBody2D** 的 2D 變換或 :ref:`linear_velocity<class_RigidBody2D_property_linear_velocity>` 可能導致無法預期的行為。這也會發生在 **RigidBody2D** 是不斷移動的節點的子孫節點時，比如另一個 **RigidBody2D**\ ，因為祖先移動時會導致設定全域變換。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`物理介紹 <../tutorials/physics/physics_introduction>`

- :doc:`排查物理問題 <../tutorials/physics/troubleshooting_physics_issues>`

- `2D 物理平臺跳躍演示 <https://godotengine.org/asset-library/asset/2725>`__

- `產生實體演示 <https://godotengine.org/asset-library/asset/2716>`__

.. rst-class:: classref-reftable-group

屬性
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
   | :ref:`Vector2<class_Vector2>`                            | :ref:`get_velocity_at_local_position<class_RigidBody2D_method_get_velocity_at_local_position>`\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const|                  |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                            | :ref:`get_velocity_at_position<class_RigidBody2D_method_get_velocity_at_position>`\ (\ global_point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_axis_velocity<class_RigidBody2D_method_set_axis_velocity>`\ (\ axis_velocity\: :ref:`Vector2<class_Vector2>`\ )                                                     |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_RigidBody2D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_entered>`

當與另一個 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 發生碰撞時發出。需要將 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` 設定為 ``true``\ ，並將 :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` 設定得足夠高以偵測所有碰撞。如果 :ref:`TileSet<class_TileSet>` 具有碰撞 :ref:`Shape2D<class_Shape2D>`\ ，則 :ref:`TileMap<class_TileMap>` 將被偵測。

\ ``body`` 是其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Node<class_Node>`\ ，如果該節點存在於樹中。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_exited>`

當與另一個 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的碰撞結束時發出。需要將 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` 設定為 ``true``\ ，並將 :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` 設定得足夠高以偵測所有碰撞。如果 :ref:`TileSet<class_TileSet>` 具有碰撞 :ref:`Shape2D<class_Shape2D>`\ ，則 :ref:`TileMap<class_TileMap>` 將被偵測。

\ ``body`` 是其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Node<class_Node>`\ ，如果該節點存在於樹中。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_shape_entered>`

當該 RigidBody2D 的一個 :ref:`Shape2D<class_Shape2D>` 與另一個 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Shape2D<class_Shape2D>` 碰撞時發出。需要將 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` 設定為 ``true``\ ，並將 :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` 設定得足夠高以偵測所有碰撞。如果 :ref:`TileSet<class_TileSet>` 具有 Collision :ref:`Shape2D<class_Shape2D>`\ ，則 :ref:`TileMap<class_TileMap>` 會被偵測到。

\ ``body_rid`` 由 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用的其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileSet<class_TileSet>` 的 :ref:`CollisionObject2D<class_CollisionObject2D>` 的 :ref:`RID<class_RID>`\ 。

\ ``body`` 其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Node<class_Node>`\ ，如果該節點存在於樹中。

\ ``body_shape_index`` 由 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用的其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Shape2D<class_Shape2D>` 的索引。該 :ref:`CollisionShape2D<class_CollisionShape2D>` 節點可以使用 ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))`` 取得。

\ ``local_shape_index`` 由 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用的該 RigidBody2D 的 :ref:`Shape2D<class_Shape2D>` 的索引。該 :ref:`CollisionShape2D<class_CollisionShape2D>` 節點可以使用 ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))`` 取得。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_shape_exited>`

當該 RigidBody2D 的一個 :ref:`Shape2D<class_Shape2D>` 與另一個 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Shape2D<class_Shape2D>` 之間的碰撞結束時發出。需要將 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` 設定為 ``true``\ ，並將 :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` 設定得足夠高以偵測所有碰撞。如果 :ref:`TileSet<class_TileSet>` 具有 Collision :ref:`Shape2D<class_Shape2D>`\ ，則 :ref:`TileMap<class_TileMap>` 會被偵測到。

\ ``body_rid`` 由 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用的其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileSet<class_TileSet>` 的 :ref:`CollisionObject2D<class_CollisionObject2D>` 的 :ref:`RID<class_RID>`\ 。

\ ``body`` 其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Node<class_Node>`\ ，如果該節點存在於樹中。

\ ``body_shape_index`` 由 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用的其他 :ref:`PhysicsBody2D<class_PhysicsBody2D>` 或 :ref:`TileMap<class_TileMap>` 的 :ref:`Shape2D<class_Shape2D>` 的索引。該 :ref:`CollisionShape2D<class_CollisionShape2D>` 節點可以使用 ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))`` 取得。

\ ``local_shape_index`` 由 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 使用的該 RigidBody2D 的 :ref:`Shape2D<class_Shape2D>` 的索引。該 :ref:`CollisionShape2D<class_CollisionShape2D>` 節點可以使用 ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))`` 取得。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_sleeping_state_changed:

.. rst-class:: classref-signal

**sleeping_state_changed**\ (\ ) :ref:`🔗<class_RigidBody2D_signal_sleeping_state_changed>`

當物理引擎改變物體的睡眠狀態時發出。

\ **注意：**\ 改變 :ref:`sleeping<class_RigidBody2D_property_sleeping>` 的值不會觸發這個訊號。只有當物理引擎改變了睡眠狀態或者使用了 ``emit_signal("sleeping_state_changed")`` 時，它才會被發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_RigidBody2D_FreezeMode:

.. rst-class:: classref-enumeration

enum **FreezeMode**: :ref:`🔗<enum_RigidBody2D_FreezeMode>`

.. _class_RigidBody2D_constant_FREEZE_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **FREEZE_MODE_STATIC** = ``0``

靜態物體凍結模式（預設）。物體不受重力和力的影響。它只能由使用者的程式碼移動，並且其他物體沿其路徑運動時，不會與之發生碰撞。

.. _class_RigidBody2D_constant_FREEZE_MODE_KINEMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **FREEZE_MODE_KINEMATIC** = ``1``

運動物體的凍結模式。類似於 :ref:`FREEZE_MODE_STATIC<class_RigidBody2D_constant_FREEZE_MODE_STATIC>` ，但是在移動時會與其路徑上的其他物體發生碰撞。適用於需要動畫的凍結物體。

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_CenterOfMassMode:

.. rst-class:: classref-enumeration

enum **CenterOfMassMode**: :ref:`🔗<enum_RigidBody2D_CenterOfMassMode>`

.. _class_RigidBody2D_constant_CENTER_OF_MASS_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_AUTO** = ``0``

在此模式下，該物體的質心將基於其形狀自動計算。此處的前提是各個形狀的原點也是對應的質心。

.. _class_RigidBody2D_constant_CENTER_OF_MASS_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_CUSTOM** = ``1``

在此模式下，物體的質心通過 :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>` 設定。預設為物體的原點位元置。

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_DampMode:

.. rst-class:: classref-enumeration

enum **DampMode**: :ref:`🔗<enum_RigidBody2D_DampMode>`

.. _class_RigidBody2D_constant_DAMP_MODE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody2D_DampMode>` **DAMP_MODE_COMBINE** = ``0``

在這種模式下，物體的阻尼值將被加到區域中設定的任何值或預設值。

.. _class_RigidBody2D_constant_DAMP_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody2D_DampMode>` **DAMP_MODE_REPLACE** = ``1``

在這種模式下，物體的阻尼值將替換掉區域中設定的任何值或預設值。

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_CCDMode:

.. rst-class:: classref-enumeration

enum **CCDMode**: :ref:`🔗<enum_RigidBody2D_CCDMode>`

.. _class_RigidBody2D_constant_CCD_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_DISABLED** = ``0``

停用連續碰撞偵測。這是偵測物體碰撞的最快方法，但可能會錯過小型、快速移動的物體。

.. _class_RigidBody2D_constant_CCD_MODE_CAST_RAY:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_CAST_RAY** = ``1``

使用射線投射啟用連續碰撞偵測。這比形狀投射快，但精度較低。

.. _class_RigidBody2D_constant_CCD_MODE_CAST_SHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_CAST_SHAPE** = ``2``

使用形狀投射啟用連續碰撞偵測。這是最慢的 CCD 方法，也是最精確的。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RigidBody2D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

抑制物體的旋轉。預設使用 :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>` 的設定，或物體所在 :ref:`Area2D<class_Area2D>` 指定的覆寫值。依照 :ref:`angular_damp_mode<class_RigidBody2D_property_angular_damp_mode>`\ ，可將 :ref:`angular_damp<class_RigidBody2D_property_angular_damp>` 加到物體的阻尼值，或用它取代原有阻尼值。

阻尼的詳細說明請參閱 :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_angular_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody2D_DampMode>` **angular_damp_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_angular_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody2D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody2D_DampMode>` **get_angular_damp_mode**\ (\ )

定義如何應用 :ref:`angular_damp<class_RigidBody2D_property_angular_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_velocity**\ (\ )

物體的旋轉速度，單位為\ *弧度*\ 每秒。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_can_sleep:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_sleep** = ``true`` :ref:`🔗<class_RigidBody2D_property_can_sleep>`

.. rst-class:: classref-property-setget

- |void| **set_can_sleep**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_able_to_sleep**\ (\ )

若爲 ``true``\ ，則形體未運動時進入睡眠模式。參看 :ref:`sleeping<class_RigidBody2D_property_sleeping>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **center_of_mass** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_center_of_mass**\ (\ )

當 :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>` 設定為 :ref:`CENTER_OF_MASS_MODE_CUSTOM<class_RigidBody2D_constant_CENTER_OF_MASS_MODE_CUSTOM>` 時，物體的自訂質心相對於物體原點位置的位置。這是物體的平衡點，只有施加在質心內的力才會引起線性加速度。施加在質心之外的力會引起角加速度。

當 :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>` 設定為 :ref:`CENTER_OF_MASS_MODE_AUTO<class_RigidBody2D_constant_CENTER_OF_MASS_MODE_AUTO>`\ （預設值）時，會自動確定質心，但這不會更新 :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>` 的值。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_center_of_mass_mode:

.. rst-class:: classref-property

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **center_of_mass_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_center_of_mass_mode>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass_mode**\ (\ value\: :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>`\ )
- :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **get_center_of_mass_mode**\ (\ )

定義設定物體質心的方式。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_constant_force:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **constant_force** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_constant_force>`

.. rst-class:: classref-property-setget

- |void| **set_constant_force**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_constant_force**\ (\ )

在每個物理更新期間施加到物體的總恒定位置的力。

見 :ref:`add_constant_force()<class_RigidBody2D_method_add_constant_force>` 和 :ref:`add_constant_central_force()<class_RigidBody2D_method_add_constant_central_force>` 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_constant_torque:

.. rst-class:: classref-property

:ref:`float<class_float>` **constant_torque** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_constant_torque>`

.. rst-class:: classref-property-setget

- |void| **set_constant_torque**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_constant_torque**\ (\ )

在每個物理更新期間施加的物體的總恒定旋轉力。

見 :ref:`add_constant_torque()<class_RigidBody2D_method_add_constant_torque>` 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_contact_monitor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **contact_monitor** = ``false`` :ref:`🔗<class_RigidBody2D_property_contact_monitor>`

.. rst-class:: classref-property-setget

- |void| **set_contact_monitor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_contact_monitor_enabled**\ (\ )

如果為 ``true``\ ，則該 RigidBody2D 將在與其他物體碰撞時發出訊號。

\ **注意：**\ 預設情況下，報告的最大接觸數被設定為 0，表示不會記錄任何內容，見 :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_continuous_cd:

.. rst-class:: classref-property

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **continuous_cd** = ``0`` :ref:`🔗<class_RigidBody2D_property_continuous_cd>`

.. rst-class:: classref-property-setget

- |void| **set_continuous_collision_detection_mode**\ (\ value\: :ref:`CCDMode<enum_RigidBody2D_CCDMode>`\ )
- :ref:`CCDMode<enum_RigidBody2D_CCDMode>` **get_continuous_collision_detection_mode**\ (\ )

連續碰撞檢測模式。

連續碰撞檢測嘗試預測一個移動的物體會在哪裡碰撞，而不是移動它並在碰撞後糾正它的運動。連續碰撞檢測速度較慢，但更精確，並且與快速移動的小物體發生碰撞時遺漏更少。可以使用光線投射和形狀投射方法。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_custom_integrator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_integrator** = ``false`` :ref:`🔗<class_RigidBody2D_property_custom_integrator>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_integrator**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_integrator**\ (\ )

如果 ``true``\ ，則該物體的標準力積分（如重力或阻尼）將被停用。除了碰撞響應之外，如果覆蓋了 :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>` 方法，則物體將僅按照該方法確定的方式移動。

設定該屬性將在內部呼叫方法 :ref:`PhysicsServer2D.body_set_omit_force_integration()<class_PhysicsServer2D_method_body_set_omit_force_integration>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_freeze:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **freeze** = ``false`` :ref:`🔗<class_RigidBody2D_property_freeze>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_freeze_enabled**\ (\ )

如果為 ``true``\ ，則物體被凍結。不再施加重力和力。

請參閱 :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>`\ ，以設定凍結時，物體的行為。

\ **注意：** 對於始終凍結的物體，請改用 :ref:`StaticBody2D<class_StaticBody2D>` 或 :ref:`AnimatableBody2D<class_AnimatableBody2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_freeze_mode:

.. rst-class:: classref-property

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **freeze_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_freeze_mode>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_mode**\ (\ value\: :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>`\ )
- :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **get_freeze_mode**\ (\ )

物體的凍結模式。\ :ref:`freeze<class_RigidBody2D_property_freeze>` 為 ``true`` 時決定物體的行為。

\ **注意：**\ 始終凍結的物體請改用 :ref:`StaticBody2D<class_StaticBody2D>` 或 :ref:`AnimatableBody2D<class_AnimatableBody2D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_gravity_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_scale** = ``1.0`` :ref:`🔗<class_RigidBody2D_property_gravity_scale>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_scale**\ (\ )

乘以施加在物體上的重力。物體的重力是由 :ref:`ProjectSettings.physics/2d/default_gravity<class_ProjectSettings_property_physics/2d/default_gravity>` 專案設定和/或任何由 :ref:`Area2D<class_Area2D>` 應用的額外重力向量計算出來的。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_inertia:

.. rst-class:: classref-property

:ref:`float<class_float>` **inertia** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_inertia>`

.. rst-class:: classref-property-setget

- |void| **set_inertia**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inertia**\ (\ )

該物體的慣性力矩。與品質類似，但適用於旋轉：用於確定需要施加多少扭矩才能讓該物體旋轉。通常會自動根據品質和形狀計算慣性力矩，但這個屬效能夠讓你設定自訂的值。

設定為 ``0`` 時，會自動計算慣性（預設值）。

\ **注意：**\ 自動計算出慣性後，這個值不會改變。請使用 :ref:`PhysicsServer2D<class_PhysicsServer2D>` 取得計算出的慣性。


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

減弱形體的運動。預設情況下，形體使用 :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>` 的設定，或被形體所處的 :ref:`Area2D<class_Area2D>` 設定覆寫。根據 :ref:`linear_damp_mode<class_RigidBody2D_property_linear_damp_mode>` 的設定，可以將 :ref:`linear_damp<class_RigidBody2D_property_linear_damp>` 設爲加上或取代形體的阻尼值。

更多有關阻尼的資訊，請參閱 :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody2D_DampMode>` **linear_damp_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_linear_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody2D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody2D_DampMode>` **get_linear_damp_mode**\ (\ )

定義如何應用 :ref:`linear_damp<class_RigidBody2D_property_linear_damp>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **linear_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_linear_velocity**\ (\ )

該實體的線速度，單位為圖元每秒。可以偶爾使用，但是\ **不要每一影格都去設定**\ ，因為物理可能在另一個執行緒中運作，並且以不同的間隔。使用 :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>` 作為你的程序迴圈，以精確控制物體狀態。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_lock_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **lock_rotation** = ``false`` :ref:`🔗<class_RigidBody2D_property_lock_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_lock_rotation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_lock_rotation_enabled**\ (\ )

如果為 ``true``\ ，則該物體不能旋轉。重力和力只施加線性運動。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_RigidBody2D_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

此實體的質量。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_max_contacts_reported:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_contacts_reported** = ``0`` :ref:`🔗<class_RigidBody2D_property_max_contacts_reported>`

.. rst-class:: classref-property-setget

- |void| **set_max_contacts_reported**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_contacts_reported**\ (\ )

將記錄的最大接觸點數。需要一個大於 0 的值，並將 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` 設定為 ``true`` 以開始註冊接觸。使用 :ref:`get_contact_count()<class_RigidBody2D_method_get_contact_count>` 檢索計數或使用 :ref:`get_colliding_bodies()<class_RigidBody2D_method_get_colliding_bodies>` 檢索已發生碰撞的物體。

\ **注意：**\ 接觸點的數量不同於碰撞的數量。平行邊之間的碰撞將導致兩個接觸點（每個端點一個），平行面之間的碰撞將導致四個接觸點（每個角落一個）。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_RigidBody2D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

覆寫形體的物理材質。

若爲此屬性指定了某種材質，則會使用該材質代替其他物理材質（比如繼承而來的材質）。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** = ``false`` :ref:`🔗<class_RigidBody2D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleeping**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

如果為 ``true`` ，該剛體將不會移動，也不會計算受力，直到被另一個物體喚醒，例如通過碰撞或使用 :ref:`apply_impulse()<class_RigidBody2D_method_apply_impulse>` 或 :ref:`apply_force()<class_RigidBody2D_method_apply_force>` 方法。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RigidBody2D_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ state\: :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`\ ) |virtual| :ref:`🔗<class_RigidBody2D_private_method__integrate_forces>`

在物理處理過程中被呼叫，允許你讀取並安全地修改物件的模擬狀態。預設情況下，它在標準力積分之前呼叫，但 :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>` 屬性允許你停用標準力積分並對物體進行完全自訂的力積分。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_central_force>`

在不影響旋轉的情況下，新增一個定向的恒定力，該力會隨著時間的推移而持續施加，直到使用 ``constant_force = Vector2(0, 0)`` 清除。

這相當於在物體的質心處，使用 :ref:`add_constant_force()<class_RigidBody2D_method_add_constant_force>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_force>`

向實體新增一個恒定的定位力，持續施加，直到用 ``constant_force = Vector2(0, 0)`` 清除。

\ ``position`` 是在全域座標中距實體原點的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_torque>`

新增一個恒定的旋轉力矩，而不影響位置，該力會隨著時間的推移不斷施加，直到使用 ``constant_torque = 0`` 清除。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_central_force>`

施加一個不影響旋轉的定向力。該力是時間相關的，意味著每次物理更新都會施加。

這相當於在物體的質心處，使用 :ref:`apply_force()<class_RigidBody2D_method_apply_force>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_central_impulse>`

施加一個不影響的旋轉定向脈衝。

脈衝與時間無關！每影格套用一個脈衝，會產生一個依賴於畫面播放速率的力。出於這個原因，它應該只在模擬一次性影響時使用（否則使用 “_force”函式）。

這相當於在物體的質心處，使用 :ref:`apply_impulse()<class_RigidBody2D_method_apply_impulse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_force>`

對實體施加一個定位力。力是時間相關的，意味著每次物理更新都會被施加。

\ ``position`` 是在全域座標中距實體原點的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_impulse>`

向實體施加一個定位脈衝。

脈衝是時間無關的！每影格施加一個脈衝將產生一個依賴於畫面播放速率的力。出於這個原因，它應該只在模擬一次性影響時使用（否則使用“_force”函式）。

\ ``position`` 是在全域座標中距實體原點的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_torque>`

施加旋轉力但不影響位置。力是與時間相關的，應該每次物理更新時都要進行施加。

\ **注意：**\ 有 :ref:`inertia<class_RigidBody2D_property_inertia>` 才能正常工作。要讓 :ref:`inertia<class_RigidBody2D_property_inertia>` 存在，必須有一個 :ref:`CollisionShape2D<class_CollisionShape2D>` 作為該節點的子節點，或者你也可以手動設定 :ref:`inertia<class_RigidBody2D_property_inertia>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_torque_impulse>`

在不影響位置的情況下，向實體施加一個旋轉脈衝。

脈衝是時間無關的！每影格施加一個脈衝將產生依賴於畫面播放速率的力。出於這個原因，它應該只在模擬一次性影響時使用（否則使用“_force”函式）。

\ **注意：**\ 需要 :ref:`inertia<class_RigidBody2D_property_inertia>` 才能發揮作用。要具有 :ref:`inertia<class_RigidBody2D_property_inertia>`\ ，活動的 :ref:`CollisionShape2D<class_CollisionShape2D>` 必須是該節點的一個子節點，或者可以手動設定 :ref:`inertia<class_RigidBody2D_property_inertia>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_colliding_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] **get_colliding_bodies**\ (\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_colliding_bodies>`

返回與此物體發生碰撞的物體的列表。需要將 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` 設定為 ``true``\ ，並將 :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` 設定足夠高以偵測所有碰撞。

\ **注意：**\ 此測試的結果不會立即在移動物體後得出。為了提高效能，碰撞列表每影格更新一次，且在物理步驟之前進行。可考慮改用訊號來代替。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_contact_count>`

返回此物體與其他物體的接觸數。預設情況下，除非配置監視接觸的物體（見 :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>`\ ），否則返回 0。

\ **注意：**\ 要取得正在碰撞的物體，請使用 :ref:`get_colliding_bodies()<class_RigidBody2D_method_get_colliding_bodies>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_velocity_at_local_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_velocity_at_local_position**\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_velocity_at_local_position>`

Returns the body's velocity at the given relative position.

\ ``local_position`` is the offset from the body origin in global coordinates.

See also :ref:`get_velocity_at_position()<class_RigidBody2D_method_get_velocity_at_position>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_velocity_at_position**\ (\ global_point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_velocity_at_position>`

Returns the body's velocity at the given global position.

This is equivalent to ``get_velocity_at_local_position(global_point - global_position)``.

See also :ref:`get_velocity_at_local_position()<class_RigidBody2D_method_get_velocity_at_local_position>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_set_axis_velocity:

.. rst-class:: classref-method

|void| **set_axis_velocity**\ (\ axis_velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_set_axis_velocity>`

設定物體在給定軸上的速度。給定向量軸上的速度將設定為給定向量長度。這對於跳躍行為很有用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
