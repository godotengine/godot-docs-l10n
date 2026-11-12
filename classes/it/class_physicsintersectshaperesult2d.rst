:github_url: hide

.. _class_PhysicsIntersectShapeResult2D:

PhysicsIntersectShapeResult2D
=============================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the results of a shape intersection query.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

This class contains the intersection information produced by :ref:`PhysicsDirectSpaceState2D.intersect_shape_into()<class_PhysicsDirectSpaceState2D_method_intersect_shape_into>`.

It can store multiple intersections, up to a user-defined maximum.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_intersections<class_PhysicsIntersectShapeResult2D_property_max_intersections>` | ``32`` |
   +-----------------------+------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>` | :ref:`get_collider<class_PhysicsIntersectShapeResult2D_method_get_collider>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|             |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_collider_id<class_PhysicsIntersectShapeResult2D_method_get_collider_id>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|       |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`       | :ref:`get_collider_rid<class_PhysicsIntersectShapeResult2D_method_get_collider_rid>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_collider_shape<class_PhysicsIntersectShapeResult2D_method_get_collider_shape>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_intersection_count<class_PhysicsIntersectShapeResult2D_method_get_intersection_count>`\ (\ ) |const|                                     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_PhysicsIntersectShapeResult2D_property_max_intersections:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_intersections** = ``32`` :ref:`🔗<class_PhysicsIntersectShapeResult2D_property_max_intersections>`

.. rst-class:: classref-property-setget

- |void| **set_max_intersections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_intersections**\ (\ )

The maximum number of intersections this result object can store.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PhysicsIntersectShapeResult2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectShapeResult2D_method_get_collider>`

The colliding object.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectShapeResult2D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectShapeResult2D_method_get_collider_id>`

The colliding object's ID.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectShapeResult2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectShapeResult2D_method_get_collider_rid>`

The intersecting object's :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectShapeResult2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectShapeResult2D_method_get_collider_shape>`

The shape index of the colliding shape.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectShapeResult2D_method_get_intersection_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_intersection_count**\ (\ ) |const| :ref:`🔗<class_PhysicsIntersectShapeResult2D_method_get_intersection_count>`

Returns the number of shapes that intersect with the query shape.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
