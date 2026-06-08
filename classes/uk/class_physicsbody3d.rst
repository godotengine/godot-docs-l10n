:github_url: hide

.. _class_PhysicsBody3D:

PhysicsBody3D
=============

**Успадковує:** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`CharacterBody3D<class_CharacterBody3D>`, :ref:`PhysicalBone3D<class_PhysicalBone3D>`, :ref:`RigidBody3D<class_RigidBody3D>`, :ref:`StaticBody3D<class_StaticBody3D>`

Абстрактний базовий клас для 3D ігрових об'єктів, уражених фізикою.

.. rst-class:: classref-introduction-group

Опис
--------

**PhysicsBody3D** є абстрактним базовим класом для 3D ігрових об'єктів, уражених фізикою. Всі 3D фізико-фізичних органів успадкують від неї.

\ **Попередження:** З неоднорідною шкалою, цей вузол, ймовірно, не буде поводитися як очікується. Консервувати свою вагову вагу на всіх осях і відрегулювати форму зіткнення.

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

   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_angular_x<class_PhysicsBody3D_property_axis_lock_angular_x>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_angular_y<class_PhysicsBody3D_property_axis_lock_angular_y>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_angular_z<class_PhysicsBody3D_property_axis_lock_angular_z>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_linear_x<class_PhysicsBody3D_property_axis_lock_linear_x>`   | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_linear_y<class_PhysicsBody3D_property_axis_lock_linear_y>`   | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`axis_lock_linear_z<class_PhysicsBody3D_property_axis_lock_linear_z>`   | ``false`` |
   +-------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`add_collision_exception_with<class_PhysicsBody3D_method_add_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                                                   |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`get_axis_lock<class_PhysicsBody3D_method_get_axis_lock>`\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|                                                                                                                                                                                                                                                  |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] | :ref:`get_collision_exceptions<class_PhysicsBody3D_method_get_collision_exceptions>`\ (\ )                                                                                                                                                                                                                                                                                           |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_gravity<class_PhysicsBody3D_method_get_gravity>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision3D<class_KinematicCollision3D>`                | :ref:`move_and_collide<class_PhysicsBody3D_method_move_and_collide>`\ (\ motion\: :ref:`Vector3<class_Vector3>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ )                                                                |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_collision_exception_with<class_PhysicsBody3D_method_remove_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                                                                                                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_axis_lock<class_PhysicsBody3D_method_set_axis_lock>`\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                                          |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`test_move<class_PhysicsBody3D_method_test_move>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, collision\: :ref:`KinematicCollision3D<class_KinematicCollision3D>` = null, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ ) |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PhysicsBody3D_property_axis_lock_angular_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_angular_x** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_angular_x>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Заблокувати обертання тіла в осі X.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_angular_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_angular_y** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_angular_y>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Заблокувати обертання тіла в осі Y.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_angular_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_angular_z** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_angular_z>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Заблокувати обертання тіла в осі Z.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_linear_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_linear_x** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_linear_x>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Заблокувати лінійний рух тіла в осі X.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_linear_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_linear_y** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_linear_y>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Заблокувати лінійний рух тіла в осі Y.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_property_axis_lock_linear_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **axis_lock_linear_z** = ``false`` :ref:`🔗<class_PhysicsBody3D_property_axis_lock_linear_z>`

.. rst-class:: classref-property-setget

- |void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const|

Заблокувати лінійний рух тіла в осі Z.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PhysicsBody3D_method_add_collision_exception_with:

.. rst-class:: classref-method

|void| **add_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody3D_method_add_collision_exception_with>`

Додати тіло до переліку тіл, які це тіло не може поєднуватися з.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_get_axis_lock:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`\ ) |const| :ref:`🔗<class_PhysicsBody3D_method_get_axis_lock>`

Повертає ``true``, якщо вказану лінійну або обертальну ``axis`` заблоковано.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_get_collision_exceptions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] **get_collision_exceptions**\ (\ ) :ref:`🔗<class_PhysicsBody3D_method_get_collision_exceptions>`

Повертає масив вузлів, які були додані як виключення зіткнення для цього тіла.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_get_gravity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_gravity**\ (\ ) |const| :ref:`🔗<class_PhysicsBody3D_method_get_gravity>`

Повертає вектор тяжіння, що відповідає всім джерелам, які можуть впливати на тіло, в тому числі на перепади ваги з вузлів :ref:`Area3D<class_Area3D>` і глобальної світової ваги.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_move_and_collide:

.. rst-class:: classref-method

:ref:`KinematicCollision3D<class_KinematicCollision3D>` **move_and_collide**\ (\ motion\: :ref:`Vector3<class_Vector3>`, test_only\: :ref:`bool<class_bool>` = false, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_PhysicsBody3D_method_move_and_collide>`

Рухає тіло вздовж вектора ``motion``. Для того, щоб бути частотою кадрів незалежною в :ref:`Node._physics_process()<class_Node_private_method__physics_process>` або :ref:`Node._process()<class_Node_private_method__process>`, ``руху`` слід комп'ютерно використовувати ``delta``.

Тіло буде зупинятися, якщо він Collides. Повернутися до :ref:`KinematicCollision3D<class_KinematicCollision3D>`, яка містить інформацію про зіткнення при зупинці, або при дотику іншого тіла вздовж руху.

Якщо ``test_only`` є ``true``, тіло не рухається, але інформація про зіткнення б-бе.

\ ``Safe_margin`` є додатковим запасом, що використовується для відновлення зіткнення (див. :ref:`CharacterBody3D.safe_margin<class_CharacterBody3D_property_safe_margin>` для отримання більш детальної інформації).

Якщо ``Recovery_as_collision`` є ``true``, будь-яке депенетування з фази відновлення також повідомляється як зіткнення; це використовується наприклад :ref:`CharacterBody3D<class_CharacterBody3D>` для поліпшення виявлення підлоги під час натискання підлоги.

\ ``max_collisions`` дозволяє отримати більше одного результату зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_remove_collision_exception_with:

.. rst-class:: classref-method

|void| **remove_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PhysicsBody3D_method_remove_collision_exception_with>`

Видаліть тіло з переліку тіл, які це тіло не може зв'язатися з.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_set_axis_lock:

.. rst-class:: classref-method

|void| **set_axis_lock**\ (\ axis\: :ref:`BodyAxis<enum_PhysicsServer3D_BodyAxis>`, lock\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_PhysicsBody3D_method_set_axis_lock>`

Блокує або розблоковує вказану лінійну або обертальну ``axis`` залежно від значення ``lock``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsBody3D_method_test_move:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **test_move**\ (\ from\: :ref:`Transform3D<class_Transform3D>`, motion\: :ref:`Vector3<class_Vector3>`, collision\: :ref:`KinematicCollision3D<class_KinematicCollision3D>` = null, safe_margin\: :ref:`float<class_float>` = 0.001, recovery_as_collision\: :ref:`bool<class_bool>` = false, max_collisions\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_PhysicsBody3D_method_test_move>`

Перевірка зіткнень без переміщення тіла. Для того, щоб бути частотою кадрів незалежною в :ref:`Node._physics_process()<class_Node_private_method__physics_process>` або :ref:`Node._process()<class_Node_private_method__process>`, ``motion`` слід комп'ютерно використовувати ``delta``.

Практично встановлює позицію вершини, масштаб і обертання до цього :ref:`Transform3D<class_Transform3D>`, потім намагається перемістити тіло вздовж вектора ``motion``. Повертає ``true``, якщо зіткнення зупинить тіло з переміщення по всьому шляху.

\ ``collision`` - це додатковий об'єкт типу :ref:`KinematicCollision3D<class_KinematicCollision3D>`, який містить додаткову інформацію про зіткнення при зупинці, або при дотику іншого тіла вздовж руху.

\ ``Safe_margin`` є додатковим запасом, що використовується для відновлення зіткнення (див. :ref:`CharacterBody3D.safe_margin<class_CharacterBody3D_property_safe_margin>` для отримання більш детальної інформації).

Якщо ``Recovery_as_collision`` є ``true``, будь-яке депенетування з фази відновлення також повідомляється як зіткнення; це корисно для перевірки того, чи буде тіло *touch* будь-які інші тіла.

\ ``max_collisions`` дозволяє отримати більше одного результату зіткнення.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
