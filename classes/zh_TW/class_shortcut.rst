:github_url: hide

.. _class_Shortcut:

Shortcut
========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用於綁定輸入的快捷鍵。

.. rst-class:: classref-introduction-group

說明
----

Shortcuts (also known as hotkeys) are containers of :ref:`InputEvent<class_InputEvent>` resources. They are commonly used to interact with a :ref:`Control<class_Control>` element from an :ref:`InputEvent<class_InputEvent>`.

One shortcut can contain multiple :ref:`InputEvent<class_InputEvent>` resources, making it possible to trigger one action with multiple different inputs.

\ **Example:** Capture the :kbd:`Ctrl + S` shortcut using a **Shortcut** resource:


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
            print("Save shortcut pressed!")
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
                GD.Print("Save shortcut pressed!");
                GetViewport().SetInputAsHandled();
            }
        }
    }



.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------+--------+
   | :ref:`Array<class_Array>` | :ref:`events<class_Shortcut_property_events>` | ``[]`` |
   +---------------------------+-----------------------------------------------+--------+

.. rst-class:: classref-reftable-group

方法
----

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

屬性說明
--------

.. _class_Shortcut_property_events:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **events** = ``[]`` :ref:`🔗<class_Shortcut_property_events>`

.. rst-class:: classref-property-setget

- |void| **set_events**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_events**\ (\ )

快捷鍵的 :ref:`InputEvent<class_InputEvent>` 陣列。

通常使用的 :ref:`InputEvent<class_InputEvent>` 是 :ref:`InputEventKey<class_InputEventKey>`\ ，儘管也可以是任何 :ref:`InputEvent<class_InputEvent>`\ ，包括 :ref:`InputEventAction<class_InputEventAction>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Shortcut_method_get_as_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_as_text**\ (\ ) |const| :ref:`🔗<class_Shortcut_method_get_as_text>`

返回該快捷鍵的第一個有效 :ref:`InputEvent<class_InputEvent>` 的 :ref:`String<class_String>` 形式。

.. rst-class:: classref-item-separator

----

.. _class_Shortcut_method_has_valid_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_valid_event**\ (\ ) |const| :ref:`🔗<class_Shortcut_method_has_valid_event>`

返回 :ref:`events<class_Shortcut_property_events>` 是否包含有效的 :ref:`InputEvent<class_InputEvent>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Shortcut_method_matches_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **matches_event**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |const| :ref:`🔗<class_Shortcut_method_matches_event>`

Returns whether any :ref:`InputEvent<class_InputEvent>` in :ref:`events<class_Shortcut_property_events>` equals ``event``. This uses :ref:`InputEvent.is_match()<class_InputEvent_method_is_match>` to compare events.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
