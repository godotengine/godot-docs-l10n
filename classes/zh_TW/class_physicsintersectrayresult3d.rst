:github_url: hide

.. _class_PhysicsIntersectRayResult3D:

PhysicsIntersectRayResult3D
===========================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the result of a ray intersection query.

.. rst-class:: classref-introduction-group

說明
----

This object contains the intersection information produced by :ref:`PhysicsDirectSpaceState3D.intersect_ray_into()<class_PhysicsDirectSpaceState3D_method_intersect_ray_into>`.

After calling :ref:`PhysicsDirectSpaceState3D.intersect_ray_into()<class_PhysicsDirectSpaceState3D_method_intersect_ray_into>`, the fields of this object will be populated with the hit information if the ray intersects a shape. If no intersection occurred, the values remain unchanged from the previous state.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Object<class_Object>`   | :ref:`collider<class_PhysicsIntersectRayResult3D_property_collider>`                       |                      |
   +-------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`collider_face_index<class_PhysicsIntersectRayResult3D_property_collider_face_index>` | ``-1``               |
   +-------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`collider_id<class_PhysicsIntersectRayResult3D_property_collider_id>`                 | ``0``                |
   +-------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`RID<class_RID>`         | :ref:`collider_rid<class_PhysicsIntersectRayResult3D_property_collider_rid>`               | ``RID()``            |
   +-------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`collider_shape<class_PhysicsIntersectRayResult3D_property_collider_shape>`           | ``0``                |
   +-------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`normal<class_PhysicsIntersectRayResult3D_property_normal>`                           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`position<class_PhysicsIntersectRayResult3D_property_position>`                       | ``Vector3(0, 0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PhysicsIntersectRayResult3D_property_collider:

.. rst-class:: classref-property

:ref:`Object<class_Object>` **collider** :ref:`🔗<class_PhysicsIntersectRayResult3D_property_collider>`

.. rst-class:: classref-property-setget

- :ref:`Object<class_Object>` **get_collider**\ (\ )

The colliding object.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectRayResult3D_property_collider_face_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **collider_face_index** = ``-1`` :ref:`🔗<class_PhysicsIntersectRayResult3D_property_collider_face_index>`

.. rst-class:: classref-property-setget

- :ref:`int<class_int>` **get_collider_face_index**\ (\ )

The face index at the intersection point.

\ **Note:** Returns a valid number only if the intersected shape is a :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`. Otherwise, ``-1`` is returned.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectRayResult3D_property_collider_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **collider_id** = ``0`` :ref:`🔗<class_PhysicsIntersectRayResult3D_property_collider_id>`

.. rst-class:: classref-property-setget

- :ref:`int<class_int>` **get_collider_id**\ (\ )

The colliding object's ID.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectRayResult3D_property_collider_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **collider_rid** = ``RID()`` :ref:`🔗<class_PhysicsIntersectRayResult3D_property_collider_rid>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_collider_rid**\ (\ )

The intersecting object's :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectRayResult3D_property_collider_shape:

.. rst-class:: classref-property

:ref:`int<class_int>` **collider_shape** = ``0`` :ref:`🔗<class_PhysicsIntersectRayResult3D_property_collider_shape>`

.. rst-class:: classref-property-setget

- :ref:`int<class_int>` **get_collider_shape**\ (\ )

The shape index of the colliding shape.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectRayResult3D_property_normal:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **normal** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsIntersectRayResult3D_property_normal>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_normal**\ (\ )

The object's surface normal at the intersection point, or ``Vector3(0, 0, 0)`` if the ray starts inside the shape and :ref:`PhysicsRayQueryParameters3D.hit_from_inside<class_PhysicsRayQueryParameters3D_property_hit_from_inside>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectRayResult3D_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicsIntersectRayResult3D_property_position>`

.. rst-class:: classref-property-setget

- :ref:`Vector3<class_Vector3>` **get_position**\ (\ )

The intersection point.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
