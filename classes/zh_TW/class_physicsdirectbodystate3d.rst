:github_url: hide

.. _class_PhysicsDirectBodyState3D:

PhysicsDirectBodyState3D
========================

**繼承：** :ref:`Object<class_Object>`

**被繼承：** :ref:`PhysicsDirectBodyState3DExtension<class_PhysicsDirectBodyState3DExtension>`

提供對 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 中物理體的直接存取。

.. rst-class:: classref-introduction-group

說明
----

提供對 :ref:`PhysicsServer3D<class_PhysicsServer3D>` 中物理體的直接存取，從而安全地更改物理屬性。該對象會在 :ref:`RigidBody3D<class_RigidBody3D>` 的直接狀態回呼函式中傳遞，目的是為了改變物體的直接狀態。見 :ref:`RigidBody3D._integrate_forces()<class_RigidBody3D_private_method__integrate_forces>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`物理介紹 <../tutorials/physics/physics_introduction>`

- :doc:`發射射線 <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`angular_velocity<class_PhysicsDirectBodyState3D_property_angular_velocity>`             |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`center_of_mass<class_PhysicsDirectBodyState3D_property_center_of_mass>`                 |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`center_of_mass_local<class_PhysicsDirectBodyState3D_property_center_of_mass_local>`     |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`collision_layer<class_PhysicsDirectBodyState3D_property_collision_layer>`               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`collision_mask<class_PhysicsDirectBodyState3D_property_collision_mask>`                 |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`             | :ref:`inverse_inertia_tensor<class_PhysicsDirectBodyState3D_property_inverse_inertia_tensor>` |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`inverse_mass<class_PhysicsDirectBodyState3D_property_inverse_mass>`                     |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`linear_velocity<class_PhysicsDirectBodyState3D_property_linear_velocity>`               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`             | :ref:`principal_inertia_axes<class_PhysicsDirectBodyState3D_property_principal_inertia_axes>` |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`sleeping<class_PhysicsDirectBodyState3D_property_sleeping>`                             |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`step<class_PhysicsDirectBodyState3D_property_step>`                                     |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`total_angular_damp<class_PhysicsDirectBodyState3D_property_total_angular_damp>`         |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`         | :ref:`total_gravity<class_PhysicsDirectBodyState3D_property_total_gravity>`                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`total_linear_damp<class_PhysicsDirectBodyState3D_property_total_linear_damp>`           |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`transform<class_PhysicsDirectBodyState3D_property_transform>`                           |
   +---------------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_central_force<class_PhysicsDirectBodyState3D_method_add_constant_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_force<class_PhysicsDirectBodyState3D_method_add_constant_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_torque<class_PhysicsDirectBodyState3D_method_add_constant_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ )                                                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_central_force<class_PhysicsDirectBodyState3D_method_apply_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_central_impulse<class_PhysicsDirectBodyState3D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )                                   |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_force<class_PhysicsDirectBodyState3D_method_apply_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )               |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_impulse<class_PhysicsDirectBodyState3D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ )         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_torque<class_PhysicsDirectBodyState3D_method_apply_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ )                                                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_torque_impulse<class_PhysicsDirectBodyState3D_method_apply_torque_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ )                                                        |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_constant_force<class_PhysicsDirectBodyState3D_method_get_constant_force>`\ (\ ) |const|                                                                                             |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_constant_torque<class_PhysicsDirectBodyState3D_method_get_constant_torque>`\ (\ ) |const|                                                                                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`get_contact_collider<class_PhysicsDirectBodyState3D_method_get_contact_collider>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                                    |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_collider_id<class_PhysicsDirectBodyState3D_method_get_contact_collider_id>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                                       | :ref:`get_contact_collider_object<class_PhysicsDirectBodyState3D_method_get_contact_collider_object>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                      |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_collider_position<class_PhysicsDirectBodyState3D_method_get_contact_collider_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                  |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_collider_shape<class_PhysicsDirectBodyState3D_method_get_contact_collider_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_collider_velocity_at_position<class_PhysicsDirectBodyState3D_method_get_contact_collider_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|          |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_count<class_PhysicsDirectBodyState3D_method_get_contact_count>`\ (\ ) |const|                                                                                               |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_impulse<class_PhysicsDirectBodyState3D_method_get_contact_impulse>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                                      |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_local_normal<class_PhysicsDirectBodyState3D_method_get_contact_local_normal>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                            |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_local_position<class_PhysicsDirectBodyState3D_method_get_contact_local_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                        |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_local_shape<class_PhysicsDirectBodyState3D_method_get_contact_local_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                              |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_contact_local_velocity_at_position<class_PhysicsDirectBodyState3D_method_get_contact_local_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` | :ref:`get_space_state<class_PhysicsDirectBodyState3D_method_get_space_state>`\ (\ )                                                                                                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`get_velocity_at_local_position<class_PhysicsDirectBodyState3D_method_get_velocity_at_local_position>`\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const|                     |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`integrate_forces<class_PhysicsDirectBodyState3D_method_integrate_forces>`\ (\ )                                                                                                         |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_constant_force<class_PhysicsDirectBodyState3D_method_set_constant_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`\ )                                                              |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_constant_torque<class_PhysicsDirectBodyState3D_method_set_constant_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ )                                                           |
   +-------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PhysicsDirectBodyState3D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** :ref:`🔗<class_PhysicsDirectBodyState3D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

物體的旋轉速度，單位為\ *弧度*\ 每秒。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_of_mass** :ref:`🔗<class_PhysicsDirectBodyState3D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_center_of_mass**\ (\ )

該物體質心的位置，相對於該物體的中心，使用全域坐標系。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_center_of_mass_local:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_of_mass_local** :ref:`🔗<class_PhysicsDirectBodyState3D_property_center_of_mass_local>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_center_of_mass_local**\ (\ )

該物體質心的位置，使用該物體的局部坐標系。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** :ref:`🔗<class_PhysicsDirectBodyState3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

The body's collision layer.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** :ref:`🔗<class_PhysicsDirectBodyState3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

The body's collision mask.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_inverse_inertia:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **inverse_inertia** :ref:`🔗<class_PhysicsDirectBodyState3D_property_inverse_inertia>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_inverse_inertia**\ (\ )

物體慣性的倒數。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_inverse_inertia_tensor:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **inverse_inertia_tensor** :ref:`🔗<class_PhysicsDirectBodyState3D_property_inverse_inertia_tensor>`

.. rst-class:: classref-property-setget

- :ref:`Basis<class_Basis>` **get_inverse_inertia_tensor**\ (\ )

該物體慣性張量的倒數。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_inverse_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **inverse_mass** :ref:`🔗<class_PhysicsDirectBodyState3D_property_inverse_mass>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_inverse_mass**\ (\ )

物體品質的倒數。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** :ref:`🔗<class_PhysicsDirectBodyState3D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

物體的線速度，單位為單位每秒。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_principal_inertia_axes:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **principal_inertia_axes** :ref:`🔗<class_PhysicsDirectBodyState3D_property_principal_inertia_axes>`

.. rst-class:: classref-property-setget

- :ref:`Basis<class_Basis>` **get_principal_inertia_axes**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** :ref:`🔗<class_PhysicsDirectBodyState3D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleep_state**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

如果為 ``true``\ ，則該物體目前處於睡眠狀態（不活動）。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** :ref:`🔗<class_PhysicsDirectBodyState3D_property_step>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_step**\ (\ )

用於模擬的時間步長（delta）。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_total_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_angular_damp** :ref:`🔗<class_PhysicsDirectBodyState3D_property_total_angular_damp>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_total_angular_damp**\ (\ )

物體停止轉動的速度，如果沒有任何其他力使它運動。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_total_gravity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **total_gravity** :ref:`🔗<class_PhysicsDirectBodyState3D_property_total_gravity>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_total_gravity**\ (\ )

這個物體上的總重力向量。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_total_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_linear_damp** :ref:`🔗<class_PhysicsDirectBodyState3D_property_total_linear_damp>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_total_linear_damp**\ (\ )

物體停止運動的速率，如果沒有任何其他力使它運動。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_property_transform:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **transform** :ref:`🔗<class_PhysicsDirectBodyState3D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ )

物體的變換矩陣。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PhysicsDirectBodyState3D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_add_constant_central_force>`

在不影響旋轉的情況下，新增一個恒定的定向力，該力會隨著時間的推移而持續施加，直到使用 ``constant_force = Vector3(0, 0, 0)`` 清除。

這相當於在物體的質心處，使用 :ref:`add_constant_force()<class_PhysicsDirectBodyState3D_method_add_constant_force>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_add_constant_force>`

向實體新增一個恒定的定位力，持續施加，直到用 ``constant_force = Vector3(0, 0, 0)`` 清除。

\ ``position`` 是在全域座標中距實體原點的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_add_constant_torque>`

在不影響位置的情況下，新增一個恒定的旋轉力，該力會隨著時間的推移而持續施加，直到使用 ``constant_torque = Vector3(0, 0, 0)`` 清除。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_central_force>`

施加一個不影響旋轉的定向力。該力是時間相關的，意味著每次物理更新都會施加。

這相當於在物體的質心處，使用 :ref:`apply_force()<class_PhysicsDirectBodyState3D_method_apply_force>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_central_impulse>`

施加一個不影響的旋轉定向脈衝。

脈衝與時間無關！每影格套用一個脈衝，會產生一個依賴於畫面播放速率的力。出於這個原因，它應該只在模擬一次性影響時使用（否則使用 “_force”函式）。

這相當於在物體的質心處，使用 :ref:`apply_impulse()<class_PhysicsDirectBodyState3D_method_apply_impulse>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_force>`

對實體施加一個定位力。力是時間相關的，意味著每次物理更新都會被施加。

\ ``position`` 是在全域座標中距實體原點的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_impulse>`

向實體施加一個定位脈衝。

脈衝是時間無關的！每影格施加一個脈衝將產生一個依賴於畫面播放速率的力。出於這個原因，它應該只在模擬一次性影響時使用（否則使用“_force”函式）。

\ ``position`` 是在全域座標中距實體原點的偏移量。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_torque>`

在不影響位置的情況下，施加一個旋轉力。該力是與時間相關的，這意味著每次物理更新時都會被施加。

\ **注意：**\ :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>` 是該函式生效所必需的。要擁有 :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`\ ，一個活動的 :ref:`CollisionShape3D<class_CollisionShape3D>` 必須是該節點的子節點，或者可以手動設定 :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_apply_torque_impulse>`

在不影響位置的情況下，向實體施加一個旋轉脈衝。

脈衝是時間無關的！每影格施加一個脈衝將產生一個依賴於畫面播放速率的力。出於這個原因，它應該只在模擬一次性影響時使用（否則使用“_force”函式）。

\ **注意：**\ :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>` 是生效所必需的。要擁有 :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`\ ，活動的 :ref:`CollisionShape3D<class_CollisionShape3D>` 必須是該節點的子節點，或者可以手動設定 :ref:`inverse_inertia<class_PhysicsDirectBodyState3D_property_inverse_inertia>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_constant_force:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_constant_force**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_constant_force>`

返回在每次物理更新期間，施加在該物體上的總恒定位置力。

見 :ref:`add_constant_force()<class_PhysicsDirectBodyState3D_method_add_constant_force>` 和 :ref:`add_constant_central_force()<class_PhysicsDirectBodyState3D_method_add_constant_central_force>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_constant_torque:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_constant_torque**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_constant_torque>`

返回在每次物理更新期間，施加在該物體上的總恒定旋轉力。

見 :ref:`add_constant_torque()<class_PhysicsDirectBodyState3D_method_add_constant_torque>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_contact_collider**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider>`

返回該碰撞體的 :ref:`RID<class_RID>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_collider_id**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_id>`

返回該碰撞體的對象 id。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_contact_collider_object**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_object>`

返回碰撞對象。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_collider_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_position>`

返回該碰撞體上接觸點的位置，使用全域坐標系。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_collider_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_shape>`

返回該碰撞體的形狀索引。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_collider_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_collider_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_collider_velocity_at_position>`

返回該碰撞體接觸點處的線速度向量。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_count>`

返回這個物體與其他物體的接觸次數。

\ **注意：**\ 預設情況下，除非物體被設為監視接觸，否則會返回 0。見 :ref:`RigidBody3D.contact_monitor<class_RigidBody3D_property_contact_monitor>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_impulse:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_impulse**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_impulse>`

由接觸產生的脈衝。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_local_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_local_normal**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_local_normal>`

返回接觸點處的局部法線。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_local_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_local_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_local_position>`

返回該物體上接觸點的位置，使用全域坐標系。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_local_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_local_shape>`

返回碰撞的局部坐標系下的形狀索引。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_contact_local_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_contact_local_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_contact_local_velocity_at_position>`

返回該物體上接觸點處的線速度向量。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_space_state:

.. rst-class:: classref-method

:ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **get_space_state**\ (\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_space_state>`

返回空間的目前狀態，這對查詢很有用。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_get_velocity_at_local_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_velocity_at_local_position**\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState3D_method_get_velocity_at_local_position>`

返回給定相對位置的物體速度，包括平移和旋轉。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_integrate_forces:

.. rst-class:: classref-method

|void| **integrate_forces**\ (\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_integrate_forces>`

Updates the body's linear and angular velocity by applying gravity and damping for the equivalent of one physics tick.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_set_constant_force:

.. rst-class:: classref-method

|void| **set_constant_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_set_constant_force>`

設定在每次物理更新期間，施加在該物體上的總恒定位置力。

見 :ref:`add_constant_force()<class_PhysicsDirectBodyState3D_method_add_constant_force>` 和 :ref:`add_constant_central_force()<class_PhysicsDirectBodyState3D_method_add_constant_central_force>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3D_method_set_constant_torque:

.. rst-class:: classref-method

|void| **set_constant_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicsDirectBodyState3D_method_set_constant_torque>`

設定在每次物理更新期間，施加在該物體上的總恒定旋轉力。

見 :ref:`add_constant_torque()<class_PhysicsDirectBodyState3D_method_add_constant_torque>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
