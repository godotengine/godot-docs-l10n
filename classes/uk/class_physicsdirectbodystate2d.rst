:github_url: hide

.. _class_PhysicsDirectBodyState2D:

PhysicsDirectBodyState2D
========================

**Успадковує:** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`PhysicsDirectBodyState2DExtension<class_PhysicsDirectBodyState2DExtension>`

Забезпечує прямий доступ до фізичного тіла в :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-introduction-group

Опис
--------

Забезпечує прямий доступ до фізичного тіла в :ref:`PhysicsServer2D<class_PhysicsServer2D>`, що дозволяє безпечні зміни фізико-фізичних властивостей. Цей об'єкт пропускається через прямий державний зворотний зв'язок :ref:`RigidBody2D<class_RigidBody2D>`, і призначений для зміни безпосереднього стану цього тіла. :ref:`RigidBody2D._integrate_forces()<class_RigidBody2D_private_method__integrate_forces>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Запровадження фізики <../tutorials/physics/physics_introduction>`

- :doc:`Рей-розміщення <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`angular_velocity<class_PhysicsDirectBodyState2D_property_angular_velocity>`         |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`center_of_mass<class_PhysicsDirectBodyState2D_property_center_of_mass>`             |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`center_of_mass_local<class_PhysicsDirectBodyState2D_property_center_of_mass_local>` |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`collision_layer<class_PhysicsDirectBodyState2D_property_collision_layer>`           |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`collision_mask<class_PhysicsDirectBodyState2D_property_collision_mask>`             |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`           |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`inverse_mass<class_PhysicsDirectBodyState2D_property_inverse_mass>`                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`linear_velocity<class_PhysicsDirectBodyState2D_property_linear_velocity>`           |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`sleeping<class_PhysicsDirectBodyState2D_property_sleeping>`                         |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`step<class_PhysicsDirectBodyState2D_property_step>`                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`total_angular_damp<class_PhysicsDirectBodyState2D_property_total_angular_damp>`     |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`total_gravity<class_PhysicsDirectBodyState2D_property_total_gravity>`               |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`total_linear_damp<class_PhysicsDirectBodyState2D_property_total_linear_damp>`       |
   +---------------------------------------+-------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`transform<class_PhysicsDirectBodyState2D_property_transform>`                       |
   +---------------------------------------+-------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_central_force<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )                           |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_force<class_PhysicsDirectBodyState2D_method_add_constant_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`add_constant_torque<class_PhysicsDirectBodyState2D_method_add_constant_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                            |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_central_force<class_PhysicsDirectBodyState2D_method_apply_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )                                         |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_central_impulse<class_PhysicsDirectBodyState2D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>`\ )                                                   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_force<class_PhysicsDirectBodyState2D_method_apply_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )               |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_impulse<class_PhysicsDirectBodyState2D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )         |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_torque<class_PhysicsDirectBodyState2D_method_apply_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                                          |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`apply_torque_impulse<class_PhysicsDirectBodyState2D_method_apply_torque_impulse>`\ (\ impulse\: :ref:`float<class_float>`\ )                                                         |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_constant_force<class_PhysicsDirectBodyState2D_method_get_constant_force>`\ (\ ) |const|                                                                                          |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`get_constant_torque<class_PhysicsDirectBodyState2D_method_get_constant_torque>`\ (\ ) |const|                                                                                        |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`get_contact_collider<class_PhysicsDirectBodyState2D_method_get_contact_collider>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_collider_id<class_PhysicsDirectBodyState2D_method_get_contact_collider_id>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                                       | :ref:`get_contact_collider_object<class_PhysicsDirectBodyState2D_method_get_contact_collider_object>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_contact_collider_position<class_PhysicsDirectBodyState2D_method_get_contact_collider_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                               |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_collider_shape<class_PhysicsDirectBodyState2D_method_get_contact_collider_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                     |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_contact_collider_velocity_at_position<class_PhysicsDirectBodyState2D_method_get_contact_collider_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|       |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_count<class_PhysicsDirectBodyState2D_method_get_contact_count>`\ (\ ) |const|                                                                                            |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_contact_impulse<class_PhysicsDirectBodyState2D_method_get_contact_impulse>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                                   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_contact_local_normal<class_PhysicsDirectBodyState2D_method_get_contact_local_normal>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                         |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_contact_local_position<class_PhysicsDirectBodyState2D_method_get_contact_local_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                     |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_contact_local_shape<class_PhysicsDirectBodyState2D_method_get_contact_local_shape>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_contact_local_velocity_at_position<class_PhysicsDirectBodyState2D_method_get_contact_local_velocity_at_position>`\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const|             |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` | :ref:`get_space_state<class_PhysicsDirectBodyState2D_method_get_space_state>`\ (\ )                                                                                                        |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                     | :ref:`get_velocity_at_local_position<class_PhysicsDirectBodyState2D_method_get_velocity_at_local_position>`\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const|                  |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`integrate_forces<class_PhysicsDirectBodyState2D_method_integrate_forces>`\ (\ )                                                                                                      |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_constant_force<class_PhysicsDirectBodyState2D_method_set_constant_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`\ )                                                           |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                            | :ref:`set_constant_torque<class_PhysicsDirectBodyState2D_method_set_constant_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                            |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PhysicsDirectBodyState2D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity** :ref:`🔗<class_PhysicsDirectBodyState2D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_velocity**\ (\ )

Швидкість обертання тіла в *radians* за секунду.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **center_of_mass** :ref:`🔗<class_PhysicsDirectBodyState2D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_center_of_mass**\ (\ )

Центр маси тіла відносно центру тіла у глобальній координатній системі.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_center_of_mass_local:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **center_of_mass_local** :ref:`🔗<class_PhysicsDirectBodyState2D_property_center_of_mass_local>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_center_of_mass_local**\ (\ )

Центр маси тіла в локальній координатній системі тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** :ref:`🔗<class_PhysicsDirectBodyState2D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Шар зіткнення тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** :ref:`🔗<class_PhysicsDirectBodyState2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Маска зіткнення тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_inverse_inertia:

.. rst-class:: classref-property

:ref:`float<class_float>` **inverse_inertia** :ref:`🔗<class_PhysicsDirectBodyState2D_property_inverse_inertia>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_inverse_inertia**\ (\ )

Інверс інерції тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_inverse_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **inverse_mass** :ref:`🔗<class_PhysicsDirectBodyState2D_property_inverse_mass>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_inverse_mass**\ (\ )

Інверс маси тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **linear_velocity** :ref:`🔗<class_PhysicsDirectBodyState2D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_linear_velocity**\ (\ )

Лінійна швидкість тіла в пікселях на секунду.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** :ref:`🔗<class_PhysicsDirectBodyState2D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleep_state**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

Якщо ``true``, це тіло зараз спить (не активний).

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** :ref:`🔗<class_PhysicsDirectBodyState2D_property_step>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_step**\ (\ )

Часовий (delta) використовується для моделювання.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_total_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_angular_damp** :ref:`🔗<class_PhysicsDirectBodyState2D_property_total_angular_damp>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_total_angular_damp**\ (\ )

Швидкість, при якій тіло припиняє обертати, якщо інші сили не рухаються.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_total_gravity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **total_gravity** :ref:`🔗<class_PhysicsDirectBodyState2D_property_total_gravity>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_total_gravity**\ (\ )

Вектор загальної ваги в даний час застосовується до цього тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_total_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_linear_damp** :ref:`🔗<class_PhysicsDirectBodyState2D_property_total_linear_damp>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_total_linear_damp**\ (\ )

Швидкість, при якій тіло припиняє рух, якщо інші сили не рухаються.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** :ref:`🔗<class_PhysicsDirectBodyState2D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

Матриця трансформації тіла.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PhysicsDirectBodyState2D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`

Додавання постійної спрямованої сили без ударної обертання, яка зберігає час, поки не очищається ``constant_force = Vector2(0, 0)``.

Це еквівалентно використанню :ref:`add_constant_force()<class_PhysicsDirectBodyState2D_method_add_constant_force>` в центрі маси тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_add_constant_force>`

Додавання постійної позиціонованої сили до тіла, яка зберігає час, поки не очищається ``constant_force = Vector2(0, 0)``.

\ ``position`` – це зміщення з організму в глобальних координатах.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_add_constant_torque>`

Додає постійної обертальної сили, не впливаючи на позицію, яка зберігає час, поки не очищається ``constant_torque = 0``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_central_force>`

Застосовується спрямована сила без ударного обертання. Знаряддя часу залежна і означена для кожного оновлення фізики.

Це еквівалентно використання :ref:`apply_force()<class_PhysicsDirectBodyState2D_method_apply_force>` в центрі маси тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_central_impulse>`

Застосовується спрямований імпульс без впливу обертання.

Імпульс часозалежний! Нанесення імпульсу кожного кадру призведе до каркасно-залежної сили. З цієї причини слід використовувати тільки при симуляції одноразових ударів (користування функції "_сил" інакше).

Це еквівалентно використання :ref:`apply_impulse()<class_PhysicsDirectBodyState2D_method_apply_impulse>` в центрі маси тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_force>`

Застосовується сила позиціонування організму. Знаряддя часу залежна і означена для кожного оновлення фізики.

\ ``position`` – це зміщення з організму в глобальних координатах.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_impulse>`

Застосує поміщений імпульс до тіла.

Імпульс часозалежний! Нанесення імпульсу кожного кадру призведе до каркасно-залежної сили. З цієї причини слід використовувати тільки при симуляції одноразових ударів (користування функції "_сил" інакше).

\ ``position`` – це зміщення з організму в глобальних координатах.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_torque>`

Застосовує обертальну силу, не впливаючи на положення. Сила залежить від часу та призначена для застосування під час кожного оновлення фізики.

\ **Примітка:** Для роботи цього потрібен :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`. Щоб мати :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`, активний :ref:`CollisionShape2D<class_CollisionShape2D>` має бути дочірнім елементом вузла, або ви можете вручну встановити :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ impulse\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_torque_impulse>`

Застосовує обертальний імпульс до тіла без впливу на положення.

Імпульс часозалежний! Нанесення імпульсу кожного кадру призведе до каркасно-залежної сили. З цієї причини слід використовувати тільки при симуляції одноразових ударів (користування функції "_сил" інакше).

\ **Примітка:** :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>` обов'язково для роботи. Для того, щоб мати :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`, активний :ref:`CollisionShape2D<class_CollisionShape2D>` повинен бути дитиною вузла, або ви можете вручну встановити :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_constant_force:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_constant_force**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_constant_force>`

Під час кожного оновлення фізики повертається загальний стан сил тіла.

Див. :ref:`add_constant_force()<class_PhysicsDirectBodyState2D_method_add_constant_force>` і :ref:`add_constant_central_force()<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_constant_torque:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constant_torque**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_constant_torque>`

Під час кожного оновлення фізики повернулися загальні постійні обертальні сили.

Див. :ref:`add_constant_torque()<class_PhysicsDirectBodyState2D_method_add_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_contact_collider**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider>`

Повертає увагу :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_collider_id**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_id>`

Повернення об'єкта Collider id.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_contact_collider_object**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_object>`

Повертає об'єкт Collider. Це залежить від того, як він був створений (поверніть вузол сцени, якщо це було використано для створення).

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_collider_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_position>`

Повертає позицію контактної точки на Collider у глобальній координатній системі.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_collider_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_shape>`

Повертає індекс форми Collider.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_collider_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_velocity_at_position>`

Повертаємо вектор швидкості на контактній точці комірця.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_count>`

Повертає кількість контактів, що це тіло має інші тіла.

\ **Примітка:** За замовчуванням, це повертає 0, якщо органи налаштовані для моніторингу контактів. Див. :ref:`RigidBody2D.contact_monitor<class_RigidBody2D_property_contact_monitor>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_impulse:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_impulse**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_impulse>`

Повертає імпульс, створений контактом.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_local_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_local_normal**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_local_normal>`

Повертає локальний нормаль в контактній точці.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_local_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_local_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_local_position>`

Повертає позицію точки контакту на тілі у глобальній координаційній системі.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_local_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_local_shape>`

Повертає індекс локальної форми зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_local_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_local_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_local_velocity_at_position>`

Повертаємо вектор швидкості на контактній точці тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_space_state:

.. rst-class:: classref-method

:ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **get_space_state**\ (\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_space_state>`

Повертає поточний стан простору, корисний для запитів.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_velocity_at_local_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_velocity_at_local_position**\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_velocity_at_local_position>`

Повертає швидкість тіла у заданій відносній позиції.

\ ``local_position`` — це зміщення від початку координат тіла у глобальних координатах.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_integrate_forces:

.. rst-class:: classref-method

|void| **integrate_forces**\ (\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_integrate_forces>`

Оновлює лінійну і кутову швидкість тіла, застосовуючи тяжіння і знешкодження для еквівалента однієї фізичної клітки.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_set_constant_force:

.. rst-class:: classref-method

|void| **set_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_set_constant_force>`

Під час кожного оновлення фізики налаштовується загальна констанційна сила тіла.

Див. :ref:`add_constant_force()<class_PhysicsDirectBodyState2D_method_add_constant_force>` і :ref:`add_constant_central_force()<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_set_constant_torque:

.. rst-class:: classref-method

|void| **set_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_set_constant_torque>`

Встановлює загальні постійні обертальні сили організму, що застосовуються під час кожного оновлення фізики.

Див. :ref:`add_constant_torque()<class_PhysicsDirectBodyState2D_method_add_constant_torque>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
