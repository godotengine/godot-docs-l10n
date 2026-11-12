:github_url: hide

.. _class_PhysicsCollideShapeResult3D:

PhysicsCollideShapeResult3D
===========================

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the collision points of a shape collision query.

.. rst-class:: classref-introduction-group

描述
----

This class contains the contact points computed by :ref:`PhysicsDirectSpaceState3D.collide_shape_into()<class_PhysicsDirectSpaceState3D_method_collide_shape_into>`.

Each collision is represented as a pair of points: one on the query shape and one on the colliding shape.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_collisions<class_PhysicsCollideShapeResult3D_property_max_collisions>` | ``32`` |
   +-----------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collision_count<class_PhysicsCollideShapeResult3D_method_get_collision_count>`\ (\ ) |const|                                                            |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_point_on_colliding_shape<class_PhysicsCollideShapeResult3D_method_get_point_on_colliding_shape>`\ (\ collision_index\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_point_on_queried_shape<class_PhysicsCollideShapeResult3D_method_get_point_on_queried_shape>`\ (\ collision_index\: :ref:`int<class_int>`\ ) |const|     |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PhysicsCollideShapeResult3D_property_max_collisions:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_collisions** = ``32`` :ref:`🔗<class_PhysicsCollideShapeResult3D_property_max_collisions>`

.. rst-class:: classref-property-setget

- |void| **set_max_collisions**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_collisions**\ (\ )

The maximum number of collisions this object can store.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PhysicsCollideShapeResult3D_method_get_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_count**\ (\ ) |const| :ref:`🔗<class_PhysicsCollideShapeResult3D_method_get_collision_count>`

Returns the number of point pairs detected by the query.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsCollideShapeResult3D_method_get_point_on_colliding_shape:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_on_colliding_shape**\ (\ collision_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsCollideShapeResult3D_method_get_point_on_colliding_shape>`

Returns the collision point on the colliding shape for the collision at the given index.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsCollideShapeResult3D_method_get_point_on_queried_shape:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_on_queried_shape**\ (\ collision_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsCollideShapeResult3D_method_get_point_on_queried_shape>`

Returns the collision point on the query shape for the collision at the given index.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
