:github_url: hide

.. _class_AudioEffectNotchFilter:

AudioEffectNotchFilter
======================

**继承：** :ref:`AudioEffectFilter<class_AudioEffectFilter>` **<** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

向音频总线添加一个陷波滤波器。

.. rst-class:: classref-introduction-group

描述
----

“陷波”滤波器会衰减 :ref:`AudioEffectFilter.cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 处的频率，并允许处于该频率阈值之外的频率原样通过。它是 :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>` 的一种更窄、衰减效果更强的版本，且功能上与 :ref:`AudioEffectBandPassFilter<class_AudioEffectBandPassFilter>` 相反。

该滤波器可用于为该频率上的其他声音提供更多播放空间。由于它能大幅衰减频率，因此也可以用来完全消除不需要的频率。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频总线 <../tutorials/audio/audio_buses>`

- :doc:`音效 <../tutorials/audio/audio_effects>`

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
