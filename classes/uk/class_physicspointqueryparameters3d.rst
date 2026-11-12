:github_url: hide

.. _class_PhysicsPointQueryParameters3D:

PhysicsPointQueryParameters3D
=============================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Надає параметри для :ref:`PhysicsDirectSpaceState3D.intersect_point()<class_PhysicsDirectSpaceState3D_method_intersect_point>`.

.. rst-class:: classref-introduction-group

Опис
--------

By changing various properties of this object, such as the point position, you can configure the parameters for :ref:`PhysicsDirectSpaceState3D.intersect_point()<class_PhysicsDirectSpaceState3D_method_intersect_point>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_areas<class_PhysicsPointQueryParameters3D_property_collide_with_areas>`   | ``false``            |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_bodies<class_PhysicsPointQueryParameters3D_property_collide_with_bodies>` | ``true``             |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                              | :ref:`collision_mask<class_PhysicsPointQueryParameters3D_property_collision_mask>`           | ``4294967295``       |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude<class_PhysicsPointQueryParameters3D_property_exclude>`                         | ``[]``               |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                      | :ref:`position<class_PhysicsPointQueryParameters3D_property_position>`                       | ``Vector3(0, 0, 0)`` |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PhysicsPointQueryParameters3D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_PhysicsPointQueryParameters3D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Якщо ``true``, запит буде враховуватися :ref:`Area3D<class_Area3D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters3D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_PhysicsPointQueryParameters3D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Якщо ``true``, запит буде прийняти ``ФізикаBody3D`` врахування.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``4294967295`` :ref:`🔗<class_PhysicsPointQueryParameters3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Фізика шарів запиту виявить (як трохимаска). За замовчуванням виявляються всі шари зіткнення. Див. `Коллізійні шари та маски <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документації для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters3D_property_exclude:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude** = ``[]`` :ref:`🔗<class_PhysicsPointQueryParameters3D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude**\ (\ )

Список об'єктів :ref:`RID<class_RID>`, які будуть виключені з зіткнення. Використовуйте :ref:`CollisionObject3D.get_rid()<class_CollisionObject3D_method_get_rid>`, щоб отримати :ref:`RID<class_RID>`, пов'язаний з :ref:`CollisionObject2D<class_CollisionObject2D>`-derived node.

\ **Примітка:** Повернутий масив копіюється і будь-які зміни до нього не будуть оновлювати оригінальну вартість майна. Для оновлення значення потрібно змінити повернутий масив, а потім знову призначити його в власність.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters3D_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsPointQueryParameters3D_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_position**\ (\ )

Посада, що передається у глобальних координатах.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
