:github_url: hide

.. _class_PhysicsIntersectPointResult2D:

PhysicsIntersectPointResult2D
=============================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the results of a point intersection query.

.. rst-class:: classref-introduction-group

描述
----

This class contains the intersection information produced by :ref:`PhysicsDirectSpaceState2D.intersect_point_into()<class_PhysicsDirectSpaceState2D_method_intersect_point_into>`.

It stores up to a user-defined number of overlapping shapes.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_intersections<class_PhysicsIntersectPointResult2D_property_max_intersections>` | ``32`` |
   +-----------------------+------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>` | :ref:`get_collider<class_PhysicsIntersectPointResult2D_method_get_collider>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|             |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_collider_id<class_PhysicsIntersectPointResult2D_method_get_collider_id>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|       |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`       | :ref:`get_collider_rid<class_PhysicsIntersectPointResult2D_method_get_collider_rid>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_collider_shape<class_PhysicsIntersectPointResult2D_method_get_collider_shape>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_intersection_count<class_PhysicsIntersectPointResult2D_method_get_intersection_count>`\ (\ ) |const|                                     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PhysicsIntersectPointResult2D_property_max_intersections:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_intersections** = ``32`` :ref:`🔗<class_PhysicsIntersectPointResult2D_property_max_intersections>`

.. rst-class:: classref-property-setget

- |void| **set_max_intersections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_intersections**\ (\ )

The maximum number of intersections this result object can store.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PhysicsIntersectPointResult2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult2D_method_get_collider>`

The colliding object.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectPointResult2D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult2D_method_get_collider_id>`

The colliding object's ID.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectPointResult2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult2D_method_get_collider_rid>`

The intersecting object's :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectPointResult2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult2D_method_get_collider_shape>`

The shape index of the colliding shape.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectPointResult2D_method_get_intersection_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_intersection_count**\ (\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult2D_method_get_intersection_count>`

Returns the number of shapes that intersect the queried point.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
