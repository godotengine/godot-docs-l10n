:github_url: hide

.. _class_AnimationNodeObserverTransition:

AnimationNodeObserverTransition
===============================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`AnimationNodeObserver<class_AnimationNodeObserver>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Observer for events from :ref:`AnimationNodeTransition<class_AnimationNodeTransition>` instances.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_AnimationNodeObserverTransition_signal_state_finished:

.. rst-class:: classref-signal

**state_finished**\ (\ state\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNodeObserverTransition_signal_state_finished>`

Emitted when transitioning out of a state. If crossfade time is greater than zero, emits when the crossfade finishes. Otherwise, emits immediately before :ref:`state_started<class_AnimationNodeObserverTransition_signal_state_started>` emits for the new state.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeObserverTransition_signal_state_started:

.. rst-class:: classref-signal

**state_started**\ (\ state\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNodeObserverTransition_signal_state_started>`

Emitted when a transition to a new state starts.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
