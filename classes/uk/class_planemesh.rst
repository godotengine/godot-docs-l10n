:github_url: hide

.. _class_PlaneMesh:

PlaneMesh
=========

**Успадковує:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`QuadMesh<class_QuadMesh>`

Клас, що представляє планар :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-introduction-group

Опис
--------

Клас, що представляє планар :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Ця плоска сітка не має товщини. За замовчуванням ця сітка вирівнюється на осі X і Z; це обертання за замовчуванням не підходить для використання з вказаними матеріалами. Для вексельних матеріалів, змін :ref:`orientation<class_PlaneMesh_property_orientation>` на :ref:`FACE_Z<class_PlaneMesh_constant_FACE_Z>`.

\ **Note:** При використанні великої текстури **PlaneMesh** (наприклад, як підлога), ви можете зв'язатися з УФ-планування питання залежно від кута камери. Щоб вирішити це, збільшити :ref:`subdivide_depth<class_PlaneMesh_property_subdivide_depth>` і :ref:`subdivide_width<class_PlaneMesh_property_subdivide_width>` до тих пір, поки ви більше не помітили УФ Джиттеринг.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                  | :ref:`center_offset<class_PlaneMesh_property_center_offset>`     | ``Vector3(0, 0, 0)`` |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Orientation<enum_PlaneMesh_Orientation>` | :ref:`orientation<class_PlaneMesh_property_orientation>`         | ``1``                |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Vector2<class_Vector2>`                  | :ref:`size<class_PlaneMesh_property_size>`                       | ``Vector2(2, 2)``    |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                          | :ref:`subdivide_depth<class_PlaneMesh_property_subdivide_depth>` | ``0``                |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                          | :ref:`subdivide_width<class_PlaneMesh_property_subdivide_width>` | ``0``                |
   +------------------------------------------------+------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_PlaneMesh_Orientation:

.. rst-class:: classref-enumeration

enum **Orientation**: :ref:`🔗<enum_PlaneMesh_Orientation>`

.. _class_PlaneMesh_constant_FACE_X:

.. rst-class:: classref-enumeration-constant

:ref:`Orientation<enum_PlaneMesh_Orientation>` **FACE_X** = ``0``

**PlaneMesh** зіткнеться на позитивну вісь X.

.. _class_PlaneMesh_constant_FACE_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Orientation<enum_PlaneMesh_Orientation>` **FACE_Y** = ``1``

**PlaneMesh** зіткнеться на позитивну вісь. Це відповідає поведінки **PlaneMesh** в Godot 3.x.

.. _class_PlaneMesh_constant_FACE_Z:

.. rst-class:: classref-enumeration-constant

:ref:`Orientation<enum_PlaneMesh_Orientation>` **FACE_Z** = ``2``

**PlaneMesh** зіткнеться до позитиву Z-вісі. Це відповідає поведінки QuadMesh в Godot 3.x.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PlaneMesh_property_center_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PlaneMesh_property_center_offset>`

.. rst-class:: classref-property-setget

- |void| **set_center_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_center_offset**\ (\ )

Зміщення створеної площини. Корисно для частинок.

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_orientation:

.. rst-class:: classref-property

:ref:`Orientation<enum_PlaneMesh_Orientation>` **orientation** = ``1`` :ref:`🔗<class_PlaneMesh_property_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_orientation**\ (\ value\: :ref:`Orientation<enum_PlaneMesh_Orientation>`\ )
- :ref:`Orientation<enum_PlaneMesh_Orientation>` **get_orientation**\ (\ )

Напрямок, у якому спрямована **PlaneMesh**.

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(2, 2)`` :ref:`🔗<class_PlaneMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

Розмір генерованої площини.

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_subdivide_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_depth** = ``0`` :ref:`🔗<class_PlaneMesh_property_subdivide_depth>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_depth**\ (\ )

Кількість підрозділу по осі Z.

.. rst-class:: classref-item-separator

----

.. _class_PlaneMesh_property_subdivide_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_width** = ``0`` :ref:`🔗<class_PlaneMesh_property_subdivide_width>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_width**\ (\ )

Кількість підрозділу по осі X.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
