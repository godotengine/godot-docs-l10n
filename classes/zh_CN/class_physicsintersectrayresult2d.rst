:github_url: hide

.. _class_PhysicsIntersectRayResult2D:

PhysicsIntersectRayResult2D
===========================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the result of a ray intersection query.

.. rst-class:: classref-introduction-group

描述
----

This object contains the intersection information produced by :ref:`PhysicsDirectSpaceState2D.intersect_ray_into()<class_PhysicsDirectSpaceState2D_method_intersect_ray_into>`.

After calling :ref:`PhysicsDirectSpaceState2D.intersect_ray_into()<class_PhysicsDirectSpaceState2D_method_intersect_ray_into>`, the fields of this object will be populated with the hit information if the ray intersects a shape. If no intersection occurred, the values remain unchanged from the previous state.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------+-------------------+
   | :ref:`Object<class_Object>`   | :ref:`collider<class_PhysicsIntersectRayResult2D_property_collider>`             |                   |
   +-------------------------------+----------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`collider_id<class_PhysicsIntersectRayResult2D_property_collider_id>`       | ``0``             |
   +-------------------------------+----------------------------------------------------------------------------------+-------------------+
   | :ref:`RID<class_RID>`         | :ref:`collider_rid<class_PhysicsIntersectRayResult2D_property_collider_rid>`     | ``RID()``         |
   +-------------------------------+----------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`collider_shape<class_PhysicsIntersectRayResult2D_property_collider_shape>` | ``0``             |
   +-------------------------------+----------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`normal<class_PhysicsIntersectRayResult2D_property_normal>`                 | ``Vector2(0, 0)`` |
   +-------------------------------+----------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_PhysicsIntersectRayResult2D_property_position>`             | ``Vector2(0, 0)`` |
   +-------------------------------+----------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PhysicsIntersectRayResult2D_property_collider:

.. rst-class:: classref-property

:ref:`Object<class_Object>` **collider** :ref:`🔗<class_PhysicsIntersectRayResult2D_property_collider>`

.. rst-class:: classref-property-setget

- :ref:`Object<class_Object>` **get_collider**\ (\ )

The colliding object.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectRayResult2D_property_collider_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **collider_id** = ``0`` :ref:`🔗<class_PhysicsIntersectRayResult2D_property_collider_id>`

.. rst-class:: classref-property-setget

- :ref:`int<class_int>` **get_collider_id**\ (\ )

The colliding object's ID.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectRayResult2D_property_collider_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **collider_rid** = ``RID()`` :ref:`🔗<class_PhysicsIntersectRayResult2D_property_collider_rid>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_collider_rid**\ (\ )

The intersecting object's :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectRayResult2D_property_collider_shape:

.. rst-class:: classref-property

:ref:`int<class_int>` **collider_shape** = ``0`` :ref:`🔗<class_PhysicsIntersectRayResult2D_property_collider_shape>`

.. rst-class:: classref-property-setget

- :ref:`int<class_int>` **get_collider_shape**\ (\ )

The shape index of the colliding shape.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectRayResult2D_property_normal:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **normal** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsIntersectRayResult2D_property_normal>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_normal**\ (\ )

The object's surface normal at the intersection point, or ``Vector2(0, 0)`` if the ray starts inside the shape and :ref:`PhysicsRayQueryParameters2D.hit_from_inside<class_PhysicsRayQueryParameters2D_property_hit_from_inside>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectRayResult2D_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsIntersectRayResult2D_property_position>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

The intersection point.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
