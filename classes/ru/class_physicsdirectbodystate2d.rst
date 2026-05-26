:github_url: hide

.. _class_PhysicsDirectBodyState2D:

PhysicsDirectBodyState2D
========================

**Наследует:** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`PhysicsDirectBodyState2DExtension<class_PhysicsDirectBodyState2DExtension>`

Предоставляет прямой доступ к физическому телу в :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Предоставляет прямой доступ к физическому телу в :ref:`PhysicsServer2D<class_PhysicsServer2D>`, позволяя безопасно изменять физические свойства. Этот объект передается через прямой обратный вызов состояния :ref:`RigidBody2D<class_RigidBody2D>` и предназначен для изменения прямого состояния этого тела. См. :ref:`RigidBody2D._integrate_forces()<class_RigidBody2D_private_method__integrate_forces>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Введение в физику <../tutorials/physics/physics_introduction>`

- :doc:`Трассировка лучей <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Описания свойств
--------------------------------

.. _class_PhysicsDirectBodyState2D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity** :ref:`🔗<class_PhysicsDirectBodyState2D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_velocity**\ (\ )

Скорость вращения тела в *радианах* в секунду.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **center_of_mass** :ref:`🔗<class_PhysicsDirectBodyState2D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_center_of_mass**\ (\ )

Положение центра масс тела относительно центра тела в глобальной системе координат.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_center_of_mass_local:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **center_of_mass_local** :ref:`🔗<class_PhysicsDirectBodyState2D_property_center_of_mass_local>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_center_of_mass_local**\ (\ )

Положение центра масс тела в локальной системе координат тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** :ref:`🔗<class_PhysicsDirectBodyState2D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Слой столкновений тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** :ref:`🔗<class_PhysicsDirectBodyState2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Маска столкновения тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_inverse_inertia:

.. rst-class:: classref-property

:ref:`float<class_float>` **inverse_inertia** :ref:`🔗<class_PhysicsDirectBodyState2D_property_inverse_inertia>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_inverse_inertia**\ (\ )

Величина, обратная инерции тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_inverse_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **inverse_mass** :ref:`🔗<class_PhysicsDirectBodyState2D_property_inverse_mass>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_inverse_mass**\ (\ )

Величина, обратная массе тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **linear_velocity** :ref:`🔗<class_PhysicsDirectBodyState2D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_linear_velocity**\ (\ )

Линейная скорость тела в пикселях в секунду.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** :ref:`🔗<class_PhysicsDirectBodyState2D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleep_state**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

Если ``true``, это тело в данный момент спит (не активно).

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** :ref:`🔗<class_PhysicsDirectBodyState2D_property_step>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_step**\ (\ )

Временной шаг (дельта), используемый для симуляции.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_total_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_angular_damp** :ref:`🔗<class_PhysicsDirectBodyState2D_property_total_angular_damp>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_total_angular_damp**\ (\ )

Скорость, при которой тело прекращает вращение, если на него не действуют никакие другие силы.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_total_gravity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **total_gravity** :ref:`🔗<class_PhysicsDirectBodyState2D_property_total_gravity>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_total_gravity**\ (\ )

Суммарный вектор гравитации, действующий в данный момент на это тело.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_total_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_linear_damp** :ref:`🔗<class_PhysicsDirectBodyState2D_property_total_linear_damp>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_total_linear_damp**\ (\ )

Скорость, с которой тело прекращает движение, если на него не действуют никакие другие силы.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** :ref:`🔗<class_PhysicsDirectBodyState2D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

Матрица трансформации тела.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PhysicsDirectBodyState2D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`

Добавляет постоянную направленную силу, не влияя на вращение, которая продолжает применяться с течением времени, пока не будет очищена с помощью ``constant_force = Vector2(0, 0)``. 

Это эквивалентно использованию :ref:`add_constant_force()<class_PhysicsDirectBodyState2D_method_add_constant_force>` в центре масс тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_add_constant_force>`

Добавляет к телу постоянную позиционную силу, которая продолжает применяться с течением времени, пока не будет очищена с помощью ``constant_force = Vector2(0, 0)``.

\ ``position`` — это смещение от начала координат тела в глобальных координатах.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_add_constant_torque>`

Добавляет постоянную вращательную силу, не влияя на положение, которая продолжает применяться с течением времени, пока не будет очищена с помощью ``constant_torque = 0``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_central_force>`

Применяет направленную силу, не влияя на вращение. Сила зависит от времени и должна применяться при каждом обновлении физики. 

Это эквивалентно использованию :ref:`apply_force()<class_PhysicsDirectBodyState2D_method_apply_force>` в центре масс тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_central_impulse>`

Применяет направленный импульс, не влияя на вращение.

Импульс не зависит от времени! Применение импульса в каждом кадре приведет к силе, зависящей от частоты кадров. По этой причине его следует использовать только при моделировании одноразовых ударов (в противном случае используйте функции "_force").

Это эквивалентно использованию :ref:`apply_impulse()<class_PhysicsDirectBodyState2D_method_apply_impulse>` в центре масс тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_force>`

Применяет позиционированную силу к телу. Сила зависит от времени и должна применяться при каждом обновлении физики.

\ ``position`` — это смещение от начала координат тела в глобальных координатах.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_impulse>`

Применяет позиционированный импульс к телу.

Импульс не зависит от времени! Применение импульса в каждом кадре приведет к силе, зависящей от частоты кадров. По этой причине его следует использовать только при моделировании одноразовых ударов (в противном случае используйте функции "_force").

\ ``position`` — это смещение от начала координат тела в глобальных координатах.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_torque>`

Применяет вращательную силу, не влияя на положение. Сила зависит от времени и должна применяться при каждом обновлении физики.

\ **Примечание:** для работы требуется :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`. Чтобы иметь :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`, активный :ref:`CollisionShape2D<class_CollisionShape2D>` должен быть дочерним элементом узла, или вы можете вручную задать :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ impulse\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_apply_torque_impulse>`

Применяет вращательный импульс к телу, не влияя на положение.

Импульс не зависит от времени! Применение импульса в каждом кадре приведет к силе, зависящей от частоты кадров. По этой причине его следует использовать только при моделировании одноразовых ударов (в противном случае используйте функции "_force").

\ **Примечание:** для работы требуется :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`. Чтобы иметь :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`, активный :ref:`CollisionShape2D<class_CollisionShape2D>` должен быть дочерним элементом узла, или вы можете вручную задать :ref:`inverse_inertia<class_PhysicsDirectBodyState2D_property_inverse_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_constant_force:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_constant_force**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_constant_force>`

Возвращает общие постоянные позиционные силы тела, применяемые во время каждого обновления физики.

См. :ref:`add_constant_force()<class_PhysicsDirectBodyState2D_method_add_constant_force>` и :ref:`add_constant_central_force()<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_constant_torque:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constant_torque**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_constant_torque>`

Возвращает общие постоянные вращательные силы тела, применяемые во время каждого обновления физики.

См. :ref:`add_constant_torque()<class_PhysicsDirectBodyState2D_method_add_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_contact_collider**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider>`

Возвращает :ref:`RID<class_RID>` коллайдера (collider).

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_collider_id**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_id>`

Возвращает идентификатор объекта коллайдера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_contact_collider_object**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_object>`

Возвращает объект коллайдера. Это зависит от того, как он был создан (возвращает узел сцены, если таковой использовался для его создания).

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_collider_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_position>`

Возвращает положение точки контакта на коллайдере в глобальной системе координат.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_collider_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_shape>`

Возвращает индекс формы коллайдера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_collider_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_collider_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_collider_velocity_at_position>`

Возвращает вектор скорости в точке контакта коллайдера.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_count>`

Возвращает количество контактов этого тела с другими телами.

\ **Примечание:** По умолчанию возвращается 0, если тела не настроены на мониторинг контактов. См. :ref:`RigidBody2D.contact_monitor<class_RigidBody2D_property_contact_monitor>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_impulse:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_impulse**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_impulse>`

Возвращает импульс, созданный контактом.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_local_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_local_normal**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_local_normal>`

Возвращает локальную нормаль в точке контакта.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_local_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_local_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_local_position>`

Возвращает положение точки контакта на теле в глобальной системе координат.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_local_shape**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_local_shape>`

Возвращает локальный индекс формы столкновения.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_contact_local_velocity_at_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_contact_local_velocity_at_position**\ (\ contact_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_contact_local_velocity_at_position>`

Возвращает вектор скорости в точке контакта тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_space_state:

.. rst-class:: classref-method

:ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **get_space_state**\ (\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_space_state>`

Возвращает текущее состояние пространства, полезно для запросов.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_get_velocity_at_local_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_velocity_at_local_position**\ (\ local_position\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PhysicsDirectBodyState2D_method_get_velocity_at_local_position>`

Returns the body's velocity at the given relative position.

\ ``local_position`` is the offset from the body origin in global coordinates.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_integrate_forces:

.. rst-class:: classref-method

|void| **integrate_forces**\ (\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_integrate_forces>`

Обновляет линейную и угловую скорость тела, применяя гравитацию и демпфирование в течение эквивалента одного физического тика.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_set_constant_force:

.. rst-class:: classref-method

|void| **set_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_set_constant_force>`

Устанавливает общие постоянные позиционные силы тела, применяемые во время каждого обновления физики.

См. :ref:`add_constant_force()<class_PhysicsDirectBodyState2D_method_add_constant_force>` и :ref:`add_constant_central_force()<class_PhysicsDirectBodyState2D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsDirectBodyState2D_method_set_constant_torque:

.. rst-class:: classref-method

|void| **set_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PhysicsDirectBodyState2D_method_set_constant_torque>`

Устанавливает общие постоянные вращательные силы тела, применяемые во время каждого обновления физики.

См. :ref:`add_constant_torque()<class_PhysicsDirectBodyState2D_method_add_constant_torque>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
