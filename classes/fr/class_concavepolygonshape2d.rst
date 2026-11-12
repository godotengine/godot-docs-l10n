:github_url: hide

.. _class_ConcavePolygonShape2D:

ConcavePolygonShape2D
=====================

**Hérite de :** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une forme polyligne 2D utilisée pour les collisions physiques.

.. rst-class:: classref-introduction-group

Description
-----------

Une forme de polyligne 2D, destinée à être utilisée pour la physique. Utilisée en interne dans :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` quand il est en mode :ref:`CollisionPolygon2D.BUILD_SEGMENTS<class_CollisionPolygon2D_constant_BUILD_SEGMENTS>`.

Étant seulement une collection de segments interconnectés, **ConcavePolygonShape2D** est la forme 2D la plus librement configurable. Elle peut être utilisée pour former des polygones de toute nature, ou même des formes qui n'entourent pas de zone. Cependant, **ConcavePolygonShape2D** est *creuse* même si les segments interconnectés entourent effectivement une zone, ce qui la rend souvent inappropriée pour la physique ou la détection.

\ **Note :** Lorsqu'elle est utilisée pour la collision, **ConcavePolygonShape2D** est destinée à travailler avec des nœuds :ref:`CollisionShape2D<class_CollisionShape2D>` statiques comme :ref:`StaticBody2D<class_StaticBody2D>` et ne se comportera probablement pas bien pour des :ref:`CharacterBody2D<class_CharacterBody2D>` ou des :ref:`RigidBody2D<class_RigidBody2D>` dans un mode autre que Statique.

\ **Attention :** Les corps physiques qui sont petits ont la chance de traverser cette forme en se déplaçant rapidement. Cela se produit parce que sur une trame, le corps physique peut être "en dehors" de la forme, et sur le prochaine trame il peut être "dans" celle-ci. **ConcavePolygonShape2D** est creuse, donc elle ne détectera pas de collision.

\ **Performance :** En raison de sa complexité, **ConcavePolygonShape2D** est la forme de collision 2D la plus lente pour vérifier les collisions. Son utilisation devrait généralement être limitée à la géométrie de niveau. Si la polyline est fermée, le mode :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>` de :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` peut être utilisé, ce qui décompose le polygone en polygones convexes, voir la documentation de :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>` pour les instructions.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`segments<class_ConcavePolygonShape2D_property_segments>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ConcavePolygonShape2D_property_segments:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **segments** = ``PackedVector2Array()`` :ref:`🔗<class_ConcavePolygonShape2D_property_segments>`

.. rst-class:: classref-property-setget

- |void| **set_segments**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_segments**\ (\ )

Le tableau des points qui composent les segments du **ConcavePolygonShape2D**. Le tableau (de longueur divisible par deux) est naturellement divisé en paires (une paire pour chaque segment). Chaque paire se compose du point de départ d'un segment et du point de fin d'un segment.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
