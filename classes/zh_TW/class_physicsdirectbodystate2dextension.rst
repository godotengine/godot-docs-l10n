:github_url: hide

.. _class_PhysicsDirectBodyState2DExtension:

PhysicsDirectBodyState2DExtension
=================================

**繼承：** :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>` **<** :ref:`Object<class_Object>`

提供能夠覆蓋的虛方法，用於建立 :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>` 的自訂實作。

.. rst-class:: classref-introduction-group

說明
----

這個類擴充自 :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`\ ，額外提供了可覆蓋的虛方法。呼叫時會使用這些覆蓋後的方法代替物理伺服器中的內部方法。

旨在用於 GDExtension，用於建立 :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>` 的自訂實作。

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_add_constant_central_force<class_PhysicsDirectBodyState2DExtension_private_method__add_constant_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required|                                     |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_add_constant_force<class_PhysicsDirectBodyState2DExtension_private_method__add_constant_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required|           |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_add_constant_torque<class_PhysicsDirectBodyState2DExtension_private_method__add_constant_torque>`\ (\ torque\: :ref:`float<class_float>`\ ) |virtual| |required|                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_apply_central_force<class_PhysicsDirectBodyState2DExtension_private_method__apply_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required|                                                   |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_apply_central_impulse<class_PhysicsDirectBodyState2DExtension_private_method__apply_central_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required|                                             |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_apply_force<class_PhysicsDirectBodyState2DExtension_private_method__apply_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required|                         |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_apply_impulse<class_PhysicsDirectBodyState2DExtension_private_method__apply_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required|                   |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_apply_torque<class_PhysicsDirectBodyState2DExtension_private_method__apply_torque>`\ (\ torque\: :ref:`float<class_float>`\ ) |virtual| |required|                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_apply_torque_impulse<class_PhysicsDirectBodyState2DExtension_private_method__apply_torque_impulse>`\ (\ impulse\: :ref:`float<class_float>`\ ) |virtual| |required|                                                   |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`_get_angular_velocity<class_PhysicsDirectBodyState2DExtension_private_method__get_angular_velocity>`\ (\ ) |virtual| |required| |const|                                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`_get_center_of_mass<class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass>`\ (\ ) |virtual| |required| |const|                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`_get_center_of_mass_local<class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass_local>`\ (\ ) |virtual| |required| |const|                                                                        |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`_get_collision_layer<class_PhysicsDirectBodyState2DExtension_private_method__get_collision_layer>`\ (\ ) |virtual| |required| |const|                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`_get_collision_mask<class_PhysicsDirectBodyState2DExtension_private_method__get_collision_mask>`\ (\ ) |virtual| |required| |const|                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`_get_constant_force<class_PhysicsDirectBodyState2DExtension_private_method__get_constant_force>`\ (\ ) |virtual| |required| |const|                                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`_get_constant_torque<class_PhysicsDirectBodyState2DExtension_private_method__get_constant_torque>`\ (\ ) |virtual| |required| |const|                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`_get_contact_collider<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                           |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`_get_contact_collider_id<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_id>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                     |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                                       | :ref:`_get_contact_collider_object<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_object>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                             |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`_get_contact_collider_position<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                         |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`_get_contact_collider_shape<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                               |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`_get_contact_collider_velocity_at_position<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`_get_contact_count<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_count>`\ (\ ) |virtual| |required| |const|                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`_get_contact_impulse<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_impulse>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                             |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`_get_contact_local_normal<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_normal>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                   |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`_get_contact_local_position<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                               |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`_get_contact_local_shape<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                     |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`_get_contact_local_velocity_at_position<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const|       |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`_get_inverse_inertia<class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_inertia>`\ (\ ) |virtual| |required| |const|                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`_get_inverse_mass<class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_mass>`\ (\ ) |virtual| |required| |const|                                                                                        |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`_get_linear_velocity<class_PhysicsDirectBodyState2DExtension_private_method__get_linear_velocity>`\ (\ ) |virtual| |required| |const|                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` | :ref:`_get_space_state<class_PhysicsDirectBodyState2DExtension_private_method__get_space_state>`\ (\ ) |virtual| |required|                                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`_get_step<class_PhysicsDirectBodyState2DExtension_private_method__get_step>`\ (\ ) |virtual| |required| |const|                                                                                                        |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`_get_total_angular_damp<class_PhysicsDirectBodyState2DExtension_private_method__get_total_angular_damp>`\ (\ ) |virtual| |required| |const|                                                                            |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`_get_total_gravity<class_PhysicsDirectBodyState2DExtension_private_method__get_total_gravity>`\ (\ ) |virtual| |required| |const|                                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`_get_total_linear_damp<class_PhysicsDirectBodyState2DExtension_private_method__get_total_linear_damp>`\ (\ ) |virtual| |required| |const|                                                                              |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`                             | :ref:`_get_transform<class_PhysicsDirectBodyState2DExtension_private_method__get_transform>`\ (\ ) |virtual| |required| |const|                                                                                              |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`_get_velocity_at_local_position<class_PhysicsDirectBodyState2DExtension_private_method__get_velocity_at_local_position>`\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| |const|            |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_integrate_forces<class_PhysicsDirectBodyState2DExtension_private_method__integrate_forces>`\ (\ ) |virtual| |required|                                                                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`_is_sleeping<class_PhysicsDirectBodyState2DExtension_private_method__is_sleeping>`\ (\ ) |virtual| |required| |const|                                                                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_angular_velocity<class_PhysicsDirectBodyState2DExtension_private_method__set_angular_velocity>`\ (\ velocity\: :ref:`float<class_float>`\ ) |virtual| |required|                                                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_collision_layer<class_PhysicsDirectBodyState2DExtension_private_method__set_collision_layer>`\ (\ layer\: :ref:`int<class_int>`\ ) |virtual| |required|                                                           |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_collision_mask<class_PhysicsDirectBodyState2DExtension_private_method__set_collision_mask>`\ (\ mask\: :ref:`int<class_int>`\ ) |virtual| |required|                                                              |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_constant_force<class_PhysicsDirectBodyState2DExtension_private_method__set_constant_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required|                                                     |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_constant_torque<class_PhysicsDirectBodyState2DExtension_private_method__set_constant_torque>`\ (\ torque\: :ref:`float<class_float>`\ ) |virtual| |required|                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_linear_velocity<class_PhysicsDirectBodyState2DExtension_private_method__set_linear_velocity>`\ (\ velocity\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required|                                                |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_sleep_state<class_PhysicsDirectBodyState2DExtension_private_method__set_sleep_state>`\ (\ enabled\: :ref:`bool<class_bool>`\ ) |virtual| |required|                                                               |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`_set_transform<class_PhysicsDirectBodyState2DExtension_private_method__set_transform>`\ (\ transform\: :ref:`Transform2D<class_Transform2D>`\ ) |virtual| |required|                                                   |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PhysicsDirectBodyState2DExtension_private_method__add_constant_central_force:

.. rst-class:: classref-method

|void| **_add_constant_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__add_constant_central_force>`

Overridable version of :ref:`PhysicsDirectBodyState2D.add_constant_central_force()<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__add_constant_force:

.. rst-class:: classref-method

|void| **_add_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__add_constant_force>`

Overridable version of :ref:`PhysicsDirectBodyState2D.add_constant_force()<class_PhysicsDirectBodyState2D_method_add_constant_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__add_constant_torque:

.. rst-class:: classref-method

|void| **_add_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__add_constant_torque>`

Overridable version of :ref:`PhysicsDirectBodyState2D.add_constant_torque()<class_PhysicsDirectBodyState2D_method_add_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_central_force:

.. rst-class:: classref-method

|void| **_apply_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_central_force>`

Overridable version of :ref:`PhysicsDirectBodyState2D.apply_central_force()<class_PhysicsDirectBodyState2D_method_apply_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_central_impulse:

.. rst-class:: classref-method

|void| **_apply_central_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_central_impulse>`

Overridable version of :ref:`PhysicsDirectBodyState2D.apply_central_impulse()<class_PhysicsDirectBodyState2D_method_apply_central_impulse>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_force:

.. rst-class:: classref-method

|void| **_apply_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_force>`

Overridable version of :ref:`PhysicsDirectBodyState2D.apply_force()<class_PhysicsDirectBodyState2D_method_apply_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_impulse:

.. rst-class:: classref-method

|void| **_apply_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_impulse>`

Overridable version of :ref:`PhysicsDirectBodyState2D.apply_impulse()<class_PhysicsDirectBodyState2D_method_apply_impulse>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_torque:

.. rst-class:: classref-method

|void| **_apply_torque**\ (\ torque\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_torque>`

Overridable version of :ref:`PhysicsDirectBodyState2D.apply_torque()<class_PhysicsDirectBodyState2D_method_apply_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_torque_impulse:

.. rst-class:: classref-method

|void| **_apply_torque_impulse**\ (\ impulse\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_torque_impulse>`

Overridable version of :ref:`PhysicsDirectBodyState2D.apply_torque_impulse()<class_PhysicsDirectBodyState2D_method_apply_torque_impulse>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_angular_velocity:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_angular_velocity**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_angular_velocity>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.angular_velocity<class_PhysicsDirectBodyState2D_property_angular_velocity>` and its respective getter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_center_of_mass**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.center_of_mass<class_PhysicsDirectBodyState2D_property_center_of_mass>` and its respective getter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass_local:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_center_of_mass_local**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass_local>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.center_of_mass_local<class_PhysicsDirectBodyState2D_property_center_of_mass_local>` and its respective getter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_collision_layer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_collision_layer**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_collision_layer>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_collision_mask:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_collision_mask**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_collision_mask>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_constant_force:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_constant_force**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_constant_force>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_constant_force()<class_PhysicsDirectBodyState2D_method_get_constant_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_constant_torque:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_constant_torque**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_constant_torque>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_constant_torque()<class_PhysicsDirectBodyState2D_method_get_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_contact_collider**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_contact_collider()<class_PhysicsDirectBodyState2D_method_get_contact_collider>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_collider_id**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_id>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_contact_collider_id()<class_PhysicsDirectBodyState2D_method_get_contact_collider_id>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_get_contact_collider_object**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_object>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_contact_collider_object()<class_PhysicsDirectBodyState2D_method_get_contact_collider_object>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_collider_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_position>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_contact_collider_position()<class_PhysicsDirectBodyState2D_method_get_contact_collider_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_collider_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_shape>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_contact_collider_shape()<class_PhysicsDirectBodyState2D_method_get_contact_collider_shape>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_collider_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_velocity_at_position>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_contact_collider_velocity_at_position()<class_PhysicsDirectBodyState2D_method_get_contact_collider_velocity_at_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_count>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_contact_count()<class_PhysicsDirectBodyState2D_method_get_contact_count>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_impulse:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_impulse**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_impulse>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_contact_impulse()<class_PhysicsDirectBodyState2D_method_get_contact_impulse>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_local_normal**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_normal>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_contact_local_normal()<class_PhysicsDirectBodyState2D_method_get_contact_local_normal>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_local_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_position>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_contact_local_position()<class_PhysicsDirectBodyState2D_method_get_contact_local_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_local_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_shape>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_contact_local_shape()<class_PhysicsDirectBodyState2D_method_get_contact_local_shape>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_local_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_velocity_at_position>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_contact_local_velocity_at_position()<class_PhysicsDirectBodyState2D_method_get_contact_local_velocity_at_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_inertia:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_inverse_inertia**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_inertia>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>` and its respective getter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_mass:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_inverse_mass**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_mass>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.inverse_mass<class_PhysicsDirectBodyState2D_property_inverse_mass>` and its respective getter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_linear_velocity**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_linear_velocity>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.linear_velocity<class_PhysicsDirectBodyState2D_property_linear_velocity>` and its respective getter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_space_state:

.. rst-class:: classref-method

:ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **_get_space_state**\ (\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_space_state>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_space_state()<class_PhysicsDirectBodyState2D_method_get_space_state>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_step:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_step**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_step>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.step<class_PhysicsDirectBodyState2D_property_step>` and its respective getter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_total_angular_damp:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_total_angular_damp**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_total_angular_damp>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.total_angular_damp<class_PhysicsDirectBodyState2D_property_total_angular_damp>` and its respective getter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_total_gravity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_total_gravity**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_total_gravity>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.total_gravity<class_PhysicsDirectBodyState2D_property_total_gravity>` and its respective getter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_total_linear_damp:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_total_linear_damp**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_total_linear_damp>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.total_linear_damp<class_PhysicsDirectBodyState2D_property_total_linear_damp>` and its respective getter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_transform:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **_get_transform**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_transform>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.transform<class_PhysicsDirectBodyState2D_property_transform>` and its respective getter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_velocity_at_local_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_velocity_at_local_position**\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_velocity_at_local_position>`

Overridable version of :ref:`PhysicsDirectBodyState2D.get_velocity_at_local_position()<class_PhysicsDirectBodyState2D_method_get_velocity_at_local_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__integrate_forces>`

Overridable version of :ref:`PhysicsDirectBodyState2D.integrate_forces()<class_PhysicsDirectBodyState2D_method_integrate_forces>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__is_sleeping:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_sleeping**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__is_sleeping>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.sleeping<class_PhysicsDirectBodyState2D_property_sleeping>` and its respective getter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_angular_velocity:

.. rst-class:: classref-method

|void| **_set_angular_velocity**\ (\ velocity\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_angular_velocity>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.angular_velocity<class_PhysicsDirectBodyState2D_property_angular_velocity>` and its respective setter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_collision_layer:

.. rst-class:: classref-method

|void| **_set_collision_layer**\ (\ layer\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_collision_layer>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_collision_mask:

.. rst-class:: classref-method

|void| **_set_collision_mask**\ (\ mask\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_collision_mask>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_constant_force:

.. rst-class:: classref-method

|void| **_set_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_constant_force>`

Overridable version of :ref:`PhysicsDirectBodyState2D.set_constant_force()<class_PhysicsDirectBodyState2D_method_set_constant_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_constant_torque:

.. rst-class:: classref-method

|void| **_set_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_constant_torque>`

Overridable version of :ref:`PhysicsDirectBodyState2D.set_constant_torque()<class_PhysicsDirectBodyState2D_method_set_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_linear_velocity:

.. rst-class:: classref-method

|void| **_set_linear_velocity**\ (\ velocity\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_linear_velocity>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.linear_velocity<class_PhysicsDirectBodyState2D_property_linear_velocity>` and its respective setter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_sleep_state:

.. rst-class:: classref-method

|void| **_set_sleep_state**\ (\ enabled\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_sleep_state>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.sleeping<class_PhysicsDirectBodyState2D_property_sleeping>` and its respective setter.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_transform:

.. rst-class:: classref-method

|void| **_set_transform**\ (\ transform\: :ref:`Transform2D<class_Transform2D>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_transform>`

Implement to override the behavior of :ref:`PhysicsDirectBodyState2D.transform<class_PhysicsDirectBodyState2D_property_transform>` and its respective setter.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
