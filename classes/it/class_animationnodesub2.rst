:github_url: hide

.. _class_AnimationNodeSub2:

AnimationNodeSub2
=================

**Eredita:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fonde due animazioni in modo sottrattivo all'interno di un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una risorsa da aggiungere a un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Fonde due animazioni in modo sottrattivo in base al valore di quantità.

Questo nodo di animazione è solitamente usato per cancellare qualsiasi posa aggiuntiva dall'animazione per la sorgente di animazione "add" in :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` o :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>`.

In generale, il valore della fusione dovrebbe essere nell'intervallo ``[0.0, 1.0]``, ma i valori al di fuori di questo intervallo possono essere utilizzati per animazioni amplificate o invertite.

\ **Nota:** Questo calcolo è diverso dall'uso di un valore negativo in :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`, poiché le operazioni sulle matrici di trasformazione non sono commutative. Un **AnimationNodeSub2** moltiplica la matrice di trasformazione dell'animazione invertita dal lato sinistro, mentre un :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` negativo la moltiplica dal lato destro.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`AnimationTree <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
