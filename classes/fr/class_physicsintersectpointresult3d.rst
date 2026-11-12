:github_url: hide

.. _class_PhysicsIntersectPointResult3D:

PhysicsIntersectPointResult3D
=============================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the results of a point intersection query.

.. rst-class:: classref-introduction-group

Description
-----------

This class contains the intersection information produced by :ref:`PhysicsDirectSpaceState3D.intersect_point_into()<class_PhysicsDirectSpaceState3D_method_intersect_point_into>`.

It stores up to a user-defined number of overlapping shapes.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_intersections<class_PhysicsIntersectPointResult3D_property_max_intersections>` | ``32`` |
   +-----------------------+------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>` | :ref:`get_collider<class_PhysicsIntersectPointResult3D_method_get_collider>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|             |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_collider_id<class_PhysicsIntersectPointResult3D_method_get_collider_id>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|       |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`       | :ref:`get_collider_rid<class_PhysicsIntersectPointResult3D_method_get_collider_rid>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const|     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_collider_shape<class_PhysicsIntersectPointResult3D_method_get_collider_shape>`\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_intersection_count<class_PhysicsIntersectPointResult3D_method_get_intersection_count>`\ (\ ) |const|                                     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PhysicsIntersectPointResult3D_property_max_intersections:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_intersections** = ``32`` :ref:`🔗<class_PhysicsIntersectPointResult3D_property_max_intersections>`

.. rst-class:: classref-property-setget

- |void| **set_max_intersections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_intersections**\ (\ )

The maximum number of intersections this result object can store.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_PhysicsIntersectPointResult3D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult3D_method_get_collider>`

The colliding object.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectPointResult3D_method_get_collider_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_id**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult3D_method_get_collider_id>`

The colliding object's ID.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectPointResult3D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult3D_method_get_collider_rid>`

The intersecting object's :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectPointResult3D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ intersection_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult3D_method_get_collider_shape>`

The shape index of the colliding shape.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsIntersectPointResult3D_method_get_intersection_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_intersection_count**\ (\ ) |const| :ref:`🔗<class_PhysicsIntersectPointResult3D_method_get_intersection_count>`

Returns the number of shapes that intersect the queried point.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
