:github_url: hide

.. _class_ShapeCast3D:

ShapeCast3D
===========

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A 3D форма, яка спрощує область простору для виявлення :ref:`CollisionObject3D<class_CollisionObject3D>`\ s.

.. rst-class:: classref-introduction-group

Опис
--------

Формування фігур дозволяє виявляти об'єкти зіткнення, зміщуючи його :ref:`shape<class_ShapeCast3D_property_shape>` вздовж напрямку формування, визначеного :ref:`target_position<class_ShapeCast3D_property_target_position>`. Це схоже на :ref:`RayCast3D<class_RayCast3D>`, але дозволяє зміщувати область простору, а не просто пряму лінію. **ShapeCast3D** може виявляти кілька об'єктів зіткнення. Це корисно для таких речей, як широкі лазерні промені або прив'язка простої фігури до підлоги.

Негайне перекриття зіткнень можна виконати, встановивши :ref:`target_position<class_ShapeCast3D_property_target_position>` на ``Vector3(0, 0, 0)`` та викликавши :ref:`force_shapecast_update()<class_ShapeCast3D_method_force_shapecast_update>` в одному фізичному кадрі. Це допомагає подолати деякі обмеження :ref:`Area3D<class_Area3D>` при використанні як області миттєвого виявлення, оскільки інформація про зіткнення не є негайно доступною для нього.

\ **Примітка:** Формування фігур є більш обчислювально дорожчим, ніж променеве формування.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_ShapeCast3D_property_collide_with_areas>`             | ``false``             |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_ShapeCast3D_property_collide_with_bodies>`           | ``true``              |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_ShapeCast3D_property_collision_mask>`                     | ``1``                 |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Array<class_Array>`     | :ref:`collision_result<class_ShapeCast3D_property_collision_result>`                 | ``[]``                |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_shape_custom_color<class_ShapeCast3D_property_debug_shape_custom_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_ShapeCast3D_property_enabled>`                                   | ``true``              |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_ShapeCast3D_property_exclude_parent>`                     | ``true``              |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`     | :ref:`margin<class_ShapeCast3D_property_margin>`                                     | ``0.0``               |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`         | :ref:`max_results<class_ShapeCast3D_property_max_results>`                           | ``32``                |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Shape3D<class_Shape3D>` | :ref:`shape<class_ShapeCast3D_property_shape>`                                       |                       |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`target_position<class_ShapeCast3D_property_target_position>`                   | ``Vector3(0, -1, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_ShapeCast3D_method_add_exception>`\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ )                                    |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_ShapeCast3D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_ShapeCast3D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_shapecast_update<class_ShapeCast3D_method_force_shapecast_update>`\ (\ )                                                                            |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_safe_fraction<class_ShapeCast3D_method_get_closest_collision_safe_fraction>`\ (\ ) |const|                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_closest_collision_unsafe_fraction<class_ShapeCast3D_method_get_closest_collision_unsafe_fraction>`\ (\ ) |const|                                      |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_ShapeCast3D_method_get_collider>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_ShapeCast3D_method_get_collider_rid>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_ShapeCast3D_method_get_collider_shape>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                             |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_ShapeCast3D_method_get_collision_count>`\ (\ ) |const|                                                                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_ShapeCast3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_normal<class_ShapeCast3D_method_get_collision_normal>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_collision_point<class_ShapeCast3D_method_get_collision_point>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_ShapeCast3D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_ShapeCast3D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ )                              |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_ShapeCast3D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`resource_changed<class_ShapeCast3D_method_resource_changed>`\ (\ resource\: :ref:`Resource<class_Resource>`\ )                                            |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_ShapeCast3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ShapeCast3D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_ShapeCast3D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

``true``, зіткнення з :ref:`Area3D<class_Area3D>` будуть повідомлені.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_ShapeCast3D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

``true``, зіткнення з :ref:`PhysicsBody3D<class_PhysicsBody3D>` будуть повідомлені.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_ShapeCast3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Зіткнення форми. Виявлено лише об’єкти, що не менше одного з шарів зіткнення. Див. `Коллізійні шари та маски <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документації для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_collision_result:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **collision_result** = ``[]`` :ref:`🔗<class_ShapeCast3D_property_collision_result>`

.. rst-class:: classref-property-setget

- :ref:`Array<class_Array>` **get_collision_result**\ (\ )

Повертає повну інформацію про зіткнення від зіткнення. Повернуто дані так само, як і в методі :ref:`PhysicsDirectSpaceState2D.get_rest_info()<class_PhysicsDirectSpaceState2D_method_get_rest_info>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_debug_shape_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_shape_custom_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ShapeCast3D_property_debug_shape_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_shape_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_shape_custom_color**\ (\ )

Спеціальний колір, який використовуватиметься для малювання фігури в редакторі та під час виконання, якщо в меню **Налагодження** увімкнено **Видимі фігури зіткнень**. Цей колір буде виділено під час виконання, якщо **ShapeCast3D** з чимось стикається.

Якщо встановлено значення ``Color(0.0, 0.0, 0.0)`` (за замовчуванням), використовується колір, установлений у :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_ShapeCast3D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Якщо ``true`` будуть повідомлені зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_ShapeCast3D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

Якщо ``true``, материнська вершина буде виключена з виявлення зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.0`` :ref:`🔗<class_ShapeCast3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Зіткнення поля для форми. Більший запас допомагає виявити зіткнення більш послідовно, за вартістю точності.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_max_results:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_results** = ``32`` :ref:`🔗<class_ShapeCast3D_property_max_results>`

.. rst-class:: classref-property-setget

- |void| **set_max_results**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_results**\ (\ )

Кількість перетинів може бути обмежена цим параметром, щоб зменшити час обробки.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_shape:

.. rst-class:: classref-property

:ref:`Shape3D<class_Shape3D>` **shape** :ref:`🔗<class_ShapeCast3D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape3D<class_Shape3D>`\ )
- :ref:`Shape3D<class_Shape3D>` **get_shape**\ (\ )

Форма, яка буде використовуватися для запитів зіткнень.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **target_position** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_ShapeCast3D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_target_position**\ (\ )

Точка призначення фігури відносно :ref:`Node3D.position<class_Node3D_property_position>` цього вузла.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ShapeCast3D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_ShapeCast3D_method_add_exception>`

Додає виняток зіткнення, щоб фігура не повідомляла про зіткнення з указаним вузлом.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast3D_method_add_exception_rid>`

Додає виключення зіткнення, тому форма не звітує зіткнення з вказаною :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_ShapeCast3D_method_clear_exceptions>`

Видаліть всі винятки зіткнення для цієї форми.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_force_shapecast_update:

.. rst-class:: classref-method

|void| **force_shapecast_update**\ (\ ) :ref:`🔗<class_ShapeCast3D_method_force_shapecast_update>`

Оновлює інформацію про зіткнення для форми негайно, не чекаючи наступного виклику ``_physics_process``. Використовуйте цей метод, наприклад, коли форма або її батьківський елемент змінили стан. 

\ **Примітка:** Для цього не потрібно встановлювати :ref:`enabled<class_ShapeCast3D_property_enabled>` на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_closest_collision_safe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_safe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_closest_collision_safe_fraction>`

Повертає частку від початку цього приведення до його :ref:`target_position<class_ShapeCast3D_property_target_position>` того, наскільки далеко фігура може переміститися, не викликаючи зіткнення, як значення між ``0.0`` і ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_closest_collision_unsafe_fraction:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_closest_collision_unsafe_fraction**\ (\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_closest_collision_unsafe_fraction>`

Повертає частку від початку цього приведення до його :ref:`target_position<class_ShapeCast3D_property_target_position>` того, наскільки далеко має переміститися форма, щоб ініціювати зіткнення, як значення між ``0.0`` і ``1.0``. 

В ідеальних умовах це було б так само, як :ref:`get_closest_collision_safe_fraction()<class_ShapeCast3D_method_get_closest_collision_safe_fraction>`, однак відливання форми обчислюється окремими кроками, тому точна точка зіткнення може бути між двома обчисленими позиціями.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collider>`

Повертає з'єднання :ref:`Object<class_Object>` одного з декількох зіткнень ``index``, або ``null``, якщо об'єкт не перетинає форму (тобто :ref:`is_colliding()<class_ShapeCast3D_method_is_colliding>` повертає ``false``).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collider_rid>`

Повертаємо :ref:`RID<class_RID>` об'єкту, що об'єднує один з декількох зіткнень в індексі ``index``.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collider_shape>`

Повертає форму ID комірцевої форми одного з декількох зіткнень за індексом ``index``, або ``0``, якщо об'єкт не перетинає форму (тобто :ref:`is_colliding()<class_ShapeCast3D_method_is_colliding>` повертає ``false``).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collision_count>`

Кількість виявлених зіткнень у точці удару. Використовуйте це для ітерації по кількох зіткненнях, як це передбачено методами :ref:`get_collider()<class_ShapeCast3D_method_get_collider>`, :ref:`get_collider_shape()<class_ShapeCast3D_method_get_collider_shape>`, :ref:`get_collision_point()<class_ShapeCast3D_method_get_collision_point>` та :ref:`get_collision_normal()<class_ShapeCast3D_method_get_collision_normal>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collision_mask_value>`

Повертаємо, чи не вказаний шар :ref:`collision_layer<class_ShapeCast3D_property_collision_layer>`, враховуючи ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_normal**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collision_normal>`

Повертає нормаль одного з кількох зіткнень у ``index`` об'єкта, що перетинається.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_collision_point**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ShapeCast3D_method_get_collision_point>`

Повертає точку зіткнення одного з кількох зіткнень у ``index``, де фігура перетинає об’єкт зіткнення.

\ **Примітка:** Ця точка знаходиться в **глобальній** системі координат.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_ShapeCast3D_method_is_colliding>`

Повертає будь-який об'єкт, що перетинається з вектором форми (визнання довжини вектора).

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) :ref:`🔗<class_ShapeCast3D_method_remove_exception>`

Видаляє виняток зіткнення, щоб фігура повідомляла про зіткнення з указаним вузлом.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_ShapeCast3D_method_remove_exception_rid>`

Вилучає виключення зіткнення, щоб форма звітує зіткнення з вказаною :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_ShapeCast3D_method_resource_changed>`

**Застаріло:** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

Цей метод нічого не робить.

.. rst-class:: classref-item-separator

----

.. _class_ShapeCast3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ShapeCast3D_method_set_collision_mask_value>`

На основі ``value``, умикає чи вимикає зазначений шар в :ref:`collision_mask<class_ShapeCast3D_property_collision_mask>`, для ``layer_number`` між 1 і 32.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
