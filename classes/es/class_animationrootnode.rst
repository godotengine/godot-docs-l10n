:github_url: hide

.. _class_AnimationRootNode:

AnimationRootNode
=================

**Hereda:** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AnimationNodeAnimation<class_AnimationNodeAnimation>`, :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`, :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`, :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`, :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`

Clase base para :ref:`AnimationNode<class_AnimationNode>`\ s que contienen una o varias animaciones compuestas. Se usa habitualmente para :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**AnimationRootNode** is a base class for :ref:`AnimationNode<class_AnimationNode>`\ s that hold a complete animation. A complete animation refers to the output of an :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` in an :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` or the output of another **AnimationRootNode**. Used for :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>` or in other **AnimationRootNode**\ s.

Examples of built-in root nodes include :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` (allows blending nodes between each other using various modes), :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` (allows to configure blending and transitions between nodes using a state machine pattern), :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>` (allows linear blending between **three** :ref:`AnimationNode<class_AnimationNode>`\ s), :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>` (allows linear blending only between **two** :ref:`AnimationNode<class_AnimationNode>`\ s).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando AnimationTree <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
