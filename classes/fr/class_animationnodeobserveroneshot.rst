:github_url: hide

.. _class_AnimationNodeObserverOneShot:

AnimationNodeObserverOneShot
============================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`AnimationNodeObserver<class_AnimationNodeObserver>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Observer for events from :ref:`AnimationNodeOneShot<class_AnimationNodeOneShot>` instances.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_AnimationNodeObserverOneShot_signal_fade_in_finished:

.. rst-class:: classref-signal

**fade_in_finished**\ (\ ) :ref:`🔗<class_AnimationNodeObserverOneShot_signal_fade_in_finished>`

Emitted when the one-shot has finished fading in. Only emitted if fade-in time is greater than zero.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeObserverOneShot_signal_fade_out_started:

.. rst-class:: classref-signal

**fade_out_started**\ (\ ) :ref:`🔗<class_AnimationNodeObserverOneShot_signal_fade_out_started>`

Emitted when the one-shot has started fading out. Only emitted if fade-out time is greater than zero.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeObserverOneShot_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_AnimationNodeObserverOneShot_signal_finished>`

Emitted when the one-shot has finished.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeObserverOneShot_signal_started:

.. rst-class:: classref-signal

**started**\ (\ ) :ref:`🔗<class_AnimationNodeObserverOneShot_signal_started>`

Emitted when the one-shot has started.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
