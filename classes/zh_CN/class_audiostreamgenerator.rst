:github_url: hide

.. _class_AudioStreamGenerator:

AudioStreamGenerator
====================

**继承：** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供程序式声音生成工具的音频流。

.. rst-class:: classref-introduction-group

描述
----

**AudioStreamGenerator** 是一种音频流，它自己并不播放声音，而是要用脚本来为它生成音频数据。另见 :ref:`AudioStreamGeneratorPlayback<class_AudioStreamGeneratorPlayback>`\ 。

以下是用它来生成正弦波的例子：


.. tabs::

 .. code-tab:: gdscript

    var playback # 存放 AudioStreamGeneratorPlayback。
    @onready var sample_hz = $AudioStreamPlayer.stream.mix_rate
    var pulse_hz = 440.0 # 声音波形的频率。
    var phase = 0.0

    func _ready():
        $AudioStreamPlayer.play()
        playback = $AudioStreamPlayer.get_stream_playback()
        fill_buffer()

    func fill_buffer():
        var increment = pulse_hz / sample_hz
        var frames_available = playback.get_frames_available()

        for i in range(frames_available):
            playback.push_frame(Vector2.ONE * sin(phase * TAU))
            phase = fmod(phase + increment, 1.0)

 .. code-tab:: csharp

    [Export] public AudioStreamPlayer Player { get; set; }

    private AudioStreamGeneratorPlayback _playback; // 存放 AudioStreamGeneratorPlayback。
    private float _sampleHz;
    private float _pulseHz = 440.0f; // 音频波形的频率。
    private double phase = 0.0;

    public override void _Ready()
    {
        if (Player.Stream is AudioStreamGenerator generator) // Type as a generator to access MixRate.
        {
            _sampleHz = generator.MixRate;
            Player.Play();
            _playback = (AudioStreamGeneratorPlayback)Player.GetStreamPlayback();
            FillBuffer();
        }
    }

    public void FillBuffer()
    {
        float increment = _pulseHz / _sampleHz;
        int framesAvailable = _playback.GetFramesAvailable();

        for (int i = 0; i < framesAvailable; i++)
        {
            _playback.PushFrame(Vector2.One * (float)Mathf.Sin(phase * Mathf.Tau));
            phase = Mathf.PosMod(phase + increment, 1.0);
        }
    }



上面的例子中，“AudioStreamPlayer”节点必须使用 **AudioStreamGenerator** 作为其流。\ ``fill_buffer`` 函数负责提供模拟正弦波的音频数据。

要执行实时音频频谱分析，见 :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>`\ 。

\ **注意：**\ 由于性能的限制，这个类最好在 C# 或者在利用 GDExtension 的编译语言中使用。如果你仍然想要在 GDScript 中使用这个类，请考虑使用 11,025 Hz 或 22,050 Hz 等较低的 :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `音频生成器演示 <https://godotengine.org/asset-library/asset/2759>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                                                                 | :ref:`buffer_length<class_AudioStreamGenerator_property_buffer_length>` | ``0.5``     |
   +-------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+-------------+
   | :ref:`float<class_float>`                                                                 | :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`           | ``44100.0`` |
   +-------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+-------------+
   | :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` | :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` | ``2``       |
   +-------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+-------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_AudioStreamGenerator_AudioStreamGeneratorMixRate:

.. rst-class:: classref-enumeration

enum **AudioStreamGeneratorMixRate**: :ref:`🔗<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`

.. _class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_OUTPUT** = ``0``

当前 :ref:`AudioServer<class_AudioServer>` 的输出混音率。

.. _class_AudioStreamGenerator_constant_MIX_RATE_INPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_INPUT** = ``1``

当前 :ref:`AudioServer<class_AudioServer>` 的输入混音率。

.. _class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_CUSTOM** = ``2``

自定义混音率，由 :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>` 指定。

.. _class_AudioStreamGenerator_constant_MIX_RATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_MAX** = ``3``

混音率模式枚举的最大值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_AudioStreamGenerator_property_buffer_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **buffer_length** = ``0.5`` :ref:`🔗<class_AudioStreamGenerator_property_buffer_length>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_buffer_length**\ (\ )

要生成的缓冲区的长度，以秒为单位。较低的值会带来更少的延迟，但需要脚本更快地生成音频数据，从而导致 CPU 使用率增加，如果 CPU 跟不上，则音频破裂的风险更大。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **mix_rate** = ``44100.0`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mix_rate**\ (\ )

使用的采样率（单位：Hz）。更高的值对 CPU 要求更高，但会带来更好的质量。

在游戏中，常用的采样率有 ``11025``\ 、\ ``16000``\ 、\ ``22050``\ 、\ ``32000``\ 、\ ``44100``\ 、\ ``48000``\ 。

根据\ `奈奎斯特–香农采样定理 <https://zh.wikipedia.org/wiki/%E9%87%87%E6%A0%B7%E5%AE%9A%E7%90%86>`__\ ，当超过 40000 赫兹时，人类的听觉没有质量上的差别（因为大多数人最多只能听到 ~20000 赫兹，往往更少）。如果你要生成语音等音高较低的声音，则可以使用 ``32000`` 或 ``22050`` 等较低的采样率，不会降低质量。

\ **注意：**\ **AudioStreamGenerator** 不会自动对输入数据进行重新采样，\ :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` 与输入数据的采样率相匹配才能生成预期的结果。

\ **注意：**\ 如果使用 :ref:`AudioEffectCapture<class_AudioEffectCapture>` 作为数据源，请将 :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` 设置为 :ref:`MIX_RATE_INPUT<class_AudioStreamGenerator_constant_MIX_RATE_INPUT>` 或 :ref:`MIX_RATE_OUTPUT<class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT>`\ ，自动匹配当前 :ref:`AudioServer<class_AudioServer>` 的混音率。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate_mode:

.. rst-class:: classref-property

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **mix_rate_mode** = ``2`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate_mode**\ (\ value\: :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`\ )
- :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **get_mix_rate_mode**\ (\ )

混音率模式。如果设为 :ref:`MIX_RATE_CUSTOM<class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM>` 则会使用 :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`\ ，否则会使用 :ref:`AudioServer<class_AudioServer>` 的混音率。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
