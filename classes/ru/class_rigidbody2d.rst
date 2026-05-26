:github_url: hide

.. _class_RigidBody2D:

RigidBody2D
===========

**Наследует:** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`PhysicalBone2D<class_PhysicalBone2D>`

Двухмерное физическое тело, которое перемещается с помощью симуляции физики.

.. rst-class:: classref-introduction-group

Описание
----------------

**RigidBody2D** реализует полноценную двумерную физику. Им нельзя управлять напрямую, вместо этого необходимо прикладывать к нему силы (гравитацию, импульсы и т. д.), а физическая симуляция вычисляет результирующее движение, вращение, реагирует на столкновения и влияет на другие физические тела на его пути.

Поведение тела можно настроить с помощью :ref:`lock_rotation<class_RigidBody2D_property_lock_rotation>`, :ref:`freeze<class_RigidBody2D_property_freeze>` и :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>`. Изменяя различные свойства объекта, такие как :ref:`mass<class_RigidBody2D_property_mass>`, можно управлять тем, как на него воздействует физическая симуляция.

Твёрдое тело всегда сохраняет свою форму и размер, даже при приложении к нему сил. Это полезно для объектов, с которыми можно взаимодействовать в окружающей среде, например, для дерева, которое можно опрокинуть, или для штабеля ящиков, которые можно толкать.

Если вам нужно напрямую воздействовать на тело, предпочтительнее :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>`, поскольку он позволяет напрямую получать доступ к физическому состоянию.

Если вам нужно переопределить физическое поведение по умолчанию, вы можете написать собственную функцию интегрирования сил. См. :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>`.

\ **Примечание:** Изменение двумерного преобразования или :ref:`linear_velocity<class_RigidBody2D_property_linear_velocity>` объекта **RigidBody2D** очень часто может привести к непредсказуемому поведению. Это также происходит, когда **RigidBody2D** является потомком постоянно движущегося узла, например, другого **RigidBody2D**, поскольку это приведёт к установке его глобального преобразования при каждом перемещении его предка.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Введение в физику <../tutorials/physics/physics_introduction>`

- :doc:`Устранение неполадок в физике <../tutorials/physics/troubleshooting_physics_issues>`

- `Демо-версия 2D-платформера с физикой <https://godotengine.org/asset-library/asset/2725>`__

- `Демонстрация экземпляра <https://godotengine.org/asset-library/asset/2716>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
------------

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

Сигналы
--------------

.. _class_RigidBody2D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_entered>`

Вызывается при столкновении с другим :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>`. Требует, чтобы :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` был установлен на ``true``, а :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` был установлен достаточно высоким для обнаружения всех столкновений. :ref:`TileMap<class_TileMap>`-ы обнаруживаются, если :ref:`TileSet<class_TileSet>` имеет Столкновение :ref:`Shape2D<class_Shape2D>`-ов.

\ ``body`` :ref:`Node<class_Node>`, если он существует в дереве, другого :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_exited>`

Вызывается, когда заканчивается столкновение с другим :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>`. Требует, чтобы :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` был установлен на ``true``, а :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` был установлен достаточно высоким для обнаружения всех столкновений. :ref:`TileMap<class_TileMap>` обнаруживаются, если :ref:`TileSet<class_TileSet>` имеет Столкновение :ref:`Shape2D<class_Shape2D>`-ов.

\ ``body`` :ref:`Node<class_Node>`, если он существует в дереве, другого :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_shape_entered>`

Вызывается, когда один из :ref:`Shape2D<class_Shape2D>`-ов этого RigidBody2D сталкивается с :ref:`Shape2D<class_Shape2D>`-ами другого :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>`. Требует, чтобы :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` был установлен на ``true``, а :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` был установлен достаточно высоким для обнаружения всех столкновений. :ref:`TileMap<class_TileMap>`-ы обнаруживаются, если :ref:`TileSet<class_TileSet>` имеет Столкновение :ref:`Shape2D<class_Shape2D>`-ов.

\ ``body_rid`` :ref:`RID<class_RID>` другого :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileSet<class_TileSet>` :ref:`CollisionObject2D<class_CollisionObject2D>`, используемого :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ ``body`` :ref:`Node<class_Node>`, если он существует в дереве, другого :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>`.

\ ``body_shape_index`` индекс :ref:`Shape2D<class_Shape2D>` другого :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>`, используемого :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Получите узел :ref:`CollisionShape2D<class_CollisionShape2D>` с помощью ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))``.

\ ``local_shape_index`` индекс :ref:`Shape2D<class_Shape2D>` этого RigidBody2D, используемый :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Получите узел :ref:`CollisionShape2D<class_CollisionShape2D>` с помощью ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_shape_exited>`

Вызывается, когда заканчивается столкновение между одним из :ref:`Shape2D<class_Shape2D>`-ов этого RigidBody2D и другим :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>` :ref:`Shape2D<class_Shape2D>`-ов. Требует, чтобы :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` был установлен на ``true``, а :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` был установлен достаточно высоким для обнаружения всех столкновений. :ref:`TileMap<class_TileMap>` обнаруживаются, если :ref:`TileSet<class_TileSet>` имеет Collision :ref:`Shape2D<class_Shape2D>`-ов.

\ ``body_rid`` :ref:`RID<class_RID>` другого :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileSet<class_TileSet>` :ref:`CollisionObject2D<class_CollisionObject2D>`, используемого :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ ``body`` :ref:`Node<class_Node>`, если он существует в дереве, другого :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>`.

\ ``body_shape_index`` индекс :ref:`Shape2D<class_Shape2D>` другого :ref:`PhysicsBody2D<class_PhysicsBody2D>` или :ref:`TileMap<class_TileMap>`, используемого :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Получите узел :ref:`CollisionShape2D<class_CollisionShape2D>` с помощью ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))``.

\ ``local_shape_index`` индекс :ref:`Shape2D<class_Shape2D>` этого RigidBody2D, используемого :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Получите узел :ref:`CollisionShape2D<class_CollisionShape2D>` с помощью ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_sleeping_state_changed:

.. rst-class:: classref-signal

**sleeping_state_changed**\ (\ ) :ref:`🔗<class_RigidBody2D_signal_sleeping_state_changed>`

Выдается, когда физический движок изменяет состояние сна тела.

\ **Примечание:** Изменение значения :ref:`sleeping<class_RigidBody2D_property_sleeping>` не вызовет этот сигнал. Он выдается только в том случае, если состояние сна изменено физическим движком или используется ``emit_signal("sleeping_state_changed")``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_RigidBody2D_FreezeMode:

.. rst-class:: classref-enumeration

enum **FreezeMode**: :ref:`🔗<enum_RigidBody2D_FreezeMode>`

.. _class_RigidBody2D_constant_FREEZE_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **FREEZE_MODE_STATIC** = ``0``

Режим статической заморозки тела (по умолчанию). Тело не подвержено влиянию гравитации и сил. Его можно перемещать только с помощью пользовательского кода, и оно не сталкивается с другими телами на своем пути.

.. _class_RigidBody2D_constant_FREEZE_MODE_KINEMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **FREEZE_MODE_KINEMATIC** = ``1``

Режим кинематической заморозки тела. Похож на :ref:`FREEZE_MODE_STATIC<class_RigidBody2D_constant_FREEZE_MODE_STATIC>`, но сталкивается с другими телами на своем пути при перемещении. Полезно для замороженного тела, которое нужно анимировать.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_CenterOfMassMode:

.. rst-class:: classref-enumeration

enum **CenterOfMassMode**: :ref:`🔗<enum_RigidBody2D_CenterOfMassMode>`

.. _class_RigidBody2D_constant_CENTER_OF_MASS_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_AUTO** = ``0``

В этом режиме центр масс тела вычисляется автоматически на основе его форм. Это предполагает, что начало форм также является их центром масс.

.. _class_RigidBody2D_constant_CENTER_OF_MASS_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_CUSTOM** = ``1``

В этом режиме центр масс тела задается через :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>`. По умолчанию — исходное положение тела.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_DampMode:

.. rst-class:: classref-enumeration

enum **DampMode**: :ref:`🔗<enum_RigidBody2D_DampMode>`

.. _class_RigidBody2D_constant_DAMP_MODE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody2D_DampMode>` **DAMP_MODE_COMBINE** = ``0``

В этом режиме значение демпфирования тела добавляется к любому значению, заданному в областях, или к значению по умолчанию.

.. _class_RigidBody2D_constant_DAMP_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody2D_DampMode>` **DAMP_MODE_REPLACE** = ``1``

В этом режиме значение демпфирования тела заменяет любое значение, заданное в областях, или значение по умолчанию.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_CCDMode:

.. rst-class:: classref-enumeration

enum **CCDMode**: :ref:`🔗<enum_RigidBody2D_CCDMode>`

.. _class_RigidBody2D_constant_CCD_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_DISABLED** = ``0``

Непрерывное обнаружение столкновений отключено. Это самый быстрый способ обнаружения столкновений тел, но он может пропускать мелкие быстро движущиеся объекты.

.. _class_RigidBody2D_constant_CCD_MODE_CAST_RAY:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_CAST_RAY** = ``1``

Непрерывное обнаружение столкновений включено с помощью raycasting. Это быстрее, чем shapecasting, но менее точно.

.. _class_RigidBody2D_constant_CCD_MODE_CAST_SHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_CAST_SHAPE** = ``2``

Непрерывное обнаружение столкновений, включенное с помощью shapecasting. Это самый медленный метод CCD и самый точный.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_RigidBody2D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

Демпфирует вращение тела. По умолчанию тело будет использовать настройку :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>` или любое переопределение значения, заданное :ref:`Area2D<class_Area2D>`, в котором находится тело. В зависимости от :ref:`angular_damp_mode<class_RigidBody2D_property_angular_damp_mode>` вы можете задать :ref:`angular_damp<class_RigidBody2D_property_angular_damp>` для добавления или замены значения демпфирования тела.

Подробнее о демпфировании см. в :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_angular_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody2D_DampMode>` **angular_damp_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_angular_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody2D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody2D_DampMode>` **get_angular_damp_mode**\ (\ )

Определяет, как применяется :ref:`angular_damp<class_RigidBody2D_property_angular_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_velocity**\ (\ )

Скорость вращения тела в *радианах* в секунду.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_can_sleep:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_sleep** = ``true`` :ref:`🔗<class_RigidBody2D_property_can_sleep>`

.. rst-class:: classref-property-setget

- |void| **set_can_sleep**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_able_to_sleep**\ (\ )

Если ``true``, тело может войти в режим сна, когда нет движения. Смотрите :ref:`sleep<class_RigidBody2D_property_sleep>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **center_of_mass** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_center_of_mass**\ (\ )

Центр масс тела, определяемый пользователем, относительно исходного положения тела, когда :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>` имеет значение :ref:`CENTER_OF_MASS_MODE_CUSTOM<class_RigidBody2D_constant_CENTER_OF_MASS_MODE_CUSTOM>`. Это точка равновесия тела, в которой приложенные силы вызывают только линейное ускорение. Приложение сил вне центра масс вызывает угловое ускорение.

Когда :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>` имеет значение :ref:`CENTER_OF_MASS_MODE_AUTO<class_RigidBody2D_constant_CENTER_OF_MASS_MODE_AUTO>` (значение по умолчанию), центр масс определяется автоматически, но это не приводит к обновлению значения :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_center_of_mass_mode:

.. rst-class:: classref-property

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **center_of_mass_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_center_of_mass_mode>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass_mode**\ (\ value\: :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>`\ )
- :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **get_center_of_mass_mode**\ (\ )

Определяет способ установки центра массы тела.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_constant_force:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **constant_force** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_constant_force>`

.. rst-class:: classref-property-setget

- |void| **set_constant_force**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_constant_force**\ (\ )

Общие постоянные позиционные силы тела, применяемые во время каждого обновления физики.

См. :ref:`add_constant_force()<class_RigidBody2D_method_add_constant_force>` и :ref:`add_constant_central_force()<class_RigidBody2D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_constant_torque:

.. rst-class:: classref-property

:ref:`float<class_float>` **constant_torque** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_constant_torque>`

.. rst-class:: classref-property-setget

- |void| **set_constant_torque**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_constant_torque**\ (\ )

Общие постоянные вращательные силы тела, применяемые во время каждого обновления физики.

См. :ref:`add_constant_torque()<class_RigidBody2D_method_add_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_contact_monitor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **contact_monitor** = ``false`` :ref:`🔗<class_RigidBody2D_property_contact_monitor>`

.. rst-class:: classref-property-setget

- |void| **set_contact_monitor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_contact_monitor_enabled**\ (\ )

Если ``true``, RigidBody2D будет издавать сигналы при столкновении с другим телом.

\ **Примечание:** По умолчанию максимальное количество сообщаемых контактов установлено на 0, что означает, что ничего не будет записано, см. :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_continuous_cd:

.. rst-class:: classref-property

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **continuous_cd** = ``0`` :ref:`🔗<class_RigidBody2D_property_continuous_cd>`

.. rst-class:: classref-property-setget

- |void| **set_continuous_collision_detection_mode**\ (\ value\: :ref:`CCDMode<enum_RigidBody2D_CCDMode>`\ )
- :ref:`CCDMode<enum_RigidBody2D_CCDMode>` **get_continuous_collision_detection_mode**\ (\ )

Режим непрерывного обнаружения столкновений.

Непрерывное обнаружение столкновений пытается предсказать, где движущееся тело столкнется, вместо того, чтобы перемещать его и корректировать его движение после столкновения. Непрерывное обнаружение столкновений медленнее, но точнее и пропускает меньше столкновений с небольшими, быстро движущимися объектами. Доступны методы Raycasting и Shapecasting.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_custom_integrator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_integrator** = ``false`` :ref:`🔗<class_RigidBody2D_property_custom_integrator>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_integrator**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_integrator**\ (\ )

Если ``true``, стандартная интеграция силы (например, гравитация или демпфирование) будет отключена для этого тела. За исключением реакции на столкновение, тело будет двигаться только так, как определено методом :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>`, если этот виртуальный метод переопределен.

Установка этого свойства вызовет метод :ref:`PhysicsServer2D.body_set_omit_force_integration()<class_PhysicsServer2D_method_body_set_omit_force_integration>` внутренне.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_freeze:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **freeze** = ``false`` :ref:`🔗<class_RigidBody2D_property_freeze>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_freeze_enabled**\ (\ )

Если ``true``, тело заморожено. Гравитация и силы больше не применяются.

См. :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>`, чтобы настроить поведение тела в замороженном состоянии.

\ **Примечание:** Для тела, которое всегда заморожено, используйте :ref:`StaticBody2D<class_StaticBody2D>` или :ref:`AnimatableBody2D<class_AnimatableBody2D>` вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_freeze_mode:

.. rst-class:: classref-property

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **freeze_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_freeze_mode>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_mode**\ (\ value\: :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>`\ )
- :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **get_freeze_mode**\ (\ )

Режим заморозки тела. Определяет поведение тела, когда :ref:`freeze<class_RigidBody2D_property_freeze>` имеет значение ``true``.

\ **Примечание:** Для тела, которое всегда заморожено, используйте :ref:`StaticBody2D<class_StaticBody2D>` или :ref:`AnimatableBody2D<class_AnimatableBody2D>` вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_gravity_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_scale** = ``1.0`` :ref:`🔗<class_RigidBody2D_property_gravity_scale>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_scale**\ (\ )

Умножает силу тяжести, приложенную к телу. Сила тяжести тела рассчитывается на основе настройки проекта :ref:`ProjectSettings.physics/2d/default_gravity<class_ProjectSettings_property_physics/2d/default_gravity>` и/или любого дополнительного вектора силы тяжести, примененных :ref:`Area2D<class_Area2D>`-ов.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_inertia:

.. rst-class:: classref-property

:ref:`float<class_float>` **inertia** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_inertia>`

.. rst-class:: classref-property-setget

- |void| **set_inertia**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inertia**\ (\ )

Момент инерции тела. Это похоже на массу, но для вращения: он определяет, какой крутящий момент требуется для вращения тела. Момент инерции обычно вычисляется автоматически из массы и форм, но это свойство позволяет вам задать пользовательское значение.

Если установлено значение ``0``, инерция вычисляется автоматически (значение по умолчанию).

\ **Примечание:** Это значение не изменяется при автоматическом вычислении инерции. Используйте :ref:`PhysicsServer2D<class_PhysicsServer2D>`, чтобы получить вычисленную инерцию.


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

Демпфирует движение тела. По умолчанию тело будет использовать настройку :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>` или любое переопределение значения, заданное :ref:`Area2D<class_Area2D>`, в котором находится тело. В зависимости от :ref:`linear_damp_mode<class_RigidBody2D_property_linear_damp_mode>` вы можете задать :ref:`linear_damp<class_RigidBody2D_property_linear_damp>` для добавления или замены значения демпфирования тела.

Подробнее о демпфировании см. в :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody2D_DampMode>` **linear_damp_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_linear_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody2D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody2D_DampMode>` **get_linear_damp_mode**\ (\ )

Определяет, как применяется :ref:`linear_damp<class_RigidBody2D_property_linear_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **linear_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_linear_velocity**\ (\ )

Линейная скорость тела в пикселях в секунду. Может использоваться спорадически, но **не устанавливайте это в каждом кадре**, потому что физика может работать в другом потоке и работать с другой гранулярностью. Используйте :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>` в качестве цикла процесса для точного управления состоянием тела.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_lock_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **lock_rotation** = ``false`` :ref:`🔗<class_RigidBody2D_property_lock_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_lock_rotation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_lock_rotation_enabled**\ (\ )

Если ``true``, тело не может вращаться. Гравитация и силы применяют только линейное движение.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_RigidBody2D_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

Масса тела.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_max_contacts_reported:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_contacts_reported** = ``0`` :ref:`🔗<class_RigidBody2D_property_max_contacts_reported>`

.. rst-class:: classref-property-setget

- |void| **set_max_contacts_reported**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_contacts_reported**\ (\ )

Максимальное количество контактов, которые будут записаны. Требуется значение больше 0 и :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` для установки в ``true`` для начала регистрации контактов. Используйте :ref:`get_contact_count()<class_RigidBody2D_method_get_contact_count>` для получения количества или :ref:`get_colliding_bodies()<class_RigidBody2D_method_get_colliding_bodies>` для получения тел, с которыми произошло столкновение.

\ **Примечание:** Количество контактов отличается от количества столкновений. Столкновения между параллельными ребрами приведут к двум контактам (по одному на каждом конце), а столкновения между параллельными гранями приведут к четырем контактам (по одному на каждом углу).

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_RigidBody2D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

Переопределение физического материала для тела.

Если материал назначен этому свойству, он будет использоваться вместо любого другого физического материала, например унаследованного.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** = ``false`` :ref:`🔗<class_RigidBody2D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleeping**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

Если ``true``, тело не будет двигаться и не будет вычислять силы, пока не будет разбужено другим телом, например, посредством столкновения или с помощью методов :ref:`apply_impulse()<class_RigidBody2D_method_apply_impulse>` или :ref:`apply_force()<class_RigidBody2D_method_apply_force>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_RigidBody2D_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ state\: :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`\ ) |virtual| :ref:`🔗<class_RigidBody2D_private_method__integrate_forces>`

Вызывается во время обработки физики, позволяя вам читать и безопасно изменять состояние симуляции для объекта. По умолчанию он вызывается перед стандартной интеграцией силы, но свойство :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>` позволяет вам отключить стандартную интеграцию силы и выполнить полностью настраиваемую интеграцию силы для тела.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_central_force>`

Добавляет постоянную направленную силу, не влияя на вращение, которая продолжает применяться с течением времени, пока не будет очищена с помощью ``constant_force = Vector2(0, 0)``. 

Это эквивалентно использованию :ref:`add_constant_force()<class_RigidBody2D_method_add_constant_force>` в центре масс тела.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_force>`

Добавляет к телу постоянную позиционную силу, которая продолжает применяться с течением времени, пока не будет очищена с помощью ``constant_force = Vector2(0, 0)``.

\ ``position`` — это смещение от начала координат тела в глобальных координатах.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_torque>`

Добавляет постоянную вращательную силу, не влияя на положение, которая продолжает применяться с течением времени, пока не будет очищена с помощью ``constant_torque = 0``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_central_force>`

Применяет направленную силу, не влияя на вращение. Сила зависит от времени и должна применяться при каждом обновлении физики. 

Это эквивалентно использованию :ref:`apply_force()<class_RigidBody2D_method_apply_force>` в центре масс тела.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_central_impulse>`

Применяет направленный импульс, не влияя на вращение.

Импульс не зависит от времени! Применение импульса в каждом кадре приведет к силе, зависящей от частоты кадров. По этой причине его следует использовать только при моделировании одноразовых ударов (в противном случае используйте функции "_force").

Это эквивалентно использованию :ref:`apply_impulse()<class_RigidBody2D_method_apply_impulse>` в центре масс тела.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_force>`

Применяет позиционированную силу к телу. Сила зависит от времени и должна применяться при каждом обновлении физики.

\ ``position`` — это смещение от начала координат тела в глобальных координатах.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_impulse>`

Применяет позиционированный импульс к телу.

Импульс не зависит от времени! Применение импульса в каждом кадре приведет к силе, зависящей от частоты кадров. По этой причине его следует использовать только при моделировании одноразовых ударов (в противном случае используйте функции "_force").

\ ``position`` — это смещение от начала координат тела в глобальных координатах.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_torque>`

Применяет вращательную силу, не влияя на положение. Сила зависит от времени и должна применяться при каждом обновлении физики.

\ **Примечание:** для работы требуется :ref:`inertia<class_RigidBody2D_property_inertia>`. Чтобы иметь :ref:`inertia<class_RigidBody2D_property_inertia>`, активный :ref:`CollisionShape2D<class_CollisionShape2D>` должен быть дочерним элементом узла, или вы можете вручную задать :ref:`inertia<class_RigidBody2D_property_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_torque_impulse>`

Применяет вращательный импульс к телу, не влияя на положение.

Импульс не зависит от времени! Применение импульса в каждом кадре приведет к силе, зависящей от частоты кадров. По этой причине его следует использовать только при моделировании одноразовых ударов (в противном случае используйте функции "_force").

\ **Примечание:** для работы требуется :ref:`inertia<class_RigidBody2D_property_inertia>`. Чтобы иметь :ref:`inertia<class_RigidBody2D_property_inertia>`, активный :ref:`CollisionShape2D<class_CollisionShape2D>` должен быть дочерним элементом узла, или вы можете вручную задать :ref:`inertia<class_RigidBody2D_property_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_colliding_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] **get_colliding_bodies**\ (\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_colliding_bodies>`

Возвращает список тел, сталкивающихся с этим. Требуется, чтобы :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` был установлен на ``true``, а :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` был установлен достаточно высоким для обнаружения всех столкновений.

\ **Примечание:** Результат этого теста не появляется сразу после перемещения объектов. Для повышения производительности список столкновений обновляется один раз за кадр и перед шагом физики. Рассмотрите возможность использования сигналов вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_contact_count>`

Возвращает количество контактов этого тела с другими телами. По умолчанию возвращается 0, если тела не настроены на отслеживание контактов (см. :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>`).

\ **Примечание:** Чтобы получить сталкивающиеся тела, используйте :ref:`get_colliding_bodies()<class_RigidBody2D_method_get_colliding_bodies>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_set_axis_velocity:

.. rst-class:: classref-method

|void| **set_axis_velocity**\ (\ axis_velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_set_axis_velocity>`

Устанавливает скорость тела по заданной оси. Скорость по заданной векторной оси будет установлена как заданная длина вектора. Это полезно для прыжкового поведения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
