:github_url: hide

.. _class_AudioEffectDistortion:

AudioEffectDistortion
=====================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为音频总线添加失真音频效果。

通过使用非线性函数重新映射音频采样，从而实现声音失真。

.. rst-class:: classref-introduction-group

描述
----

“失真”效果会根据波形样本的振幅，通过一个非线性数学函数（详见 :ref:`Mode<enum_AudioEffectDistortion_Mode>` 中可用的类型）来修改波形。

\ **注意：** 在非线性函数中，一个振幅为 *x* 的输入样本，其振幅会根据函数在 *x* 处的值，被增大或减小为 *y*\ 。这就是为什么即使在相同的 :ref:`drive<class_AudioEffectDistortion_property_drive>`\ （驱动/强度）下，输出的声音也会因输入音量的不同而产生变化。如果想要在保持输出波形不变的情况下改变音量，请使用 :ref:`post_gain<class_AudioEffectDistortion_property_post_gain>`\ （后置增益）。

在此效果中，每种类型都对应一种不同的非线性函数。可用的不同类型包括：clip（削波）、atan（反正切）、lofi（低音质/位深破碎）、overdrive（过载）以及 waveshape（波形整形）。这里提供的每种失真类型都是对称的：负振幅值受到的影响与正振幅值完全相同。

虽然失真通常会改变频率内容（通常是通过引入高频谐波），但不同的失真类型能提供一系列不同的声音质感；从“柔和”、“温暖”到“粗粝”和“刺耳”。

对于游戏而言，它可以非常高效地模拟声音从某些饱和设备或扬声器中发出的效果。此外，通过引入更高的频率并提升音量，它还能帮助音频在混音中脱颖而出。

\ **注意：** 虽然通常难以察觉，但即使 :ref:`drive<class_AudioEffectDistortion_property_drive>` 设置为 0，启用的失真效果依然会改变声音。这并非程序错误（Bug）。如果不希望出现这种行为，可以考虑使用 :ref:`AudioServer.set_bus_effect_enabled()<class_AudioServer_method_set_bus_effect_enabled>` 来禁用该效果。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`音频总线 <../tutorials/audio/audio_buses>`

- :doc:`音效 <../tutorials/audio/audio_effects>`

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

以一种尖锐的方式将波形在 0 dB 处压平。\ :ref:`drive<class_AudioEffectDistortion_property_drive>`\ （驱动）参数会以指数级的方式提升样本的振幅。如果将 :ref:`drive<class_AudioEffectDistortion_property_drive>` 设置为 0，该模式会充当硬削波器（hard clipper），并且它是唯一一种会在 0 dB 处对音频信号进行削波的模式。

.. _class_AudioEffectDistortion_constant_MODE_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_ATAN** = ``1``

以平滑的方式压平波形，遵循反正切（arctangent）曲线。如果音频事先经过了标准化处理，它的音量会先降低，然后将波峰压平至 ``PI * 4.0``\ （线性值）。

.. _class_AudioEffectDistortion_constant_MODE_LOFI:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_LOFI** = ``2``

将音频位深降低，以获得从 16 位到 2 位的低分辨率音频信号。可用于模拟早期数字音频设备的声音。

.. _class_AudioEffectDistortion_constant_MODE_OVERDRIVE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_OVERDRIVE** = ``3``

模拟通常用于固态乐器放大器的场效应晶体管产生的暖失真。\ :ref:`drive<class_AudioEffectDistortion_property_drive>` 属性在该模式下无效。

.. _class_AudioEffectDistortion_constant_MODE_WAVESHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_AudioEffectDistortion_Mode>` **MODE_WAVESHAPE** = ``4``

以平滑的方式压平波形，直到在 ``drive = 1`` 时达到一个尖锐的峰值，遵循一个通用的绝对 Sigmoid 函数。

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

失真强度。它通过让音频从线性函数向非线性函数过渡，来控制输入音频受失真曲线影响的程度。该值的取值范围是 0 到 1。

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

失真类型。用于更改用来扭曲波形的非线性函数。具体可参考 :ref:`Mode<enum_AudioEffectDistortion_Mode>` 枚举。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_post_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **post_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_post_gain>`

.. rst-class:: classref-property-setget

- |void| **set_post_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_post_gain**\ (\ )

该效果后的增益，单位为分贝。取值范围从 -80 到 24。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectDistortion_property_pre_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **pre_gain** = ``0.0`` :ref:`🔗<class_AudioEffectDistortion_property_pre_gain>`

.. rst-class:: classref-property-setget

- |void| **set_pre_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_gain**\ (\ )

该效果前的增益，单位为分贝。取值范围从 -60 到 60。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
