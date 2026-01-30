:github_url: hide

.. _class_CCDIK3D:

CCDIK3D
=======

**Hérite de :** :ref:`IterateIK3D<class_IterateIK3D>` **<** :ref:`ChainIK3D<class_ChainIK3D>` **<** :ref:`IKModifier3D<class_IKModifier3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Solveur de cinématique inverse par descente cyclique des coordonnées, basé sur la rotation.

.. rst-class:: classref-introduction-group

Description
-----------

**CCDIK3D** est une IK basée sur la rotation, permettant un suivi rapide et efficace même avec de grandes rotations d’articulations. Elle est particulièrement adaptée aux chaînes avec des limitations, offrant un suivi de cible plus fluide et plus stable que :ref:`FABRIK3D<class_FABRIK3D>`.

La torsion résultante autour du vecteur avant est toujours conservée à partir de la pose précédente.

\ **Note :** Lorsque la cible est proche de la racine, cela peut provoquer des mouvements non naturels, incluant des inversions d’articulations et des oscillations.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
