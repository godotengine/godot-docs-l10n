:github_url: hide

.. _class_AudioStreamGenerator:

AudioStreamGenerator
====================

**Hereda:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una transmisión de audio con utilidades para la generación de sonido procedimental.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**AudioStreamGenerator** es un tipo de flujo de audio que no reproduce sonidos por sí mismo; en su lugar, espera que un script le genere datos de audio. Véase también :ref:`AudioStreamGeneratorPlayback<class_AudioStreamGeneratorPlayback>`.

Aquí hay un ejemplo de cómo usarlo para generar una onda sinusoidal:


.. tabs::

 .. code-tab:: gdscript

    var playback # Contendrá el AudioStreamGeneratorPlayback.
    @onready var sample_hz = $AudioStreamPlayer.stream.mix_rate
    var pulse_hz = 440.0 # La frecuencia de la onda de sonido.
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

    private AudioStreamGeneratorPlayback _playback; // Contendrá el AudioStreamGeneratorPlayback.
    private float _sampleHz;
    private float _pulseHz = 440.0f; // La frecuencia de la onda de sonido.
    private double phase = 0.0;

    public override void _Ready()
    {
        if (Player.Stream is AudioStreamGenerator generator) // Tipo como generador para acceder a MixRate.
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



En el ejemplo anterior, el nodo "AudioStreamPlayer" debe usar un **AudioStreamGenerator** como su flujo. La función ``fill_buffer`` proporciona datos de audio para aproximar una onda sinusoidal.

Véase también :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>` para realizar análisis de espectro de audio en tiempo real.

\ **Nota:** Debido a limitaciones de rendimiento, esta clase se usa mejor desde C# o desde un lenguaje compilado mediante GDExtension. Si aún deseas usar esta clase desde GDScript, considera usar un :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>` más bajo, como 11,025 Hz o 22,050 Hz.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Corriente de Audio <../tutorials/audio/audio_streams>`

- `Demo de Generador de Audio <https://godotengine.org/asset-library/asset/2759>`__

.. rst-class:: classref-reftable-group

Propiedades
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

Enumeraciones
--------------------------

.. _enum_AudioStreamGenerator_AudioStreamGeneratorMixRate:

.. rst-class:: classref-enumeration

enum **AudioStreamGeneratorMixRate**: :ref:`🔗<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`

.. _class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_OUTPUT** = ``0``

Frecuencia de mezcla de salida actual de :ref:`AudioServer<class_AudioServer>`.

.. _class_AudioStreamGenerator_constant_MIX_RATE_INPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_INPUT** = ``1``

Frecuencia de mezcla de entrada actual de :ref:`AudioServer<class_AudioServer>`.

.. _class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_CUSTOM** = ``2``

Tasa de mezcla personalizada, especificada por :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`.

.. _class_AudioStreamGenerator_constant_MIX_RATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_MAX** = ``3``

Valor máximo para la enumeración del modo de velocidad de mezcla.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AudioStreamGenerator_property_buffer_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **buffer_length** = ``0.5`` :ref:`🔗<class_AudioStreamGenerator_property_buffer_length>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_buffer_length**\ (\ )

La duración del búfer a generar (en segundos). Valores más bajos resultan en menor latencia, pero requieren que el script genere los datos de audio más rápido, lo que aumenta el uso de la CPU y el riesgo de interrupciones en el audio (cracking) si la CPU no puede mantener el ritmo.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **mix_rate** = ``44100.0`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mix_rate**\ (\ )

La frecuencia de muestreo a utilizar (en Hz). Los valores más altos son más exigentes para la CPU al generarlos, pero dan como resultado una mejor calidad.

En los juegos, las frecuencias de muestreo habituales son ``11025``, ``16000``, ``22050``, ``32000``, ``44100`` y ``48000``.

Según el `teorema de muestreo de Nyquist-Shannon <https://es.wikipedia.org/wiki/Teorema_de_muestreo_de_Nyquist-Shannon>`__, no hay diferencia de calidad para el oído humano al superar los 40.000 Hz (ya que la mayoría de los humanos solo pueden oír hasta ~20.000 Hz, a menudo menos). Si estás generando sonidos de tono más bajo, como voces, se pueden utilizar frecuencias de muestreo menores, como ``32000`` o ``22050``, sin pérdida de calidad.

\ **Nota:** **AudioStreamGenerator** no remuestrea automáticamente los datos de entrada; para obtener el resultado esperado, :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` debe coincidir con la frecuencia de muestreo de los datos de entrada.

\ **Nota:** Si utilizas :ref:`AudioEffectCapture<class_AudioEffectCapture>` como fuente de tus datos, establece :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` en :ref:`MIX_RATE_INPUT<class_AudioStreamGenerator_constant_MIX_RATE_INPUT>` o :ref:`MIX_RATE_OUTPUT<class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT>` para que coincida automáticamente con la frecuencia de mezcla actual del :ref:`AudioServer<class_AudioServer>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate_mode:

.. rst-class:: classref-property

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **mix_rate_mode** = ``2`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate_mode**\ (\ value\: :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`\ )
- :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **get_mix_rate_mode**\ (\ )

Modo de frecuencia de mezcla. Si se establece en :ref:`MIX_RATE_CUSTOM<class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM>`, se utiliza :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`; de lo contrario, se utiliza la frecuencia de mezcla actual de :ref:`AudioServer<class_AudioServer>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
