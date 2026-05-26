:github_url: hide

.. meta::
	:keywords: ragdoll

.. _class_PhysicalBone3D:

PhysicalBone3D
==============

**Успадковує:** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Фізика, що використовується для створення кісток в :ref:`Skeleton3D<class_Skeleton3D>` реагувати на фізику.

.. rst-class:: classref-introduction-group

Опис
--------

Вузол **PhysicalBone3D** — це фізичний об’єкт, за допомогою якого можна зробити так, щоб кістки в :ref:`Skeleton3D<class_Skeleton3D>` реагували на фізичні ефекти.

\ **Примітка:** Щоб виявити фізичні кістки за допомогою raycasts, властивість :ref:`SkeletonModifier3D.active<class_SkeletonModifier3D_property_active>` батьківського :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>` має бути ``true``, а кістка :ref:`Skeleton3D<class_Skeleton3D>` має бути правильно прив’язана до **PhysicalBone3D**; це означає, що :ref:`get_bone_id()<class_PhysicalBone3D_method_get_bone_id>` повинен повертати дійсний ідентифікатор (``>= 0``).

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Система регдолл <../tutorials/physics/ragdoll_system>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>`           | ``0.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`DampMode<enum_PhysicalBone3D_DampMode>`   | :ref:`angular_damp_mode<class_PhysicalBone3D_property_angular_damp_mode>` | ``0``                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`angular_velocity<class_PhysicalBone3D_property_angular_velocity>`   | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`body_offset<class_PhysicalBone3D_property_body_offset>`             | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`bounce<class_PhysicalBone3D_property_bounce>`                       | ``0.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`can_sleep<class_PhysicalBone3D_property_can_sleep>`                 | ``true``                                            |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`custom_integrator<class_PhysicalBone3D_property_custom_integrator>` | ``false``                                           |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`friction<class_PhysicalBone3D_property_friction>`                   | ``1.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity_scale<class_PhysicalBone3D_property_gravity_scale>`         | ``1.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`joint_offset<class_PhysicalBone3D_property_joint_offset>`           | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`joint_rotation<class_PhysicalBone3D_property_joint_rotation>`       | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`JointType<enum_PhysicalBone3D_JointType>` | :ref:`joint_type<class_PhysicalBone3D_property_joint_type>`               | ``0``                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>`             | ``0.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`DampMode<enum_PhysicalBone3D_DampMode>`   | :ref:`linear_damp_mode<class_PhysicalBone3D_property_linear_damp_mode>`   | ``0``                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`linear_velocity<class_PhysicalBone3D_property_linear_velocity>`     | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`mass<class_PhysicalBone3D_property_mass>`                           | ``1.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_integrate_forces<class_PhysicalBone3D_private_method__integrate_forces>`\ (\ state\: :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`\ ) |virtual|    |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`apply_central_impulse<class_PhysicalBone3D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ )                                              |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`apply_impulse<class_PhysicalBone3D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_bone_id<class_PhysicalBone3D_method_get_bone_id>`\ (\ ) |const|                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_simulate_physics<class_PhysicalBone3D_method_get_simulate_physics>`\ (\ )                                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_simulating_physics<class_PhysicalBone3D_method_is_simulating_physics>`\ (\ )                                                                                       |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_PhysicalBone3D_DampMode:

.. rst-class:: classref-enumeration

enum **DampMode**: :ref:`🔗<enum_PhysicalBone3D_DampMode>`

.. _class_PhysicalBone3D_constant_DAMP_MODE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **DAMP_MODE_COMBINE** = ``0``

У цьому режимі значення пошкодження тіла додається до будь-якого значення, встановленого в областях або значення за замовчуванням.

.. _class_PhysicalBone3D_constant_DAMP_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **DAMP_MODE_REPLACE** = ``1``

У цьому режимі значення пошкодження тіла замінює будь-яке значення, встановлене в областях або значення за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _enum_PhysicalBone3D_JointType:

.. rst-class:: classref-enumeration

enum **JointType**: :ref:`🔗<enum_PhysicalBone3D_JointType>`

.. _class_PhysicalBone3D_constant_JOINT_TYPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_NONE** = ``0``

До PhysicsBone3D не застосовується з’єднання.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_PIN:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_PIN** = ``1``

На PhysicsBone3D застосовано штифтове з’єднання.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_CONE:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_CONE** = ``2``

Конусоподібне з’єднання застосовано до PhysicsBone3D.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_HINGE:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_HINGE** = ``3``

На PhysicsBone3D застосовано шарнірне з’єднання.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_SLIDER:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_SLIDER** = ``4``

До PhysicsBone3D застосовано повзун.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_6DOF:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_6DOF** = ``5``

У PhysicsBone3D застосовано з’єднання з 6 ступенями свободи.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PhysicalBone3D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.0`` :ref:`🔗<class_PhysicalBone3D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

Гасить обертання тіла. За замовчуванням тіло використовуватиме налаштування проекту :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>` або будь-яке перевизначення значення, встановлене :ref:`Area3D<class_Area3D>`, у якому знаходиться тіло. Залежно від :ref:`angular_damp_mode<class_PhysicalBone3D_property_angular_damp_mode>`, ви можете встановити :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>`, щоб додати або замінити значення демпфування тіла. 

Перегляньте :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>`, щоб дізнатися більше про демпфування.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_angular_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **angular_damp_mode** = ``0`` :ref:`🔗<class_PhysicalBone3D_property_angular_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_mode**\ (\ value\: :ref:`DampMode<enum_PhysicalBone3D_DampMode>`\ )
- :ref:`DampMode<enum_PhysicalBone3D_DampMode>` **get_angular_damp_mode**\ (\ )

Визначає, як застосовується :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

Швидкість обертання фізичногоBone3D в *radians* за секунду.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_body_offset:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **body_offset** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_body_offset>`

.. rst-class:: classref-property-setget

- |void| **set_body_offset**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_body_offset**\ (\ )

Комплектує трансформацію тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_bounce:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce** = ``0.0`` :ref:`🔗<class_PhysicalBone3D_property_bounce>`

.. rst-class:: classref-property-setget

- |void| **set_bounce**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce**\ (\ )

Пружність тіла. Значення варіюються від ``0`` (без відскоку) до ``1`` (повна пружність).

\ **Примітка:** Навіть якщо для :ref:`bounce<class_PhysicalBone3D_property_bounce>` встановлено значення ``1.0``, певна енергія з часом втрачатиметься через лінійне та кутове демпфування. Щоб **PhysicalBone3D** зберігав всю свою енергію з часом, встановіть :ref:`bounce<class_PhysicalBone3D_property_bounce>` до ``1.0``, :ref:`linear_damp_mode<class_PhysicalBone3D_property_linear_damp_mode>` до :ref:`DAMP_MODE_REPLACE<class_PhysicalBone3D_constant_DAMP_MODE_REPLACE>`, :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>` до ``0.0``, :ref:`angular_damp_mode<class_PhysicalBone3D_property_angular_damp_mode>` до :ref:`DAMP_MODE_REPLACE<class_PhysicalBone3D_constant_DAMP_MODE_REPLACE>`, а :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>` до ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_can_sleep:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_sleep** = ``true`` :ref:`🔗<class_PhysicalBone3D_property_can_sleep>`

.. rst-class:: classref-property-setget

- |void| **set_can_sleep**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_able_to_sleep**\ (\ )

Якщо ``true``, тіло деактивується, коли немає руху, тому не буде брати участь в симуляції, поки він пробуджується зовнішньою силою.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_custom_integrator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_integrator** = ``false`` :ref:`🔗<class_PhysicalBone3D_property_custom_integrator>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_integrator**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_integrator**\ (\ )

Якщо ``true``, для цього тіла буде відключена стандартна силова інтеграція (як тяжіння або пошкодження). Крім реагування на зіткнення, тіло буде пересуватися як визначено методом :ref:`_integrate_forces()<class_PhysicalBone3D_private_method__integrate_forces>`, якщо цей віртуальний метод перейменується.

Налаштування цього майна буде викликати метод :ref:`PhysicsServer3D.body_set_omit_force_integration()<class_PhysicsServer3D_method_body_set_omit_force_integration>` внутрішньо.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_friction:

.. rst-class:: classref-property

:ref:`float<class_float>` **friction** = ``1.0`` :ref:`🔗<class_PhysicalBone3D_property_friction>`

.. rst-class:: classref-property-setget

- |void| **set_friction**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_friction**\ (\ )

Фрикція тіла, від ``0`` (без тертя) до ``1`` (макс тертя).

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_gravity_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_scale** = ``1.0`` :ref:`🔗<class_PhysicalBone3D_property_gravity_scale>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_scale**\ (\ )

Це множиться на :ref:`ProjectSettings.physics/3d/default_gravity<class_ProjectSettings_property_physics/3d/default_gravity>`, щоб створити силу тяжіння цього тіла. Наприклад, значення ``1.0`` застосовуватиме до цього тіла звичайну гравітацію, ``2.0`` застосовуватиме подвійну гравітацію, а ``0.5`` застосовуватиме половину сили тяжіння.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_joint_offset:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **joint_offset** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_joint_offset>`

.. rst-class:: classref-property-setget

- |void| **set_joint_offset**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_joint_offset**\ (\ )

Встановлює трансформацію суглоба.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_joint_rotation:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **joint_rotation** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_joint_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_joint_rotation**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_joint_rotation**\ (\ )

Встановлює обертання суглоба в радіанах.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_joint_type:

.. rst-class:: classref-property

:ref:`JointType<enum_PhysicalBone3D_JointType>` **joint_type** = ``0`` :ref:`🔗<class_PhysicalBone3D_property_joint_type>`

.. rst-class:: classref-property-setget

- |void| **set_joint_type**\ (\ value\: :ref:`JointType<enum_PhysicalBone3D_JointType>`\ )
- :ref:`JointType<enum_PhysicalBone3D_JointType>` **get_joint_type**\ (\ )

Встановлює тип з'єднання.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.0`` :ref:`🔗<class_PhysicalBone3D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

Гасить рухи тіла. За замовчуванням тіло використовуватиме :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>` або будь-яке перевизначення значення, встановлене :ref:`Area3D<class_Area3D>`, у якому знаходиться тіло. Залежно від :ref:`linear_damp_mode<class_PhysicalBone3D_property_linear_damp_mode>`, :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>` може бути додано до або замінено значення демпфування тіла. 

Перегляньте :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>`, щоб дізнатися більше про демпфування.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_linear_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **linear_damp_mode** = ``0`` :ref:`🔗<class_PhysicalBone3D_property_linear_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_mode**\ (\ value\: :ref:`DampMode<enum_PhysicalBone3D_DampMode>`\ )
- :ref:`DampMode<enum_PhysicalBone3D_DampMode>` **get_linear_damp_mode**\ (\ )

Визначає, як застосовується :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

Лінійна швидкість тіла в блоках на секунду. Чи можна використовувати спорадочно, але **Не встановити цей кожен каркас**, оскільки фізика може працювати в іншій нитки і працює на різних гранульованих умовах. Використовуйте :ref:`_integrate_forces()<class_PhysicalBone3D_private_method__integrate_forces>` в якості вашої технологічної петлі для точного контролю стану тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_PhysicalBone3D_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

Маса тіла.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PhysicalBone3D_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ state\: :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`\ ) |virtual| :ref:`🔗<class_PhysicalBone3D_private_method__integrate_forces>`

Викликається під час обробки фізики, що дозволяє читати і безпечно модифікувати стан імітації об'єкта. За замовчуванням, він називається до стандартної інтеграції сили, але :ref:`custom_integrator<class_PhysicalBone3D_property_custom_integrator>` має можливість вимкнути стандартну інтеграцію сил і повністю налаштувати силу інтеграції для тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicalBone3D_method_apply_central_impulse>`

Застосовує спрямований імпульс, не впливаючи на обертання. 

Імпульс не залежить від часу! Застосування імпульсу до кожного кадру призведе до появи сили, що залежить від частоти кадрів. З цієї причини його слід використовувати лише під час моделювання одноразових впливів (в інших випадках використовуйте функції "_integrate_forces"). 

Це еквівалентно використанню :ref:`apply_impulse()<class_PhysicalBone3D_method_apply_impulse>` у центрі мас тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicalBone3D_method_apply_impulse>`

Застосовує позиціонований імпульс до PhysicsBone3D. 

Імпульс не залежить від часу! Застосування імпульсу до кожного кадру призведе до появи сили, що залежить від частоти кадрів. З цієї причини його слід використовувати лише під час моделювання одноразових впливів (в інших випадках використовуйте функції "_integrate_forces"). 

\ ``position`` — це зміщення від початку PhysicsBone3D у глобальних координатах.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_get_bone_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_id**\ (\ ) |const| :ref:`🔗<class_PhysicalBone3D_method_get_bone_id>`

Повертає унікальний ідентифікатор PhysicsBone3D.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_get_simulate_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_simulate_physics**\ (\ ) :ref:`🔗<class_PhysicalBone3D_method_get_simulate_physics>`

Повертає ``true``, якщо PhysicsBone3D дозволено симулювати фізику.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) :ref:`🔗<class_PhysicalBone3D_method_is_simulating_physics>`

Повертає ``true``, якщо PhysicsBone3D зараз імітує фізику.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
