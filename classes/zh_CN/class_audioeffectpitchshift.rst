:github_url: hide

.. _class_AudioEffectPitchShift:

AudioEffectPitchShift
=====================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为音频总线添加音高变换的音频效果。

升高或降低原始声音的音高。

.. rst-class:: classref-introduction-group

描述
----

允许独立于速度调制音高。所有频率都可以增加或减少，而对瞬态的影响最小。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频总线 <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` | :ref:`fft_size<class_AudioEffectPitchShift_property_fft_size>`         | ``3``   |
   +----------------------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`                              | :ref:`oversampling<class_AudioEffectPitchShift_property_oversampling>` | ``4``   |
   +----------------------------------------------------+------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                          | :ref:`pitch_scale<class_AudioEffectPitchShift_property_pitch_scale>`   | ``1.0`` |
   +----------------------------------------------------+------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AudioEffectPitchShift_FFTSize:

.. rst-class:: classref-enumeration

enum **FFTSize**: :ref:`🔗<enum_AudioEffectPitchShift_FFTSize>`

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_256:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_256** = ``0``

使用 256 个样本的缓冲器进行快速傅里叶变换。最低延迟，但随着时间的推移最不稳定。

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_512:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_512** = ``1``

使用 512 个样本的缓冲器进行快速傅里叶变换。低延迟，但随着时间的推移不太稳定。

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_1024:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_1024** = ``2``

使用 1024 个样本的缓冲器进行快速傅里叶变换。这是延迟和随着时间的推移的稳定性之间的折衷。

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_2048:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_2048** = ``3``

使用 2048 个样本的缓冲器进行快速傅里叶变换。高延迟，但随着时间的推移稳定。

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_4096:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_4096** = ``4``

使用 4096 个样本的缓冲器进行快速傅里叶变换。延迟最高，但随着时间的推移最稳定。

.. _class_AudioEffectPitchShift_constant_FFT_SIZE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **FFT_SIZE_MAX** = ``5``

代表 :ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioEffectPitchShift_property_fft_size:

.. rst-class:: classref-property

:ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **fft_size** = ``3`` :ref:`🔗<class_AudioEffectPitchShift_property_fft_size>`

.. rst-class:: classref-property-setget

- |void| **set_fft_size**\ (\ value\: :ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>`\ )
- :ref:`FFTSize<enum_AudioEffectPitchShift_FFTSize>` **get_fft_size**\ (\ )

`快速傅里叶变换 <https://en.wikipedia.org/wiki/Fast_Fourier_transform>`__\ 缓冲区的大小。较高的数值可以使效果随时间平滑，但有较大的延迟。这种较高的延迟对有突然幅度变化的声音的影响特别明显。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPitchShift_property_oversampling:

.. rst-class:: classref-property

:ref:`int<class_int>` **oversampling** = ``4`` :ref:`🔗<class_AudioEffectPitchShift_property_oversampling>`

.. rst-class:: classref-property-setget

- |void| **set_oversampling**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_oversampling**\ (\ )

要使用的过采样系数。更高的值会带来更好的质量，但对 CPU 的要求更高，如果 CPU 跟不上，可能会导致音频破裂。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectPitchShift_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioEffectPitchShift_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

要使用的音高缩放。\ ``1.0`` 是默认的音高，声音会按原样播放。\ :ref:`pitch_scale<class_AudioEffectPitchShift_property_pitch_scale>` 的范围从 ``0.0``\ （无限低的音高，听不见）到 ``16``\ （比初始音高要高 16 倍）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
