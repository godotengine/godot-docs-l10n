:github_url: hide

.. _class_AudioStreamGenerator:

AudioStreamGenerator
====================

**Eredita:** :ref:`AudioStream<class_AudioStream>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un flusso audio con utilità per la generazione del suono procedurale.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**AudioStreamGenerator** è un tipo di flusso audio che non riproduce suoni da solo; invece, si aspetta che uno script generi dati audio per esso. Vedi anche :ref:`AudioStreamGeneratorPlayback<class_AudioStreamGeneratorPlayback>`.

Ecco un esempio su come utilizzarlo per generare un'onda sinusoidale:


.. tabs::

 .. code-tab:: gdscript

    var playback # Conterrà l'AudioStreamGeneratorPlayback.
    @onready var sample_hz = $AudioStreamPlayer.stream.mix_rate
    var pulse_hz = 440.0 # La frequenza dell'onda sonora.
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

    private AudioStreamGeneratorPlayback _playback; // Conterrà l'AudioStreamGeneratorPlayback.
    private float _sampleHz;
    private float _pulseHz = 440.0f; // La frequenza dell'onda sonora.
    private double phase = 0.0;

    public override void _Ready()
    {
        if (Player.Stream is AudioStreamGenerator generator) // Tipo come un generatore per accedere a MixRate.
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



Nell'esempio sopra, il nodo "AudioStreamPlayer" deve usare un **AudioStreamGenerator** come flusso. La funzione ``fill_buffer`` fornisce dati audio per approssimare un'onda sinusoidale.

Vedi anche :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>` per analizzare uno spettro audio in tempo reale.

\ **Nota:** A causa di vincoli di prestazioni, questa classe è meglio utilizzata da C# o da un linguaggio compilato tramite GDExtension. Se si desidera comunque utilizzare questa classe da GDScript, considera l'utilizzo di un :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>` inferiore, ad esempio 11.025 Hz o 22.050 Hz.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Flussi audio <../tutorials/audio/audio_streams>`

- `Demo di generatore audio <https://godotengine.org/asset-library/asset/2759>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Enumerazioni
------------------------

.. _enum_AudioStreamGenerator_AudioStreamGeneratorMixRate:

.. rst-class:: classref-enumeration

enum **AudioStreamGeneratorMixRate**: :ref:`🔗<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`

.. _class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_OUTPUT** = ``0``

Frequenza di mixaggio in uscita dell':ref:`AudioServer<class_AudioServer>` attuale.

.. _class_AudioStreamGenerator_constant_MIX_RATE_INPUT:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_INPUT** = ``1``

Frequenza di mixaggio in entrata dell':ref:`AudioServer<class_AudioServer>` attuale.

.. _class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_CUSTOM** = ``2``

Frequenza di mixaggio personalizzata, specificata da :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`.

.. _class_AudioStreamGenerator_constant_MIX_RATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **MIX_RATE_MAX** = ``3``

Valore massimo per l'enumerazione della modalità di frequenza di mixaggio.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioStreamGenerator_property_buffer_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **buffer_length** = ``0.5`` :ref:`🔗<class_AudioStreamGenerator_property_buffer_length>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_buffer_length**\ (\ )

La lunghezza del buffer da generare (in secondi). I valori più bassi risultano in meno latenza, ma richiedono che lo script generi i dati audio più velocemente, risultando in maggiore utilizzo CPU e più rischio di audio scoppiettante se la CPU non riesce a tenere il passo.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate:

.. rst-class:: classref-property

:ref:`float<class_float>` **mix_rate** = ``44100.0`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mix_rate**\ (\ )

La frequenza di campionamento da utilizzare (in Hz). I valori elevati richiedono una generazione più impegnativa per la CPU, ma risultano in una qualità migliore.

Nei giochi, le frequenze di campionamento comunemente in uso sono ``11025``, ``16000``, ``22050``, ``32000``, ``44100`` e ``48000``.

Secondo il `Teorema del campionamento di Nyquist-Shannon <https://it.wikipedia.org/wiki/Teorema_del_campionamento_di_Nyquist-Shannon>`__, non vi è alcuna differenza di qualità per l'udito umano quando si superano i 40.000 Hz (poiché la maggior parte degli esseri umani può sentire solo fino a ~ 20.000 Hz, spesso meno). Se stai generando suoni dal tono più basso come le voci, le frequenze di campionamento più basse come ``32000`` o ``22050`` potrebbero essere usabili senza perdite di qualità.

\ **Nota:** **AudioStreamGenerator** non ricampiona automaticamente i dati in ingresso, per produrre il risultato previsto :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` deve corrispondere alla frequenza di campionamento dei dati in ingresso.

\ **Nota:** Se utilizzi :ref:`AudioEffectCapture<class_AudioEffectCapture>` come sorgente dei tuoi dati, imposta :ref:`mix_rate_mode<class_AudioStreamGenerator_property_mix_rate_mode>` su :ref:`MIX_RATE_INPUT<class_AudioStreamGenerator_constant_MIX_RATE_INPUT>` o :ref:`MIX_RATE_OUTPUT<class_AudioStreamGenerator_constant_MIX_RATE_OUTPUT>` per corrispondere automaticamente alla frequenza di mixaggio attuale dell':ref:`AudioServer<class_AudioServer>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGenerator_property_mix_rate_mode:

.. rst-class:: classref-property

:ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **mix_rate_mode** = ``2`` :ref:`🔗<class_AudioStreamGenerator_property_mix_rate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mix_rate_mode**\ (\ value\: :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>`\ )
- :ref:`AudioStreamGeneratorMixRate<enum_AudioStreamGenerator_AudioStreamGeneratorMixRate>` **get_mix_rate_mode**\ (\ )

Modalità di mixaggio. Se impostato su :ref:`MIX_RATE_CUSTOM<class_AudioStreamGenerator_constant_MIX_RATE_CUSTOM>`, viene utilizzato :ref:`mix_rate<class_AudioStreamGenerator_property_mix_rate>`, altrimenti viene utilizzato il mixaggio dell':ref:`AudioServer<class_AudioServer>` attuale.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
