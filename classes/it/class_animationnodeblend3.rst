:github_url: hide

.. _class_AnimationNodeBlend3:

AnimationNodeBlend3
===================

**Eredita:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fonde linearmente due su tre animazioni all'interno di un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una risorsa da aggiungere a un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Fonde linearmente due animazioni su tre in base al valore di quantità.

Questo nodo di animazione ha tre ingressi:

- L'animazione di base da fondere

- Un'animazione "-blend" per fondersi quando la quantità di fusione è un valore negativo

- Un'animazione "+blend" per fondersi quando la quantità di fusione è un valore positivo

In generale, il valore di fusione dovrebbe essere compreso nell'intervallo ``[-1.0, 1.0]``. I valori al di fuori di questo intervallo possono fondere animazioni amplificate. Tuttavia, :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>` funziona meglio per questo scopo.

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
