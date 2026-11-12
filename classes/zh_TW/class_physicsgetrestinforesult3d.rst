:github_url: hide

.. _class_PhysicsGetRestInfoResult3D:

PhysicsGetRestInfoResult3D
==========================

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the nearest collision information of a shape query.

.. rst-class:: classref-introduction-group

說明
----

This class contains the collision data computed by :ref:`PhysicsDirectSpaceState3D.get_rest_info_into()<class_PhysicsDirectSpaceState3D_method_get_rest_info_into>`.

If the shape collides with multiple objects, only the nearest collision is stored.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

屬性
----

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

屬性說明
--------

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

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
