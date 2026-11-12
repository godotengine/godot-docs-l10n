:github_url: hide

.. _class_AnimationNodeObserverOneShot:

AnimationNodeObserverOneShot
============================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`AnimationNodeObserver<class_AnimationNodeObserver>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Observer for events from :ref:`AnimationNodeOneShot<class_AnimationNodeOneShot>` instances.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
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

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
