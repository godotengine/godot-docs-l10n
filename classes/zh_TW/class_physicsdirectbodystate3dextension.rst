:github_url: hide

.. _class_PhysicsDirectBodyState3DExtension:

PhysicsDirectBodyState3DExtension
=================================

**繼承：** :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>` **<** :ref:`Object<class_Object>`

提供能夠覆蓋的虛方法，用於建立自訂的 :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>` 實作。

.. rst-class:: classref-introduction-group

說明
----

這個類擴充自 :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`\ ，提供了額外可覆蓋的虛方法。覆蓋這些方法後，就會代替物理伺服器的內部方法進行呼叫。

旨在通過 GDExtension 建立自訂的 :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>` 實作使用。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_add_constant_central_force<class_PhysicsDirectBodyState3DExtension_private_method__add_constant_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required|                                     |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_add_constant_force<class_PhysicsDirectBodyState3DExtension_private_method__add_constant_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required|           |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_add_constant_torque<class_PhysicsDirectBodyState3DExtension_private_method__add_constant_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required|                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_apply_central_force<class_PhysicsDirectBodyState3DExtension_private_method__apply_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required|                                                   |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_apply_central_impulse<class_PhysicsDirectBodyState3DExtension_private_method__apply_central_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required|                                             |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_apply_force<class_PhysicsDirectBodyState3DExtension_private_method__apply_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required|                         |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_apply_impulse<class_PhysicsDirectBodyState3DExtension_private_method__apply_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required|                   |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_apply_torque<class_PhysicsDirectBodyState3DExtension_private_method__apply_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required|                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_apply_torque_impulse<class_PhysicsDirectBodyState3DExtension_private_method__apply_torque_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required|                                               |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_angular_velocity<class_PhysicsDirectBodyState3DExtension_private_method__get_angular_velocity>`\ (\ ) |virtual| |required| |const|                                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_center_of_mass<class_PhysicsDirectBodyState3DExtension_private_method__get_center_of_mass>`\ (\ ) |virtual| |required| |const|                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_center_of_mass_local<class_PhysicsDirectBodyState3DExtension_private_method__get_center_of_mass_local>`\ (\ ) |virtual| |required| |const|                                                                        |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`_get_collision_layer<class_PhysicsDirectBodyState3DExtension_private_method__get_collision_layer>`\ (\ ) |virtual| |required| |const|                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`_get_collision_mask<class_PhysicsDirectBodyState3DExtension_private_method__get_collision_mask>`\ (\ ) |virtual| |required| |const|                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_constant_force<class_PhysicsDirectBodyState3DExtension_private_method__get_constant_force>`\ (\ ) |virtual| |required| |const|                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_constant_torque<class_PhysicsDirectBodyState3DExtension_private_method__get_constant_torque>`\ (\ ) |virtual| |required| |const|                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`_get_contact_collider<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                           |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`_get_contact_collider_id<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_id>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                     |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                                       | :ref:`_get_contact_collider_object<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_object>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                             |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_contact_collider_position<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                         |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`_get_contact_collider_shape<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                               |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_contact_collider_velocity_at_position<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`_get_contact_count<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_count>`\ (\ ) |virtual| |required| |const|                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_contact_impulse<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_impulse>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                             |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_contact_local_normal<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_local_normal>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                   |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_contact_local_position<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_local_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                               |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`_get_contact_local_shape<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_local_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                     |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_contact_local_velocity_at_position<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_local_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|       |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_inverse_inertia<class_PhysicsDirectBodyState3DExtension_private_method__get_inverse_inertia>`\ (\ ) |virtual| |required| |const|                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`                                         | :ref:`_get_inverse_inertia_tensor<class_PhysicsDirectBodyState3DExtension_private_method__get_inverse_inertia_tensor>`\ (\ ) |virtual| |required| |const|                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`_get_inverse_mass<class_PhysicsDirectBodyState3DExtension_private_method__get_inverse_mass>`\ (\ ) |virtual| |required| |const|                                                                                        |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_linear_velocity<class_PhysicsDirectBodyState3DExtension_private_method__get_linear_velocity>`\ (\ ) |virtual| |required| |const|                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`                                         | :ref:`_get_principal_inertia_axes<class_PhysicsDirectBodyState3DExtension_private_method__get_principal_inertia_axes>`\ (\ ) |virtual| |required| |const|                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` | :ref:`_get_space_state<class_PhysicsDirectBodyState3DExtension_private_method__get_space_state>`\ (\ ) |virtual| |required|                                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`_get_step<class_PhysicsDirectBodyState3DExtension_private_method__get_step>`\ (\ ) |virtual| |required| |const|                                                                                                        |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`_get_total_angular_damp<class_PhysicsDirectBodyState3DExtension_private_method__get_total_angular_damp>`\ (\ ) |virtual| |required| |const|                                                                            |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_total_gravity<class_PhysicsDirectBodyState3DExtension_private_method__get_total_gravity>`\ (\ ) |virtual| |required| |const|                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`_get_total_linear_damp<class_PhysicsDirectBodyState3DExtension_private_method__get_total_linear_damp>`\ (\ ) |virtual| |required| |const|                                                                              |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                             | :ref:`_get_transform<class_PhysicsDirectBodyState3DExtension_private_method__get_transform>`\ (\ ) |virtual| |required| |const|                                                                                              |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                     | :ref:`_get_velocity_at_local_position<class_PhysicsDirectBodyState3DExtension_private_method__get_velocity_at_local_position>`\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| |const|            |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_integrate_forces<class_PhysicsDirectBodyState3DExtension_private_method__integrate_forces>`\ (\ ) |virtual| |required|                                                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`_is_sleeping<class_PhysicsDirectBodyState3DExtension_private_method__is_sleeping>`\ (\ ) |virtual| |required| |const|                                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_angular_velocity<class_PhysicsDirectBodyState3DExtension_private_method__set_angular_velocity>`\ (\ velocity\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required|                                              |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_collision_layer<class_PhysicsDirectBodyState3DExtension_private_method__set_collision_layer>`\ (\ layer\: :ref:`int<class_int>`\ ) |virtual| |required|                                                           |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_collision_mask<class_PhysicsDirectBodyState3DExtension_private_method__set_collision_mask>`\ (\ mask\: :ref:`int<class_int>`\ ) |virtual| |required|                                                              |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_constant_force<class_PhysicsDirectBodyState3DExtension_private_method__set_constant_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required|                                                     |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_constant_torque<class_PhysicsDirectBodyState3DExtension_private_method__set_constant_torque>`\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required|                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_linear_velocity<class_PhysicsDirectBodyState3DExtension_private_method__set_linear_velocity>`\ (\ velocity\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required|                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_sleep_state<class_PhysicsDirectBodyState3DExtension_private_method__set_sleep_state>`\ (\ enabled\: :ref:`bool<class_bool>`\ ) |virtual| |required|                                                               |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_transform<class_PhysicsDirectBodyState3DExtension_private_method__set_transform>`\ (\ transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual| |required|                                                   |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PhysicsDirectBodyState3DExtension_private_method__add_constant_central_force:

.. rst-class:: classref-method

|void| **_add_constant_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__add_constant_central_force>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__add_constant_force:

.. rst-class:: classref-method

|void| **_add_constant_force**\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__add_constant_force>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__add_constant_torque:

.. rst-class:: classref-method

|void| **_add_constant_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__add_constant_torque>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__apply_central_force:

.. rst-class:: classref-method

|void| **_apply_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__apply_central_force>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__apply_central_impulse:

.. rst-class:: classref-method

|void| **_apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__apply_central_impulse>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__apply_force:

.. rst-class:: classref-method

|void| **_apply_force**\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__apply_force>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__apply_impulse:

.. rst-class:: classref-method

|void| **_apply_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__apply_impulse>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__apply_torque:

.. rst-class:: classref-method

|void| **_apply_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__apply_torque>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__apply_torque_impulse:

.. rst-class:: classref-method

|void| **_apply_torque_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__apply_torque_impulse>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_angular_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_angular_velocity**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_angular_velocity>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_center_of_mass:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_center_of_mass**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_center_of_mass>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_center_of_mass_local:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_center_of_mass_local**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_center_of_mass_local>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_collision_layer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_collision_layer**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_collision_layer>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_collision_mask:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_collision_mask**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_collision_mask>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_constant_force:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_constant_force**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_constant_force>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_constant_torque:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_constant_torque**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_constant_torque>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_contact_collider**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_collider_id**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_id>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_get_contact_collider_object**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_object>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_contact_collider_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_position>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_collider_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_shape>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_contact_collider_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_collider_velocity_at_position>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_count>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_contact_impulse:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_contact_impulse**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_impulse>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_contact_local_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_contact_local_normal**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_local_normal>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_contact_local_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_contact_local_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_local_position>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_contact_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_local_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_local_shape>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_contact_local_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_contact_local_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_contact_local_velocity_at_position>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_inverse_inertia:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_inverse_inertia**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_inverse_inertia>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_inverse_inertia_tensor:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **_get_inverse_inertia_tensor**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_inverse_inertia_tensor>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_inverse_mass:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_inverse_mass**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_inverse_mass>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_linear_velocity**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_linear_velocity>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_principal_inertia_axes:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **_get_principal_inertia_axes**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_principal_inertia_axes>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_space_state:

.. rst-class:: classref-method

:ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **_get_space_state**\ (\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_space_state>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_step:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_step**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_step>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_total_angular_damp:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_total_angular_damp**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_total_angular_damp>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_total_gravity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_total_gravity**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_total_gravity>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_total_linear_damp:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_total_linear_damp**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_total_linear_damp>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **_get_transform**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_transform>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__get_velocity_at_local_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **_get_velocity_at_local_position**\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__get_velocity_at_local_position>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__integrate_forces>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__is_sleeping:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_sleeping**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__is_sleeping>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__set_angular_velocity:

.. rst-class:: classref-method

|void| **_set_angular_velocity**\ (\ velocity\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__set_angular_velocity>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__set_collision_layer:

.. rst-class:: classref-method

|void| **_set_collision_layer**\ (\ layer\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__set_collision_layer>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__set_collision_mask:

.. rst-class:: classref-method

|void| **_set_collision_mask**\ (\ mask\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__set_collision_mask>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__set_constant_force:

.. rst-class:: classref-method

|void| **_set_constant_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__set_constant_force>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__set_constant_torque:

.. rst-class:: classref-method

|void| **_set_constant_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__set_constant_torque>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__set_linear_velocity:

.. rst-class:: classref-method

|void| **_set_linear_velocity**\ (\ velocity\: :ref:`Vector3<class_Vector3>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__set_linear_velocity>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__set_sleep_state:

.. rst-class:: classref-method

|void| **_set_sleep_state**\ (\ enabled\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__set_sleep_state>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState3DExtension_private_method__set_transform:

.. rst-class:: classref-method

|void| **_set_transform**\ (\ transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState3DExtension_private_method__set_transform>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
