:github_url: hide

.. _class_RigidBody3D:

RigidBody3D
===========

**Успадковує:** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`VehicleBody3D<class_VehicleBody3D>`

Тривимірне фізичне тіло, яке рухається за допомогою фізичної симуляції.

.. rst-class:: classref-introduction-group

Опис
--------

**RigidBody3D** реалізує повну 3D фізику. Його неможливо контролювати безпосередньо, натомість до нього потрібно застосовувати сили (гравітацію, імпульси тощо), а фізичне моделювання розрахує результуючий рух, обертання, реагуватиме на зіткнення та впливатиме на інші фізичні тіла на своєму шляху.

Поведінку тіла можна регулювати за допомогою :ref:`lock_rotation<class_RigidBody3D_property_lock_rotation>`, :ref:`freeze<class_RigidBody3D_property_freeze>` та :ref:`freeze_mode<class_RigidBody3D_property_freeze_mode>`. Змінюючи різні властивості об'єкта, такі як :ref:`mass<class_RigidBody3D_property_mass>`, можна контролювати, як фізичне моделювання діє на нього.

Тверде тіло завжди зберігатиме свою форму та розмір, навіть коли до нього прикладаються сили. Це корисно для об'єктів, з якими можна взаємодіяти в середовищі, таких як дерево, яке можна перекинути, або стопка ящиків, які можна штовхати.

Якщо вам потрібно безпосередньо впливати на тіло, віддайте перевагу :ref:`_integrate_forces()<class_RigidBody3D_private_method__integrate_forces>`, оскільки він дозволяє вам безпосередньо отримувати доступ до фізичного стану.

Якщо вам потрібно змінити поведінку фізики за замовчуванням, ви можете написати власну функцію інтегрування сил. Див. :ref:`custom_integrator<class_RigidBody3D_property_custom_integrator>`.

\ **Примітка:** Часта зміна 3D-перетворення або :ref:`linear_velocity<class_RigidBody3D_property_linear_velocity>` об'єкта **RigidBody3D** може призвести до непередбачуваної поведінки. Це також трапляється, коли **RigidBody3D** є нащадком постійно рухомого вузла, такого як інший **RigidBody3D**, оскільки це призведе до встановлення його глобального перетворення щоразу, коли рухається його предок.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Запровадження фізики <../tutorials/physics/physics_introduction>`

- :doc:`Вирішення проблем з фізики <../tutorials/physics/troubleshooting_physics_issues>`

- `3Д Вантажівка Таун Демо <https://godotengine.org/asset-library/asset/2752>`__

- `Демонстрація тестів з 3D-фізики <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
------------

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

Сигнали
--------------

.. _class_RigidBody3D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody3D_signal_body_entered>`

При зіткненні з іншим :ref:`PhysicsBody3D<class_PhysicsBody3D>` або :ref:`GridMap<class_GridMap>`. ``true`` і :ref:`max_contacts_reported<class_RigidBody3D_property_max_contacts_reported>` для виявлення всіх зіткнень. :ref:`GridMap<class_GridMap>` виявляються, якщо :ref:`MeshLibrary<class_MeshLibrary>` має Collision :ref:`Shape3D<class_Shape3D>`\ s.

\ ``body`` the :ref:`Node<class_Node>`, якщо він існує в дереві, з іншого :ref:`PhysicsBody3D<class_PhysicsBody3D>` або :ref:`GridMap<class_GridMap>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody3D_signal_body_exited>`

Випробувано при зіткненні з іншим :ref:`PhysicsBody3D<class_PhysicsBody3D>` або :ref:`GridMap<class_GridMap>` закінчується. ``true`` і :ref:`max_contacts_reported<class_RigidBody3D_property_max_contacts_reported>` для виявлення всіх зіткнень. :ref:`GridMap<class_GridMap>` виявляються, якщо :ref:`MeshLibrary<class_MeshLibrary>` має Collision :ref:`Shape3D<class_Shape3D>`\ s.

\ ``body`` the :ref:`Node<class_Node>`, якщо він існує в дереві, з іншого :ref:`PhysicsBody3D<class_PhysicsBody3D>` або :ref:`GridMap<class_GridMap>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody3D_signal_body_shape_entered>`

Виникає, коли один з :ref:`Shape3D<class_Shape3D>` цього RigidBody3D стикається з :ref:`PhysicsBody3D<class_PhysicsBody3D>` або :ref:`Shape3D<class_Shape3D>` з :ref:`GridMap<class_GridMap>`. Потрібно, щоб :ref:`contact_monitor<class_RigidBody3D_property_contact_monitor>` було встановлено на ``true``, а :ref:`max_contacts_reported<class_RigidBody3D_property_max_contacts_reported>` було встановлено на достатньо високе значення для виявлення всіх зіткнень. :ref:`GridMap<class_GridMap>` виявляються, якщо :ref:`MeshLibrary<class_MeshLibrary>` має :ref:`Shape3D<class_Shape3D>` зі зіткненнями.

\ ``body_rid`` - :ref:`RID<class_RID>` іншого :ref:`PhysicsBody3D<class_PhysicsBody3D>` або :ref:`CollisionObject3D<class_CollisionObject3D>` з :ref:`MeshLibrary<class_MeshLibrary>`, що використовується :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

\ ``body`` - :ref:`Node<class_Node>`, якщо він існує в дереві, іншого :ref:`PhysicsBody3D<class_PhysicsBody3D>` або :ref:`GridMap<class_GridMap>`.

\ ``body_shape_index`` – індекс :ref:`Shape3D<class_Shape3D>` іншого :ref:`PhysicsBody3D<class_PhysicsBody3D>` або :ref:`GridMap<class_GridMap>`, що використовується :ref:`PhysicsServer3D<class_PhysicsServer3D>`. Отримайте вузол :ref:`CollisionShape3D<class_CollisionShape3D>` за допомогою ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))``.

\ ``local_shape_index`` – індекс :ref:`Shape3D<class_Shape3D>` цього RigidBody3D, що використовується :ref:`PhysicsServer3D<class_PhysicsServer3D>`. Отримайте вузол :ref:`CollisionShape3D<class_CollisionShape3D>` за допомогою ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody3D_signal_body_shape_exited>`

Виникає, коли закінчується колізія між одним із :ref:`Shape3D<class_Shape3D>` цього RigidBody3D та :ref:`Shape3D<class_Shape3D>` іншого :ref:`PhysicsBody3D<class_PhysicsBody3D>` або :ref:`GridMap<class_GridMap>`. Потрібно, щоб :ref:`contact_monitor<class_RigidBody3D_property_contact_monitor>` було встановлено на ``true``, а :ref:`max_contacts_reported<class_RigidBody3D_property_max_contacts_reported>` було встановлено на достатньо високе значення для виявлення всіх колізій. :ref:`GridMap<class_GridMap>` виявляються, якщо :ref:`MeshLibrary<class_MeshLibrary>` має колізії :ref:`Shape3D<class_Shape3D>`.

\ ``body_rid`` – :ref:`RID<class_RID>` іншого :ref:`PhysicsBody3D<class_PhysicsBody3D>` або :ref:`CollisionObject3D<class_CollisionObject3D>` :ref:`MeshLibrary<class_MeshLibrary>`, що використовується :ref:`PhysicsServer3D<class_PhysicsServer3D>`. :ref:`GridMap<class_GridMap>` виявляються, якщо сітки мають :ref:`Shape3D<class_Shape3D>`.

\ ``body`` – :ref:`Node<class_Node>`, якщо він існує в дереві, іншого :ref:`PhysicsBody3D<class_PhysicsBody3D>` або :ref:`GridMap<class_GridMap>`.

\ ``body_shape_index`` – індекс :ref:`Shape3D<class_Shape3D>` іншого :ref:`PhysicsBody3D<class_PhysicsBody3D>` або :ref:`GridMap<class_GridMap>`, що використовується :ref:`PhysicsServer3D<class_PhysicsServer3D>`. Отримайте вузол :ref:`CollisionShape3D<class_CollisionShape3D>` за допомогою ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))``.

\ ``local_shape_index`` – індекс :ref:`Shape3D<class_Shape3D>` цього RigidBody3D, що використовується :ref:`PhysicsServer3D<class_PhysicsServer3D>`. Отримайте вузол :ref:`CollisionShape3D<class_CollisionShape3D>` за допомогою ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_signal_sleeping_state_changed:

.. rst-class:: classref-signal

**sleeping_state_changed**\ (\ ) :ref:`🔗<class_RigidBody3D_signal_sleeping_state_changed>`

Випробувано, коли фізичний двигун змінює стан сну тіла.

\ **Примітка:** Зміна значення :ref:`sleeping<class_RigidBody3D_property_sleeping>` не запускати цей сигнал. Випробувано тільки якщо використовується сплячий стан за допомогою фізичного двигуна або ``emit_signal("sleeping_state_changed")``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_RigidBody3D_FreezeMode:

.. rst-class:: classref-enumeration

enum **FreezeMode**: :ref:`🔗<enum_RigidBody3D_FreezeMode>`

.. _class_RigidBody3D_constant_FREEZE_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody3D_FreezeMode>` **FREEZE_MODE_STATIC** = ``0``

Статичний режим замерзання тіла (default). Тіло не впливає на тяжіння і сили. Ви можете переміщатися тільки за допомогою коду користувача і не співвідноситься з іншими органами.

.. _class_RigidBody3D_constant_FREEZE_MODE_KINEMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody3D_FreezeMode>` **FREEZE_MODE_KINEMATIC** = ``1``

Режим замерзання кінематичного тіла. Схожі до :ref:`FREEZE_MODE_STATIC<class_RigidBody3D_constant_FREEZE_MODE_STATIC>`, але колоїди з іншими тілами по шляху переміщення. Корисно для замороженого тіла, який повинен бути анімованим.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody3D_CenterOfMassMode:

.. rst-class:: classref-enumeration

enum **CenterOfMassMode**: :ref:`🔗<enum_RigidBody3D_CenterOfMassMode>`

.. _class_RigidBody3D_constant_CENTER_OF_MASS_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody3D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_AUTO** = ``0``

У цьому режимі центр маси тіла обчислюється автоматично на основі його форм. Припустимо, що витоки форм також є центром маси.

.. _class_RigidBody3D_constant_CENTER_OF_MASS_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody3D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_CUSTOM** = ``1``

У цьому режимі центр мас тіла встановлюється через :ref:`center_of_mass<class_RigidBody3D_property_center_of_mass>`. За замовчуванням використовується початкове положення тіла.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody3D_DampMode:

.. rst-class:: classref-enumeration

enum **DampMode**: :ref:`🔗<enum_RigidBody3D_DampMode>`

.. _class_RigidBody3D_constant_DAMP_MODE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody3D_DampMode>` **DAMP_MODE_COMBINE** = ``0``

У цьому режимі значення пошкодження тіла додається до будь-якого значення, встановленого в областях або значення за замовчуванням.

.. _class_RigidBody3D_constant_DAMP_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody3D_DampMode>` **DAMP_MODE_REPLACE** = ``1``

У цьому режимі значення пошкодження тіла замінює будь-яке значення, встановлене в областях або значення за замовчуванням.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RigidBody3D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.0`` :ref:`🔗<class_RigidBody3D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

Гасить обертання тіла. За замовчуванням тіло використовуватиме налаштування проекту :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>` або будь-яке перевизначення значення, встановлене :ref:`Area3D<class_Area3D>`, у якому знаходиться тіло. Залежно від :ref:`angular_damp_mode<class_RigidBody3D_property_angular_damp_mode>`, ви можете встановити :ref:`angular_damp<class_RigidBody3D_property_angular_damp>`, щоб додати або замінити значення демпфування тіла. 

Перегляньте :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>`, щоб дізнатися більше про демпфування.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_angular_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody3D_DampMode>` **angular_damp_mode** = ``0`` :ref:`🔗<class_RigidBody3D_property_angular_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody3D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody3D_DampMode>` **get_angular_damp_mode**\ (\ )

Визначає, як застосовується :ref:`angular_damp<class_RigidBody3D_property_angular_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_RigidBody3D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

Частота обертання RigidBody3D в *radians* за секунду.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_can_sleep:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_sleep** = ``true`` :ref:`🔗<class_RigidBody3D_property_can_sleep>`

.. rst-class:: classref-property-setget

- |void| **set_can_sleep**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_able_to_sleep**\ (\ )

Якщо ``true``, тіло може перейти в режим сну, коли немає руху. Див. :ref:`sleeping<class_RigidBody3D_property_sleeping>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_of_mass** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_RigidBody3D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_center_of_mass**\ (\ )

Індивідуальний центр маси тіла відносно вихідного положення тіла, коли :ref:`center_of_mass_mode<class_RigidBody3D_property_center_of_mass_mode>` встановлено на :ref:`CENTER_OF_MASS_MODE_CUSTOM<class_RigidBody3D_constant_CENTER_OF_MASS_MODE_CUSTOM>`. Це точка рівноваги тіла, в якій прикладені сили викликають тільки лінійне прискорення. Прикладання сил поза центром маси викликає кутове прискорення.

Коли :ref:`center_of_mass_mode<class_RigidBody3D_property_center_of_mass_mode>` встановлено на :ref:`CENTER_OF_MASS_MODE_AUTO<class_RigidBody3D_constant_CENTER_OF_MASS_MODE_AUTO>` (значення за замовчуванням), центр маси визначається автоматично, але це не оновлює значення :ref:`center_of_mass<class_RigidBody3D_property_center_of_mass>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_center_of_mass_mode:

.. rst-class:: classref-property

:ref:`CenterOfMassMode<enum_RigidBody3D_CenterOfMassMode>` **center_of_mass_mode** = ``0`` :ref:`🔗<class_RigidBody3D_property_center_of_mass_mode>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass_mode**\ (\ value\: :ref:`CenterOfMassMode<enum_RigidBody3D_CenterOfMassMode>`\ )
- :ref:`CenterOfMassMode<enum_RigidBody3D_CenterOfMassMode>` **get_center_of_mass_mode**\ (\ )

Визначає спосіб встановлення центру мас тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_constant_force:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **constant_force** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_RigidBody3D_property_constant_force>`

.. rst-class:: classref-property-setget

- |void| **set_constant_force**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_constant_force**\ (\ )

Загальні постійні позиційні сили тіла, що застосовуються під час кожного оновлення фізики.

Див. :ref:`add_constant_force()<class_RigidBody3D_method_add_constant_force>` та :ref:`add_constant_central_force()<class_RigidBody3D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_constant_torque:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **constant_torque** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_RigidBody3D_property_constant_torque>`

.. rst-class:: classref-property-setget

- |void| **set_constant_torque**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_constant_torque**\ (\ )

Загальні постійні сили обертання тіла, що застосовуються під час кожного оновлення фізики.

Див. :ref:`add_constant_torque()<class_RigidBody3D_method_add_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_contact_monitor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **contact_monitor** = ``false`` :ref:`🔗<class_RigidBody3D_property_contact_monitor>`

.. rst-class:: classref-property-setget

- |void| **set_contact_monitor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_contact_monitor_enabled**\ (\ )

Якщо ``true``, RigidBody3D випромінює сигнали, коли він співає з іншим тілом.

\ **Примітка:** У зв'язку з тим, як ми використовуємо файли cookie, щоб надати вам інформацію про файли cookie.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_continuous_cd:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **continuous_cd** = ``false`` :ref:`🔗<class_RigidBody3D_property_continuous_cd>`

.. rst-class:: classref-property-setget

- |void| **set_use_continuous_collision_detection**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_continuous_collision_detection**\ (\ )

Якщо ``true``, використовується безперервне виявлення зіткнення.

Неперервне виявлення зіткнень намагається прогнозувати, де рухоме тіло буде з'єднуватися, замість переміщення його і виправлення його руху, якщо він збігається. Безперервне виявлення зіткнень є більш точним, і пропускає менше впливів на дрібні, швидкознімні об'єкти. Не використовуючи безперервне виявлення зіткнень швидше, щоб зрозуміти, але може пропустити невеликі, швидко знімаючи предмети.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_custom_integrator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_integrator** = ``false`` :ref:`🔗<class_RigidBody3D_property_custom_integrator>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_integrator**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_integrator**\ (\ )

Якщо ``true``, для цього тіла буде відключена стандартна силова інтеграція (як тяжіння або пошкодження). Крім реагування на зіткнення, тіло буде пересуватися як визначено методом :ref:`_integrate_forces()<class_RigidBody3D_private_method__integrate_forces>`, якщо цей віртуальний метод перейменується.

Налаштування цього майна буде викликати метод :ref:`PhysicsServer3D.body_set_omit_force_integration()<class_PhysicsServer3D_method_body_set_omit_force_integration>` внутрішньо.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_freeze:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **freeze** = ``false`` :ref:`🔗<class_RigidBody3D_property_freeze>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_freeze_enabled**\ (\ )

Якщо ``true``, тіло заморожене. Гравітація та сили більше не застосовуються.

Див. :ref:`freeze_mode<class_RigidBody3D_property_freeze_mode>`, щоб встановити поведінку тіла під час заморожування.

\ **Примітка:** Для тіла, яке завжди заморожене, використовуйте :ref:`StaticBody3D<class_StaticBody3D>` або :ref:`AnimatableBody3D<class_AnimatableBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_freeze_mode:

.. rst-class:: classref-property

:ref:`FreezeMode<enum_RigidBody3D_FreezeMode>` **freeze_mode** = ``0`` :ref:`🔗<class_RigidBody3D_property_freeze_mode>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_mode**\ (\ value\: :ref:`FreezeMode<enum_RigidBody3D_FreezeMode>`\ )
- :ref:`FreezeMode<enum_RigidBody3D_FreezeMode>` **get_freeze_mode**\ (\ )

Режим заморожування тіла. Визначає поведінку тіла, коли :ref:`freeze<class_RigidBody3D_property_freeze>` має значення ``true``.

\ **Примітка:** Для тіла, яке завжди заморожене, використовуйте :ref:`StaticBody3D<class_StaticBody3D>` або :ref:`AnimatableBody3D<class_AnimatableBody3D>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_gravity_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_scale** = ``1.0`` :ref:`🔗<class_RigidBody3D_property_gravity_scale>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_scale**\ (\ )

Це множиться на :ref:`ProjectSettings.physics/3d/default_gravity<class_ProjectSettings_property_physics/3d/default_gravity>`, щоб створити силу тяжіння цього тіла. Наприклад, значення ``1.0`` застосовуватиме до цього тіла звичайну гравітацію, ``2.0`` застосовуватиме подвійну гравітацію, а ``0.5`` застосовуватиме половину сили тяжіння.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_inertia:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **inertia** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_RigidBody3D_property_inertia>`

.. rst-class:: classref-property-setget

- |void| **set_inertia**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_inertia**\ (\ )

Момент інерції тіла. Це схоже на масу, але для обертання: воно визначає, який крутний момент потрібен для обертання тіла навколо кожної осі. Момент інерції зазвичай обчислюється автоматично на основі маси та форм, але ця властивість дозволяє встановити власне значення. 

Якщо встановлено значення :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`, інерція обчислюється автоматично (значення за замовчуванням). 

\ **Примітка.** Це значення не змінюється, коли інерція обчислюється автоматично. Використовуйте :ref:`PhysicsServer3D<class_PhysicsServer3D>`, щоб отримати обчислену інерцію. 


.. tabs:: 

 .. code-tab:: gdscript
 
    @onready var ball = $Ball 

    функція get_ball_inertia(): 
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

Гасить рухи тіла. За замовчуванням тіло використовуватиме налаштування проекту :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>` або будь-яке перевизначення значення, встановлене :ref:`Area3D<class_Area3D>`, у якому знаходиться тіло. Залежно від :ref:`linear_damp_mode<class_RigidBody3D_property_linear_damp_mode>`, ви можете встановити :ref:`linear_damp<class_RigidBody3D_property_linear_damp>`, щоб додати або замінити значення демпфування тіла. 

Перегляньте :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>`, щоб дізнатися більше про демпфування.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_linear_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody3D_DampMode>` **linear_damp_mode** = ``0`` :ref:`🔗<class_RigidBody3D_property_linear_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody3D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody3D_DampMode>` **get_linear_damp_mode**\ (\ )

Визначає, як застосовується :ref:`linear_damp<class_RigidBody3D_property_linear_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_RigidBody3D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

Лінійна швидкість тіла в блоках на секунду. Чи можна використовувати спорадочно, але **Не встановити цей кожен каркас**, оскільки фізика може працювати в іншій нитки і працює на різних гранульованих умовах. Використовуйте :ref:`_integrate_forces()<class_RigidBody3D_private_method__integrate_forces>` в якості вашої технологічної петлі для точного контролю стану тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_lock_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **lock_rotation** = ``false`` :ref:`🔗<class_RigidBody3D_property_lock_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_lock_rotation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_lock_rotation_enabled**\ (\ )

Якщо ``true``, тіло не може обертати. Гравітність і сили застосовуються тільки лінійний рух.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_RigidBody3D_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

Маса тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_max_contacts_reported:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_contacts_reported** = ``0`` :ref:`🔗<class_RigidBody3D_property_max_contacts_reported>`

.. rst-class:: classref-property-setget

- |void| **set_max_contacts_reported**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_contacts_reported**\ (\ )

Максимальна кількість контактів, які будуть записані. Вимагає значення більше 0 і :ref:`contact_monitor<class_RigidBody3D_property_contact_monitor>`, щоб встановити до ``true``, щоб почати реєструвати контакти. Використовуйте :ref:`Get_contact_count()<class_RigidBody3D_method_Get_contact_count>` для отримання облікового запису або :ref:`get_colliding_bodies()<class_RigidBody3D_method_get_colliding_bodies>` для отримання тіл, які були зібрані.

\ **Примітка:** Кількість контактів відрізняється від кількості зіткнення. З’єднання між паралельними краями призведе до двох контактів (один на кожному кінці), а зіткнення між паралельними гранями призведе до чотирьох контактів (один на кожному куті).

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_RigidBody3D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

Фізичний матеріал для тіла.

Якщо матеріал присвоюється цій власності, він буде використовуватися замість будь-якого іншого фізичного матеріалу, таких як спадковість.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** = ``false`` :ref:`🔗<class_RigidBody3D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleeping**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

Якщо значення ``true``, тіло не рухатиметься та не розраховуватиме сили, доки його не розбудить інше тіло, наприклад, через зіткнення, або за допомогою методів :ref:`apply_impulse()<class_RigidBody3D_method_apply_impulse>` або :ref:`apply_force()<class_RigidBody3D_method_apply_force>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RigidBody3D_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ state\: :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`\ ) |virtual| :ref:`🔗<class_RigidBody3D_private_method__integrate_forces>`

Викликається під час обробки фізики, що дозволяє читати і безпечно модифікувати стан імітації об'єкта. За замовчуванням, він називається до стандартної інтеграції сили, але :ref:`custom_integrator<class_RigidBody3D_property_custom_integrator>` має можливість вимкнути стандартну інтеграцію сил і повністю налаштувати силу інтеграції для тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_add_constant_central_force>`

Додавання постійної спрямованої сили без ударної обертання, яка зберігає час, поки не очищається ``constant_force = Vector3(0, 0)``.

Це еквівалентно використанню :ref:`add_constant_force()<class_RigidBody3D_method_add_constant_force>` в центрі маси тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_RigidBody3D_method_add_constant_force>`

Додавання постійної позиціонованої сили до тіла, яка зберігає час, поки не очищається ``constant_force = Vector2(0, 0)``.

\ ``position`` – це зміщення з організму в глобальних координатах.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_add_constant_torque>`

Додавання постійної обертальної сили без впливу положення, яка зберігає час, поки не очищається ``constant_torque = Vector3(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_apply_central_force>`

Застосовується спрямована сила без ударного обертання. Знаряддя часу залежна і означена для кожного оновлення фізики.

Це еквівалентно використання :ref:`apply_force()<class_RigidBody3D_method_apply_force>` в центрі маси тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_apply_central_impulse>`

Застосовується спрямований імпульс без впливу обертання.

Імпульс часозалежний! Нанесення імпульсу кожного кадру призведе до каркасно-залежної сили. З цієї причини слід використовувати тільки при симуляції одноразових ударів (користування функції "_сил" інакше).

Це еквівалентно використання :ref:`apply_impulse()<class_RigidBody3D_method_apply_impulse>` в центрі маси тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_RigidBody3D_method_apply_force>`

Застосовується сила позиціонування організму. Знаряддя часу залежна і означена для кожного оновлення фізики.

\ ``position`` – це зміщення з організму в глобальних координатах.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_RigidBody3D_method_apply_impulse>`

Застосує поміщений імпульс до тіла.

Імпульс часозалежний! Нанесення імпульсу кожного кадру призведе до каркасно-залежної сили. З цієї причини слід використовувати тільки при симуляції одноразових ударів (користування функції "_сил" інакше).

\ ``position`` – це зміщення з організму в глобальних координатах.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_apply_torque>`

Застосовує обертальну силу, не впливаючи на положення. Сила залежить від часу та має застосовуватися під час кожного оновлення фізики.

\ **Примітка:** Для роботи потрібен :ref:`inerty<class_RigidBody3D_property_inerty>`. Щоб мати :ref:`inerty<class_RigidBody3D_property_inerty>`, активний :ref:`CollisionShape3D<class_CollisionShape3D>` має бути дочірнім елементом вузла, або ви можете вручну встановити :ref:`inerty<class_RigidBody3D_property_inerty>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_apply_torque_impulse>`

Застосовує обертальний імпульс до тіла, не впливаючи на його положення.

Імпульс не залежить від часу! Застосування імпульсу кожного кадру призведе до сили, що залежить від частоти кадрів. З цієї причини його слід використовувати лише під час моделювання одноразових ударів (в іншому випадку використовуйте функції "_force").

\ **Примітка:** Для роботи цього потрібен :ref:`inerty<class_RigidBody3D_property_inerty>`. Щоб мати :ref:`inerty<class_RigidBody3D_property_inerty>`, активний :ref:`CollisionShape3D<class_CollisionShape3D>` має бути дочірнім вузлом, або ви можете вручну встановити :ref:`inerty<class_RigidBody3D_property_inerty>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_get_colliding_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node3D<class_Node3D>`\] **get_colliding_bodies**\ (\ ) |const| :ref:`🔗<class_RigidBody3D_method_get_colliding_bodies>`

Повертає список тіл, що стикаються з цим. Потрібно, щоб :ref:`contact_monitor<class_RigidBody3D_property_contact_monitor>` було встановлено на ``true``, а :ref:`max_contacts_reported<class_RigidBody3D_property_max_contacts_reported>` було встановлено на достатньо високе значення для виявлення всіх зіткнень.

\ **Примітка:** Результат цього тесту не відображається одразу після переміщення об'єктів. Для підвищення продуктивності список зіткнень оновлюється один раз за кадр і перед кроком фізики. Натомість розгляньте можливість використання сигналів.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_RigidBody3D_method_get_contact_count>`

Повертає кількість контактів цього тіла з іншими тілами. За замовчуванням повертає 0, якщо тіла не налаштовані на моніторинг контактів (див. :ref:`contact_monitor<class_RigidBody3D_property_contact_monitor>`).

\ **Примітка:** Щоб отримати тіла, що зіштовхуються, використовуйте :ref:`get_colliding_bodies()<class_RigidBody3D_method_get_colliding_bodies>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_get_inverse_inertia_tensor:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_inverse_inertia_tensor**\ (\ ) |const| :ref:`🔗<class_RigidBody3D_method_get_inverse_inertia_tensor>`

Повертає інверсійну інерційну напруженість. Це використовується для розрахунку кутового прискорення, що призводить до появи крутного моменту, застосованого до **RigidBody3D**.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody3D_method_set_axis_velocity:

.. rst-class:: classref-method

|void| **set_axis_velocity**\ (\ axis_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_RigidBody3D_method_set_axis_velocity>`

Налаштовує швидкість осі. Швидкість в заданій векторній віссі буде встановлена в якості заданої довжини вектора. Це корисно для стрибків поведінки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
