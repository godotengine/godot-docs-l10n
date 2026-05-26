:github_url: hide

.. _class_CollisionPolygon2D:

CollisionPolygon2D
==================

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вузлом, який надає полігонну форму до :ref:`CollisionObject2D<class_CollisionObject2D>` батьків.

.. rst-class:: classref-introduction-group

Опис
--------

Вузол, який надає батьківському об'єкту :ref:`CollisionObject2D<class_CollisionObject2D>` форму полігону та дозволяє його редагування. Полігон може бути увігнутим або опуклим. Це може надати форму виявлення :ref:`Area2D<class_Area2D>`, перетворити :ref:`PhysicsBody2D<class_PhysicsBody2D>` на твердий об'єкт або надати порожнисту форму :ref:`StaticBody2D<class_StaticBody2D>`.

\ **Попередження:** Нерівномірно масштабований **CollisionPolygon2D**, ймовірно, не працюватиме належним чином. Переконайтеся, що його масштаб однаковий на всіх осях, і натомість налаштуйте його полігон.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` | :ref:`build_mode<class_CollisionPolygon2D_property_build_mode>`                                   | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`disabled<class_CollisionPolygon2D_property_disabled>`                                       | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`one_way_collision<class_CollisionPolygon2D_property_one_way_collision>`                     | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`one_way_collision_direction<class_CollisionPolygon2D_property_one_way_collision_direction>` | ``Vector2(0, 1)``        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`one_way_collision_margin<class_CollisionPolygon2D_property_one_way_collision_margin>`       | ``1.0``                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_CollisionPolygon2D_property_polygon>`                                         | ``PackedVector2Array()`` |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_CollisionPolygon2D_BuildMode:

.. rst-class:: classref-enumeration

enum **BuildMode**: :ref:`🔗<enum_CollisionPolygon2D_BuildMode>`

.. _class_CollisionPolygon2D_constant_BUILD_SOLIDS:

.. rst-class:: classref-enumeration-constant

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **BUILD_SOLIDS** = ``0``

До послуг гостей полігон і його місткість. У цьому режимі вузол має той же ефект, як кілька :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>` вузлів, один для кожної опуклої форми в опуклій декомпозиції полігону (але без накладки декількох вузлів).

.. _class_CollisionPolygon2D_constant_BUILD_SEGMENTS:

.. rst-class:: classref-enumeration-constant

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **BUILD_SEGMENTS** = ``1``

Випадки тільки включають в себе полігонні краї. У цьому режимі вузол має той же ефект, як єдиний :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, виготовлений з сегментів, з обмеженням, що кожен сегмент (після першого) починається, де попередні кінці, і останні один кінець, де перший починає (формування закритого, але порожнистого полігону).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CollisionPolygon2D_property_build_mode:

.. rst-class:: classref-property

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **build_mode** = ``0`` :ref:`🔗<class_CollisionPolygon2D_property_build_mode>`

.. rst-class:: classref-property-setget

- |void| **set_build_mode**\ (\ value\: :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>`\ )
- :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **get_build_mode**\ (\ )

Режим зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionPolygon2D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Якщо ``true``, колізії не будуть виявлені. Цю властивість слід змінити на :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_one_way_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_way_collision** = ``false`` :ref:`🔗<class_CollisionPolygon2D_property_one_way_collision>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_way_collision_enabled**\ (\ )

If ``true``, only edges that face up, relative to **CollisionPolygon2D**'s rotation, will collide with other objects.

\ **Note:** This property has no effect if this **CollisionPolygon2D** is a child of an :ref:`Area2D<class_Area2D>` node.

\ **Note:** The one way collision direction can be configured by setting :ref:`one_way_collision_direction<class_CollisionPolygon2D_property_one_way_collision_direction>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_one_way_collision_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **one_way_collision_direction** = ``Vector2(0, 1)`` :ref:`🔗<class_CollisionPolygon2D_property_one_way_collision_direction>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_one_way_collision_direction**\ (\ )

The direction used for one-way collision.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_one_way_collision_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **one_way_collision_margin** = ``1.0`` :ref:`🔗<class_CollisionPolygon2D_property_one_way_collision_margin>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_one_way_collision_margin**\ (\ )

Пошта, що використовується для одностороннього зіткнення (у пікселях). Більшість значень зроблять форму більш товстою, і працювати краще для комірок, які надходять в полігон на високій швидкості.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_CollisionPolygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Перелік вершин полігону. Кожна точка буде підключена до наступного, а кінцева точка буде підключена до першого.

\ **Примітка:** Повернуті вершини знаходяться в локальному координатному просторі даної **CollisionPolygon2D**.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
