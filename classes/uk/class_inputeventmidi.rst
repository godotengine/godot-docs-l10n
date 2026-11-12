:github_url: hide

.. _class_InputEventMIDI:

InputEventMIDI
==============

**Успадковує:** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляє повідомлення MIDI з пристрою MIDI, такі як музична клавіатура.

.. rst-class:: classref-introduction-group

Опис
--------

InputEventMIDI зберігає інформацію про повідомлення з пристроїв `MIDI <https://en.wikipedia.org/wiki/MIDI>`__ (цифровий інтерфейс музичних інструментів). Це можуть бути музичні клавішні, синтезатори та драм-машини. 

Повідомлення MIDI можна отримувати через 5-контактний роз’єм MIDI або через USB. Якщо ваш пристрій підтримує обидва, обов’язково перевірте налаштування пристрою, щоб дізнатися, який вихід він використовує. 

За замовчуванням Godot не виявляє пристрої MIDI. Спочатку потрібно викликати :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>`. Ви можете перевірити, які пристрої виявлено за допомогою :ref:`OS.get_connected_midi_inputs()<class_OS_method_get_connected_midi_inputs>`, і закрити з’єднання за допомогою :ref:`OS.close_midi_inputs()<class_OS_method_close_midi_inputs>`. 


.. tabs:: 

 .. code-tab:: gdscript
 
    func _ready(): 
        OS.open_midi_inputs() 
        print(OS.get_connected_midi_inputs()) 

    func _input(input_event): 
        якщо input_event є InputEventMIDI: 
            _print_midi_info(input_event) 

    func _print_midi_info(midi_event): 
        print(midi_event) 
        print("Канал ", midi_event.channel) 
        print("Повідомлення ", midi_event.message) 
        print("Pitch ", midi_event.pitch) 
        print("Швидкість ", midi_event.velocity) 
        print("Інструмент ", midi_event.instrument) 
        print("Тиск ", midi_event.pressure) 
        print("Номер контролера: ", midi_event.controller_number) 
        print("Значення контролера: ", midi_event.controller_value)  

 .. code-tab:: csharp
 
    public override void _Ready() 
    {
        OS.OpenMidiInputs(); 
        GD.Print(OS.GetConnectedMidiInputs()); 
    }

    public override void _Input(InputEvent inputEvent) 
    {
        if (inputEvent є InputEventMidi midiEvent) 
        { 
            PrintMIDIInfo(midiEvent); 
        } 
    }

    private void PrintMIDIInfo(InputEventMidi midiEvent) 
    {
        GD.Print(midiEvent); 
        GD.Print($"Канал {midiEvent.Channel}"); 
        GD.Print($"Повідомлення {midiEvent.Message}"); 
        GD.Print($"Pitch {midiEvent.Pitch}"); 
        GD.Print($"Швидкість {midiEvent.Velocity}"); 
        GD.Print($"Інструмент {midiEvent.Instrument}"); 
        GD.Print($"Тиск {midiEvent.Pressure}"); 
        GD.Print($"Номер контролера: {midiEvent.ControllerNumber}"); 
        GD.Print($"Значення контролера: {midiEvent.ControllerValue}"); 
    } 

 

\ **Примітка:** Godot не підтримує вихід MIDI, тому немає способу видавати повідомлення MIDI від Godot. Підтримується лише вхід MIDI. 

\ **Примітка.** На веб-платформі для використання MIDI-введення спочатку потрібно надати дозвіл браузера. Цей запит на дозвіл виконується під час виклику :ref:`OS.open_midi_inputs()<class_OS_method_open_midi_inputs>`. Введення MIDI не працюватиме, доки користувач не прийме запит на дозвіл.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Статус на сервери <https://www.midi.org/specifications-old/item/table-2-expanded-messages-list-status-bytes>`__

- `Вікіпедія Загальне MIDI Список інструментів <https://en.wikipedia.org/wiki/General_MIDI#Program_change_events>`__

- `Вікіпедія Список фортепіано ключів <https://en.wikipedia.org/wiki/Piano_key_frequencies#List>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Описи властивостей
------------------------------------

.. _class_InputEventMIDI_property_channel:

.. rst-class:: classref-property

:ref:`int<class_int>` **channel** = ``0`` :ref:`🔗<class_InputEventMIDI_property_channel>`

.. rst-class:: classref-property-setget

- |void| **set_channel**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_channel**\ (\ )

Канал MIDI цього повідомлення, починаючи від ``0`` до ``15``. MDI канал ``9`` Зарезервований для інструментів перкусія.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_number:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_number** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_number>`

.. rst-class:: classref-property-setget

- |void| **set_controller_number**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_number**\ (\ )

Унікальна кількість контролера, якщо ``пам'ятне повідомлення`` :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`, інакше це ``0``. Ця вартість може бути використана для виявлення слайдерів для обсягу, балансу та панування, а також перемикачів та тумб на пристрої MIDI. Переглянути `Загальна специфікація MIDI <https://en.wikipedia.org/wiki/General_MIDI#Controller_events>`__ для невеликого списку.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_controller_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **controller_value** = ``0`` :ref:`🔗<class_InputEventMIDI_property_controller_value>`

.. rst-class:: classref-property-setget

- |void| **set_controller_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_controller_value**\ (\ )

Вартість наноситься на контролер. Якщо ``пам'ятне повідомлення`` :ref:`@GlobalScope.MIDI_MESSAGE_CONTROL_CHANGE<class_@GlobalScope_constant_MIDI_MESSAGE_CONTROL_CHANGE>`, це значення коливається від ``0`` до ``127``, інакше це ``0``. Дивись також ``пам'яний контролер_значення``.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_instrument:

.. rst-class:: classref-property

:ref:`int<class_int>` **instrument** = ``0`` :ref:`🔗<class_InputEventMIDI_property_instrument>`

.. rst-class:: classref-property-setget

- |void| **set_instrument**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instrument**\ (\ )

Інструмент (також називається *program* або *preset*) використовується на цьому MIDI повідомлення. ``0`` до ``127``.

Щоб побачити, що кожне значення означає, зверніться до `Загальний Список інструментів MIDI <https://en.wikipedia.org/wiki/General_MIDI#Program_change_events>`__. Враховуйте, що список від 1, тому що він не починає від 0. Вартість ``0`` відповідає акустичному грандіозному фортепіано.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_message:

.. rst-class:: classref-property

:ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **message** = ``0`` :ref:`🔗<class_InputEventMIDI_property_message>`

.. rst-class:: classref-property-setget

- |void| **set_message**\ (\ value\: :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>`\ )
- :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` **get_message**\ (\ )

Представляємо тип повідомлення MIDI (див. :ref:`MIDIMessage<enum_@GlobalScope_MIDIMessage>` enum).

Для отримання більш детальної інформації див. ` MIDI статус повідомлень за допомогою діаграми списку  <https://www.midi.org/specations-old/item/table-2-expanded-messages-list-status-bytes>`__.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pitch:

.. rst-class:: classref-property

:ref:`int<class_int>` **pitch** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pitch>`

.. rst-class:: classref-property-setget

- |void| **set_pitch**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pitch**\ (\ )

Індекс поля цього повідомлення MIDI. ``0`` до ``127``.

На фортепіано **middle C** ``60``, далі **C-sharp** (\ ``61``), потім **D** (\ ``62`` і так далі. Кожен октав розщеплюється в офсетах 12. Дивитися "MIDI номер замітки" стовпчик `piano ключовий графік частоти <https://en.wikipedia.org/wiki/Piano_key_frequencies>`__ повного списку.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_pressure:

.. rst-class:: classref-property

:ref:`int<class_int>` **pressure** = ``0`` :ref:`🔗<class_InputEventMIDI_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_pressure**\ (\ )

Міцність ключа притискається. ``0`` до ``127``.

\ **Примітка:** Для багатьох пристроїв це значення завжди ``0``. Інші пристрої, такі як музичні клавіатури, можуть імітувати тиск, змінюючи :ref:`velocity<class_InputEventMIDI_property_velocity>`, замість цього.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMIDI_property_velocity:

.. rst-class:: classref-property

:ref:`int<class_int>` **velocity** = ``0`` :ref:`🔗<class_InputEventMIDI_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_velocity**\ (\ )

Швидкість MIDI-повідомлення. Це значення коливається від ``0`` до ``127``. Для музичної клавіатури це відповідає швидкості натискання клавіші, і на практиці рідко перевищує ``110``.

\ **Примітка:** Деякі MIDI-пристрої можуть надсилати повідомлення :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_ON<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_ON>` зі швидкістю ``0`` та очікувати, що його буде оброблено так само, як :ref:`@GlobalScope.MIDI_MESSAGE_NOTE_OFF<class_@GlobalScope_constant_MIDI_MESSAGE_NOTE_OFF>` повідомлення. За потреби це можна вирішити кількома рядками коду:

::

    func _input(event):
        if event is InputEventMIDI:
            if event.message == MIDI_MESSAGE_NOTE_ON and event.velocity > 0:
                print("Note pressed!")

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
