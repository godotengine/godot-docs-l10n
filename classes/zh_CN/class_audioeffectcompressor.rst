:github_url: hide

.. _class_AudioEffectCompressor:

AudioEffectCompressor
=====================

**继承：** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为音频总线（audio bus）添加一个向下压缩器（downward compressor）音频效果。

允许通过音量阈值和时间控制参数来调节动态范围。

.. rst-class:: classref-introduction-group

描述
----

“压缩器”会在声音超过一定音量阈值时降低声音的音量。

压缩器在混音中可以有多种用途：

- 压缩主总线上的整体音量（虽然 :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>` 可能更好些）。

- 确保语音音频片段的平衡。

- 利用另一条总线作为触发源进行侧链处理。该操作通过借用另一条音频总线的音量数据来进行阈值检测，从而降低其所附加总线的音量。这种技术在电子游戏混音中十分常见，常用于在语音出现时自动降低背景音乐和音效的音量。这种效果也被称为“闪避”。

- 通过设置较长的起音时间，从而突显瞬态信号；即允许声音在被压缩之前，短暂地超过音量阈值。这一技巧可用于增强音效的冲击力。

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

   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`attack_us<class_AudioEffectCompressor_property_attack_us>`   | ``20.0``  |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`gain<class_AudioEffectCompressor_property_gain>`             | ``0.0``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`mix<class_AudioEffectCompressor_property_mix>`               | ``1.0``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`ratio<class_AudioEffectCompressor_property_ratio>`           | ``4.0``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`release_ms<class_AudioEffectCompressor_property_release_ms>` | ``250.0`` |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>` | :ref:`sidechain<class_AudioEffectCompressor_property_sidechain>`   | ``&""``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`threshold<class_AudioEffectCompressor_property_threshold>`   | ``0.0``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioEffectCompressor_property_attack_us:

.. rst-class:: classref-property

:ref:`float<class_float>` **attack_us** = ``20.0`` :ref:`🔗<class_AudioEffectCompressor_property_attack_us>`

.. rst-class:: classref-property-setget

- |void| **set_attack_us**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attack_us**\ (\ )

当音频音量超过阈值电平时，压缩器的响应时间，单位为微秒。取值范围为 20 至 2000。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **gain** = ``0.0`` :ref:`🔗<class_AudioEffectCompressor_property_gain>`

.. rst-class:: classref-property-setget

- |void| **set_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gain**\ (\ )

音频信号的增益，单位为分贝。取值范围为 -20 至 20。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_mix:

.. rst-class:: classref-property

:ref:`float<class_float>` **mix** = ``1.0`` :ref:`🔗<class_AudioEffectCompressor_property_mix>`

.. rst-class:: classref-property-setget

- |void| **set_mix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mix**\ (\ )

原始音频与压缩音频之间的平衡。取值范围为 0（完全干声）至 1（完全湿声）。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **ratio** = ``4.0`` :ref:`🔗<class_AudioEffectCompressor_property_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ratio**\ (\ )

当音频超过音量阈值电平时，所应用的压缩量。该比率越高，对超过音量阈值电平的音频信号所应用的压缩强度就越大。取值范围为 1 到 48。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_release_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **release_ms** = ``250.0`` :ref:`🔗<class_AudioEffectCompressor_property_release_ms>`

.. rst-class:: classref-property-setget

- |void| **set_release_ms**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_release_ms**\ (\ )

压缩器在音量降至音量阈值电平以下后，停止降低音量的延迟时间，单位为毫秒。取值范围为 20 到 2000。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_sidechain:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **sidechain** = ``&""`` :ref:`🔗<class_AudioEffectCompressor_property_sidechain>`

.. rst-class:: classref-property-setget

- |void| **set_sidechain**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_sidechain**\ (\ )

用于音量阈值检测的音频总线。

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold** = ``0.0`` :ref:`🔗<class_AudioEffectCompressor_property_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold**\ (\ )

超过该音量电平，压缩将应用于音频，单位为分贝。取值范围为 -60 至 0。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
