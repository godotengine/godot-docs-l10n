:github_url: hide

.. _class_ConvexPolygonShape2D:

ConvexPolygonShape2D
====================

**Hérite de :** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une forme de polygone convexe 2D utilisée pour les collisions physiques.

.. rst-class:: classref-introduction-group

Description
-----------

Une forme de polygone convexe 2D, destinée à être utilisée en physique. Utilisé en interne dans :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` lorsque il est en mode :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>`.

\ **ConvexPolygonShape2D** est *solide*, ce qui signifie qu'elle détecte les collisions d’objets qui sont entièrement dans celle-ci, contrairement à :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>` qui est creuse. Cela la rend plus approprié pour la détection et la physique.

\ **Décomposition convexe :** Un polygone concave peut être divisé en plusieurs polygones convexes. Cela permet aux corps physiques dynamiques d'avoir des collisions concaves complexes (à un coût de performance) et peut être réalisé en utilisant plusieurs nœuds **ConvexPolygonShape2D** ou en utilisant le nœud :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` en mode :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>`. Pour générer un polygone de collision à partir d'un sprite, sélectionnez le nœud :ref:`Sprite2D<class_Sprite2D>`, allez dans le menu **Sprite2D** qui apparaît au-dessus de la fenêtre, et choisissez **Créer Polygon2D frère**.

\ **Performance :** **ConvexPolygonShape2D** est plus rapide pour vérifier les collisions comparé à :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, mais il est plus lent que les formes de collision primitives telles que :ref:`CircleShape2D<class_CircleShape2D>` et :ref:`RectangleShape2D<class_RectangleShape2D>`. Son utilisation devrait généralement être limitée à des objets de taille moyenne qui ne peuvent pas avoir leur collision correctement représentée par des formes primitives.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`points<class_ConvexPolygonShape2D_property_points>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_point_cloud<class_ConvexPolygonShape2D_method_set_point_cloud>`\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ConvexPolygonShape2D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **points** = ``PackedVector2Array()`` :ref:`🔗<class_ConvexPolygonShape2D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_points**\ (\ )

La liste des sommets du polygone qui forment une enveloppe convexe. Peut être dans le sens horaire ou dans le sens anti-horaire.

\ **Attention :** Définissez seulement cette propriété à une liste de points qui forment une enveloppe convexe. Utilisez :ref:`set_point_cloud()<class_ConvexPolygonShape2D_method_set_point_cloud>` pour générer l'enveloppe convexe d'un ensemble arbitraire de points.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ConvexPolygonShape2D_method_set_point_cloud:

.. rst-class:: classref-method

|void| **set_point_cloud**\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_ConvexPolygonShape2D_method_set_point_cloud>`

Selon l'ensemble des points fournis, cela assigne la propriété :ref:`points<class_ConvexPolygonShape2D_property_points>` en utilisant l'algorithme d'enveloppe convexe, enlevant tous les points inutiles. Voir :ref:`Geometry2D.convex_hull()<class_Geometry2D_method_convex_hull>` pour plus de détails.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
