:github_url: hide

.. _class_InputEventMIDI:

InputEventMIDI
==============

**繼承：** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Represents a MIDI message from a MIDI device, such as a musical keyboard.

.. rst-class:: classref-introduction-group

說明
----

InputEventMIDI stores information about messages from `MIDI <https://en.wikipedia.org/wiki/MIDI>`__ (Musical Instrument Digital Interface) devices. These may include musical keyboards, synthesizers, and drum machines.

MIDI messages can be received over a 5-pin MIDI connector or over USB. If your device supports both be sure to check the settings in the device to see which output it is using.

By default, Godot does not detect MIDI devices. You need to call :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>`, first. You can check which devices are detected with :ref:`OS.get_connected_midi_inputs()<class_OS_method_get_connected_midi_inputs>`, and close the connection with :ref:`OS.close_midi_inputs()<class_OS_method_close_midi_inputs>`.


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
        print("Channel ", midi_event.channel)
        print("Message ", midi_event.message)
        print("Pitch ", midi_event.pitch)
        print("Velocity ", midi_event.velocity)
        print("Instrument ", midi_event.instrument)
        print("Pressure ", midi_event.pressure)
        print("Controller number: ", midi_event.controller_number)
        print("Controller value: ", midi_event.controller_value)

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
        GD.Print($"Channel {midiEvent.Channel}");
        GD.Print($"Message {midiEvent.Message}");
        GD.Print($"Pitch {midiEvent.Pitch}");
        GD.Print($"Velocity {midiEvent.Velocity}");
        GD.Print($"Instrument {midiEvent.Instrument}");
        GD.Print($"Pressure {midiEvent.Pressure}");
        GD.Print($"Controller number: {midiEvent.ControllerNumber}");
        GD.Print($"Controller value: {midiEvent.ControllerValue}");
    }



\ **Note:** Godot does not support MIDI output, so there is no way to emit MIDI messages from Godot. Only MIDI input is supported.

\ **Note:** On the Web platform, using MIDI input requires a browser permission to be granted first. This permission request is performed when calling :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>`. MIDI input will not work until the user accepts the permission request.

.. rst-class:: classref-introduction-group

教學
----

- `MIDI 消息狀態位元組列表 <https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes>`__

- `維琪百科通用 MIDI 樂器列表 <https://en.wikipedia.org/wiki/General_MIDI#Program_change_events>`__

- `維琪百科鋼琴琴鍵頻率列表 <https://en.wikipedia.org/wiki/Piano_key_frequencies#List>`__

.. rst-class:: classref-reftable-group

屬性
----

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

屬性說明
--------

.. _class_InputEventMIDI_property_channel:

.. rst-class:: classref-property

:ref:`int<class_int>` **channel** = ``0`` :ref:`🔗<class_InputEventMIDI_property_channel>`

.. rst-class:: classref-property-setget

- |void| **set_channel**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_channel**\ (\ )

The MIDI channel of this message, ranging from ``0`` to ``15``. MIDI channel ``9`` is reserved for percussion instruments.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_number:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_number** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_number>`

.. rst-class:: classref-property-setget

- |void| **set_controller_number**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_number**\ (\ )

The unique number of the controller, if :ref:`message<class_InputEventMIDI_property_message>` is :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`, otherwise this is ``0``. This value can be used to identify sliders for volume, balance, and panning, as well as switches and pedals on the MIDI device. See the `General MIDI specification <https://en.wikipedia.org/wiki/General_MIDI#Controller_events>`__ for a small list.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_value** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_value>`

.. rst-class:: classref-property-setget

- |void| **set_controller_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_value**\ (\ )

The value applied to the controller. If :ref:`message<class_InputEventMIDI_property_message>` is :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`, this value ranges from ``0`` to ``127``, otherwise it is ``0``. See also :ref:`controller_value<class_InputEventMIDI_property_controller_value>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_instrument:

.. rst-class:: classref-property

:ref:`int<class_int>` **instrument** = ``0`` :ref:`🔗<class_InputEventMIDI_property_instrument>`

.. rst-class:: classref-property-setget

- |void| **set_instrument**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instrument**\ (\ )

The instrument (also called *program* or *preset*) used on this MIDI message. This value ranges from ``0`` to ``127``.

To see what each value means, refer to the `General MIDI's instrument list <https://en.wikipedia.org/wiki/General_MIDI#Program_change_events>`__. Keep in mind that the list is off by 1 because it does not begin from 0. A value of ``0`` corresponds to the acoustic grand piano.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_message:

.. rst-class:: classref-property

:ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **message** = ``0`` :ref:`🔗<class_InputEventMIDI_property_message>`

.. rst-class:: classref-property-setget

- |void| **set_message**\ (\ value\: :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>`\ )
- :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **get_message**\ (\ )

Represents the type of MIDI message (see the :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` enum).

For more information, see the `MIDI message status byte list chart <https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes>`__.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pitch:

.. rst-class:: classref-property

:ref:`int<class_int>` **pitch** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pitch>`

.. rst-class:: classref-property-setget

- |void| **set_pitch**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pitch**\ (\ )

The pitch index number of this MIDI message. This value ranges from ``0`` to ``127``.

On a piano, the **middle C** is ``60``, followed by a **C-sharp** (``61``), then a **D** (``62``), and so on. Each octave is split in offsets of 12. See the "MIDI note number" column of the `piano key frequency chart <https://en.wikipedia.org/wiki/Piano_key_frequencies>`__ a full list.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pressure:

.. rst-class:: classref-property

:ref:`int<class_int>` **pressure** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pressure**\ (\ )

The strength of the key being pressed. This value ranges from ``0`` to ``127``.

\ **Note:** For many devices, this value is always ``0``. Other devices such as musical keyboards may simulate pressure by changing the :ref:`velocity<class_InputEventMIDI_property_velocity>`, instead.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_velocity:

.. rst-class:: classref-property

:ref:`int<class_int>` **velocity** = ``0`` :ref:`🔗<class_InputEventMIDI_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_velocity**\ (\ )

The velocity of the MIDI message. This value ranges from ``0`` to ``127``. For a musical keyboard, this corresponds to how quickly the key was pressed, and is rarely above ``110`` in practice.

\ **Note:** Some MIDI devices may send a :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_ON<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_ON>` message with ``0`` velocity and expect it to be treated the same as a :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_OFF<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_OFF>` message. If necessary, this can be handled with a few lines of code:

::

    func _input(event):
        if event is InputEventMIDI:
            if event.message == MIDI_MESSAGE_NOTE_ON and event.velocity > 0:
                print("Note pressed!")

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
