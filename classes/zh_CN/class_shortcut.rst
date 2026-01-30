:github_url: hide

.. _class_Shortcut:

Shortcut
========

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

用于绑定输入的快捷键。

.. rst-class:: classref-introduction-group

描述
----

Shortcut（快捷键，也叫热键）是 :ref:`InputEvent<class_InputEvent>` 资源的容器，常用于通过 :ref:`InputEvent<class_InputEvent>` 与 :ref:`Control<class_Control>` 元素进行交互。

一个快捷键可以包含多个 :ref:`InputEvent<class_InputEvent>` 资源，因此可以使用多种不同的输入触发某个动作。

\ **示例：**\ 使用 **Shortcut** 资源捕获 :kbd:`Ctrl + S` 快捷键：


.. tabs::

 .. code-tab:: gdscript

    extends Node

    var save_shortcut = Shortcut.new()
    func _ready():
        var key_event = InputEventKey.new()
        key_event.keycode = KEY_S
        key_event.ctrl_pressed = true
        key_event.command_or_control_autoremap = true # 在 mac 上将 Ctrl 替换为 Command。
        save_shortcut.events = [key_event]

    func _input(event):
        if save_shortcut.matches_event(event) and event.is_pressed() and not event.is_echo():
            print("按下了保存快捷键！")
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
                CommandOrControlAutoremap = true, // 在 mac 上将 Ctrl 替换为 Command。
            };

            _saveShortcut.Events = [keyEvent];
        }

        public override void _Input(InputEvent @event)
        {
            if (@event is InputEventKey keyEvent &&
                _saveShortcut.MatchesEvent(@event) &&
                keyEvent.Pressed && !keyEvent.Echo)
            {
                GD.Print("按下了保存快捷键！");
                GetViewport().SetInputAsHandled();
            }
        }
    }



.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_Shortcut_property_events:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **events** = ``[]`` :ref:`🔗<class_Shortcut_property_events>`

.. rst-class:: classref-property-setget

- |void| **set_events**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_events**\ (\ )

快捷键的 :ref:`InputEvent<class_InputEvent>` 数组。

通常使用的 :ref:`InputEvent<class_InputEvent>` 是 :ref:`InputEventKey<class_InputEventKey>`\ ，尽管也可以是任何 :ref:`InputEvent<class_InputEvent>`\ ，包括 :ref:`InputEventAction<class_InputEventAction>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Shortcut_method_get_as_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_as_text**\ (\ ) |const| :ref:`🔗<class_Shortcut_method_get_as_text>`

返回该快捷键的第一个有效 :ref:`InputEvent<class_InputEvent>` 的 :ref:`String<class_String>` 形式。

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

返回 :ref:`events<class_Shortcut_property_events>` 中是否有等于 ``event`` 的 :ref:`InputEvent<class_InputEvent>`\ 。比较事件时使用 :ref:`InputEvent.is_match()<class_InputEvent_method_is_match>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
