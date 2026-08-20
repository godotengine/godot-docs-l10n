:github_url: hide

.. _class_AnimationNodeAdd3:

AnimationNodeAdd3
=================

**Eredita:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fonde due delle tre animazioni in modo additivo all'interno di un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una risorsa da aggiungere a un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Combina due animazioni su tre in modo additivo su tre in base al valore di quantità.

Questo nodo di animazione ha tre ingressi:

- L'animazione base a cui aggiungere

- Un'animazione "-add" con cui fondersi quando la quantità di fusione è negativa

- Un'animazione "+add" con cui fondersi quando la quantità di fusione è positiva

Se il valore assoluto della quantità è maggiore di ``1.0``, l'animazione collegata alla porta "in" viene fusa con l'animazione amplificata collegata alla porta "-add"/"+add".

\ **Nota:** I segni servono solo per distinguere le porte e la fusione additiva avviene sempre in base ai valori assoluti, il che significa che l'animazione di una porta "-add" non viene sottratta dall'animazione di una porta "in".

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzare l'AnimationTree <../tutorials/animation/animation_tree>`

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
