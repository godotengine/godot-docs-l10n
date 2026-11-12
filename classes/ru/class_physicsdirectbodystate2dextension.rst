:github_url: hide

.. _class_PhysicsDirectBodyState2DExtension:

PhysicsDirectBodyState2DExtension
=================================

**Наследует:** :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>` **<** :ref:`Object<class_Object>`

Предоставляет виртуальные методы, которые можно переопределить для создания пользовательских реализаций :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс расширяет :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`, предоставляя дополнительные виртуальные методы, которые можно переопределить. Когда эти методы переопределяются, они будут вызываться вместо внутренних методов физического сервера.

Предназначено для использования с GDExtension для создания пользовательских реализаций :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`.

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_PhysicsDirectBodyState2DExtension_private_method__add_constant_central_force:

.. rst-class:: classref-method

|void| **_add_constant_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__add_constant_central_force>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.add_constant_central_force()<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__add_constant_force:

.. rst-class:: classref-method

|void| **_add_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__add_constant_force>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.add_constant_force()<class_PhysicsDirectBodyState2D_method_add_constant_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__add_constant_torque:

.. rst-class:: classref-method

|void| **_add_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__add_constant_torque>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.add_constant_torque()<class_PhysicsDirectBodyState2D_method_add_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_central_force:

.. rst-class:: classref-method

|void| **_apply_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_central_force>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.apply_central_force()<class_PhysicsDirectBodyState2D_method_apply_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_central_impulse:

.. rst-class:: classref-method

|void| **_apply_central_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_central_impulse>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.apply_central_impulse()<class_PhysicsDirectBodyState2D_method_apply_central_impulse>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_force:

.. rst-class:: classref-method

|void| **_apply_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_force>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.apply_force()<class_PhysicsDirectBodyState2D_method_apply_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_impulse:

.. rst-class:: classref-method

|void| **_apply_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_impulse>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.apply_impulse()<class_PhysicsDirectBodyState2D_method_apply_impulse>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_torque:

.. rst-class:: classref-method

|void| **_apply_torque**\ (\ torque\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_torque>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.apply_torque()<class_PhysicsDirectBodyState2D_method_apply_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__apply_torque_impulse:

.. rst-class:: classref-method

|void| **_apply_torque_impulse**\ (\ impulse\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__apply_torque_impulse>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.apply_torque_impulse()<class_PhysicsDirectBodyState2D_method_apply_torque_impulse>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_angular_velocity:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_angular_velocity**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_angular_velocity>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.angular_velocity<class_PhysicsDirectBodyState2D_property_angular_velocity>` и его соответствующего геттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_center_of_mass**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.center_of_mass<class_PhysicsDirectBodyState2D_property_center_of_mass>` и его соответствующего геттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass_local:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_center_of_mass_local**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_center_of_mass_local>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.center_of_mass_local<class_PhysicsDirectBodyState2D_property_center_of_mass_local>` и его соответствующего геттера.

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

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_constant_force()<class_PhysicsDirectBodyState2D_method_get_constant_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_constant_torque:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_constant_torque**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_constant_torque>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_constant_torque()<class_PhysicsDirectBodyState2D_method_get_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_contact_collider**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_contact_collider()<class_PhysicsDirectBodyState2D_method_get_contact_collider>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_collider_id**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_id>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_contact_collider_id()<class_PhysicsDirectBodyState2D_method_get_contact_collider_id>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_get_contact_collider_object**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_object>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_contact_collider_object()<class_PhysicsDirectBodyState2D_method_get_contact_collider_object>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_collider_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_position>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_contact_collider_position()<class_PhysicsDirectBodyState2D_method_get_contact_collider_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_collider_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_shape>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_contact_collider_shape()<class_PhysicsDirectBodyState2D_method_get_contact_collider_shape>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_collider_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_collider_velocity_at_position>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_contact_collider_velocity_at_position()<class_PhysicsDirectBodyState2D_method_get_contact_collider_velocity_at_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_count>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_contact_count()<class_PhysicsDirectBodyState2D_method_get_contact_count>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_impulse:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_impulse**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_impulse>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_contact_impulse()<class_PhysicsDirectBodyState2D_method_get_contact_impulse>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_local_normal**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_normal>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_contact_local_normal()<class_PhysicsDirectBodyState2D_method_get_contact_local_normal>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_local_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_position>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_contact_local_position()<class_PhysicsDirectBodyState2D_method_get_contact_local_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_contact_local_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_shape>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_contact_local_shape()<class_PhysicsDirectBodyState2D_method_get_contact_local_shape>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_contact_local_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_contact_local_velocity_at_position>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_contact_local_velocity_at_position()<class_PhysicsDirectBodyState2D_method_get_contact_local_velocity_at_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_inertia:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_inverse_inertia**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_inertia>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>` и его соответствующего геттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_mass:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_inverse_mass**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_inverse_mass>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.inverse_mass<class_PhysicsDirectBodyState2D_property_inverse_mass>` и его соответствующего геттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_linear_velocity**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_linear_velocity>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.linear_velocity<class_PhysicsDirectBodyState2D_property_linear_velocity>` и его соответствующего геттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_space_state:

.. rst-class:: classref-method

:ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **_get_space_state**\ (\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_space_state>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_space_state()<class_PhysicsDirectBodyState2D_method_get_space_state>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_step:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_step**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_step>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.step<class_PhysicsDirectBodyState2D_property_step>` и его соответствующего геттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_total_angular_damp:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_total_angular_damp**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_total_angular_damp>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.total_angular_damp<class_PhysicsDirectBodyState2D_property_total_angular_damp>` и его соответствующего геттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_total_gravity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_total_gravity**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_total_gravity>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.total_gravity<class_PhysicsDirectBodyState2D_property_total_gravity>` и его соответствующего геттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_total_linear_damp:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_total_linear_damp**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_total_linear_damp>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.total_linear_damp<class_PhysicsDirectBodyState2D_property_total_linear_damp>` и его соответствующего геттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_transform:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **_get_transform**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_transform>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.transform<class_PhysicsDirectBodyState2D_property_transform>` и его соответствующего геттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__get_velocity_at_local_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_velocity_at_local_position**\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__get_velocity_at_local_position>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.get_velocity_at_local_position()<class_PhysicsDirectBodyState2D_method_get_velocity_at_local_position>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__integrate_forces>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.integrate_forces()<class_PhysicsDirectBodyState2D_method_integrate_forces>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__is_sleeping:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_sleeping**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__is_sleeping>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.sleeping<class_PhysicsDirectBodyState2D_property_sleeping>` и его соответствующего геттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_angular_velocity:

.. rst-class:: classref-method

|void| **_set_angular_velocity**\ (\ velocity\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_angular_velocity>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.angular_velocity<class_PhysicsDirectBodyState2D_property_angular_velocity>` и его соответствующего сеттера.

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

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.set_constant_force()<class_PhysicsDirectBodyState2D_method_set_constant_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_constant_torque:

.. rst-class:: classref-method

|void| **_set_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_constant_torque>`

Переопределяемая версия :ref:`PhysicsDirectBodyState2D.set_constant_torque()<class_PhysicsDirectBodyState2D_method_set_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_linear_velocity:

.. rst-class:: classref-method

|void| **_set_linear_velocity**\ (\ velocity\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_linear_velocity>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.linear_velocity<class_PhysicsDirectBodyState2D_property_linear_velocity>` и его соответствующего сеттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_sleep_state:

.. rst-class:: classref-method

|void| **_set_sleep_state**\ (\ enabled\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_sleep_state>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.sleeping<class_PhysicsDirectBodyState2D_property_sleeping>` и его соответствующего сеттера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2DExtension_private_method__set_transform:

.. rst-class:: classref-method

|void| **_set_transform**\ (\ transform\: :ref:`Transform2D<class_Transform2D>`\ ) |virtual| |required| :ref:`🔗<class_PhysicsDirectBodyState2DExtension_private_method__set_transform>`

Реализуйте переопределение поведения :ref:`PhysicsDirectBodyState2D.transform<class_PhysicsDirectBodyState2D_property_transform>` и его соответствующего сеттера.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
