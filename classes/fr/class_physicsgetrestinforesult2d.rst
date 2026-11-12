:github_url: hide

.. _class_PhysicsGetRestInfoResult2D:

PhysicsGetRestInfoResult2D
==========================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stores the nearest collision information of a shape query.

.. rst-class:: classref-introduction-group

Description
-----------

This class contains the collision data computed by :ref:`PhysicsDirectSpaceState2D.get_rest_info_into()<class_PhysicsDirectSpaceState2D_method_get_rest_info_into>`.

If the shape collides with multiple objects, only the nearest collision is stored.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`collider_id<class_PhysicsGetRestInfoResult2D_property_collider_id>`             | ``0``             |
   +-------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`RID<class_RID>`         | :ref:`collider_rid<class_PhysicsGetRestInfoResult2D_property_collider_rid>`           | ``RID()``         |
   +-------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`collider_shape<class_PhysicsGetRestInfoResult2D_property_collider_shape>`       | ``0``             |
   +-------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`collider_velocity<class_PhysicsGetRestInfoResult2D_property_collider_velocity>` | ``Vector2(0, 0)`` |
   +-------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`normal<class_PhysicsGetRestInfoResult2D_property_normal>`                       | ``Vector2(0, 0)`` |
   +-------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`point<class_PhysicsGetRestInfoResult2D_property_point>`                         | ``Vector2(0, 0)`` |
   +-------------------------------+---------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PhysicsGetRestInfoResult2D_property_collider_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **collider_id** = ``0`` :ref:`🔗<class_PhysicsGetRestInfoResult2D_property_collider_id>`

.. rst-class:: classref-property-setget

- :ref:`int<class_int>` **get_collider_id**\ (\ )

The colliding object's ID.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsGetRestInfoResult2D_property_collider_rid:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **collider_rid** = ``RID()`` :ref:`🔗<class_PhysicsGetRestInfoResult2D_property_collider_rid>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_collider_rid**\ (\ )

The intersecting object's :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsGetRestInfoResult2D_property_collider_shape:

.. rst-class:: classref-property

:ref:`int<class_int>` **collider_shape** = ``0`` :ref:`🔗<class_PhysicsGetRestInfoResult2D_property_collider_shape>`

.. rst-class:: classref-property-setget

- :ref:`int<class_int>` **get_collider_shape**\ (\ )

The shape index of the colliding shape.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsGetRestInfoResult2D_property_collider_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **collider_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsGetRestInfoResult2D_property_collider_velocity>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_collider_velocity**\ (\ )

The colliding object's velocity :ref:`Vector2<class_Vector2>`. If the object is an :ref:`Area2D<class_Area2D>`, the result is ``(0, 0)``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsGetRestInfoResult2D_property_normal:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **normal** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsGetRestInfoResult2D_property_normal>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_normal**\ (\ )

The collision normal of the query shape at the intersection point, pointing away from the intersecting object.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsGetRestInfoResult2D_property_point:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **point** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsGetRestInfoResult2D_property_point>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_point**\ (\ )

The intersection point.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
