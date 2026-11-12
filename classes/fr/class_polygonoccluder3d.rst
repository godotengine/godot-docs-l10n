:github_url: hide

.. _class_PolygonOccluder3D:

PolygonOccluder3D
=================

**Hérite de :** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Forme de polygone 2D plat à utiliser avec l'occlusion culling dans :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Description
-----------

**PolygonOccluder3D** stocke une forme de polygone qui peut être utilisée par le système d'occlusion culling du moteur. Quand un :ref:`OccluderInstance3D<class_OccluderInstance3D>` avec un **PolygonOccluder3D** est sélectionné dans l'éditeur, un éditeur va apparaître en haut du viewport3D afin que vous puissiez ajouter/supprimer des points. Tous les points doivent être placés dans le même plan 2D, ce qui signifie qu'il n'est pas possible de créer des formes 3D arbitraires avec un seul **PolygonOccluder3D**. Pour utiliser des formes 3D arbitraires comme occulteurs, utilisez :ref:`ArrayOccluder3D<class_ArrayOccluder3D>` ou la fonctionnalité de pré-calcul de :ref:`OccluderInstance3D<class_OccluderInstance3D>` à la place.

Voir la documentation d':ref:`OccluderInstance3D<class_OccluderInstance3D>` pour les instructions sur la mise en place de l'occlusion culling.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Occlusion culling <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_PolygonOccluder3D_property_polygon>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PolygonOccluder3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_PolygonOccluder3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Le polygone à utiliser pour l'occlusion culling. Le polygone peut être convexe ou concave, mais il devrait avoir le moins de points possible pour maximiser les performances.

Le polygone ne doit *pas* avoir des lignes qui s'intersectent. Sinon, la triangulation va échouer (avec un message d'erreur affiché).



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
