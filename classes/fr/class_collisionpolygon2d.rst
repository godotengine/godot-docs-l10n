:github_url: hide

.. _class_CollisionPolygon2D:

CollisionPolygon2D
==================

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nœud qui fournit une forme de polygone à un :ref:`CollisionObject2D<class_CollisionObject2D>` parent.

.. rst-class:: classref-introduction-group

Description
-----------

A node that provides a polygon shape to a :ref:`CollisionObject2D<class_CollisionObject2D>` parent and allows it to be edited. The polygon can be concave or convex. This can give a detection shape to an :ref:`Area2D<class_Area2D>`, turn a :ref:`PhysicsBody2D<class_PhysicsBody2D>` into a solid object, or give a hollow shape to a :ref:`StaticBody2D<class_StaticBody2D>`.

\ **Warning:** A non-uniformly scaled **CollisionPolygon2D** will likely not behave as expected. Make sure to keep its scale the same on all axes and adjust its polygon instead.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` | :ref:`build_mode<class_CollisionPolygon2D_property_build_mode>`                                   | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`disabled<class_CollisionPolygon2D_property_disabled>`                                       | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`one_way_collision<class_CollisionPolygon2D_property_one_way_collision>`                     | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`one_way_collision_direction<class_CollisionPolygon2D_property_one_way_collision_direction>` | ``Vector2(0, 1)``        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`one_way_collision_margin<class_CollisionPolygon2D_property_one_way_collision_margin>`       | ``1.0``                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_CollisionPolygon2D_property_polygon>`                                         | ``PackedVector2Array()`` |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_CollisionPolygon2D_BuildMode:

.. rst-class:: classref-enumeration

enum **BuildMode**: :ref:`🔗<enum_CollisionPolygon2D_BuildMode>`

.. _class_CollisionPolygon2D_constant_BUILD_SOLIDS:

.. rst-class:: classref-enumeration-constant

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **BUILD_SOLIDS** = ``0``

Les collisions incluront le polygone et sa zone contenue. Dans ce mode, le nœud a le même effet que plusieurs nœuds :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>`, un pour chaque forme convexe dans la décomposition convexe du polygone (mais sans le surcoût de plusieurs nœuds).

.. _class_CollisionPolygon2D_constant_BUILD_SEGMENTS:

.. rst-class:: classref-enumeration-constant

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **BUILD_SEGMENTS** = ``1``

Les collisions incluront seulement les arêtes du polygone. Dans ce mode, le nœud a le même effet que plusieurs nœuds :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` faits de segments, avec la restriction que chaque segment (après le premier) commence la où le précédent se termine, et le dernier se termine là où le premier commence (formant un polygone fermé mais creux).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CollisionPolygon2D_property_build_mode:

.. rst-class:: classref-property

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **build_mode** = ``0`` :ref:`🔗<class_CollisionPolygon2D_property_build_mode>`

.. rst-class:: classref-property-setget

- |void| **set_build_mode**\ (\ value\: :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>`\ )
- :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **get_build_mode**\ (\ )

Mode de construction de la collision.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionPolygon2D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Si ``true``, aucune collision ne sera détectée. Cette propriété devrait être modifiée avec :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_one_way_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_way_collision** = ``false`` :ref:`🔗<class_CollisionPolygon2D_property_one_way_collision>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_way_collision_enabled**\ (\ )

If ``true``, only edges that face up, relative to **CollisionPolygon2D**'s rotation, will collide with other objects.

\ **Note:** This property has no effect if this **CollisionPolygon2D** is a child of an :ref:`Area2D<class_Area2D>` node.

\ **Note:** The one way collision direction can be configured by setting :ref:`one_way_collision_direction<class_CollisionPolygon2D_property_one_way_collision_direction>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_one_way_collision_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **one_way_collision_direction** = ``Vector2(0, 1)`` :ref:`🔗<class_CollisionPolygon2D_property_one_way_collision_direction>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_one_way_collision_direction**\ (\ )

The direction used for one-way collision.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_one_way_collision_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **one_way_collision_margin** = ``1.0`` :ref:`🔗<class_CollisionPolygon2D_property_one_way_collision_margin>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_one_way_collision_margin**\ (\ )

La marge (en pixels) utilisée pour une collision à sens unique. Des valeurs plus élevées rendront la forme plus épaisse, et fonctionneront mieux pour les objets entrant en collision avec le polygone quand ils vont à une vitesse élevée.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_CollisionPolygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

La liste des sommets du polygone. Chaque point sera connecté au suivant, et le dernier point sera connecté au premier.

\ **Note :** Les sommets renvoyés sont dans l'espace de coordonnées locales du **CollisionPolygon2D** donné.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
