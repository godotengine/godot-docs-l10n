:github_url: hide

.. _class_AnimationNodeObserverTransition:

AnimationNodeObserverTransition
===============================

**實驗性：** This class may be changed or removed in future versions.

**繼承：** :ref:`AnimationNodeObserver<class_AnimationNodeObserver>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Observer for events from :ref:`AnimationNodeTransition<class_AnimationNodeTransition>` instances.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

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

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
