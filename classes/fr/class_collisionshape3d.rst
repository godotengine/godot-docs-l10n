:github_url: hide

.. _class_CollisionShape3D:

CollisionShape3D
================

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nœud qui fournit une :ref:`Shape3D<class_Shape3D>` à un parent :ref:`CollisionObject3D<class_CollisionObject3D>`.

.. rst-class:: classref-introduction-group

Description
-----------

Un nœud qui fournit une :ref:`Shape3D<class_Shape3D>` à un parent :ref:`CollisionObject3D<class_CollisionObject3D>` et permet de la modifier. Cela peut donner une forme de détection à une :ref:`Area3D<class_Area3D>` ou transformer un :ref:`PhysicsBody3D<class_PhysicsBody3D>` en un objet solide.

\ **Attention :**\  Un **CollisionShape3D** non-uniformémement dimensionné ne se comportera probablement pas comme prévu. Assurez-vous de garder la même échelle sur tous les axes et d'ajuster sa ressource :ref:`shape<class_CollisionShape3D_property_shape>` à la place.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Introduction à la physique <../tutorials/physics/physics_introduction>`

- `Démo de personnage cinématique en 3D <https://godotengine.org/asset-library/asset/2739>`__

- `Démo de jeu de plateforme en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_color<class_CollisionShape3D_property_debug_color>` | ``Color(0, 0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`debug_fill<class_CollisionShape3D_property_debug_fill>`   | ``true``              |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`disabled<class_CollisionShape3D_property_disabled>`       | ``false``             |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`Shape3D<class_Shape3D>` | :ref:`shape<class_CollisionShape3D_property_shape>`             |                       |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`make_convex_from_siblings<class_CollisionShape3D_method_make_convex_from_siblings>`\ (\ )                           |
   +--------+---------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`resource_changed<class_CollisionShape3D_method_resource_changed>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CollisionShape3D_property_debug_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_CollisionShape3D_property_debug_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_color**\ (\ )

La couleur de la forme de collision qui est affichée dans l'éditeur, ou dans le projet en cours d'exécution si **Débogage > Formes de collision visibles** est coché en haut de l'éditeur.

\ **Note :** La valeur par défaut est :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`. La valeur ``Color(0, 0, 0, 0)`` documentée ici est une valeur générique, et pas la couleur de débogage par défaut réelle.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_property_debug_fill:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_fill** = ``true`` :ref:`🔗<class_CollisionShape3D_property_debug_fill>`

.. rst-class:: classref-property-setget

- |void| **set_enable_debug_fill**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_debug_fill**\ (\ )

Si ``true``, lorsque la forme est affichée, elle affichera une couleur de remplissage solide en plus de son fil de fer.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionShape3D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Une forme de collision désactivée n’a aucun effet dans le monde. Cette propriété devrait être modifiée avec :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_property_shape:

.. rst-class:: classref-property

:ref:`Shape3D<class_Shape3D>` **shape** :ref:`🔗<class_CollisionShape3D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape3D<class_Shape3D>`\ )
- :ref:`Shape3D<class_Shape3D>` **get_shape**\ (\ )

La forme réelle appartenant à cette forme de collision.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_CollisionShape3D_method_make_convex_from_siblings:

.. rst-class:: classref-method

|void| **make_convex_from_siblings**\ (\ ) :ref:`🔗<class_CollisionShape3D_method_make_convex_from_siblings>`

Définit la forme de la forme de collision à l'union rendue convexe de toutes les géométries de ses frères et sœurs :ref:`MeshInstance3D<class_MeshInstance3D>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_CollisionShape3D_method_resource_changed>`

**Obsolète :** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

Cette méthode ne fait rien.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
