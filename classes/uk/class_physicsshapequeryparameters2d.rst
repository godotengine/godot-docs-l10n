:github_url: hide

.. _class_PhysicsShapeQueryParameters2D:

PhysicsShapeQueryParameters2D
=============================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Надає параметри для методів :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`.

.. rst-class:: classref-introduction-group

Опис
--------

By changing various properties of this object, such as the shape, you can configure the parameters for :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>`'s methods.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_areas<class_PhysicsShapeQueryParameters2D_property_collide_with_areas>`   | ``false``                         |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_bodies<class_PhysicsShapeQueryParameters2D_property_collide_with_bodies>` | ``true``                          |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                              | :ref:`collision_mask<class_PhysicsShapeQueryParameters2D_property_collision_mask>`           | ``4294967295``                    |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude<class_PhysicsShapeQueryParameters2D_property_exclude>`                         | ``[]``                            |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`                          | :ref:`margin<class_PhysicsShapeQueryParameters2D_property_margin>`                           | ``0.0``                           |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`motion<class_PhysicsShapeQueryParameters2D_property_motion>`                           | ``Vector2(0, 0)``                 |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Resource<class_Resource>`                    | :ref:`shape<class_PhysicsShapeQueryParameters2D_property_shape>`                             |                                   |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`RID<class_RID>`                              | :ref:`shape_rid<class_PhysicsShapeQueryParameters2D_property_shape_rid>`                     | ``RID()``                         |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>`              | :ref:`transform<class_PhysicsShapeQueryParameters2D_property_transform>`                     | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PhysicsShapeQueryParameters2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Якщо ``true``, запит буде враховуватися :ref:`Area2D<class_Area2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Якщо ``true``, запит враховуватиме :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``4294967295`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Фізика шарів запиту виявить (як трохимаска). За замовчуванням виявляються всі шари зіткнення. Див. `Коллізійні шари та маски <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документації для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_exclude:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude** = ``[]`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude**\ (\ )

Список об'єктів :ref:`RID<class_RID>`, які будуть виключені з зіткнення. Використовуйте :ref:`CollisionObject2D.get_rid()<class_CollisionObject2D_method_get_rid>`, щоб отримати :ref:`RID<class_RID>`, пов'язаний з :ref:`CollisionObject2D<class_CollisionObject2D>`-derived node.

\ **Примітка:** Повернутий масив копіюється і будь-які зміни до нього не будуть оновлювати оригінальну вартість майна. Для оновлення значення потрібно змінити повернутий масив, а потім знову призначити його в власність.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.0`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Зіткнення поля для форми.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_motion:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_motion>`

.. rst-class:: classref-property-setget

- |void| **set_motion**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion**\ (\ )

Рух форми, що передається.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_shape:

.. rst-class:: classref-property

:ref:`Resource<class_Resource>` **shape** :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Resource<class_Resource>`\ )
- :ref:`Resource<class_Resource>` **get_shape**\ (\ )

:ref:`Shape2D<class_Shape2D>`, який буде використовуватися для зіткнень/інтерсекційних запитів. Це зберігає актуальну довідку, яка уникає форми, щоб бути вилученою, коли використовується для запитів, тому завжди віддає перевагу використанню цього над :ref:`shape_rid<class_PhysicsShapeQueryParameters2D_property_shape_rid>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_shape_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **shape_rid** = ``RID()`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_shape_rid>`

.. rst-class:: classref-property-setget

- |void| **set_shape_rid**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_shape_rid**\ (\ )

:ref:`RID<class_RID>` запитуваної фігури, яка використовуватиметься для запитів зіткнення/перетину. Використовуйте це замість :ref:`shape<class_PhysicsShapeQueryParameters2D_property_shape>`, якщо ви хочете оптимізувати продуктивність за допомогою Servers API: 


.. tabs:: 

 .. code-tab:: gdscript
 
    var shape_rid = PhysicsServer2D.circle_shape_create() 
    де радіус = 64 
    PhysicsServer2D.shape_set_data(shape_rid, radius) 

    var params = PhysicsShapeQueryParameters2D.new()
    params.shape_rid = shape_rid 

    # Виконуйте тут фізичні запити... 

    # Відпустіть фігуру, коли закінчите з фізичними запитами. 
    PhysicsServer2D.free_rid(shape_rid)  

 .. code-tab:: csharp
 
    RID shapeRid = PhysicsServer2D.CircleShapeCreate(); 
    int радіус = 64; 
    PhysicsServer2D.ShapeSetData(shapeRid, radius); 

    var params = new PhysicsShapeQueryParameters2D();
    params.ShapeRid = shapeRid; 

    // Виконувати тут фізичні запити... 

    // Відпустіть фігуру, коли закінчите фізичні запити. 
    PhysicsServer2D.FreeRid(shapeRid);  



.. rst-class:: classref-item-separator

----

.. _class_PhysicsShapeQueryParameters2D_property_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_PhysicsShapeQueryParameters2D_property_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

Матриця трансформованої форми.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
