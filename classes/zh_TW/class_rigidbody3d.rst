:github_url: hide

.. _class_RigidBody3D:

RigidBody3D
===========

**繼承：** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`VehicleBody3D<class_VehicleBody3D>`

由物理模擬進行移動的 3D 物理體。

.. rst-class:: classref-introduction-group

說明
----

**RigidBody3D** implements full 3D physics. It cannot be controlled directly, instead, you must apply forces to it (gravity, impulses, etc.), and the physics simulation will calculate the resulting movement, rotation, react to collisions, and affect other physics bodies in its path.

The body's behavior can be adjusted via :ref:`lock_rotation<class_RigidBody3D_property_lock_rotation>`, :ref:`freeze<class_RigidBody3D_property_freeze>`, and :ref:`freeze_mode<class_RigidBody3D_property_freeze_mode>`. By changing various properties of the object, such as :ref:`mass<class_RigidBody3D_property_mass>`, you can control how the physics simulation acts on it.

A rigid body will always maintain its shape and size, even when forces are applied to it. It is useful for objects that can be interacted with in an environment, such as a tree that can be knocked over or a stack of crates that can be pushed around.

If you need to directly affect the body, prefer :ref:`_integrate_forces()<class_RigidBody3D_private_method__integrate_forces>` as it allows you to directly access the physics state.

If you need to override the default physics behavior, you can write a custom force integration function. See :ref:`custom_integrator<class_RigidBody3D_property_custom_integrator>`.

\ **Note:** Changing the 3D transform or :ref:`linear_velocity<class_RigidBody3D_property_linear_velocity>` of a **RigidBody3D** very often may lead to some unpredictable behaviors. This also happens when a **RigidBody3D** is the descendant of a constantly moving node, like another **RigidBody3D**, as that will cause its global transform to be set whenever its ancestor moves.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`物理介紹 <../tutorials/physics/physics_introduction>`

- :doc:`Troubleshooting physics issues <../tutorials/physics/troubleshooting_physics_issues>`

- `3D 貨車鎮演示 <https://godotengine.org/asset-library/asset/2752>`__

- `3D 物理測試示範 <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                  | :ref:`angular_damp<class_RigidBody3D_property_angular_damp>`                           | ``0.0``              |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`DampMode<enum_RigidBody3D_DampMode>`                 | :ref:`angular_damp_mode<class_RigidBody3D_property_angular_damp_mode>`                 | ``0``                |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                              | :ref:`angular_velocity<class_RigidBody3D_property_angular_velocity>`                   | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`can_sleep<class_RigidBody3D_property_can_sleep>`                                 | ``true``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                              | :ref:`center_of_mass<class_RigidBody3D_property_center_of_mass>`                       | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`CenterOfMassMode<enum_RigidBody3D_CenterOfMassMode>` | :ref:`center_of_mass_mode<class_RigidBody3D_property_center_of_mass_mode>`             | ``0``                |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                              | :ref:`constant_force<class_RigidBody3D_property_constant_force>`                       | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                              | :ref:`constant_torque<class_RigidBody3D_property_constant_torque>`                     | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`contact_monitor<class_RigidBody3D_property_contact_monitor>`                     | ``false``            |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`continuous_cd<class_RigidBody3D_property_continuous_cd>`                         | ``false``            |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`custom_integrator<class_RigidBody3D_property_custom_integrator>`                 | ``false``            |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`freeze<class_RigidBody3D_property_freeze>`                                       | ``false``            |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`FreezeMode<enum_RigidBody3D_FreezeMode>`             | :ref:`freeze_mode<class_RigidBody3D_property_freeze_mode>`                             | ``0``                |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                  | :ref:`gravity_scale<class_RigidBody3D_property_gravity_scale>`                         | ``1.0``              |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                              | :ref:`inertia<class_RigidBody3D_property_inertia>`                                     | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                  | :ref:`linear_damp<class_RigidBody3D_property_linear_damp>`                             | ``0.0``              |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`DampMode<enum_RigidBody3D_DampMode>`                 | :ref:`linear_damp_mode<class_RigidBody3D_property_linear_damp_mode>`                   | ``0``                |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                              | :ref:`linear_velocity<class_RigidBody3D_property_linear_velocity>`                     | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`lock_rotation<class_RigidBody3D_property_lock_rotation>`                         | ``false``            |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                  | :ref:`mass<class_RigidBody3D_property_mass>`                                           | ``1.0``              |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                      | :ref:`max_contacts_reported<class_RigidBody3D_property_max_contacts_reported>`         | ``0``                |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>`              | :ref:`physics_material_override<class_RigidBody3D_property_physics_material_override>` |                      |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`sleeping<class_RigidBody3D_property_sleeping>`                                   | ``false``            |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`_integrate_forces<class_RigidBody3D_private_method__integrate_forces>`\ (\ state\: :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`\ ) |virtual|            |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_central_force<class_RigidBody3D_method_add_constant_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`\ )                                              |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_force<class_RigidBody3D_method_add_constant_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_torque<class_RigidBody3D_method_add_constant_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ )                                                           |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_central_force<class_RigidBody3D_method_apply_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`\ )                                                            |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_central_impulse<class_RigidBody3D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ )                                                      |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_force<class_RigidBody3D_method_apply_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )               |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_impulse<class_RigidBody3D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )         |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_torque<class_RigidBody3D_method_apply_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ )                                                                         |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_torque_impulse<class_RigidBody3D_method_apply_torque_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ )                                                        |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node3D<class_Node3D>`\] | :ref:`get_colliding_bodies<class_RigidBody3D_method_get_colliding_bodies>`\ (\ ) |const|                                                                                         |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_contact_count<class_RigidBody3D_method_get_contact_count>`\ (\ ) |const|                                                                                               |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`                                | :ref:`get_inverse_inertia_tensor<class_RigidBody3D_method_get_inverse_inertia_tensor>`\ (\ ) |const|                                                                             |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_axis_velocity<class_RigidBody3D_method_set_axis_velocity>`\ (\ axis_velocity\: :ref:`Vector3<class_Vector3>`\ )                                                        |
   +----------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_RigidBody3D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody3D_signal_body_entered>`

當與另一個 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 或 :ref:`GridMap<class_GridMap>` 發生碰撞時發出。需要將 :ref:`contact_monitor<class_RigidBody3D_property_contact_monitor>` 設定為 ``true``\ ，並將 :ref:`max_contacts_reported<class_RigidBody3D_property_max_contacts_reported>` 設定得足夠高以偵測所有碰撞。如果 :ref:`MeshLibrary<class_MeshLibrary>` 具有碰撞 :ref:`Shape3D<class_Shape3D>`\ ，則 :ref:`GridMap<class_GridMap>` 會被偵測。

\ ``body`` 是其他 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 或 :ref:`GridMap<class_GridMap>` 的 :ref:`Node<class_Node>`\ ，如果該節點存在於樹中。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody3D_signal_body_exited>`

當與另一個 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 或 :ref:`GridMap<class_GridMap>` 的碰撞結束時發出。需要將 :ref:`contact_monitor<class_RigidBody3D_property_contact_monitor>` 設定為 ``true``\ ，並將 :ref:`max_contacts_reported<class_RigidBody3D_property_max_contacts_reported>` 設定得足夠高以偵測所有碰撞。如果 :ref:`MeshLibrary<class_MeshLibrary>` 具有碰撞 :ref:`Shape3D<class_Shape3D>`\ ，則 :ref:`GridMap<class_GridMap>` 會被偵測。

\ ``body`` 是其他 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 或 :ref:`GridMap<class_GridMap>` 的 :ref:`Node<class_Node>`\ ，如果該節點存在於樹中。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody3D_signal_body_shape_entered>`

當該 RigidBody3D 的一個 :ref:`Shape3D<class_Shape3D>` 與另一個 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 或 :ref:`GridMap<class_GridMap>` 的 :ref:`Shape3D<class_Shape3D>` 碰撞時發出。需要將 :ref:`contact_monitor<class_RigidBody3D_property_contact_monitor>` 設定為 ``true``\ ，並將 :ref:`max_contacts_reported<class_RigidBody3D_property_max_contacts_reported>` 設定得足夠高以偵測所有碰撞。如果 :ref:`MeshLibrary<class_MeshLibrary>` 具有 Collision :ref:`Shape3D<class_Shape3D>`\ ，則 :ref:`GridMap<class_GridMap>` 會被偵測到。

\ ``body_rid`` 由 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 使用的其他 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 或 :ref:`MeshLibrary<class_MeshLibrary>` 的 :ref:`CollisionObject3D<class_CollisionObject3D>` 的 :ref:`RID<class_RID>`\ 。

\ ``body`` 其他 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 或 :ref:`GridMap<class_GridMap>` 的 :ref:`Node<class_Node>`\ ，如果該節點存在於樹中。

\ ``body_shape_index`` 由 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 使用的其他 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 或 :ref:`GridMap<class_GridMap>` 的 :ref:`Shape3D<class_Shape3D>` 的索引。該 :ref:`CollisionShape3D<class_CollisionShape3D>` 節點可以使用 ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))`` 獲取。

\ ``local_shape_index`` 由 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 使用的該 RigidBody3D 的 :ref:`Shape3D<class_Shape3D>` 的索引。該 :ref:`CollisionShape3D<class_CollisionShape3D>` 節點可以使用 ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))`` 獲取。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody3D_signal_body_shape_exited>`

當該 RigidBody3D 的一個 :ref:`Shape3D<class_Shape3D>` 與另一個 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 或 :ref:`GridMap<class_GridMap>` 的 :ref:`Shape3D<class_Shape3D>` 之間的碰撞結束時發出。需要將 :ref:`contact_monitor<class_RigidBody3D_property_contact_monitor>` 設定為 ``true``\ ，並將 :ref:`max_contacts_reported<class_RigidBody3D_property_max_contacts_reported>` 設定得足夠高以偵測所有碰撞。如果 :ref:`MeshLibrary<class_MeshLibrary>` 具有碰撞 :ref:`Shape3D<class_Shape3D>`\ ，則 :ref:`GridMap<class_GridMap>` 將被偵測。

\ ``body_rid`` 由 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 使用的其他 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 或 :ref:`MeshLibrary<class_MeshLibrary>` 的 :ref:`CollisionObject3D<class_CollisionObject3D>` 的 :ref:`RID<class_RID>`\ 。如果網格具有 :ref:`Shape3D<class_Shape3D>`\ ，則 :ref:`GridMap<class_GridMap>` 將被偵測。

\ ``body`` 其他 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 或 :ref:`GridMap<class_GridMap>` 的 :ref:`Node<class_Node>`\ ，如果該節點存在於樹中。

\ ``body_shape_index`` 由 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 使用的其他 :ref:`PhysicsBody3D<class_PhysicsBody3D>` 或\ :ref:`GridMap<class_GridMap>` 的\ :ref:`Shape3D<class_Shape3D>` 的索引。該 :ref:`CollisionShape3D<class_CollisionShape3D>` 節點可以使用 ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))`` 獲取。

\ ``local_shape_index`` 由 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 使用的該 RigidBody3D 的 :ref:`Shape3D<class_Shape3D>` 的索引。該 :ref:`CollisionShape3D<class_CollisionShape3D>` 節點可以使用 ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))`` 獲取。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_signal_sleeping_state_changed:

.. rst-class:: classref-signal

**sleeping_state_changed**\ (\ ) :ref:`🔗<class_RigidBody3D_signal_sleeping_state_changed>`

當物理引擎改變物體的睡眠狀態時發出。

\ **注意：**\ 改變 :ref:`sleeping<class_RigidBody3D_property_sleeping>` 的值不會觸發這個訊號。只有當物理引擎改變了睡眠狀態或者使用了 ``emit_signal("sleeping_state_changed")`` 時，它才會被發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_RigidBody3D_FreezeMode:

.. rst-class:: classref-enumeration

enum **FreezeMode**: :ref:`🔗<enum_RigidBody3D_FreezeMode>`

.. _class_RigidBody3D_constant_FREEZE_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody3D_FreezeMode>` **FREEZE_MODE_STATIC** = ``0``

靜態物體凍結模式（預設）。物體不受重力和力的影響。它只能由使用者的程式碼移動，並且其他物體沿其路徑運動時，不會與之發生碰撞。

.. _class_RigidBody3D_constant_FREEZE_MODE_KINEMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody3D_FreezeMode>` **FREEZE_MODE_KINEMATIC** = ``1``

運動物體的凍結模式。類似於 :ref:`FREEZE_MODE_STATIC<class_RigidBody3D_constant_FREEZE_MODE_STATIC>` ，但是在移動時會與其路徑上的其他物體發生碰撞。適用於需要動畫的凍結物體。

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody3D_CenterOfMassMode:

.. rst-class:: classref-enumeration

enum **CenterOfMassMode**: :ref:`🔗<enum_RigidBody3D_CenterOfMassMode>`

.. _class_RigidBody3D_constant_CENTER_OF_MASS_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody3D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_AUTO** = ``0``

在此模式下，該物體的質心將基於其形狀自動計算。此處的前提是各個形狀的原點也是對應的質心。

.. _class_RigidBody3D_constant_CENTER_OF_MASS_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody3D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_CUSTOM** = ``1``

在此模式下，物體的質心通過 :ref:`center_of_mass<class_RigidBody3D_property_center_of_mass>` 設定。預設為物體的原點位元置。

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody3D_DampMode:

.. rst-class:: classref-enumeration

enum **DampMode**: :ref:`🔗<enum_RigidBody3D_DampMode>`

.. _class_RigidBody3D_constant_DAMP_MODE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody3D_DampMode>` **DAMP_MODE_COMBINE** = ``0``

在這種模式下，物體的阻尼值將被加到區域中設定的任何值或預設值。

.. _class_RigidBody3D_constant_DAMP_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody3D_DampMode>` **DAMP_MODE_REPLACE** = ``1``

在這種模式下，物體的阻尼值將替換掉區域中設定的任何值或預設值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_RigidBody3D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.0`` :ref:`🔗<class_RigidBody3D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

Damps the body's rotation. By default, the body will use the :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>` project setting or any value override set by an :ref:`Area3D<class_Area3D>` the body is in. Depending on :ref:`angular_damp_mode<class_RigidBody3D_property_angular_damp_mode>`, you can set :ref:`angular_damp<class_RigidBody3D_property_angular_damp>` to be added to or to replace the body's damping value.

See :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>` for more details about damping.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_angular_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody3D_DampMode>` **angular_damp_mode** = ``0`` :ref:`🔗<class_RigidBody3D_property_angular_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody3D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody3D_DampMode>` **get_angular_damp_mode**\ (\ )

Defines how :ref:`angular_damp<class_RigidBody3D_property_angular_damp>` is applied.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_RigidBody3D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

該 RigidBody3D 的旋轉速度，單位為\ *弧度*\ 每秒。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_can_sleep:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_sleep** = ``true`` :ref:`🔗<class_RigidBody3D_property_can_sleep>`

.. rst-class:: classref-property-setget

- |void| **set_can_sleep**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_able_to_sleep**\ (\ )

如果為 ``true``\ ，則物體未運動時可以進入睡眠模式。見 :ref:`sleeping<class_RigidBody3D_property_sleeping>` 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_of_mass** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_RigidBody3D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_center_of_mass**\ (\ )

The body's custom center of mass, relative to the body's origin position, when :ref:`center_of_mass_mode<class_RigidBody3D_property_center_of_mass_mode>` is set to :ref:`CENTER_OF_MASS_MODE_CUSTOM<class_RigidBody3D_constant_CENTER_OF_MASS_MODE_CUSTOM>`. This is the balanced point of the body, where applied forces only cause linear acceleration. Applying forces outside of the center of mass causes angular acceleration.

When :ref:`center_of_mass_mode<class_RigidBody3D_property_center_of_mass_mode>` is set to :ref:`CENTER_OF_MASS_MODE_AUTO<class_RigidBody3D_constant_CENTER_OF_MASS_MODE_AUTO>` (default value), the center of mass is automatically determined, but this does not update the value of :ref:`center_of_mass<class_RigidBody3D_property_center_of_mass>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_center_of_mass_mode:

.. rst-class:: classref-property

:ref:`CenterOfMassMode<enum_RigidBody3D_CenterOfMassMode>` **center_of_mass_mode** = ``0`` :ref:`🔗<class_RigidBody3D_property_center_of_mass_mode>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass_mode**\ (\ value\: :ref:`CenterOfMassMode<enum_RigidBody3D_CenterOfMassMode>`\ )
- :ref:`CenterOfMassMode<enum_RigidBody3D_CenterOfMassMode>` **get_center_of_mass_mode**\ (\ )

Defines the way the body's center of mass is set.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_constant_force:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **constant_force** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_RigidBody3D_property_constant_force>`

.. rst-class:: classref-property-setget

- |void| **set_constant_force**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_constant_force**\ (\ )

在每個物理更新期間施加到物體的總恒定位置的力。

見 :ref:`add_constant_force()<class_RigidBody3D_method_add_constant_force>` 和 :ref:`add_constant_central_force()<class_RigidBody3D_method_add_constant_central_force>` 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_constant_torque:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **constant_torque** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_RigidBody3D_property_constant_torque>`

.. rst-class:: classref-property-setget

- |void| **set_constant_torque**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_constant_torque**\ (\ )

在每個物理更新期間施加的物體的總恒定旋轉力。

見 :ref:`add_constant_torque()<class_RigidBody3D_method_add_constant_torque>` 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_contact_monitor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **contact_monitor** = ``false`` :ref:`🔗<class_RigidBody3D_property_contact_monitor>`

.. rst-class:: classref-property-setget

- |void| **set_contact_monitor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_contact_monitor_enabled**\ (\ )

如果為 ``true``\ ，則該 RigidBody3D 將在與其他物體碰撞時發出訊號。

\ **注意：**\ 預設情況下，報告的最大接觸數被設定為 0，表示不會記錄任何內容，見 :ref:`max_contacts_reported<class_RigidBody3D_property_max_contacts_reported>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_continuous_cd:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **continuous_cd** = ``false`` :ref:`🔗<class_RigidBody3D_property_continuous_cd>`

.. rst-class:: classref-property-setget

- |void| **set_use_continuous_collision_detection**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_continuous_collision_detection**\ (\ )

如果為 ``true``\ ，則使用連續碰撞偵測。

連續碰撞偵測嘗試預測一個移動的物體會在哪裡碰撞，而不是移動它並在它發生碰撞時糾正它的運動。連續碰撞偵測更精確，並且錯過了較小的、快速移動的物體的撞擊。不使用連續碰撞偵測的計算速度更快，但可能會錯過小的、快速移動的物體。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_custom_integrator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_integrator** = ``false`` :ref:`🔗<class_RigidBody3D_property_custom_integrator>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_integrator**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_integrator**\ (\ )

If ``true``, the standard force integration (like gravity or damping) will be disabled for this body. Other than collision response, the body will only move as determined by the :ref:`_integrate_forces()<class_RigidBody3D_private_method__integrate_forces>` method, if that virtual method is overridden.

Setting this property will call the method :ref:`PhysicsServer3D.body_set_omit_force_integration()<class_PhysicsServer3D_method_body_set_omit_force_integration>` internally.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_freeze:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **freeze** = ``false`` :ref:`🔗<class_RigidBody3D_property_freeze>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_freeze_enabled**\ (\ )

如果為 ``true``\ ，則該物體被凍結。不再施加重力和力。

要設定凍結時物體的行為，見 :ref:`freeze_mode<class_RigidBody3D_property_freeze_mode>`\ 。

對於始終凍結的物體，請改用 :ref:`StaticBody3D<class_StaticBody3D>` 或 :ref:`AnimatableBody3D<class_AnimatableBody3D>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_freeze_mode:

.. rst-class:: classref-property

:ref:`FreezeMode<enum_RigidBody3D_FreezeMode>` **freeze_mode** = ``0`` :ref:`🔗<class_RigidBody3D_property_freeze_mode>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_mode**\ (\ value\: :ref:`FreezeMode<enum_RigidBody3D_FreezeMode>`\ )
- :ref:`FreezeMode<enum_RigidBody3D_FreezeMode>` **get_freeze_mode**\ (\ )

The body's freeze mode. Can be used to set the body's behavior when :ref:`freeze<class_RigidBody3D_property_freeze>` is enabled.

For a body that is always frozen, use :ref:`StaticBody3D<class_StaticBody3D>` or :ref:`AnimatableBody3D<class_AnimatableBody3D>` instead.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_gravity_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_scale** = ``1.0`` :ref:`🔗<class_RigidBody3D_property_gravity_scale>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_scale**\ (\ )

This is multiplied by :ref:`ProjectSettings.physics/3d/default_gravity<class_ProjectSettings_property_physics/3d/default_gravity>` to produce this body's gravity. For example, a value of ``1.0`` will apply normal gravity, ``2.0`` will apply double the gravity, and ``0.5`` will apply half the gravity to this body.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_inertia:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **inertia** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_RigidBody3D_property_inertia>`

.. rst-class:: classref-property-setget

- |void| **set_inertia**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_inertia**\ (\ )

The body's moment of inertia. This is like mass, but for rotation: it determines how much torque it takes to rotate the body on each axis. The moment of inertia is usually computed automatically from the mass and the shapes, but this property allows you to set a custom value.

If set to :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`, inertia is automatically computed (default value).

\ **Note:** This value does not change when inertia is automatically computed. Use :ref:`PhysicsServer3D<class_PhysicsServer3D>` to get the computed inertia.


.. tabs::

 .. code-tab:: gdscript

    @onready var ball = $Ball

    func get_ball_inertia():
        return PhysicsServer3D.body_get_direct_state(ball.get_rid()).inverse_inertia.inverse()

 .. code-tab:: csharp

    private RigidBody3D _ball;

    public override void _Ready()
    {
        _ball = GetNode<RigidBody3D>("Ball");
    }

    private Vector3 GetBallInertia()
    {
        return PhysicsServer3D.BodyGetDirectState(_ball.GetRid()).InverseInertia.Inverse();
    }



.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.0`` :ref:`🔗<class_RigidBody3D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

Damps the body's movement. By default, the body will use the :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>` project setting or any value override set by an :ref:`Area3D<class_Area3D>` the body is in. Depending on :ref:`linear_damp_mode<class_RigidBody3D_property_linear_damp_mode>`, you can set :ref:`linear_damp<class_RigidBody3D_property_linear_damp>` to be added to or to replace the body's damping value.

See :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>` for more details about damping.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_linear_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody3D_DampMode>` **linear_damp_mode** = ``0`` :ref:`🔗<class_RigidBody3D_property_linear_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody3D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody3D_DampMode>` **get_linear_damp_mode**\ (\ )

Defines how :ref:`linear_damp<class_RigidBody3D_property_linear_damp>` is applied.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_RigidBody3D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

物體的線速度，單位為單位每秒。可以偶爾使用，但是\ **不要每一影格都設定它**\ ，因為物理可能在另一個執行緒中運作，並且以不同的間隔。使用 :ref:`_integrate_forces()<class_RigidBody3D_private_method__integrate_forces>` 作為你的程序迴圈，以精確控制物體狀態。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_lock_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **lock_rotation** = ``false`` :ref:`🔗<class_RigidBody3D_property_lock_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_lock_rotation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_lock_rotation_enabled**\ (\ )

如果為 ``true``\ ，則該物體不能旋轉。重力和力只施加線性運動。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_RigidBody3D_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

此實體的質量。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_max_contacts_reported:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_contacts_reported** = ``0`` :ref:`🔗<class_RigidBody3D_property_max_contacts_reported>`

.. rst-class:: classref-property-setget

- |void| **set_max_contacts_reported**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_contacts_reported**\ (\ )

將記錄的最大接觸點數。需要一個大於 0 的值，並將 :ref:`contact_monitor<class_RigidBody3D_property_contact_monitor>` 設定為 ``true`` 以開始註冊接觸。使用 :ref:`get_contact_count()<class_RigidBody3D_method_get_contact_count>` 檢索計數或使用 :ref:`get_colliding_bodies()<class_RigidBody3D_method_get_colliding_bodies>` 檢索已發生碰撞的物體。

\ **注意：**\ 接觸點的數量不同於碰撞的數量。平行邊之間的碰撞將導致兩個接觸點（每個端點一個），平行面之間的碰撞將導致四個接觸點（每個角落一個）。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_RigidBody3D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

物體的物理材質。

如果為該屬性指定了一種材質，則將使用該材質代替任何其他物理材質，例如繼承的材質。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** = ``false`` :ref:`🔗<class_RigidBody3D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleeping**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

如果為 ``true`` ，該剛體將不會移動，也不會計算受力，直到被另一個物體喚醒，例如通過碰撞或使用 :ref:`apply_impulse()<class_RigidBody3D_method_apply_impulse>` 或 :ref:`apply_force()<class_RigidBody3D_method_apply_force>` 方法。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_RigidBody3D_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ state\: :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`\ ) |virtual| :ref:`🔗<class_RigidBody3D_private_method__integrate_forces>`

Called during physics processing, allowing you to read and safely modify the simulation state for the object. By default, it is called before the standard force integration, but the :ref:`custom_integrator<class_RigidBody3D_property_custom_integrator>` property allows you to disable the standard force integration and do fully custom force integration for a body.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_add_constant_central_force>`

在不影響旋轉的情況下，新增一個恒定的定向力，該力會隨著時間的推移而持續施加，直到使用 ``constant_force = Vector3(0, 0, 0)`` 清除。

這相當於在物體的質心處，使用 :ref:`add_constant_force()<class_RigidBody3D_method_add_constant_force>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_RigidBody3D_method_add_constant_force>`

向實體新增一個恒定的定位力，持續施加，直到用 ``constant_force = Vector3(0, 0, 0)`` 清除。

\ ``position`` 是在全域座標中距實體原點的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_add_constant_torque>`

在不影響位置的情況下，新增一個恒定的旋轉力，該力會隨著時間的推移而持續施加，直到使用 ``constant_torque = Vector3(0, 0, 0)`` 清除。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_apply_central_force>`

施加一個不影響旋轉的定向力。該力是時間相關的，意味著每次物理更新都會施加。

這相當於在物體的質心處，使用 :ref:`apply_force()<class_RigidBody3D_method_apply_force>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_apply_central_impulse>`

施加一個不影響的旋轉定向脈衝。

脈衝與時間無關！每影格套用一個脈衝，會產生一個依賴於畫面播放速率的力。出於這個原因，它應該只在模擬一次性影響時使用（否則使用 “_force”函式）。

這相當於在物體的質心處，使用 :ref:`apply_impulse()<class_RigidBody3D_method_apply_impulse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_RigidBody3D_method_apply_force>`

對實體施加一個定位力。力是時間相關的，意味著每次物理更新都會被施加。

\ ``position`` 是在全域座標中距實體原點的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_RigidBody3D_method_apply_impulse>`

向實體施加一個定位脈衝。

脈衝是時間無關的！每影格施加一個脈衝將產生一個依賴於畫面播放速率的力。出於這個原因，它應該只在模擬一次性影響時使用（否則使用“_force”函式）。

\ ``position`` 是在全域座標中距實體原點的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_apply_torque>`

施加旋轉力但不影響位置。力是與時間相關的，應該每次物理更新時都要進行施加。

\ **注意：**\ 有 :ref:`inertia<class_RigidBody3D_property_inertia>` 才能正常工作。要讓 :ref:`inertia<class_RigidBody3D_property_inertia>` 存在，必須有一個 :ref:`CollisionShape3D<class_CollisionShape3D>` 作為該節點的子節點，或者你也可以手動設定 :ref:`inertia<class_RigidBody3D_property_inertia>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_apply_torque_impulse>`

在不影響位置的情況下，向實體施加一個旋轉脈衝。

脈衝是時間無關的！每影格施加一個脈衝將產生一個依賴於畫面播放速率的力。出於這個原因，它應該只在模擬一次性影響時使用（否則使用“_force”函式）。

\ **注意：**\ 需要 :ref:`inertia<class_RigidBody3D_property_inertia>` 才能發揮作用。要具有 :ref:`inertia<class_RigidBody3D_property_inertia>`\ ，活動的 :ref:`CollisionShape3D<class_CollisionShape3D>` 必須是該節點的一個子節點，或者可以手動設定 :ref:`inertia<class_RigidBody3D_property_inertia>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_get_colliding_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node3D<class_Node3D>`\] **get_colliding_bodies**\ (\ ) |const| :ref:`🔗<class_RigidBody3D_method_get_colliding_bodies>`

返回與此物體發生碰撞的物體的列表。需要將 :ref:`contact_monitor<class_RigidBody3D_property_contact_monitor>` 設定為 ``true``\ ，並將 :ref:`max_contacts_reported<class_RigidBody3D_property_max_contacts_reported>` 設定足夠高以偵測所有碰撞。

\ **注意：**\ 此測試的結果不會立即在移動物體後得出。為了提高性能，碰撞列表每影格更新一次，且在物理步驟之前進行。可考慮改用訊號來代替。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_RigidBody3D_method_get_contact_count>`

返回此物體與其他物體的接觸數。預設情況下，除非配置監視接觸的物體（見 :ref:`contact_monitor<class_RigidBody3D_property_contact_monitor>`\ ），否則返回 0。

\ **注意：**\ 要獲取正在碰撞的物體，請使用 :ref:`get_colliding_bodies()<class_RigidBody3D_method_get_colliding_bodies>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_get_inverse_inertia_tensor:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_inverse_inertia_tensor**\ (\ ) |const| :ref:`🔗<class_RigidBody3D_method_get_inverse_inertia_tensor>`

返回逆慣性張量基礎。這用於計算施加到 **RigidBody3D** 上的扭矩產生的角加速度。

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_set_axis_velocity:

.. rst-class:: classref-method

|void| **set_axis_velocity**\ (\ axis_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_set_axis_velocity>`

設定軸速度。給定向量軸上的速度將被設定為給定向量長度。這對跳躍行為很有用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
