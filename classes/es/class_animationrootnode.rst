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

La clase **AnimationRootNode** es una clase base para los nodos :ref:`AnimationNode<class_AnimationNode>` que contienen una animación completa. Una animación completa se refiere a la salida de un :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` en un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` o a la salida de otro **AnimationRootNode**. Se utiliza con :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>` o dentro de otros **AnimationRootNode**.

Algunos ejemplos de nodos raíz integrados incluyen :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` (permite mezclar nodos entre sí usando varios modos), :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` (permite configurar la mezcla y las transiciones entre nodos utilizando un patrón de máquina de estados), :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>` (permite la mezcla lineal entre **tres** :ref:`AnimationNode<class_AnimationNode>`) y :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>` (permite la mezcla lineal únicamente entre **dos** :ref:`AnimationNode<class_AnimationNode>`).

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
