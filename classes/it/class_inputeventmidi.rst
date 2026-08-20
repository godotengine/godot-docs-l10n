:github_url: hide

.. _class_InputEventMIDI:

InputEventMIDI
==============

**Eredita:** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Rappresenta un messaggio MIDI proveniente da un dispositivo MIDI, ad esempio una tastiera musicale.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

InputEventMIDI memorizza informazioni sui messaggi provenienti da dispositivi `MIDI <https://it.wikipedia.org/wiki/Musical_Instrument_Digital_Interface>`__ (Musical Instrument Digital Interface). Questi possono includere tastiere musicali, sintetizzatori e batterie elettroniche.

I messaggi MIDI possono essere ricevuti tramite un connettore MIDI a 5 pin o tramite USB. Se il tuo dispositivo supporta entrambi, assicurati di controllare le impostazioni nel dispositivo per vedere quale output sta utilizzando.

Come predefinito, Godot non rileva i dispositivi MIDI. È necessario prima chiamare :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>`. È possibile controllare quali dispositivi sono rilevati con :ref:`OS.get_connected_midi_inputs()<class_OS_method_get_connected_midi_inputs>` e chiudere la connessione con :ref:`OS.close_midi_inputs()<class_OS_method_close_midi_inputs>`.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        OS.open_midi_inputs()
        print(OS.get_connected_midi_inputs())

    func _input(input_event):
        if input_event is InputEventMIDI:
            _print_midi_info(input_event)

    func _print_midi_info(midi_event):
        print(midi_event)
        print("Canale", midi_event.channel)
        print("Messaggio ", midi_event.message)
        print("Tono", midi_event.pitch)
        print("Velocità ", midi_event.velocity)
        print("Strumento ", midi_event.instrument)
        print("Pressione ", midi_event.pressure)
        print("Numero controller: ", midi_event.controller_number)
        print("Valore controller: ", midi_event.controller_value)

 .. code-tab:: csharp

    public override void _Ready()
    {
        OS.OpenMidiInputs();
        GD.Print(OS.GetConnectedMidiInputs());
    }

    public override void _Input(InputEvent inputEvent)
    {
        if (inputEvent is InputEventMidi midiEvent)
        {
            PrintMIDIInfo(midiEvent);
        }
    }

    private void PrintMIDIInfo(InputEventMidi midiEvent)
    {
        GD.Print(midiEvent);
        GD.Print($"Canale {midiEvent.Channel}");
        GD.Print($"Messaggio {midiEvent.Message}");
        GD.Print($"Tono {midiEvent.Pitch}");
        GD.Print($"Velocità {midiEvent.Velocity}");
        GD.Print($"Strumento {midiEvent.Instrument}");
        GD.Print($"Pressione {midiEvent.Pressure}");
        GD.Print($"Numero controller: {midiEvent.ControllerNumber}");
        GD.Print($"Valore controller: {midiEvent.ControllerValue}");
    }



\ **Nota:** Godot non supporta l'output MIDI, quindi non c'è modo di emettere messaggi MIDI da Godot. Solo l'input MIDI è supportato.

\ **Nota:** Sulla piattaforma Web, l'utilizzo dell'input MIDI richiede prima l'autorizzazione del browser. Questa richiesta di autorizzazione viene eseguita quando viene chiamato :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>`. L'input MIDI non funzionerà finché l'utente non accetta la richiesta di autorizzazione.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Elenco byte di stato dei messaggi MIDI <https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes>`__

- `Elenco degli strumenti MIDI generali su Wikipedia <https://en.wikipedia.org/wiki/General_MIDI#Program_change_events>`__

- `Elenco delle frequenze per i tasti di un pianoforte su Wikipedia <https://en.wikipedia.org/wiki/Piano_key_frequencies#List>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`channel<class_InputEventMIDI_property_channel>`                     | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`controller_number<class_InputEventMIDI_property_controller_number>` | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`controller_value<class_InputEventMIDI_property_controller_value>`   | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`instrument<class_InputEventMIDI_property_instrument>`               | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` | :ref:`message<class_InputEventMIDI_property_message>`                     | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`pitch<class_InputEventMIDI_property_pitch>`                         | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`pressure<class_InputEventMIDI_property_pressure>`                   | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                             | :ref:`velocity<class_InputEventMIDI_property_velocity>`                   | ``0`` |
   +---------------------------------------------------+---------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_InputEventMIDI_property_channel:

.. rst-class:: classref-property

:ref:`int<class_int>` **channel** = ``0`` :ref:`🔗<class_InputEventMIDI_property_channel>`

.. rst-class:: classref-property-setget

- |void| **set_channel**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_channel**\ (\ )

Il canale MIDI di questo messaggio, compreso tra ``0`` a ``15``. Il canale MIDI ``9`` è riservato agli strumenti a percussione.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_number:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_number** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_number>`

.. rst-class:: classref-property-setget

- |void| **set_controller_number**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_number**\ (\ )

Il numero univoco del controller, se :ref:`message<class_InputEventMIDI_property_message>` è :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`, altrimenti è ``0``. Questo valore può essere utilizzato per identificare gli slider per volume, bilanciamento e panning, così come gli interruttori e i pedali sul dispositivo MIDI. Consultare la `specifica generale MIDI <https://en.wikipedia.org/wiki/General_MIDI#Controller_events>`__ per un piccolo elenco.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_value** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_value>`

.. rst-class:: classref-property-setget

- |void| **set_controller_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_value**\ (\ )

Il valore applicato al controller. Se :ref:`message<class_InputEventMIDI_property_message>` è :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`, questo valore varia da ``0`` a ``127``, altrimenti è ``0``. Vedi anche :ref:`controller_value<class_InputEventMIDI_property_controller_value>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_instrument:

.. rst-class:: classref-property

:ref:`int<class_int>` **instrument** = ``0`` :ref:`🔗<class_InputEventMIDI_property_instrument>`

.. rst-class:: classref-property-setget

- |void| **set_instrument**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instrument**\ (\ )

Lo strumento (chiamato anche *programma* o *preset*) utilizzato in questo messaggio MIDI. Questo valore varia da ``0`` a ``127``.

Per vedere cosa significa ogni valore, fare riferimento all'`elenco degli strumenti General MIDI <https://en.wikipedia.org/wiki/General_MIDI#Program_change_events>`__. Tieni presente che l'elenco è sbagliato di 1 perché non inizia da 0. Un valore di ``0`` corrisponde al pianoforte a coda acustico.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_message:

.. rst-class:: classref-property

:ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **message** = ``0`` :ref:`🔗<class_InputEventMIDI_property_message>`

.. rst-class:: classref-property-setget

- |void| **set_message**\ (\ value\: :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>`\ )
- :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **get_message**\ (\ )

Rappresenta il tipo di messaggio MIDI (vedi l'enumerazione :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>`).

Per maggiori informazioni, consulta la `tabella dell'elenco dei byte di stato dei messaggi MIDI <https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes>`__.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pitch:

.. rst-class:: classref-property

:ref:`int<class_int>` **pitch** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pitch>`

.. rst-class:: classref-property-setget

- |void| **set_pitch**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pitch**\ (\ )

L'indice del tono di questo messaggio MIDI. Questo valore varia da ``0`` a ``127``.

Su un pianoforte, il **Do centrale** è ``60``, seguito da un **Do diesis** (``61``), quindi un **Re** (``62``) e così via. Ogni ottava è divisa in offset di 12. Consulta la colonna "Numero di note MIDI" della `tabella delle frequenze dei tasti del pianoforte <https://en.wikipedia.org/wiki/Piano_key_frequencies>`__ per un elenco completo.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pressure:

.. rst-class:: classref-property

:ref:`int<class_int>` **pressure** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pressure**\ (\ )

L'intensità del tasto premuto. Questo valore varia da ``0`` a ``127``.

\ **Nota:** Per molti dispositivi, questo valore è sempre ``0``. Altri dispositivi, come le tastiere musicali, potrebbero invece simulare la pressione modificando la loro :ref:`velocity<class_InputEventMIDI_property_velocity>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_velocity:

.. rst-class:: classref-property

:ref:`int<class_int>` **velocity** = ``0`` :ref:`🔗<class_InputEventMIDI_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_velocity**\ (\ )

La velocità del messaggio MIDI. Questo valore varia da ``0`` a ``127``. Per una tastiera musicale, corrisponde alla velocità con cui è stato premuto il tasto e raramente supera ``110`` in pratica.

\ **Nota:** Alcuni dispositivi MIDI possono inviare un messaggio :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_ON<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_ON>` con velocità ``0`` e aspettarsi che sia trattato come un messaggio :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_OFF<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_OFF>`. Se necessario, questo può essere gestito con poche righe di codice:

::

    func _input(event):
        if event is InputEventMIDI:
            if event.message == MIDI_MESSAGE_NOTE_ON and event.velocity > 0:
                print("Note pressed!")

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
