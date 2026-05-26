:github_url: hide

.. _class_Shape3D:

Shape3D
=======

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`BoxShape3D<class_BoxShape3D>`, :ref:`CapsuleShape3D<class_CapsuleShape3D>`, :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`, :ref:`CylinderShape3D<class_CylinderShape3D>`, :ref:`HeightMapShape3D<class_HeightMapShape3D>`, :ref:`SeparationRayShape3D<class_SeparationRayShape3D>`, :ref:`SphereShape3D<class_SphereShape3D>`, :ref:`WorldBoundaryShape3D<class_WorldBoundaryShape3D>`

Classe de base abstraite pour les formes 3D utilisées pour les collisions physiques.

.. rst-class:: classref-introduction-group

Description
-----------

Classe de base abstraite pour toutes les formes 3D, destinée à être utilisée pour la physique.

\ **Performance :** Les formes primitives, en particulier :ref:`SphereShape3D<class_SphereShape3D>`, sont rapides pour vérifier les collisions. :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` et :ref:`HeightMapShape3D<class_HeightMapShape3D>` sont plus lentes, et :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` est la plus lente.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Introduction à la physique <../tutorials/physics/physics_introduction>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`custom_solver_bias<class_Shape3D_property_custom_solver_bias>` | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`margin<class_Shape3D_property_margin>`                         | ``0.04`` |
   +---------------------------+----------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>` | :ref:`get_debug_mesh<class_Shape3D_method_get_debug_mesh>`\ (\ ) |
   +-----------------------------------+------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Shape3D_property_custom_solver_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_solver_bias** = ``0.0`` :ref:`🔗<class_Shape3D_property_custom_solver_bias>`

.. rst-class:: classref-property-setget

- |void| **set_custom_solver_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_solver_bias**\ (\ )

The shape's custom solver bias. Defines how much bodies react to enforce contact separation when this shape is involved.

When set to ``0``, the default value from :ref:`ProjectSettings.physics/3d/solver/default_contact_bias<class_ProjectSettings_property_physics/3d/solver/default_contact_bias>` is used.

\ **Note:** :ref:`custom_solver_bias<class_Shape3D_property_custom_solver_bias>` is only effective when using GodotPhysics3D. It has no effect when using Jolt Physics.

.. rst-class:: classref-item-separator

----

.. _class_Shape3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.04`` :ref:`🔗<class_Shape3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

La marge de collision pour la forme. Ceci n'est pas utilisé dans Godot Physics.

Les marges de collision permettent une détection de collision plus efficace en ajoutant une coque supplémentaire autour des formes. Les algorithmes de collision sont plus chers lorsque les objets se chevauchent de plus que leur marge, de sorte qu'une valeur plus élevée pour les marges est meilleure pour la performance, au coût de la précision autour des bords car elle les rend moins nets.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Shape3D_method_get_debug_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **get_debug_mesh**\ (\ ) :ref:`🔗<class_Shape3D_method_get_debug_mesh>`

Renvoie l':ref:`ArrayMesh<class_ArrayMesh>` utilisé pour dessiner la collision de débogage pour ce **Shape3D**.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
