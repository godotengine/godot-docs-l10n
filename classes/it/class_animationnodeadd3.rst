:github_url: hide

.. _class_AnimationNodeAdd3:

AnimationNodeAdd3
=================

**Eredita:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fonde due delle tre animazioni in modo additivo all'interno di un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A resource to add to an :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Blends two animations out of three additively out of three based on the amount value.

This animation node has three inputs:

- The base animation to add to

- A "-add" animation to blend with when the blend amount is negative

- A "+add" animation to blend with when the blend amount is positive

If the absolute value of the amount is greater than ``1.0``, the animation connected to "in" port is blended with the amplified animation connected to "-add"/"+add" port.

\ **Note:** The signs are only used to distinguish ports, and additive blending occurs based on absolute values always, meaning the animation of a "-add" port does not subtract from the animation of an "in" port.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzare l'AnimationTree <../tutorials/animation/animation_tree>`

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
