:github_url: hide

.. _class_AudioStreamGenerator:

AudioStreamGenerator
====================

**繼承：** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

提供程式式聲音生成工具的音訊流。

.. rst-class:: classref-introduction-group

說明
----

**AudioStreamGenerator** 是一種音訊流，本身不會播放聲音；它需要程式碼為其產生音訊資料。另請參閱 :ref:`AudioStreamGeneratorPlayback<class_AudioStreamGeneratorPlayback>`\ 。

以下示範如何使用它來產生正弦波：


.. tabs::

 .. code-tab:: gdscript

    var playback # 用來保存 AudioStreamGeneratorPlayback。
    @onready var sample_hz = $AudioStreamPlayer.stream.mix_rate
    var pulse_hz = 440.0 # 聲波頻率。
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

    private AudioStreamGeneratorPlayback _playback; // 保存 AudioStreamGeneratorPlayback。
    private float _sampleHz;
    private float _pulseHz = 440.0f; // 聲波頻率。
    private double phase = 0.0;

    public override void _Ready()
    {
        if (Player.Stream is AudioStreamGenerator generator) // 轉型為 generator 以存取 MixRate。
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



在上述範例中，「AudioStreamPlayer」節點必須將 **AudioStreamGenerator** 設為其串流來源。\ ``fill_buffer`` 函式會產生近似正弦波的音訊資料。

若要進行即時音訊頻譜分析，請參閱 :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>`\ 。

\ **注意：** 受效能限制，建議在 C# 或透過 GDExtension 的編譯語言中使用此類別。若仍需在 GDScript 中使用，請考慮將 :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>` 降至 11,025 Hz 或 22,050 Hz。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`音訊流 <../tutorials/audio/audio_streams>`

- `音訊產生器範例 <https://godotengine.org/asset-library/asset/2759>`__

.. rst-class:: classref-reftable-group

屬性
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

列舉
----

.. _enum_AudioStreamGenerator_AudioStreamGeneratorMixRate:

.. rst-class:: classref-enumeration

enum **AudioStreamGeneratorMixRate**: :ref:`🔗<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`

.. _class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_OUTPUT** = ``0``

目前 :ref:`AudioServer<class_AudioServer>` 的輸出混音速率。

.. _class_AudioStreamGenerator_constant_MIX_RATE_INPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_INPUT** = ``1``

目前 :ref:`AudioServer<class_AudioServer>` 的輸入混音速率。

.. _class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_CUSTOM** = ``2``

由 :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>` 指定的自訂混音速率。

.. _class_AudioStreamGenerator_constant_MIX_RATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_MAX** = ``3``

混音速率模式列舉的最大值。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_AudioStreamGenerator_property_buffer_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **buffer_length** = ``0.5`` :ref:`🔗<class_AudioStreamGenerator_property_buffer_length>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_buffer_length**\ (\ )

要產生的緩衝長度（秒）。較低的值延遲更小，但腳本必須更快地生成音訊資料，增加 CPU 使用率，若處理不及恐導致破音。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **mix_rate** = ``44100.0`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mix_rate**\ (\ )

使用的取樣率（Hz）。取樣率越高，CPU 負擔越重，但音質越好。

遊戲中常見的取樣率有 ``11025``\ 、\ ``16000``\ 、\ ``22050``\ 、\ ``32000``\ 、\ ``44100`` 及 ``48000``\ 。

依據 `奈奎斯特–香農取樣定理 <https://zh.wikipedia.org/wiki/奈奎斯特–香農取樣定理>`__\ ，超過 40,000 Hz 對人耳已無聽覺差異（大多數人僅能聽到約 20,000 Hz）。若產生如人聲等低頻音，可使用 ``32000`` 或 ``22050`` 而不影響品質。

\ **注意：**\ **AudioStreamGenerator** 不會自動重新取樣輸入資料，為得到預期結果，\ :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` 應與輸入資料的取樣率一致。

\ **注意：**\ 若以 :ref:`AudioEffectCapture<class_AudioEffectCapture>` 作為資料來源，請將 :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` 設為 :ref:`MIX_RATE_INPUT<class_AudioStreamGenerator_constant_MIX_RATE_INPUT>` 或 :ref:`MIX_RATE_OUTPUT<class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT>` 以自動配合目前 :ref:`AudioServer<class_AudioServer>` 的混音速率。

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate_mode:

.. rst-class:: classref-property

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **mix_rate_mode** = ``2`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate_mode**\ (\ value\: :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`\ )
- :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **get_mix_rate_mode**\ (\ )

混音速率模式。若設為 :ref:`MIX_RATE_CUSTOM<class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM>` 則使用 :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`\ ；否則使用目前的 :ref:`AudioServer<class_AudioServer>` 混音速率。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
