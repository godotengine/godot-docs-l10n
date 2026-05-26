:github_url: hide

.. _class_AudioEffectSpectrumAnalyzer:

AudioEffectSpectrumAnalyzer
===========================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Creates an :ref:`AudioEffectInstance<class_AudioEffectInstance>` which performs frequency analysis and exposes results to be accessed in real-time.

.. rst-class:: classref-introduction-group

描述
----

Calculates a Fourier Transform of the audio signal. This effect does not alter the audio. Can be used for creating real-time audio visualizations, like a spectrogram.

This resource configures an :ref:`AudioEffectSpectrumAnalyzerInstance<class_AudioEffectSpectrumAnalyzerInstance>`, which performs the actual analysis at runtime. An instance should be obtained with :ref:`AudioServer.get_bus_effect_instance()<class_AudioServer_method_get_bus_effect_instance>` to make use of this effect.

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频总线 <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

- `音频频谱可视化演示 <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                | :ref:`buffer_length<class_AudioEffectSpectrumAnalyzer_property_buffer_length>` | ``2.0`` |
   +----------------------------------------------------------+--------------------------------------------------------------------------------+---------+
   | :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` | :ref:`fft_size<class_AudioEffectSpectrumAnalyzer_property_fft_size>`           | ``2``   |
   +----------------------------------------------------------+--------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AudioEffectSpectrumAnalyzer_FFTSize:

.. rst-class:: classref-enumeration

enum **FFTSize**: :ref:`🔗<enum_AudioEffectSpectrumAnalyzer_FFTSize>`

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_256:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_256** = ``0``

使用 256 个样本的缓冲器进行快速傅里叶变换。最低延迟，但随着时间的推移最不稳定。

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_512:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_512** = ``1``

使用 512 个样本的缓冲器进行快速傅里叶变换。低延迟，但随着时间的推移不太稳定。

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_1024:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_1024** = ``2``

使用 1024 个样本的缓冲器进行快速傅里叶变换。这是延迟和随着时间的推移的稳定性之间的折衷。

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_2048:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_2048** = ``3``

使用 2048 个样本的缓冲器进行快速傅里叶变换。高延迟，但随着时间的推移稳定。

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_4096:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_4096** = ``4``

使用 4096 个样本的缓冲器进行快速傅里叶变换。延迟最高，但随着时间的推移最稳定。

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_MAX** = ``5``

代表 :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioEffectSpectrumAnalyzer_property_buffer_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **buffer_length** = ``2.0`` :ref:`🔗<class_AudioEffectSpectrumAnalyzer_property_buffer_length>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_buffer_length**\ (\ )

The length of the buffer to keep, in seconds. Higher values keep data around for longer, but require more memory. Value can range from 0.1 to 4.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectSpectrumAnalyzer_property_fft_size:

.. rst-class:: classref-property

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **fft_size** = ``2`` :ref:`🔗<class_AudioEffectSpectrumAnalyzer_property_fft_size>`

.. rst-class:: classref-property-setget

- |void| **set_fft_size**\ (\ value\: :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>`\ )
- :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **get_fft_size**\ (\ )

`快速傅里叶变换 <https://en.wikipedia.org/wiki/Fast_Fourier_transform>`__\ 缓冲区的大小。较高的值可以使频谱分析随时间的推移而平滑，但有较大的延迟。这种较高延迟的影响在突然的振幅变化中特别明显。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
