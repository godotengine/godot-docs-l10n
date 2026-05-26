:github_url: hide

.. _class_CollisionShape2D:

CollisionShape2D
================

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nœud qui fournit une :ref:`Shape2D<class_Shape2D>` à un parent :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-introduction-group

Description
-----------

Un nœud qui fournit une :ref:`Shape2D<class_Shape2D>` à un parent :ref:`CollisionObject2D<class_CollisionObject2D>` et permet de la modifier. Cela peut donner une forme de détection à une :ref:`Area2D<class_Area2D>` ou transformer un :ref:`PhysicsBody2D<class_PhysicsBody2D>` en un objet solide.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Introduction à la physique <../tutorials/physics/physics_introduction>`

- `Démo 2D « Dodge The Creeps » <https://godotengine.org/asset-library/asset/2712>`__

- `Démo 2D « Pong » <https://godotengine.org/asset-library/asset/2728>`__

- `Démo de personnage cinématique en 2D <https://godotengine.org/asset-library/asset/2719>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_color<class_CollisionShape2D_property_debug_color>`                                 | ``Color(0, 0, 0, 0)`` |
   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`disabled<class_CollisionShape2D_property_disabled>`                                       | ``false``             |
   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`one_way_collision<class_CollisionShape2D_property_one_way_collision>`                     | ``false``             |
   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`one_way_collision_direction<class_CollisionShape2D_property_one_way_collision_direction>` | ``Vector2(0, 1)``     |
   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`     | :ref:`one_way_collision_margin<class_CollisionShape2D_property_one_way_collision_margin>`       | ``1.0``               |
   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Shape2D<class_Shape2D>` | :ref:`shape<class_CollisionShape2D_property_shape>`                                             |                       |
   +-------------------------------+-------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CollisionShape2D_property_debug_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_CollisionShape2D_property_debug_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_color**\ (\ )

La couleur de la forme de collision qui est affichée dans l'éditeur, ou dans le projet en cours d'exécution si **Débogage > Formes de collision visibles** est coché en haut de l'éditeur.

\ **Note :** La valeur par défaut est :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`. La valeur ``Color(0, 0, 0, 0)`` documentée ici est une valeur générique, et pas la couleur de débogage par défaut réelle.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionShape2D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Une forme de collision désactivée n’a aucun effet dans le monde. Cette propriété devrait être modifiée avec :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_one_way_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_way_collision** = ``false`` :ref:`🔗<class_CollisionShape2D_property_one_way_collision>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_way_collision_enabled**\ (\ )

Sets whether this collision shape should only detect collision on one side (top or bottom).

\ **Note:** This property has no effect if this **CollisionShape2D** is a child of an :ref:`Area2D<class_Area2D>` node.

\ **Note:** The one way collision direction can be configured by setting :ref:`one_way_collision_direction<class_CollisionShape2D_property_one_way_collision_direction>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_one_way_collision_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **one_way_collision_direction** = ``Vector2(0, 1)`` :ref:`🔗<class_CollisionShape2D_property_one_way_collision_direction>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_one_way_collision_direction**\ (\ )

The direction used for one-way collision.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_one_way_collision_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **one_way_collision_margin** = ``1.0`` :ref:`🔗<class_CollisionShape2D_property_one_way_collision_margin>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_one_way_collision_margin**\ (\ )

La marge utilisée pour une collision à sens unique (en pixels). Des valeurs plus élevées rendent la forme plus épaisse et fonctionnent mieux pour les collisionneurs qui entrent dans la forme à grande vitesse.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_shape:

.. rst-class:: classref-property

:ref:`Shape2D<class_Shape2D>` **shape** :ref:`🔗<class_CollisionShape2D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape2D<class_Shape2D>`\ )
- :ref:`Shape2D<class_Shape2D>` **get_shape**\ (\ )

La forme réelle appartenant à cette forme de collision.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
