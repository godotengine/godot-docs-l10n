:github_url: hide

.. _class_AnimationRootNode:

AnimationRootNode
=================

**Eredita:** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AnimationNodeAnimation<class_AnimationNodeAnimation>`, :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`, :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`, :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`, :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`

Classe di base per gli :ref:`AnimationNode<class_AnimationNode>` che mantengono una o più animazioni composte. Di solito usato per :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**AnimationRootNode** è una classe di base per gli :ref:`AnimationNode<class_AnimationNode>` che mantengono un'animazione completa. Un'animazione completa si riferisce al prodotto di un :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` in un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` o al prodotto di un altro **AnimationRootNode**. Utilizzato per :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>` o in altri **AnimationRootNode**.

Esempi di nodi di radice incorporati includono :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` (permette di mischiare i nodi tra loro attraverso vari modi), :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` (permette di configurare la fusione e le transizioni tra i nodi attraverso un modello di macchina a stati), :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>` (permette la fusione lineare tra **tre** :ref:`AnimationNode<class_AnimationNode>`), :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>` (permette la fusione lineare soltanto tra **due** :ref:`AnimationNode<class_AnimationNode>`).

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzare l'AnimationTree <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
