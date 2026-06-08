:github_url: hide

.. _class_PhysicsBody2D:

PhysicsBody2D
=============

**Успадковує:** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`CharacterBody2D<class_CharacterBody2D>`, :ref:`RigidBody2D<class_RigidBody2D>`, :ref:`StaticBody2D<class_StaticBody2D>`

Абстрактний базовий клас для 2D ігрових об'єктів, уражених фізикою.

.. rst-class:: classref-introduction-group

Опис
--------

**PhysicsBody2D** є абстрактним базовим класом для 2D ігрових об'єктів, уражених фізикою. Всі 2D фізико-фізичних органів успадкують від неї.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Запровадження фізики <../tutorials/physics/physics_introduction>`

- :doc:`Вирішення проблем з фізики <../tutorials/physics/troubleshooting_physics_issues>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+----------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | input_pickable | ``false`` (overrides :ref:`CollisionObject2D<class_CollisionObject2D_property_input_pickable>`) |
   +-------------------------+----------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`add_collision_exception_with<class_PhysicsBody2D_method_add_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                      |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PhysicsBody2D<class_PhysicsBody2D>`\] | :ref:`get_collision_exceptions<class_PhysicsBody2D_method_get_collision_exceptions>`\ (\ )                                                                                                                                                                                                                                              |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`get_gravity<class_PhysicsBody2D_method_get_gravity>`\ (\ ) |const|                                                                                                                                                                                                                                                                |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision2D<class_KinematicCollision2D>`                | :ref:`move_and_collide<class_PhysicsBody2D_method_move_and_collide>`\ (\ motion\: :ref:`Vector2<class_Vector2>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ )                                                                |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_collision_exception_with<class_PhysicsBody2D_method_remove_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`test_move<class_PhysicsBody2D_method_test_move>`\ (\ from\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, collision\: :ref:`KinematicCollision2D<class_KinematicCollision2D>` = null, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ ) |
   +------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PhysicsBody2D_method_add_collision_exception_with:

.. rst-class:: classref-method

|void| **add_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody2D_method_add_collision_exception_with>`

Додати тіло до переліку тіл, які це тіло не може поєднуватися з.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_get_collision_exceptions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PhysicsBody2D<class_PhysicsBody2D>`\] **get_collision_exceptions**\ (\ ) :ref:`🔗<class_PhysicsBody2D_method_get_collision_exceptions>`

Повертає масив вузлів, які були додані як виключення зіткнення для цього тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_get_gravity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_gravity**\ (\ ) |const| :ref:`🔗<class_PhysicsBody2D_method_get_gravity>`

Повернення вектора ваги, що відповідає всім джерелам, які можуть впливати на тіло, включаючи всі перепади ваги з вузлів :ref:`Area2D<class_Area2D>` та глобальної світової ваги.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_move_and_collide:

.. rst-class:: classref-method

:ref:`KinematicCollision2D<class_KinematicCollision2D>` **move_and_collide**\ (\ motion\: :ref:`Vector2<class_Vector2>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PhysicsBody2D_method_move_and_collide>`

Рухає тіло вздовж вектора ``motion``. Для того, щоб бути частотою кадрів незалежною в :ref:`Node._physics_process()<class_Node_private_method__physics_process>` або :ref:`Node._process()<class_Node_private_method__process>`, ``руху`` слід комп'ютерно використовувати ``delta``.

Повернутися до :ref:`KinematicCollision2D<class_KinematicCollision2D>`, яка містить інформацію про зіткнення при зупинці, або при дотику іншого тіла вздовж руху.

Якщо ``test_only`` є ``true``, тіло не рухається, але інформація про зіткнення б-бе.

\ ``Safe_margin`` є додатковим запасом, що використовується для відновлення зіткнення (див. :ref:`CharacterBody2D.safe_margin<class_CharacterBody2D_property_safe_margin>` для отримання більш детальної інформації).

Якщо ``Recovery_as_collision`` є ``true``, будь-який депейнація з фази відновлення також повідомляється як зіткнення; це використовується наприклад :ref:`CharacterBody2D<class_CharacterBody2D>` для поліпшення виявлення підлоги під час натискання підлоги.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_remove_collision_exception_with:

.. rst-class:: classref-method

|void| **remove_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody2D_method_remove_collision_exception_with>`

Видаліть тіло з переліку тіл, які це тіло не може зв'язатися з.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody2D_method_test_move:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **test_move**\ (\ from\: :ref:`Transform2D<class_Transform2D>`, motion\: :ref:`Vector2<class_Vector2>`, collision\: :ref:`KinematicCollision2D<class_KinematicCollision2D>` = null, safe_margin\: :ref:`float<class_float>` = 0.08, recovery_as_collision\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PhysicsBody2D_method_test_move>`

Перевірка зіткнень без переміщення тіла. Для того, щоб бути частотою кадрів незалежною в :ref:`Node._physics_process()<class_Node_private_method__physics_process>` або :ref:`Node._process()<class_Node_private_method__process>`, ``руху`` слід комп'ютерно використовувати ``delta``.

Практично встановлює позицію вершини, масштаб і обертання до цього :ref:`Transform2D<class_Transform2D>`, потім намагається перемістити тіло вздовж вектора ``руху``. Повертає ``true``, якщо зіткнення зупинить тіло з переміщення по всьому шляху.

\ ``collision`` - це додатковий об'єкт типу :ref:`KinematicCollision2D<class_KinematicCollision2D>`, який містить додаткову інформацію про зіткнення при зупинці, або при дотику іншого тіла вздовж руху.

\ ``Safe_margin`` є додатковим запасом, що використовується для відновлення зіткнення (див. :ref:`CharacterBody2D.safe_margin<class_CharacterBody2D_property_safe_margin>` для отримання більш детальної інформації).

Якщо ``Recovery_as_collision`` є ``true``, будь-яке депенетування з фази відновлення також повідомляється як зіткнення; це корисно для перевірки того, чи буде тіло *touch* будь-які інші тіла.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
