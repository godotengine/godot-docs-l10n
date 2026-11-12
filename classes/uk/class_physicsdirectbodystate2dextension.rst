:github_url: hide

.. _class_PhysicsDirectBodyState2DExtension:

PhysicsDirectBodyState2DExtension
=================================

**Успадковує:** :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>` **<** :ref:`Object<class_Object>`

Забезпечує віртуальні методи, які можуть передаватися для створення користувацького :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас поширюється на :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>` шляхом надання додаткових віртуальних методів, які можуть передаватися. Коли ці методи перевантажуються, вони будуть називатися замість внутрішніх методів фізичного сервера.

Призначений для використання з GDExtension для створення користувацького впровадження :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`.

.. rst-class:: classref-reftable-group

Методи
------------

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

Описи методів
--------------------------

.. _class_PhysicsDirectBodyState2DExtension_private_method__add_constant_central_force:

.. rst-class:: classref-method

|void| **_add_constant_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__add_constant_central_force>`

Замінна версія :ref:`PhysicsDirectBodyState2D.add_constant_central_force()<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__add_constant_force:

.. rst-class:: classref-method

|void| **_add_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__add_constant_force>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.add_constant_force()<class_PhysicsDirectBodyState2D_method_add_constant_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__add_constant_torque:

.. rst-class:: classref-method

|void| **_add_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__add_constant_torque>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.add_constant_torque()<class_PhysicsDirectBodyState2D_method_add_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_central_force:

.. rst-class:: classref-method

|void| **_apply_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_central_force>`

Замінна версія :ref:`PhysicsDirectBodyState2D.apply_central_force()<class_PhysicsDirectBodyState2D_method_apply_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_central_impulse:

.. rst-class:: classref-method

|void| **_apply_central_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_central_impulse>`

Замінна версія :ref:`PhysicsDirectBodyState2D.apply_central_impulse()<class_PhysicsDirectBodyState2D_method_apply_central_impulse>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_force:

.. rst-class:: classref-method

|void| **_apply_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_force>`

Замінна версія :ref:`PhysicsDirectBodyState2D.apply_force()<class_PhysicsDirectBodyState2D_method_apply_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_impulse:

.. rst-class:: classref-method

|void| **_apply_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_impulse>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.apply_impulse()<class_PhysicsDirectBodyState2D_method_apply_impulse>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_torque:

.. rst-class:: classref-method

|void| **_apply_torque**\ (\ torque\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_torque>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.apply_torque()<class_PhysicsDirectBodyState2D_method_apply_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_torque_impulse:

.. rst-class:: classref-method

|void| **_apply_torque_impulse**\ (\ impulse\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_torque_impulse>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.apply_torque_impulse()<class_PhysicsDirectBodyState2D_method_apply_torque_impulse>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_angular_velocity:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_angular_velocity**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_angular_velocity>`

Реалізуйте, щоб перевизначити поведінку :ref:`PhysicsDirectBodyState2D.angular_velocity<class_PhysicsDirectBodyState2D_property_angular_velocity>` та відповідного джерела отримання.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_center_of_mass**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass>`

Реалізуйте перевизначення поведінки :ref:`PhysicsDirectBodyState2D.center_of_mass<class_PhysicsDirectBodyState2D_property_center_of_mass>` та відповідного йому методу отримання.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass_local:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_center_of_mass_local**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass_local>`

Реалізуйте перевизначення поведінки :ref:`PhysicsDirectBodyState2D.center_of_mass_local<class_PhysicsDirectBodyState2D_property_center_of_mass_local>` та відповідного йому методу отримання.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_collision_layer:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_collision_layer**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_collision_layer>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_collision_mask:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_collision_mask**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_collision_mask>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_constant_force:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_constant_force**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_constant_force>`

Замінна версія :ref:`PhysicsDirectBodyState2D.get_constant_force()<class_PhysicsDirectBodyState2D_method_get_constant_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_constant_torque:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_constant_torque**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_constant_torque>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.get_constant_torque()<class_PhysicsDirectBodyState2D_method_get_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_contact_collider**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.get_contact_collider()<class_PhysicsDirectBodyState2D_method_get_contact_collider>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_collider_id**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_id>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.get_contact_collider_id()<class_PhysicsDirectBodyState2D_method_get_contact_collider_id>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_get_contact_collider_object**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_object>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.get_contact_collider_object()<class_PhysicsDirectBodyState2D_method_get_contact_collider_object>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_collider_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_position>`

Замінна версія :ref:`PhysicsDirectBodyState2D.get_contact_collider_position()<class_PhysicsDirectBodyState2D_method_get_contact_collider_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_collider_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_shape>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.get_contact_collider_shape()<class_PhysicsDirectBodyState2D_method_get_contact_collider_shape>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_collider_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_velocity_at_position>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.get_contact_collider_velocity_at_position()<class_PhysicsDirectBodyState2D_method_get_contact_collider_velocity_at_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_count>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.get_contact_count()<class_PhysicsDirectBodyState2D_method_get_contact_count>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_impulse:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_impulse**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_impulse>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.get_contact_impulse()<class_PhysicsDirectBodyState2D_method_get_contact_impulse>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_local_normal**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_normal>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.get_contact_local_normal()<class_PhysicsDirectBodyState2D_method_get_contact_local_normal>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_local_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_position>`

Замінна версія :ref:`PhysicsDirectBodyState2D.get_contact_local_position()<class_PhysicsDirectBodyState2D_method_get_contact_local_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_local_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_shape>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.get_contact_local_shape()<class_PhysicsDirectBodyState2D_method_get_contact_local_shape>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_local_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_velocity_at_position>`

Замінювана версія :ref:`PhysicsDirectBodyState2D.get_contact_local_velocity_at_position()<class_PhysicsDirectBodyState2D_method_get_contact_local_velocity_at_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_inertia:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_inverse_inertia**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_inertia>`

Реалізуйте, щоб змінити поведінку :ref:`PhysicsDirectBodyState2D.inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>` та відповідного джерела отримання.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_mass:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_inverse_mass**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_mass>`

Реалізуйте, щоб перевизначити поведінку :ref:`PhysicsDirectBodyState2D.inverse_mass<class_PhysicsDirectBodyState2D_property_inverse_mass>` і відповідного джерела отримання.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_linear_velocity**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_linear_velocity>`

Реалізуйте, щоб перевизначити поведінку :ref:`PhysicsDirectBodyState2D.linear_velocity<class_PhysicsDirectBodyState2D_property_linear_velocity>` та відповідного джерела отримання.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_space_state:

.. rst-class:: classref-method

:ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **_get_space_state**\ (\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_space_state>`

Замінна версія :ref:`PhysicsDirectBodyState2D.get_space_state()<class_PhysicsDirectBodyState2D_method_get_space_state>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_step:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_step**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_step>`

Впроваджувати поведінку :ref:`фізикаDirectBodyState2D.step<class_фізикаDirectBodyState2D_member_step>` і його відповідний отримувач.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_total_angular_damp:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_total_angular_damp**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_total_angular_damp>`

Реалізовано перевизначення поведінки :ref:`PhysicsDirectBodyState2D.total_angular_damp<class_PhysicsDirectBodyState2D_property_total_angular_damp>` та відповідного йому методу отримання.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_total_gravity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_total_gravity**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_total_gravity>`

Впроваджувати поведінку :ref:`фізикаDirectBodyState2D.total_gravity<class_фізикаDirectBodyState2D_member_total_gravity>` та її відповідний овербіж.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_total_linear_damp:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_total_linear_damp**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_total_linear_damp>`

Реалізуйте перевизначення поведінки :ref:`PhysicsDirectBodyState2D.total_linear_damp<class_PhysicsDirectBodyState2D_property_total_linear_damp>` та відповідного йому методу отримання.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_transform:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **_get_transform**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_transform>`

Реалізуйте перевизначення поведінки :ref:`PhysicsDirectBodyState2D.transform<class_PhysicsDirectBodyState2D_property_transform>` та відповідного йому методу отримання.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_velocity_at_local_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_velocity_at_local_position**\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_velocity_at_local_position>`

Перевизначена версія :ref:`PhysicsDirectBodyState2D.get_velocity_at_local_position()<class_PhysicsDirectBodyState2D_method_get_velocity_at_local_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__integrate_forces>`

Перевизначена версія :ref:`PhysicsDirectBodyState2D.integrate_forces()<class_PhysicsDirectBodyState2D_method_integrate_forces>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__is_sleeping:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_sleeping**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__is_sleeping>`

Реалізуйте перевизначення поведінки :ref:`PhysicsDirectBodyState2D.sleeping<class_PhysicsDirectBodyState2D_property_sleeping>` та відповідного йому методу отримання.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_angular_velocity:

.. rst-class:: classref-method

|void| **_set_angular_velocity**\ (\ velocity\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_angular_velocity>`

Реалізуйте перевизначення поведінки :ref:`PhysicsDirectBodyState2D.angular_velocity<class_PhysicsDirectBodyState2D_property_angular_velocity>` та відповідного його сеттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_collision_layer:

.. rst-class:: classref-method

|void| **_set_collision_layer**\ (\ layer\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_collision_layer>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_collision_mask:

.. rst-class:: classref-method

|void| **_set_collision_mask**\ (\ mask\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_collision_mask>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/development/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_constant_force:

.. rst-class:: classref-method

|void| **_set_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_constant_force>`

Перевизначена версія :ref:`PhysicsDirectBodyState2D.set_constant_force()<class_PhysicsDirectBodyState2D_method_set_constant_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_constant_torque:

.. rst-class:: classref-method

|void| **_set_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_constant_torque>`

Перевизначена версія :ref:`PhysicsDirectBodyState2D.set_constant_torque()<class_PhysicsDirectBodyState2D_method_set_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_linear_velocity:

.. rst-class:: classref-method

|void| **_set_linear_velocity**\ (\ velocity\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_linear_velocity>`

Реалізуйте перевизначення поведінки :ref:`PhysicsDirectBodyState2D.linear_velocity<class_PhysicsDirectBodyState2D_property_linear_velocity>` та відповідного його сеттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_sleep_state:

.. rst-class:: classref-method

|void| **_set_sleep_state**\ (\ enabled\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_sleep_state>`

Реалізуйте перевизначення поведінки :ref:`PhysicsDirectBodyState2D.sleeping<class_PhysicsDirectBodyState2D_property_sleeping>` та відповідного його сеттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_transform:

.. rst-class:: classref-method

|void| **_set_transform**\ (\ transform\: :ref:`Transform2D<class_Transform2D>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_transform>`

Реалізуйте перевизначення поведінки :ref:`PhysicsDirectBodyState2D.transform<class_PhysicsDirectBodyState2D_property_transform>` та його відповідного методу встановлення.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
