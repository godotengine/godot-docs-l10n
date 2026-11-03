:github_url: hide

.. _class_InputEventMIDI:

InputEventMIDI
==============

**繼承：** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表來自 MIDI 裝置的 MIDI 訊息，例如來自音樂鍵盤。

.. rst-class:: classref-introduction-group

說明
----

InputEventMIDI 儲存有關來自 `MIDI <https://en.wikipedia.org/wiki/MIDI>`__\ （樂器數字介面）裝置的訊息的資訊。這些裝置可能包括音樂鍵盤、合成器和鼓機。

MIDI 訊息可以通過 5 針 MIDI 連接器或 USB 接收。如果你的裝置支援這兩種方式，請務必檢查裝置中的設定以查看它正在使用哪種輸出。

預設情況下，Godot 不檢測 MIDI 裝置。需要首先呼叫 :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>`\ 。可以使用 :ref:`OS.get_connected_midi_inputs()<class_OS_method_get_connected_midi_inputs>` 檢查檢測到哪些裝置，並使用 :ref:`OS.close_midi_inputs()<class_OS_method_close_midi_inputs>` 關閉連接。


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



\ **注意：**\ Godot 不支援 MIDI 輸出，因此無法從 Godot 發出 MIDI 訊息。僅支援 MIDI 輸入。

\ **注意：**\ 在 Web 平台上，需要在瀏覽器中授權才能使用 MIDI 輸入。權限請求會在呼叫 :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>` 時進行。使用者接受權限請求後瀏覽器才會處理 MIDI 輸入。

.. rst-class:: classref-introduction-group

教學
----

- `MIDI 訊息狀態位元組列表 <https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes>`__

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

該訊息的 MIDI 通道，範圍從 ``0`` 到 ``15``\ 。MIDI 通道 ``9`` 是為打擊樂器保留的。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_number:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_number** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_number>`

.. rst-class:: classref-property-setget

- |void| **set_controller_number**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_number**\ (\ )

如果 :ref:`message<class_InputEventMIDI_property_message>` 為 :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`\ ，控制器的唯一編號；否則為 ``0``\ 。該值可用於識別用於音量、平衡和平移的滑塊，以及 MIDI 裝置上的開關和踏板。有關小清單，請參閱\ `通用 MIDI 規範 <https://en.wikipedia.org/wiki/General_MIDI#Controller_events>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_value** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_value>`

.. rst-class:: classref-property-setget

- |void| **set_controller_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_value**\ (\ )

套用至控制器的值。如果 :ref:`message<class_InputEventMIDI_property_message>` 為 :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`\ ，則該值介於 ``0`` 到 ``127`` 之間，否則為 ``0``\ 。另見 :ref:`controller_value<class_InputEventMIDI_property_controller_value>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_instrument:

.. rst-class:: classref-property

:ref:`int<class_int>` **instrument** = ``0`` :ref:`🔗<class_InputEventMIDI_property_instrument>`

.. rst-class:: classref-property-setget

- |void| **set_instrument**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instrument**\ (\ )

該 MIDI 訊息上使用的樂器（也稱為 *程式* 或 *預設*\ ）。該值介於 ``0`` 到 ``127`` 之間。

要瞭解每個值的含義，請參閱\ `通用 MIDI 樂器清單 <https://en.wikipedia.org/wiki/General_MIDI#Program_change_events>`__\ 。請記住，該清單相差 1，因為它不是從 0 開始的。值 ``0`` 對應於原聲三角鋼琴。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_message:

.. rst-class:: classref-property

:ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **message** = ``0`` :ref:`🔗<class_InputEventMIDI_property_message>`

.. rst-class:: classref-property-setget

- |void| **set_message**\ (\ value\: :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>`\ )
- :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **get_message**\ (\ )

表示 MIDI 訊息的型別（請參閱 :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` 列舉）。

有關更多資訊，請參閱 `MIDI 訊息狀態位元組清單圖表 <https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pitch:

.. rst-class:: classref-property

:ref:`int<class_int>` **pitch** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pitch>`

.. rst-class:: classref-property-setget

- |void| **set_pitch**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pitch**\ (\ )

該 MIDI 訊息的音高索引號。該值的範圍從 ``0`` 到 ``127``\ 。

在鋼琴上，\ **中音 C**\ 為 ``60``\ ，後跟 **C 升音**\ （\ ``61``\ ），然後是 **D**\ （\ ``62``\ ），等等。每個八度音階以 12 為偏移量進行分割。請參閱 `鋼琴鍵頻率圖表 <https://en.wikipedia.org/wiki/Piano_key_frequencies>`__ 完整清單的“MIDI 音符編號”列。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pressure:

.. rst-class:: classref-property

:ref:`int<class_int>` **pressure** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pressure**\ (\ )

按鍵的力度。該值的範圍從 ``0`` 到 ``127``\ 。

\ **注意：**\ 對於許多裝置，該值始終為 ``0``\ 。其他如音樂鍵盤等裝置可以通過改用更改 :ref:`velocity<class_InputEventMIDI_property_velocity>` 來模擬壓力。

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_velocity:

.. rst-class:: classref-property

:ref:`int<class_int>` **velocity** = ``0`` :ref:`🔗<class_InputEventMIDI_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_velocity**\ (\ )

MIDI 訊息的速度。這個值在 ``0`` 到 ``127`` 之間。對於音樂鍵盤，這對應的是按鍵有多快，實際很少超過 ``110``\ 。

\ **注意：**\ 部分 MIDI 裝置可能會發送速度為 ``0`` 的 :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_ON<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_ON>`\ ，並期望它被視為和 :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_OFF<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_OFF>` 訊息一樣。如果有必要，可以用幾行程式碼來處理：

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
