:github_url: hide

.. _class_PhysicsGetRestInfoResult3D:

PhysicsGetRestInfoResult3D
==========================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the nearest collision information of a shape query.

.. rst-class:: classref-introduction-group

Опис
--------

This class contains the collision data computed by :ref:`PhysicsDirectSpaceState3D.get_rest_info_into()<class_PhysicsDirectSpaceState3D_method_get_rest_info_into>`.

If the shape collides with multiple objects, only the nearest collision is stored.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`collider_id<class_PhysicsGetRestInfoResult3D_property_collider_id>`             | ``0``                |
   +-------------------------------+---------------------------------------------------------------------------------------+----------------------+
   | :ref:`RID<class_RID>`         | :ref:`collider_rid<class_PhysicsGetRestInfoResult3D_property_collider_rid>`           | ``RID()``            |
   +-------------------------------+---------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`collider_shape<class_PhysicsGetRestInfoResult3D_property_collider_shape>`       | ``0``                |
   +-------------------------------+---------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`collider_velocity<class_PhysicsGetRestInfoResult3D_property_collider_velocity>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+---------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`normal<class_PhysicsGetRestInfoResult3D_property_normal>`                       | ``Vector3(0, 0, 0)`` |
   +-------------------------------+---------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`point<class_PhysicsGetRestInfoResult3D_property_point>`                         | ``Vector3(0, 0, 0)`` |
   +-------------------------------+---------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_PhysicsGetRestInfoResult3D_property_collider_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **collider_id** = ``0`` :ref:`🔗<class_PhysicsGetRestInfoResult3D_property_collider_id>`

.. rst-class:: classref-property-setget

- :ref:`int<class_int>` **get_collider_id**\ (\ )

The colliding object's ID.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsGetRestInfoResult3D_property_collider_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **collider_rid** = ``RID()`` :ref:`🔗<class_PhysicsGetRestInfoResult3D_property_collider_rid>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_collider_rid**\ (\ )

The intersecting object's :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsGetRestInfoResult3D_property_collider_shape:

.. rst-class:: classref-property

:ref:`int<class_int>` **collider_shape** = ``0`` :ref:`🔗<class_PhysicsGetRestInfoResult3D_property_collider_shape>`

.. rst-class:: classref-property-setget

- :ref:`int<class_int>` **get_collider_shape**\ (\ )

The shape index of the colliding shape.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsGetRestInfoResult3D_property_collider_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **collider_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsGetRestInfoResult3D_property_collider_velocity>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_collider_velocity**\ (\ )

The colliding object's velocity :ref:`Vector3<class_Vector3>`. If the object is an :ref:`Area3D<class_Area3D>`, the result is ``(0, 0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsGetRestInfoResult3D_property_normal:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **normal** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsGetRestInfoResult3D_property_normal>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_normal**\ (\ )

The collision normal of the query shape at the intersection point, pointing away from the intersecting object.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsGetRestInfoResult3D_property_point:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **point** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsGetRestInfoResult3D_property_point>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_point**\ (\ )

The intersection point.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
