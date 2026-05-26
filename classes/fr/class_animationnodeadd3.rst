:github_url: hide

.. _class_AnimationNodeAdd3:

AnimationNodeAdd3
=================

**Hérite de :** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Mélange deux des trois animations de manière additive à l'intérieur d'un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Description
-----------

A resource to add to an :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Blends two animations out of three additively out of three based on the amount value.

This animation node has three inputs:

- The base animation to add to

- A "-add" animation to blend with when the blend amount is negative

- A "+add" animation to blend with when the blend amount is positive

If the absolute value of the amount is greater than ``1.0``, the animation connected to "in" port is blended with the amplified animation connected to "-add"/"+add" port.

\ **Note:** The signs are only used to distinguish ports, and additive blending occurs based on absolute values always, meaning the animation of a "-add" port does not subtract from the animation of an "in" port.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser les AnimationTree <../tutorials/animation/animation_tree>`

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
