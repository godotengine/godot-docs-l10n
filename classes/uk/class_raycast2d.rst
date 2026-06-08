:github_url: hide

.. _class_RayCast2D:

RayCast2D
=========

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Промінь у двовимірному просторі, що використовується для знаходження першого об'єкта зіткнення, з яким він перетинається.

.. rst-class:: classref-introduction-group

Опис
--------

Променева трансляція (raycast) представляє промінь від його початку до його :ref:`target_position<class_RayCast2D_property_target_position>`, який знаходить найближчий об'єкт на своєму шляху, якщо він перетинається з будь-яким.

\ **RayCast2D** може ігнорувати деякі об'єкти, додаючи їх до списку винятків, змушуючи свої звіти про виявлення ігнорувати :ref:`Area2D<class_Area2D>` (:ref:`collide_with_areas<class_RayCast2D_property_collide_with_areas>`) або :ref:`PhysicsBody2D<class_PhysicsBody2D>` (:ref:`collide_with_bodies<class_RayCast2D_property_collide_with_bodies>`), або налаштовуючи фізичні шари.

\ **RayCast2D** обчислює перетин у кожному фізичному кадрі та зберігає результат до наступного фізичного кадру. Для негайної променевої трансляції або якщо ви хочете налаштувати **RayCast2D** кілька разів в одному фізичному кадрі, використовуйте :ref:`force_raycast_update()<class_RayCast2D_method_force_raycast_update>`.

Щоб охопити область двовимірного простору, ви можете апроксимувати область кількома **RayCast2D** або використовувати :ref:`ShapeCast2D<class_ShapeCast2D>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Рей-розміщення <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_RayCast2D_property_collide_with_areas>`   | ``false``          |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_RayCast2D_property_collide_with_bodies>` | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_RayCast2D_property_collision_mask>`           | ``1``              |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_RayCast2D_property_enabled>`                         | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_RayCast2D_property_exclude_parent>`           | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>`         | ``false``          |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`target_position<class_RayCast2D_property_target_position>`         | ``Vector2(0, 50)`` |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_RayCast2D_method_add_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                                    |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_RayCast2D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_RayCast2D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_raycast_update<class_RayCast2D_method_force_raycast_update>`\ (\ )                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_RayCast2D_method_get_collider>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_RayCast2D_method_get_collider_rid>`\ (\ ) |const|                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_RayCast2D_method_get_collider_shape>`\ (\ ) |const|                                                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_RayCast2D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_normal<class_RayCast2D_method_get_collision_normal>`\ (\ ) |const|                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_point<class_RayCast2D_method_get_collision_point>`\ (\ ) |const|                                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_RayCast2D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_RayCast2D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_RayCast2D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_RayCast2D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RayCast2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_RayCast2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

``true``, зіткнення з :ref:`Area2D<class_Area2D>` будуть повідомлені.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_RayCast2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

``true``, зіткнення з :ref:`PhysicsBody2D<class_PhysicsBody2D>` будуть повідомлені.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_RayCast2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Маска зіткнення променів. Виявлено лише об’єкти, що не менше одного з шарів зіткнення. Див. `Коллізійні шари та маски <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документації для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_RayCast2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Якщо ``true`` будуть повідомлені зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_RayCast2D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

Якщо значення ``true``, цей raycast не повідомлятиме про зіткнення з батьківським вузлом. Ця властивість має ефект лише в тому випадку, якщо батьківський вузол є :ref:`CollisionObject2D<class_CollisionObject2D>`. Див. також :ref:`Node.get_parent()<class_Node_method_get_parent>` та :ref:`add_exception()<class_RayCast2D_method_add_exception>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_RayCast2D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

Якщо ``true``, промінь виявить удар при запуску внутрішніх форм. У цьому випадку норма зіткнення буде ``Vector2(0, 0)``. Не впливає конденсатна форма.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 50)`` :ref:`🔗<class_RayCast2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

Точка призначення променя відносно цього променевого потоку :ref:`Node2D.position<class_Node2D_property_position>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RayCast2D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_RayCast2D_method_add_exception>`

Додає виняток колізії, щоб промінь не повідомляв про колізії із зазначеним вузлом ``node``.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast2D_method_add_exception_rid>`

Додає виключення зіткнення, тому промінь не повідомляє зіткнення з вказаною :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_RayCast2D_method_clear_exceptions>`

Видаліть всі винятки зіткнення для цього променя.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_force_raycast_update:

.. rst-class:: classref-method

|void| **force_raycast_update**\ (\ ) :ref:`🔗<class_RayCast2D_method_force_raycast_update>`

Оновлення інформації про зіткнення для променя відразу, не чекаючи наступного ``_physics_process`` виклику. Використовуйте цей метод, наприклад, при зміні стану променя або його батьків.

\ **Примітка:** :ref:`enabled<class_RayCast2D_property_enabled>` не потрібно ``true`` для цього для роботи.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider>`

Повертає перший об'єкт, який перетинає промінь, або ``null``, якщо жоден об'єкт не перетинає промінь (тобто :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` повертає ``false``).

\ **Примітка:** Цей об'єкт не гарантовано є :ref:`CollisionObject2D<class_CollisionObject2D>`. Наприклад, якщо промінь перетинає :ref:`TileMapLayer<class_TileMapLayer>`, метод поверне екземпляр :ref:`TileMapLayer<class_TileMapLayer>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider_rid>`

Повертає :ref:`RID<class_RID>` першого об'єкта, який перетинає промінь, або порожнє значення :ref:`RID<class_RID>`, якщо жоден об'єкт не перетинає промінь (тобто :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` повертає ``false``).

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider_shape>`

Повертає ідентифікатор форми першого об’єкта, який перетинає промінь, або ``0``, якщо жоден об’єкт не перетинає промінь (тобто :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` повертає ``false``). 

Щоб отримати пересічний вузол фігури для цілі :ref:`CollisionObject2D<class_CollisionObject2D>`, використовуйте: 


.. tabs:: 

 .. code-tab:: gdscript
 
    var target = get_collider() # CollisionObject2D. 
    var shape_id = get_collider_shape() # Індекс форми в коллайдері. 
    var owner_id = target.shape_find_owner(shape_id) # Ідентифікатор власника в коллайдері. 
    var shape = target.shape_owner_get_owner(owner_id)  

 .. code-tab:: csharp
 
    var target = (CollisionObject2D)GetCollider(); // CollisionObject2D. 
    var shapeId = GetColliderShape(); // Індекс форми в коллайдері. 
    var ownerId = target.ShapeFindOwner(shapeId); // ID власника в колайдері. 
    var shape = target.ShapeOwnerGetOwner(ownerId);  



.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_mask_value>`

Повертаємо, чи не вказаний шар :ref:`collision_layer<class_RayCast2D_property_collision_layer>`, враховуючи ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_normal>`

Повертає нормаль форми об'єкта, що перетинається, у точці зіткнення, або ``Vector2(0, 0)``, якщо промінь починається всередині форми, а :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>` має значення ``true``.

\ **Примітка:** Переконайтеся, що :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` повертає ``true`` перед викликом цього методу, щоб переконатися, що повернена нормаль є коректною та актуальною.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_point>`

Повертає точку зіткнення, в якій промінь перетинає найближчий об'єкт у глобальній системі координат. Якщо :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>` має значення ``true``, а промінь починається всередині фігури зіткнення, ця функція поверне точку початку координат променя.

\ **Примітка:** Переконайтеся, що :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` повертає ``true`` перед викликом цього методу, щоб переконатися, що повернута точка є коректною та актуальною.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_is_colliding>`

Повертає будь-який об'єкт, що перетинається з вектором променя (визнання довжини вектора).

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_RayCast2D_method_remove_exception>`

Видаляє виняток зіткнення, щоб промінь міг повідомляти про зіткнення із зазначеним ``node``.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast2D_method_remove_exception_rid>`

Видаляє виняток колізії, щоб промінь міг повідомляти про колізії із зазначеним :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RayCast2D_method_set_collision_mask_value>`

На основі ``value``, умикає чи вимикає зазначений шар в :ref:`collision_mask<class_RayCast2D_property_collision_mask>`, для ``layer_number`` між 1 і 32.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
