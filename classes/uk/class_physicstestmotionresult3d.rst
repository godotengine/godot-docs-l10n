:github_url: hide

.. _class_PhysicsTestMotionResult3D:

PhysicsTestMotionResult3D
=========================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Описує результат руху та зіткнення з :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>`.

.. rst-class:: classref-introduction-group

Опис
--------

Описує результат руху та зіткнення з :ref:`PhysicsServer3D.body_test_motion()<class_PhysicsServer3D_method_body_test_motion>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_PhysicsTestMotionResult3D_method_get_collider>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_id<class_PhysicsTestMotionResult3D_method_get_collider_id>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_PhysicsTestMotionResult3D_method_get_collider_rid>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_PhysicsTestMotionResult3D_method_get_collider_shape>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collider_velocity<class_PhysicsTestMotionResult3D_method_get_collider_velocity>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_PhysicsTestMotionResult3D_method_get_collision_count>`\ (\ ) |const|                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_depth<class_PhysicsTestMotionResult3D_method_get_collision_depth>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_local_shape<class_PhysicsTestMotionResult3D_method_get_collision_local_shape>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_normal<class_PhysicsTestMotionResult3D_method_get_collision_normal>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_point<class_PhysicsTestMotionResult3D_method_get_collision_point>`\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const|             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_safe_fraction<class_PhysicsTestMotionResult3D_method_get_collision_safe_fraction>`\ (\ ) |const|                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_unsafe_fraction<class_PhysicsTestMotionResult3D_method_get_collision_unsafe_fraction>`\ (\ ) |const|                                      |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_remainder<class_PhysicsTestMotionResult3D_method_get_remainder>`\ (\ ) |const|                                                                      |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_travel<class_PhysicsTestMotionResult3D_method_get_travel>`\ (\ ) |const|                                                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PhysicsTestMotionResult3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider>`

Повернувшись до прикріпленого корпусу :ref:`Object<class_Object>` з індексом зіткнення (найглибше зіткнення за замовчуванням), якщо виникне зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_id>`

Повертає унікальний ідентифікатор корпусу, який прикріплюється :ref:`Object<class_Object>` з індексом зіткнення (найглибше зіткнення за замовчуванням), якщо виникне зіткнення. Див. :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_rid>`

Повертає індекс зіткнення (найглибше зіткнення за замовчуванням), якщо виникне зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_shape>`

Повертає індекс форми тіла, що відповідає індексу зіткнення (найглибше зіткнення за замовчуванням), якщо виникне зіткнення. :ref:`CollisionObject3D<class_CollisionObject3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collider_velocity**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collider_velocity>`

Повертає швидкість з'єднання з урахуванням індексу зіткнення (найглибше зіткнення за замовчуванням), якщо виникне зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_count>`

Повертає кількість виявлених зіткнень.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_depth**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_depth>`

Повертає довжину перекриття по відношенню до зіткненню нормаль заданого індексу зіткнення (найглибше зіткнення за замовчуванням), якщо виникне зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_local_shape**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_local_shape>`

Повертає форму переходу об'єкта, що відповідає зіткненню (найглибше зіткнення за замовчуванням), якщо виникне зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_normal**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_normal>`

Повертає норму фігури, що з'являється в точці зіткнення з індексом зіткнення (найглибше зіткнення за замовчуванням), якщо виникне зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_point**\ (\ collision_index\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_point>`

Повертає точку зіткнення у глобальних координатах, враховуючи індекс зіткнення (найглибше зіткнення за замовчуванням), якщо виникне зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_safe_fraction>`

Повертає максимальну частку руху, що може відбуватися без зіткнення, між ``0`` і ``1``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_collision_unsafe_fraction>`

Повертаємо мінімальну частку руху, необхідного для взаємодії, якщо відбувався зіткнення, між ``0`` і ``1``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_remainder>`

Повертає вектор руху рухомого об'єкта.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult3D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_travel**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult3D_method_get_travel>`

Повертає переміщення об'єкта перед зіткненням.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
