:github_url: hide

.. _class_AudioEffectBandPassFilter:

AudioEffectBandPassFilter
=========================

**继承：** :ref:`AudioEffectFilter<class_AudioEffectFilter>` **<** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为音频总线添加一个带通滤波器。

.. rst-class:: classref-introduction-group

描述
----

带通（Band-pass）滤波器允许 :ref:`AudioEffectFilter.cutoff_hz<class_AudioEffectFilter_property_cutoff_hz>` 处的频率不受影响地通过，同时衰减该频率阈值之外的频率。它是 :ref:`AudioEffectBandLimitFilter<class_AudioEffectBandLimitFilter>`\ （带限滤波器）和 :ref:`AudioEffectNotchFilter<class_AudioEffectNotchFilter>`\ （陷波滤波器）的相反效果。

这种滤波器可以用来模拟声音从劣质扬声器中传出来的听感。

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
