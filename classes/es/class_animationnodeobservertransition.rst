:github_url: hide

.. _class_AnimationNodeObserverTransition:

AnimationNodeObserverTransition
===============================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`AnimationNodeObserver<class_AnimationNodeObserver>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Observer for events from :ref:`AnimationNodeTransition<class_AnimationNodeTransition>` instances.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
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

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
