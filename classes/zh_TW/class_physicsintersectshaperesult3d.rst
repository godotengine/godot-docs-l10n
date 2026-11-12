:github_url: hide

.. _class_PhysicsIntersectShapeResult3D:

PhysicsIntersectShapeResult3D
=============================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the results of a shape intersection query.

.. rst-class:: classref-introduction-group

說明
----

This class contains the intersection information produced by :ref:`PhysicsDirectSpaceState3D.intersect_shape_into()<class_PhysicsDirectSpaceState3D_method_intersect_shape_into>`.

It can store multiple intersections, up to a user-defined maximum.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_intersections<class_PhysicsIntersectShapeResult3D_property_max_intersections>` | ``32`` |
   +-----------------------+------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>` | :ref:`get_collider<class_PhysicsIntersectShapeResult3D_method_get_collider>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|             |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_collider_id<class_PhysicsIntersectShapeResult3D_method_get_collider_id>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|       |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`       | :ref:`get_collider_rid<class_PhysicsIntersectShapeResult3D_method_get_collider_rid>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_collider_shape<class_PhysicsIntersectShapeResult3D_method_get_collider_shape>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_intersection_count<class_PhysicsIntersectShapeResult3D_method_get_intersection_count>`\ (\ ) |const|                                     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_PhysicsIntersectShapeResult3D_property_max_intersections:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_intersections** = ``32`` :ref:`🔗<class_PhysicsIntersectShapeResult3D_property_max_intersections>`

.. rst-class:: classref-property-setget

- |void| **set_max_intersections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_intersections**\ (\ )

The maximum number of intersections this result object can store.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_PhysicsIntersectShapeResult3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectShapeResult3D_method_get_collider>`

The colliding object.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectShapeResult3D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectShapeResult3D_method_get_collider_id>`

The colliding object's ID.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectShapeResult3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectShapeResult3D_method_get_collider_rid>`

The intersecting object's :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectShapeResult3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectShapeResult3D_method_get_collider_shape>`

The shape index of the colliding shape.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectShapeResult3D_method_get_intersection_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_intersection_count**\ (\ ) |const| :ref:`🔗<class_PhysicsIntersectShapeResult3D_method_get_intersection_count>`

Returns the number of shapes that intersect with the query shape.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
