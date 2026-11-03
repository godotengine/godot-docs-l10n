:github_url: hide

.. _class_VehicleBody3D:

VehicleBody3D
=============

**Успадковує:** :ref:`RigidBody3D<class_RigidBody3D>` **<** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Корпус фізики 3D, що імітує поведінку автомобіля.

.. rst-class:: classref-introduction-group

Опис
--------

Це фізичне тіло реалізує всю фізичну логіку, необхідну для моделювання автомобіля. Воно базується на системі raycast транспортних засобів, яка зазвичай зустрічається у фізичних двигунах. Окрім вузла :ref:`CollisionShape3D<class_CollisionShape3D>` для основного корпусу транспортного засобу, вам також потрібно додати вузол :ref:`VehicleWheel3D<class_VehicleWheel3D>` для кожного колеса. Вам також слід додати вузол :ref:`MeshInstance3D<class_MeshInstance3D>` до цього вузла для 3D-моделі транспортного засобу, але ця модель, як правило, не повинна містити сітки для коліс. Ви можете керувати транспортним засобом за допомогою властивостей :ref:`brake<class_VehicleBody3D_property_brake>`, :ref:`engine_force<class_VehicleBody3D_property_engine_force>` та :ref:`steering<class_VehicleBody3D_property_steering>`. Положення або орієнтацію цього вузла не слід змінювати безпосередньо.

\ **Примітка:** Локальна пряма адреса для цього вузла — :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`.

\ **Примітка:** Початкова точка вашого VehicleBody3D визначатиме центр ваги вашого транспортного засобу. Щоб зробити транспортний засіб більш заземленим, початкову точку зазвичай тримають низько, переміщуючи :ref:`CollisionShape3D<class_CollisionShape3D>` та :ref:`MeshInstance3D<class_MeshInstance3D>` вгору.

\ **Примітка:** Цей клас має відомі проблеми та не призначений для забезпечення реалістичної 3D-фізики транспортних засобів. Якщо вам потрібна розширена фізика транспортних засобів, можливо, вам доведеться написати власну інтеграцію фізики за допомогою :ref:`CharacterBody3D<class_CharacterBody3D>` або :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Запровадження фізики <../tutorials/physics/physics_introduction>`

- :doc:`Вирішення проблем з фізики <../tutorials/physics/troubleshooting_physics_issues>`

- `3Д Вантажівка Таун Демо <https://store.godotengine.org/asset/godot-foundation/truck-town-demo/>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`brake<class_VehicleBody3D_property_brake>`               | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`engine_force<class_VehicleBody3D_property_engine_force>` | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | mass                                                           | ``40.0`` (overrides :ref:`RigidBody3D<class_RigidBody3D_property_mass>`) |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`steering<class_VehicleBody3D_property_steering>`         | ``0.0``                                                                  |
   +---------------------------+----------------------------------------------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VehicleBody3D_property_brake:

.. rst-class:: classref-property

:ref:`float<class_float>` **brake** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_brake>`

.. rst-class:: classref-property-setget

- |void| **set_brake**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_brake**\ (\ )

Повільнить транспортний засіб, застосовуючи гальмівну силу. Автомобіль сповільнюється, якщо колеса контактують з поверхнею. В залежності від :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` транспортного засобу. Для автомобіля з масовим набором до 1000, спробуйте значення в діапазоні 25 - 30 для жорстких гальмівних гальмів.

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_engine_force:

.. rst-class:: classref-property

:ref:`float<class_float>` **engine_force** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_engine_force>`

.. rst-class:: classref-property-setget

- |void| **set_engine_force**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_engine_force**\ (\ )

Прискорює транспортний засіб, застосовуючи силу двигуна. Транспортний засіб прискорюється лише тоді, коли колеса, для яких :ref:`VehicleWheel3D.use_as_traction<class_VehicleWheel3D_property_use_as_traction>` встановлено значення ``true``, контактують з поверхнею. :ref:`RigidBody3D.mass<class_RigidBody3D_property_mass>` транспортного засобу впливає на його прискорення. Для транспортного засобу з масою, встановленою на 1000, спробуйте значення прискорення в діапазоні від 25 до 50.

\ **Примітка:** Моделювання не враховує вплив передач, вам потрібно буде додати логіку для цього, якщо ви хочете імітувати передачі.

Від'ємне значення призведе до руху транспортного засобу заднім ходом.

.. rst-class:: classref-item-separator

----

.. _class_VehicleBody3D_property_steering:

.. rst-class:: classref-property

:ref:`float<class_float>` **steering** = ``0.0`` :ref:`🔗<class_VehicleBody3D_property_steering>`

.. rst-class:: classref-property-setget

- |void| **set_steering**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_steering**\ (\ )

Кут повороту керма транспортного засобу. Встановлення цього значення на ненульове призведе до повороту транспортного засобу під час руху. Колеса, для яких :ref:`VehicleWheel3D.use_as_steering<class_VehicleWheel3D_property_use_as_steering>` встановлено значення ``true``, будуть автоматично повертатися.

\ **Примітка:** Ця властивість редагується в інспекторі в градусах. У коді властивість встановлюється в радіанах.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
