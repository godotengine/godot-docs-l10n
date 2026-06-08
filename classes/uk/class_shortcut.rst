:github_url: hide

.. _class_Shortcut:

Shortcut
========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Ярлик для в'язального введення.

.. rst-class:: classref-introduction-group

Опис
--------

Комбінації клавіш (також відомі як гарячі клавіші) – це контейнери ресурсів :ref:`InputEvent<class_InputEvent>`. Вони зазвичай використовуються для взаємодії з елементом :ref:`Control<class_Control>` з :ref:`InputEvent<class_InputEvent>`.

Одна комбінація клавіш може містити кілька ресурсів :ref:`InputEvent<class_InputEvent>`, що дозволяє запускати одну дію з кількома різними вхідними даними.

\ **Приклад:** Захоплення комбінації клавіш :kbd:`Ctrl + S` за допомогою ресурсу **Shortcut**:


.. tabs::

 .. code-tab:: gdscript

    extends Node

    var save_shortcut = Shortcut.new()
    func _ready():
        var key_event = InputEventKey.new()
        key_event.keycode = KEY_S
        key_event.ctrl_pressed = true
        key_event.command_or_control_autoremap = true # Swaps Ctrl for Command on Mac.
        save_shortcut.events = [key_event]

    func _input(event):
        if save_shortcut.matches_event(event) and event.is_pressed() and not event.is_echo():
            print("Зберегти комбінацію клавіш натиснуто!")
            get_viewport().set_input_as_handled()

 .. code-tab:: csharp

    using Godot;

    public partial class MyNode : Node
    {
        private readonly Shortcut _saveShortcut = new Shortcut();

        public override void _Ready()
        {
            InputEventKey keyEvent = new InputEventKey
            {
                Keycode = Key.S,
                CtrlPressed = true,
                CommandOrControlAutoremap = true, // Swaps Ctrl for Command on Mac.
            };

            _saveShortcut.Events = [keyEvent];
        }

        public override void _Input(InputEvent @event)
        {
            if (@event is InputEventKey keyEvent &&
                _saveShortcut.MatchesEvent(@event) &&
                keyEvent.Pressed && !keyEvent.Echo)
            {
                GD.Print("Зберегти комбінацію клавіш натиснуто!");
                GetViewport().SetInputAsHandled();
            }
        }
    }



.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------+--------+
   | :ref:`Array<class_Array>` | :ref:`events<class_Shortcut_property_events>` | ``[]`` |
   +---------------------------+-----------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_as_text<class_Shortcut_method_get_as_text>`\ (\ ) |const|                                                  |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_valid_event<class_Shortcut_method_has_valid_event>`\ (\ ) |const|                                          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`matches_event<class_Shortcut_method_matches_event>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |const| |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Shortcut_property_events:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **events** = ``[]`` :ref:`🔗<class_Shortcut_property_events>`

.. rst-class:: classref-property-setget

- |void| **set_events**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_events**\ (\ )

:ref:`InputEvent<class_InputEvent>` array.

Зазвичай використовується :ref:`InputEvent<class_InputEvent>` :ref:`InputEventKey<class_InputEventKey>`, хоча він може бути будь-яким :ref:`InputEvent<class_InputEvent>`, включаючи :ref:`InputEventAction<class_InputEventAction>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Shortcut_method_get_as_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_as_text**\ (\ ) |const| :ref:`🔗<class_Shortcut_method_get_as_text>`

Повертаємо перше значення ярлика :ref:`InputEvent<class_InputEvent>` як :ref:`String<class_String>`.

.. rst-class:: classref-item-separator

----

.. _class_Shortcut_method_has_valid_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_valid_event**\ (\ ) |const| :ref:`🔗<class_Shortcut_method_has_valid_event>`

Повертає, чи містить :ref:`events<class_Shortcut_property_events>` дійсну :ref:`InputEvent<class_InputEvent>`.

.. rst-class:: classref-item-separator

----

.. _class_Shortcut_method_matches_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **matches_event**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |const| :ref:`🔗<class_Shortcut_method_matches_event>`

Повертає, чи будь-яка :ref:`InputEvent<class_InputEvent>` у :ref:`events<class_Shortcut_property_events>` дорівнює ``event``. Це використовує :ref:`InputEvent.is_match()<class_InputEvent_method_is_match>` для порівняння подій.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
