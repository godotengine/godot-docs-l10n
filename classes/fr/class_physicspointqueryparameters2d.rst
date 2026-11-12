:github_url: hide

.. _class_PhysicsPointQueryParameters2D:

PhysicsPointQueryParameters2D
=============================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fournit des paramètres pour :ref:`PhysicsDirectSpaceState2D.intersect_point()<class_PhysicsDirectSpaceState2D_method_intersect_point>`.

.. rst-class:: classref-introduction-group

Description
-----------

By changing various properties of this object, such as the point position, you can configure the parameters for :ref:`PhysicsDirectSpaceState2D.intersect_point()<class_PhysicsDirectSpaceState2D_method_intersect_point>`.

\ **Note:** For optimal performance results, it is recommended to create this object in advance, store it, and reuse it for every subsequent query.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                              | :ref:`canvas_instance_id<class_PhysicsPointQueryParameters2D_property_canvas_instance_id>`   | ``0``             |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_areas<class_PhysicsPointQueryParameters2D_property_collide_with_areas>`   | ``false``         |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                            | :ref:`collide_with_bodies<class_PhysicsPointQueryParameters2D_property_collide_with_bodies>` | ``true``          |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                              | :ref:`collision_mask<class_PhysicsPointQueryParameters2D_property_collision_mask>`           | ``4294967295``    |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`exclude<class_PhysicsPointQueryParameters2D_property_exclude>`                         | ``[]``            |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                      | :ref:`position<class_PhysicsPointQueryParameters2D_property_position>`                       | ``Vector2(0, 0)`` |
   +----------------------------------------------------+----------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PhysicsPointQueryParameters2D_property_canvas_instance_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **canvas_instance_id** = ``0`` :ref:`🔗<class_PhysicsPointQueryParameters2D_property_canvas_instance_id>`

.. rst-class:: classref-property-setget

- |void| **set_canvas_instance_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_canvas_instance_id**\ (\ )

Si différent de ``0``, limite la requête à une couche de canevas spécifique spécifiée par son ID d'instance. Voir :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`.

Si ``0``, limite la requête à la couche de canevas par défaut du Viewport.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_PhysicsPointQueryParameters2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Si ``true``, la requête prendra la :ref:`Area2D<class_Area2D>` en compte.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_PhysicsPointQueryParameters2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Si ``true``, la requête prendra la :ref:`PhysicsBody2D<class_PhysicsBody2D>` en compte.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``4294967295`` :ref:`🔗<class_PhysicsPointQueryParameters2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Les couches de physique que la requête détectera (en tant que masque de bits). Par défaut, toutes les couches de collision sont détectées. Voir `Niveaux et masques de collisions <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ dans la documentation pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters2D_property_exclude:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **exclude** = ``[]`` :ref:`🔗<class_PhysicsPointQueryParameters2D_property_exclude>`

.. rst-class:: classref-property-setget

- |void| **set_exclude**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_exclude**\ (\ )

La liste des :ref:`RID<class_RID>`\ s des objets qui seront exclus des collisions. Utilisez :ref:`CollisionObject2D.get_rid()<class_CollisionObject2D_method_get_rid>` pour obtenir le :ref:`RID<class_RID>` associé à un nœud dérivé de :ref:`CollisionObject2D<class_CollisionObject2D>`.

\ **Note :** Le tableau renvoyé est copié et tout changement apporté à celui-ci ne mettra pas à jour la valeur de la propriété originale. Pour mettre à jour la valeur, vous devez modifier le tableau renvoyé, puis l'affecter à nouveau à la propriété.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsPointQueryParameters2D_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_PhysicsPointQueryParameters2D_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

La position faisant l'objet de la demande, dans les coordonnées globales.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
