:github_url: hide

.. _class_AnimationNodeObserverTransition:

AnimationNodeObserverTransition
===============================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`AnimationNodeObserver<class_AnimationNodeObserver>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Observer for events from :ref:`AnimationNodeTransition<class_AnimationNodeTransition>` instances.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
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

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
