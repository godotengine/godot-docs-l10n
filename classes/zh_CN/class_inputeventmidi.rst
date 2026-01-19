:github_url: hide

.. _class_InputEventMIDI:

InputEventMIDI
==============

**继承：** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表来自 MIDI 设备的 MIDI 消息，例如来自音乐键盘。

.. rst-class:: classref-introduction-group

描述
----

InputEventMIDI 存储有关来自 `MIDI <https://en.wikipedia.org/wiki/MIDI>`__\ （乐器数字接口）设备的消息的信息。这些设备可能包括音乐键盘、合成器和鼓机。

MIDI 消息可以通过 5 针 MIDI 连接器或 USB 接收。如果你的设备支持这两种方式，请务必检查设备中的设置以查看它正在使用哪种输出。

默认情况下，Godot 不检测 MIDI 设备。需要首先调用 :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>`\ 。可以使用 :ref:`OS.get_connected_midi_inputs()<class_OS_method_get_connected_midi_inputs>` 检查检测到哪些设备，并使用 :ref:`OS.close_midi_inputs()<class_OS_method_close_midi_inputs>` 关闭连接。


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



\ **注意：**\ Godot 不支持 MIDI 输出，因此无法从 Godot 发出 MIDI 消息。仅支持 MIDI 输入。

\ **注意：**\ 在 Web 平台上，需要在浏览器中授权才能使用 MIDI 输入。权限请求会在调用 :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>` 时进行。用户接受权限请求后浏览器才会处理 MIDI 输入。

.. rst-class:: classref-introduction-group

教程
----

- `MIDI 消息状态字节列表 <https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes>`__

- `维基百科通用 MIDI 乐器列表 <https://en.wikipedia.org/wiki/General_MIDI#Program_change_events>`__

- `维基百科钢琴琴键频率列表 <https://en.wikipedia.org/wiki/Piano_key_frequencies#List>`__

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_InputEventMIDI_property_channel:

.. rst-class:: classref-property

:ref:`int<class_int>` **channel** = ``0`` :ref:`🔗<class_InputEventMIDI_property_channel>`

.. rst-class:: classref-property-setget

- |void| **set_channel**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_channel**\ (\ )

该消息的 MIDI 通道，范围从 ``0`` 到 ``15``\ 。MIDI 通道 ``9`` 是为打击乐器保留的。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_number:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_number** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_number>`

.. rst-class:: classref-property-setget

- |void| **set_controller_number**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_number**\ (\ )

如果 :ref:`message<class_InputEventMIDI_property_message>` 为 :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`\ ，控制器的唯一编号；否则为 ``0``\ 。该值可用于识别用于音量、平衡和平移的滑块，以及 MIDI 设备上的开关和踏板。有关小列表，请参阅\ `通用 MIDI 规范 <https://en.wikipedia.org/wiki/General_MIDI#Controller_events>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_value** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_value>`

.. rst-class:: classref-property-setget

- |void| **set_controller_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_value**\ (\ )

应用于控制器的值。如果 :ref:`message<class_InputEventMIDI_property_message>` 为 :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`\ ，则该值介于 ``0`` 到 ``127`` 之间，否则为 ``0``\ 。另见 :ref:`controller_value<class_InputEventMIDI_property_controller_value>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_instrument:

.. rst-class:: classref-property

:ref:`int<class_int>` **instrument** = ``0`` :ref:`🔗<class_InputEventMIDI_property_instrument>`

.. rst-class:: classref-property-setget

- |void| **set_instrument**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instrument**\ (\ )

该 MIDI 消息上使用的乐器（也称为 *程序* 或 *预设*\ ）。该值介于 ``0`` 到 ``127`` 之间。

要了解每个值的含义，请参阅\ `通用 MIDI 乐器列表 <https://en.wikipedia.org/wiki/General_MIDI#Program_change_events>`__\ 。请记住，该列表相差 1，因为它不是从 0 开始的。值 ``0`` 对应于原声三角钢琴。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_message:

.. rst-class:: classref-property

:ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **message** = ``0`` :ref:`🔗<class_InputEventMIDI_property_message>`

.. rst-class:: classref-property-setget

- |void| **set_message**\ (\ value\: :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>`\ )
- :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **get_message**\ (\ )

表示 MIDI 消息的类型（请参阅 :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` 枚举）。

有关更多信息，请参阅 `MIDI 消息状态字节列表图表 <https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pitch:

.. rst-class:: classref-property

:ref:`int<class_int>` **pitch** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pitch>`

.. rst-class:: classref-property-setget

- |void| **set_pitch**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pitch**\ (\ )

该 MIDI 消息的音高索引号。该值的范围从 ``0`` 到 ``127``\ 。

在钢琴上，\ **中音 C**\ 为 ``60``\ ，后跟 **C 升音**\ （\ ``61``\ ），然后是 **D**\ （\ ``62``\ ），等等。每个八度音阶以 12 为偏移量进行分割。请参阅 `钢琴键频率图表 <https://en.wikipedia.org/wiki/Piano_key_frequencies>`__ 完整列表的“MIDI 音符编号”列。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pressure:

.. rst-class:: classref-property

:ref:`int<class_int>` **pressure** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pressure**\ (\ )

按键的力度。该值的范围从 ``0`` 到 ``127``\ 。

\ **注意：**\ 对于许多设备，该值始终为 ``0``\ 。其他如音乐键盘等设备可以通过改用更改 :ref:`velocity<class_InputEventMIDI_property_velocity>` 来模拟压力。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_velocity:

.. rst-class:: classref-property

:ref:`int<class_int>` **velocity** = ``0`` :ref:`🔗<class_InputEventMIDI_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_velocity**\ (\ )

MIDI 消息的速度。这个值在 ``0`` 到 ``127`` 之间。对于音乐键盘，这对应的是按键有多快，实际很少超过 ``110``\ 。

\ **注意：**\ 部分 MIDI 设备可能会发送速度为 ``0`` 的 :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_ON<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_ON>`\ ，并期望它被视为和 :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_OFF<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_OFF>` 消息一样。如果有必要，可以用几行代码来处理：

::

    func _input(event):
        if event is InputEventMIDI:
            if event.message == MIDI_MESSAGE_NOTE_ON and event.velocity > 0:
                print("Note pressed!")

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
