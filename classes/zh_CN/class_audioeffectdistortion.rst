:github_url: hide

.. _class_AudioEffectDistortion:

AudioEffectDistortion
=====================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Adds a distortion audio effect to an audio bus.

Remaps audio samples using a nonlinear function to achieve a distorted sound.

.. rst-class:: classref-introduction-group

描述
----

A "distortion" effect modifies the waveform via a nonlinear mathematical function (see available ones in :ref:`Mode<enum_AudioEffectDistortion_Mode>`), based on the amplitude of the waveform's samples.

\ **Note:** In a nonlinear function, an input sample at *x* amplitude value, will either have its amplitude increased or decreased to a *y* value, based on the function value at *x*, which is why even at the same :ref:`drive<class_AudioEffectDistortion_property_drive>`, the output sound will vary depending on the input's volume. To change the volume while maintaining the output waveform, use :ref:`post_gain<class_AudioEffectDistortion_property_post_gain>`.

In this effect, each type is a different nonlinear function. The different types available are: clip, atan, lofi (bitcrush), overdrive, and waveshape. Every distortion type available here is symmetric: negative amplitude values are affected the same way as positive ones.

Although distortion will always change frequency content, usually by introducing high harmonics, different distortion types offer a range of sound qualities; from "soft" and "warm", to "crunchy" and "abrasive".

For games, it can help simulate sound coming from some saturated device or speaker very efficiently. It can also help the audio stand out in a mix, by introducing higher frequencies and increasing the volume.

\ **Note:** Although usually imperceptible, an enabled distortion effect still changes the sound even when :ref:`drive<class_AudioEffectDistortion_property_drive>` is set to 0. This is not a bug. If this behavior is undesirable, consider disabling the effect using :ref:`AudioServer.set_bus_effect_enabled()<class_AudioServer_method_set_bus_effect_enabled>`.

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频总线 <../tutorials/audio/audio_buses>`

- :doc:`Audio effects <../tutorials/audio/audio_effects>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                    | :ref:`drive<class_AudioEffectDistortion_property_drive>`           | ``0.0``     |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                    | :ref:`keep_hf_hz<class_AudioEffectDistortion_property_keep_hf_hz>` | ``16000.0`` |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`Mode<enum_AudioEffectDistortion_Mode>` | :ref:`mode<class_AudioEffectDistortion_property_mode>`             | ``0``       |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                    | :ref:`post_gain<class_AudioEffectDistortion_property_post_gain>`   | ``0.0``     |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                    | :ref:`pre_gain<class_AudioEffectDistortion_property_pre_gain>`     | ``0.0``     |
   +----------------------------------------------+--------------------------------------------------------------------+-------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AudioEffectDistortion_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_AudioEffectDistortion_Mode>`

.. _class_AudioEffectDistortion_constant_MODE_CLIP:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_CLIP** = ``0``

Flattens the waveform at 0 dB in a sharp manner. :ref:`drive<class_AudioEffectDistortion_property_drive>` increases amplitude of samples exponentially. This mode functions as a hard clipper if :ref:`drive<class_AudioEffectDistortion_property_drive>` is set to 0, and is the only mode that clips audio signals at 0 dB.

.. _class_AudioEffectDistortion_constant_MODE_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_ATAN** = ``1``

Flattens the waveform in a smooth manner, following an arctangent curve. The audio decreases in volume, before flattening peaks to ``PI * 4.0`` (linear value), if it was normalized beforehand.

.. _class_AudioEffectDistortion_constant_MODE_LOFI:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_LOFI** = ``2``

Decreases audio bit depth to achieve a low-resolution audio signal, going from 16-bit to 2-bit. Can be used to emulate the sound of early digital audio devices.

.. _class_AudioEffectDistortion_constant_MODE_OVERDRIVE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_OVERDRIVE** = ``3``

Emulates the warm distortion produced by a field effect transistor, which is commonly used in solid-state musical instrument amplifiers. :ref:`drive<class_AudioEffectDistortion_property_drive>` has no effect in this mode.

.. _class_AudioEffectDistortion_constant_MODE_WAVESHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_WAVESHAPE** = ``4``

Flattens the waveform in a smooth manner, until it reaches a sharp peak at ``drive = 1``, following a generic absolute sigmoid function.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioEffectDistortion_property_drive:

.. rst-class:: classref-property

:ref:`float<class_float>` **drive** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_drive>`

.. rst-class:: classref-property-setget

- |void| **set_drive**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drive**\ (\ )

Distortion intensity. Controls how much of the input audio is affected by the distortion curve by moving from a linear function to a nonlinear one. Value can range from 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_keep_hf_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **keep_hf_hz** = ``16000.0`` :ref:`🔗<class_AudioEffectDistortion_property_keep_hf_hz>`

.. rst-class:: classref-property-setget

- |void| **set_keep_hf_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_keep_hf_hz**\ (\ )

高通滤波器，单位为 Hz。高于此值的频率不会受到失真的影响。该值的范围为 1 至 20000。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **mode** = ``0`` :ref:`🔗<class_AudioEffectDistortion_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_AudioEffectDistortion_Mode>`\ )
- :ref:`Mode<enum_AudioEffectDistortion_Mode>` **get_mode**\ (\ )

Distortion type. Changes the nonlinear function used to distort the waveform. See :ref:`Mode<enum_AudioEffectDistortion_Mode>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_post_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **post_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_post_gain>`

.. rst-class:: classref-property-setget

- |void| **set_post_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_post_gain**\ (\ )

Gain after the effect, in dB. Value can range from -80 to 24.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_pre_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **pre_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_pre_gain>`

.. rst-class:: classref-property-setget

- |void| **set_pre_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_gain**\ (\ )

Gain before the effect, in dB. Value can range from -60 to 60.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
