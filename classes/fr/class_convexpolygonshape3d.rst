:github_url: hide

.. _class_ConvexPolygonShape3D:

ConvexPolygonShape3D
====================

**Hérite de :** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une forme de polyèdre convexe 3D utilisée pour les collisions physiques.

.. rst-class:: classref-introduction-group

Description
-----------

A 3D convex polyhedron shape, intended for use in physics. Usually used to provide a shape for a :ref:`CollisionShape3D<class_CollisionShape3D>`.

\ **ConvexPolygonShape3D** is *solid*, which means it detects collisions from objects that are fully inside it, unlike :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` which is hollow. This makes it more suitable for both detection and physics.

\ **Convex decomposition:** A concave polyhedron can be split up into several convex polyhedra. This allows dynamic physics bodies to have complex concave collisions (at a performance cost) and can be achieved by using several **ConvexPolygonShape3D** nodes. To generate a convex decomposition from a mesh, select the :ref:`MeshInstance3D<class_MeshInstance3D>` node, go to the **Mesh** menu that appears above the viewport, and choose **Create Multiple Convex Collision Siblings**. Alternatively, :ref:`MeshInstance3D.create_multiple_convex_collisions()<class_MeshInstance3D_method_create_multiple_convex_collisions>` can be called in a script to perform this decomposition at run-time.

\ **Performance:** **ConvexPolygonShape3D** is faster to check collisions against compared to :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, but it is slower than primitive collision shapes such as :ref:`SphereShape3D<class_SphereShape3D>` and :ref:`BoxShape3D<class_BoxShape3D>`. Its use should generally be limited to medium-sized objects that cannot have their collision accurately represented by primitive shapes.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de tests physiques en 3D <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`points<class_ConvexPolygonShape3D_property_points>` | ``PackedVector3Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ConvexPolygonShape3D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **points** = ``PackedVector3Array()`` :ref:`🔗<class_ConvexPolygonShape3D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_points**\ (\ )

La liste des points 3D formant le polygone convexe.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
