:github_url: hide

.. _class_PhysicsTestMotionResult2D:

PhysicsTestMotionResult2D
=========================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Описує рух та результат зіткнення з :ref:`PhysicsServer2D.body_test_motion()<class_PhysicsServer2D_method_body_test_motion>`.

.. rst-class:: classref-introduction-group

Опис
--------

Describes the motion and collision result from :ref:`PhysicsServer2D.body_test_motion()<class_PhysicsServer2D_method_body_test_motion>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_PhysicsTestMotionResult2D_method_get_collider>`\ (\ ) |const|                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_id<class_PhysicsTestMotionResult2D_method_get_collider_id>`\ (\ ) |const|                             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_PhysicsTestMotionResult2D_method_get_collider_rid>`\ (\ ) |const|                           |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_PhysicsTestMotionResult2D_method_get_collider_shape>`\ (\ ) |const|                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collider_velocity<class_PhysicsTestMotionResult2D_method_get_collider_velocity>`\ (\ ) |const|                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_depth<class_PhysicsTestMotionResult2D_method_get_collision_depth>`\ (\ ) |const|                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_local_shape<class_PhysicsTestMotionResult2D_method_get_collision_local_shape>`\ (\ ) |const|         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_normal<class_PhysicsTestMotionResult2D_method_get_collision_normal>`\ (\ ) |const|                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_point<class_PhysicsTestMotionResult2D_method_get_collision_point>`\ (\ ) |const|                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_safe_fraction<class_PhysicsTestMotionResult2D_method_get_collision_safe_fraction>`\ (\ ) |const|     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_collision_unsafe_fraction<class_PhysicsTestMotionResult2D_method_get_collision_unsafe_fraction>`\ (\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_remainder<class_PhysicsTestMotionResult2D_method_get_remainder>`\ (\ ) |const|                                 |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_travel<class_PhysicsTestMotionResult2D_method_get_travel>`\ (\ ) |const|                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PhysicsTestMotionResult2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider>`

Повертає прикріплений корпус :ref:`Object<class_Object>`, якщо виникло зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_id>`

Повертає унікальний ідентифікатор екземпляра об'єкта :ref:`Object<class_Object>`, що приєднався до тіла, що зіткнулося, якщо відбулася колізія. Див. :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_rid>`

Повертає з'єднання тіла :ref:`RID<class_RID>`, що використовується :ref:`PhysicsServer2D<class_PhysicsServer2D>`, якщо виникне зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_shape>`

Повертає індекс форми тіла, якщо виникне зіткнення. :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collider_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collider_velocity**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collider_velocity>`

Повертає швидкість з'єднання, якщо виникне зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_depth:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_depth**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_depth>`

Повертає довжину перекриття вздовж зіткнень нормально, якщо виникне зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_local_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_local_shape**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_local_shape>`

Повертає фігуру рухомого об'єкта, якщо виникне зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_normal>`

Повертає нормалізацію фігури тіла на місці зіткнення, якщо виникло зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_point>`

Повертає точку зіткнення у глобальних координатах, якщо виникне зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_safe_fraction>`

Повертає максимальну частку руху, що може відбуватися без зіткнення, між ``0`` і ``1``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_collision_unsafe_fraction>`

Повертаємо мінімальну частку руху, необхідного для взаємодії, якщо відбувався зіткнення, між ``0`` і ``1``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_remainder:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_remainder**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_remainder>`

Повертає вектор руху рухомого об'єкта.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsTestMotionResult2D_method_get_travel:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_travel**\ (\ ) |const| :ref:`🔗<class_PhysicsTestMotionResult2D_method_get_travel>`

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
