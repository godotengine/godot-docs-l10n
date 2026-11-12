:github_url: hide

.. _class_PhysicsIntersectRayResult2D:

PhysicsIntersectRayResult2D
===========================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the result of a ray intersection query.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

This object contains the intersection information produced by :ref:`PhysicsDirectSpaceState2D.intersect_ray_into()<class_PhysicsDirectSpaceState2D_method_intersect_ray_into>`.

After calling :ref:`PhysicsDirectSpaceState2D.intersect_ray_into()<class_PhysicsDirectSpaceState2D_method_intersect_ray_into>`, the fields of this object will be populated with the hit information if the ray intersects a shape. If no intersection occurred, the values remain unchanged from the previous state.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Descrizioni delle proprietà
------------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
