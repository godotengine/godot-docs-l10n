:github_url: hide

.. _class_AudioStreamGenerator:

AudioStreamGenerator
====================

**Успадковує:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Аудіопотік з утилітами для процедурної генерації звуку.

.. rst-class:: classref-introduction-group

Опис
--------

**AudioStreamGenerator** – це тип аудіопотоку, який не відтворює звуки самостійно; натомість він очікує, що скрипт згенерує для нього аудіодані. Див. також :ref:`AudioStreamGeneratorPlayback<class_AudioStreamGeneratorPlayback>`.

Ось приклад того, як використовувати його для генерації синусоїди: 


.. tabs:: 

 .. code-tab:: gdscript
 
    var playback # Will hold the AudioStreamGeneratorPlayback.
    @onready var sample_hz = $AudioStreamPlayer.stream.mix_rate 
    var pulse_hz = 440.0 # Частота звукової хвилі. 
    var phase = 0,0 

    func _ready(): 
        $AudioStreamPlayer.play() 
        play = $AudioStreamPlayer.get_stream_playback() 
        fill_buffer() 

    func fill_buffer(): 
        var increment = pulse_hz / sample_hz 
        var frames_available = playback.get_frames_available() 

        for i in range (frames_available): 
            playback.push_frame(Vector2.ONE * sin(phase * TAU)) 
            фаза = fmod(фаза + приріст, 1,0)  

 .. code-tab:: csharp
 
    [Export] public AudioStreamPlayer Player { get; set; } 

    private AudioStreamGeneratorPlayback _playback; // Will hold the AudioStreamGeneratorPlayback.
    private float _sampleHz; 
    private float _pulseHz = 440.0f; // Частота звукової хвилі. 
    private double phase = 0,0; 

    public override void _Ready() 
    {
        if (Player.Stream is AudioStreamGenerator generator) // Введіть як генератор для доступу до MixRate. 
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
            phase = Mathf.PosMod(phase + increment, 1,0); 
        } 
    } 

 

У наведеному вище прикладі вузол «AudioStreamPlayer» повинен використовувати **AudioStreamGenerator** як свій потік. Функція ``fill_buffer`` надає аудіодані для апроксимації синусоїди. 

Дивіться також :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>` для виконання спектрального аналізу звуку в реальному часі. 

\ **Примітка:** через обмеження продуктивності цей клас найкраще використовувати з C# або зі скомпільованої мови через GDExtension. Якщо ви все ще хочете використовувати цей клас із GDScript, подумайте про використання нижчої :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`, наприклад 11 025 Гц або 22 050 Гц.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові потоки <../tutorials/audio/audio_streams>`

- `Демонстрація аудіогенератора <https://godotengine.org/asset-library/asset/2759>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Переліки
----------------

.. _enum_AudioStreamGenerator_AudioStreamGeneratorMixRate:

.. rst-class:: classref-enumeration

enum **AudioStreamGeneratorMixRate**: :ref:`🔗<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`

.. _class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_OUTPUT** = ``0``

Поточна швидкість змішування вихідного сигналу :ref:`AudioServer<class_AudioServer>`.

.. _class_AudioStreamGenerator_constant_MIX_RATE_INPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_INPUT** = ``1``

Поточна швидкість змішування вхідного сигналу :ref:`AudioServer<class_AudioServer>`.

.. _class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_CUSTOM** = ``2``

Спеціальна швидкість змішування, визначена :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`.

.. _class_AudioStreamGenerator_constant_MIX_RATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_MAX** = ``3``

Максимальне значення для режиму швидкості змішування enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AudioStreamGenerator_property_buffer_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **buffer_length** = ``0.5`` :ref:`🔗<class_AudioStreamGenerator_property_buffer_length>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_buffer_length**\ (\ )

Довжина буфера для генерації (у секундах). Менші значення призводять до меншої затримки, але вимагають, щоб скрипт генерував аудіодані швидше, що призвело до збільшення використання ЦП і більшого ризику зламу звуку, якщо ЦП не встигає.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **mix_rate** = ``44100.0`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mix_rate**\ (\ )

Частота дискретизації для використання (у Гц). Вищі значення вимагають від процесора генерувати більше, але це призводить до кращої якості. 

В іграх стандартні частоти дискретизації: ``11025``, ``16000``, ``22050``, ``32000``, ``44100`` і ``48000``. 

Згідно з `теоремою про вибірку Найквіста-Шеннона <https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem>`__, якість людського слуху не змінюється при перевищенні 40 000 Гц (оскільки більшість людей чують лише до ~20 000 Гц, часто менше). Якщо ви створюєте низькі звуки, як-от голоси, можна використовувати нижчу частоту дискретизації, наприклад ``32000`` або ``22050`` без втрати якості. 

\ **Примітка:** **AudioStreamGenerator** не виконує автоматичну повторну дискретизацію вхідних даних, щоб отримати очікуваний результат, :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` має відповідати частоті дискретизації вхідних даних. 

\ **Примітка:** Якщо ви використовуєте :ref:`AudioEffectCapture<class_AudioEffectCapture>` як джерело своїх даних, установіть :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` на :ref:`MIX_RATE_INPUT<class_AudioStreamGenerator_constant_MIX_RATE_INPUT>` або :ref:`MIX_RATE_OUTPUT<class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT>`, щоб автоматично відповідати поточній швидкості змішування :ref:`AudioServer<class_AudioServer>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate_mode:

.. rst-class:: classref-property

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **mix_rate_mode** = ``2`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate_mode**\ (\ value\: :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`\ )
- :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **get_mix_rate_mode**\ (\ )

Швидкісний режим змішування. Якщо встановлено значення :ref:`MIX_RATE_CUSTOM<class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM>`, використовується :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`, інакше використовується поточна швидкість змішування :ref:`AudioServer<class_AudioServer>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
