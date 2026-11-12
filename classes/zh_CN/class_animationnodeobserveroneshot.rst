:github_url: hide

.. _class_AnimationNodeObserverOneShot:

AnimationNodeObserverOneShot
============================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`AnimationNodeObserver<class_AnimationNodeObserver>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Observer for events from :ref:`AnimationNodeOneShot<class_AnimationNodeOneShot>` instances.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

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

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
