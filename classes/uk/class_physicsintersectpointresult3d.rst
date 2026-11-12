:github_url: hide

.. _class_PhysicsIntersectPointResult3D:

PhysicsIntersectPointResult3D
=============================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the results of a point intersection query.

.. rst-class:: classref-introduction-group

Опис
--------

This class contains the intersection information produced by :ref:`PhysicsDirectSpaceState3D.intersect_point_into()<class_PhysicsDirectSpaceState3D_method_intersect_point_into>`.

It stores up to a user-defined number of overlapping shapes.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_intersections<class_PhysicsIntersectPointResult3D_property_max_intersections>` | ``32`` |
   +-----------------------+------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>` | :ref:`get_collider<class_PhysicsIntersectPointResult3D_method_get_collider>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|             |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_collider_id<class_PhysicsIntersectPointResult3D_method_get_collider_id>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|       |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`       | :ref:`get_collider_rid<class_PhysicsIntersectPointResult3D_method_get_collider_rid>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_collider_shape<class_PhysicsIntersectPointResult3D_method_get_collider_shape>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_intersection_count<class_PhysicsIntersectPointResult3D_method_get_intersection_count>`\ (\ ) |const|                                     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PhysicsIntersectPointResult3D_property_max_intersections:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_intersections** = ``32`` :ref:`🔗<class_PhysicsIntersectPointResult3D_property_max_intersections>`

.. rst-class:: classref-property-setget

- |void| **set_max_intersections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_intersections**\ (\ )

The maximum number of intersections this result object can store.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_PhysicsIntersectPointResult3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult3D_method_get_collider>`

The colliding object.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectPointResult3D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult3D_method_get_collider_id>`

The colliding object's ID.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectPointResult3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult3D_method_get_collider_rid>`

The intersecting object's :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectPointResult3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult3D_method_get_collider_shape>`

The shape index of the colliding shape.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectPointResult3D_method_get_intersection_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_intersection_count**\ (\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult3D_method_get_intersection_count>`

Returns the number of shapes that intersect the queried point.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
