:github_url: hide

.. _class_PhysicsCollideShapeResult3D:

PhysicsCollideShapeResult3D
===========================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the collision points of a shape collision query.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

This class contains the contact points computed by :ref:`PhysicsDirectSpaceState3D.collide_shape_into()<class_PhysicsDirectSpaceState3D_method_collide_shape_into>`.

Each collision is represented as a pair of points: one on the query shape and one on the colliding shape.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_collisions<class_PhysicsCollideShapeResult3D_property_max_collisions>` | ``32`` |
   +-----------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

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

Descrizioni delle proprietà
------------------------------------------------------

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

Descrizioni dei metodi
--------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
