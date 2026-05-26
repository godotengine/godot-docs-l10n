:github_url: hide

.. _class_AudioStreamGenerator:

AudioStreamGenerator
====================

**Наследует:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Аудиопоток с утилитами для процедурной генерации звука.

.. rst-class:: classref-introduction-group

Описание
----------------

**AudioStreamGenerator** — это тип аудиопотока, который не воспроизводит звуки сам по себе; вместо этого он ожидает, что скрипт сгенерирует для него аудиоданные. См. также :ref:`AudioStreamGeneratorPlayback<class_AudioStreamGeneratorPlayback>`.

Вот пример того, как использовать его для генерации синусоидальной волны:


.. tabs::

 .. code-tab:: gdscript

    var playback # Будет содержать AudioStreamGeneratorPlayback.
    @onready var sample_hz = $AudioStreamPlayer.stream.mix_rate
    var pulse_hz = 440.0 # Частота звуковой волны.
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

    private AudioStreamGeneratorPlayback _playback; // Будет содержать AudioStreamGeneratorPlayback.
    private float _sampleHz;
    private float _pulseHz = 440.0f; // Частота звуковой волны.
    private double phase = 0.0;

    public override void _Ready()
    {
        if (Player.Stream is AudioStreamGenerator generator) // Введите в качестве генератора для доступа к MixRate.
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



В приведенном выше примере узел "AudioStreamPlayer" должен использовать **AudioStreamGenerator** в качестве своего потока. Функция ``fill_buffer`` предоставляет аудиоданные для аппроксимации синусоидальной волны.

См. также :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>` для выполнения анализа аудиоспектра в реальном времени.

\ **Примечание:** Из-за ограничений производительности этот класс лучше всего использовать из C# или из скомпилированного языка через GDExtension. Если вы все еще хотите использовать этот класс из GDScript, рассмотрите возможность использования более низкого :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`, например 11 025 Гц или 22 050 Гц.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Аудиопотоки <../tutorials/audio/audio_streams>`

- `Демонстрация звукового генератора <https://godotengine.org/asset-library/asset/2759>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Перечисления
------------------------

.. _enum_AudioStreamGenerator_AudioStreamGeneratorMixRate:

.. rst-class:: classref-enumeration

enum **AudioStreamGeneratorMixRate**: :ref:`🔗<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`

.. _class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_OUTPUT** = ``0``

Текущая скорость микширования выходного сигнала :ref:`AudioServer<class_AudioServer>`.

.. _class_AudioStreamGenerator_constant_MIX_RATE_INPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_INPUT** = ``1``

Текущая скорость микширования входного сигнала :ref:`AudioServer<class_AudioServer>`.

.. _class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_CUSTOM** = ``2``

Пользовательская скорость смешивания, указанная :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`.

.. _class_AudioStreamGenerator_constant_MIX_RATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_MAX** = ``3``

Максимальное значение для перечисления режима скорости смешивания.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AudioStreamGenerator_property_buffer_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **buffer_length** = ``0.5`` :ref:`🔗<class_AudioStreamGenerator_property_buffer_length>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_buffer_length**\ (\ )

Длина буфера для генерации (в секундах). Более низкие значения приводят к меньшей задержке, но требуют, чтобы скрипт генерировал аудиоданные быстрее, что приводит к увеличению использования ЦП и большему риску взлома звука, если ЦП не справляется.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **mix_rate** = ``44100.0`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mix_rate**\ (\ )

Частота дискретизации для использования (в Гц). Более высокие значения более требовательны к ЦП для генерации, но приводят к лучшему качеству.

В играх обычно используются частоты дискретизации ``11025``, ``16000``, ``22050``, ``32000``, ``44100`` и ``48000``.

Согласно `теореме дискретизации Найквиста-Шеннона <https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem>`__, для человеческого слуха нет никакой разницы в качестве при выходе за пределы 40 000 Гц (поскольку большинство людей могут слышать только до ~20 000 Гц, часто меньше). Если вы генерируете более низкие звуки, такие как голоса, можно использовать более низкие частоты дискретизации, такие как ``32000`` или ``22050`` без потери качества.

\ **Примечание:** **AudioStreamGenerator** не выполняет автоматическую передискретизацию (resampling) входных данных, для получения ожидаемого результата :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` должен соответствовать частоте дискретизации входных данных.

\ **Примечание:** Если вы используете :ref:`AudioEffectCapture<class_AudioEffectCapture>` в качестве источника данных, установите :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` на :ref:`MIX_RATE_INPUT<class_AudioStreamGenerator_constant_MIX_RATE_INPUT>` или :ref:`MIX_RATE_OUTPUT<class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT>`, чтобы автоматически соответствовать текущей частоте микширования :ref:`AudioServer<class_AudioServer>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate_mode:

.. rst-class:: classref-property

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **mix_rate_mode** = ``2`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate_mode**\ (\ value\: :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`\ )
- :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **get_mix_rate_mode**\ (\ )

Режим скорости смешивания. Если установлено значение :ref:`MIX_RATE_CUSTOM<class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM>`, используется :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`, в противном случае используется текущая скорость смешивания :ref:`AudioServer<class_AudioServer>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
