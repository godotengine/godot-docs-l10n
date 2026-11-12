:github_url: hide

.. _class_AnimationNodeObserverTransition:

AnimationNodeObserverTransition
===============================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`AnimationNodeObserver<class_AnimationNodeObserver>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Observer for events from :ref:`AnimationNodeTransition<class_AnimationNodeTransition>` instances.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
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

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
