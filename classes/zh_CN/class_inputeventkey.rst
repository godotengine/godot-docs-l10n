:github_url: hide

.. _class_InputEventKey:

InputEventKey
=============

**继承：** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表键盘上的某个按键被按下或松开。

.. rst-class:: classref-introduction-group

描述
----

键盘上的按键操作对应的输入事件。支持按键按下、释放和 :ref:`echo<class_InputEventKey_property_echo>` 事件。还可以在 :ref:`Node._unhandled_key_input()<class_Node_private_method__unhandled_key_input>` 收到。

\ **注意：**\ 从键盘上接收的事件通常设置了所有属性。事件映射应该只设置 :ref:`keycode<class_InputEventKey_property_keycode>`\ 、\ :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>`\ 、\ :ref:`unicode<class_InputEventKey_property_unicode>` 的其中之一。

比较事件时，将按以下优先级检查属性——\ :ref:`keycode<class_InputEventKey_property_keycode>`\ 、\ :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>`\ 、\ :ref:`unicode<class_InputEventKey_property_unicode>`\ 。有一个匹配就会认为事件相等。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`echo<class_InputEventKey_property_echo>`                         | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`key_label<class_InputEventKey_property_key_label>`               | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`keycode<class_InputEventKey_property_keycode>`                   | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` | :ref:`location<class_InputEventKey_property_location>`                 | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`Key<enum_@GlobalScope_Key>`                 | :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`pressed<class_InputEventKey_property_pressed>`                   | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`unicode<class_InputEventKey_property_unicode>`                   | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_key_label<class_InputEventKey_method_as_text_key_label>`\ (\ ) |const|                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_keycode<class_InputEventKey_method_as_text_keycode>`\ (\ ) |const|                                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_location<class_InputEventKey_method_as_text_location>`\ (\ ) |const|                                       |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`as_text_physical_keycode<class_InputEventKey_method_as_text_physical_keycode>`\ (\ ) |const|                       |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_key_label_with_modifiers<class_InputEventKey_method_get_key_label_with_modifiers>`\ (\ ) |const|               |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_keycode_with_modifiers<class_InputEventKey_method_get_keycode_with_modifiers>`\ (\ ) |const|                   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Key<enum_@GlobalScope_Key>` | :ref:`get_physical_keycode_with_modifiers<class_InputEventKey_method_get_physical_keycode_with_modifiers>`\ (\ ) |const| |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_InputEventKey_property_echo:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **echo** = ``false`` :ref:`🔗<class_InputEventKey_property_echo>`

.. rst-class:: classref-property-setget

- |void| **set_echo**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_echo**\ (\ )

如果为 ``true``\ ，则表示在该事件之前已按下该键。回显事件是用户按住该键时发送的重复按键事件。

\ **注意：**\ 发送回显事件的速率通常约为每秒 20 个事件（按住按键约半秒钟后）。但是，在操作系统设置中，按键重复延迟/速度可被用户修改或者完全禁用。为确保你的项目在所有配置下都能正常工作，请不要假设用户在项目行为中具有特定的按键重复配置。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_key_label:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **key_label** = ``0`` :ref:`🔗<class_InputEventKey_property_key_label>`

.. rst-class:: classref-property-setget

- |void| **set_key_label**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_key_label**\ (\ )

表示当前键盘布局中印在键上的本地化标签，对应于 :ref:`Key<enum_@GlobalScope_Key>` 常量之一或任何有效的 Unicode 字符。

对于键上只有一个标签的键盘布局，它等同于 :ref:`keycode<class_InputEventKey_property_keycode>`\ 。

要获得 **InputEventKey** 的人类可读表示，请使用 ``OS.get_keycode_string(event.key_label)``\ ，其中 ``event`` 是 **InputEventKey**\ 。

.. code:: text

    +-----+ +-----+
    | Q   | | Q   | - "Q" - keycode
    |   Й | |  ض | - "Й" and "ض" - key_label
    +-----+ +-----+

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_keycode:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **keycode** = ``0`` :ref:`🔗<class_InputEventKey_property_keycode>`

.. rst-class:: classref-property-setget

- |void| **set_keycode**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_keycode**\ (\ )

当前键盘布局中键上打印的拉丁标签，对应于 :ref:`Key<enum_@GlobalScope_Key>` 常量之一。

要获得 **InputEventKey** 的人类可读表示，请使用 ``OS.get_keycode_string(event.keycode)``\ ，其中 ``event`` 是 **InputEventKey**\ 。

.. code:: text

    +-----+ +-----+
    | Q   | | Q   | - "Q" - 键码
    |   Й | |  ض | - "Й" 和 "ض" - key_label
    +-----+ +-----+

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_location:

.. rst-class:: classref-property

:ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` **location** = ``0`` :ref:`🔗<class_InputEventKey_property_location>`

.. rst-class:: classref-property-setget

- |void| **set_location**\ (\ value\: :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>`\ )
- :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` **get_location**\ (\ )

表示具有左右版本的键的位置，例如 :kbd:`Shift` 和 :kbd:`Alt`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_physical_keycode:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **physical_keycode** = ``0`` :ref:`🔗<class_InputEventKey_property_physical_keycode>`

.. rst-class:: classref-property-setget

- |void| **set_physical_keycode**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_physical_keycode**\ (\ )

代表按键在 101/102 键的美式键盘上的物理位置，对应一个 :ref:`Key<enum_@GlobalScope_Key>` 常量。

要获取 **InputEventKey** 的人类可读表示，请搭配使用 :ref:`OS.get_keycode_string()<class_OS_method_get_keycode_string>` 和 :ref:`DisplayServer.keyboard_get_keycode_from_physical()<class_DisplayServer_method_keyboard_get_keycode_from_physical>`\ ：


.. tabs::

 .. code-tab:: gdscript

    func _input(event):
        if event is InputEventKey:
            var keycode = DisplayServer.keyboard_get_keycode_from_physical(event.physical_keycode)
            print(OS.get_keycode_string(keycode))

 .. code-tab:: csharp

    public override void _Input(InputEvent @event)
    {
        if (@event is InputEventKey inputEventKey)
        {
            var keycode = DisplayServer.KeyboardGetKeycodeFromPhysical(inputEventKey.PhysicalKeycode);
            GD.Print(OS.GetKeycodeString(keycode));
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventKey_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

如果为 ``true``\ ，按键的状态是被按下。如果为 ``false``\ ，该键的状态被释放。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_unicode:

.. rst-class:: classref-property

:ref:`int<class_int>` **unicode** = ``0`` :ref:`🔗<class_InputEventKey_property_unicode>`

.. rst-class:: classref-property-setget

- |void| **set_unicode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_unicode**\ (\ )

按键 Unicode 字符代码（当相关时），由修饰键移动。除非 IME 输入模式处于活动状态，否则复合字符和复杂文字的 Unicode 字符代码可能不可用。有关详细信息，请参阅 :ref:`Window.set_ime_active()<class_Window_method_set_ime_active>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_InputEventKey_method_as_text_key_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_key_label**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_key_label>`

返回该事件 :ref:`key_label<class_InputEventKey_property_key_label>` 及修饰键的 :ref:`String<class_String>` 字符串表示。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_keycode:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_keycode**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_keycode>`

返回该事件 :ref:`keycode<class_InputEventKey_property_keycode>` 及修饰键的 :ref:`String<class_String>` 字符串表示。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_location:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_location**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_location>`

返回事件的 :ref:`location<class_InputEventKey_property_location>` 的 :ref:`String<class_String>` 表示形式。如果该事件不特定于某个位置，则这将是一个空白字符串。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_physical_keycode:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_physical_keycode**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_physical_keycode>`

返回该事件 :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` 及修饰键的 :ref:`String<class_String>` 字符串表示。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_key_label_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_key_label_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_key_label_with_modifiers>`

返回与修饰键，例如 :kbd:`Shift` 或 :kbd:`Alt` 组合的本地化键标签。另见 :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`\ 。

要获得带有修饰键的 **InputEventKey** 的人类可读表示，请使用 ``OS.get_keycode_string(event.get_key_label_with_modifiers())``\ ，其中 ``event`` 是 **InputEventKey**\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_keycode_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_keycode_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_keycode_with_modifiers>`

返回与 :kbd:`Shift` 或 :kbd:`Alt` 等修饰键组合的拉丁键码。另见 :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`\ 。

要获得带有修饰键的 **InputEventKey** 的人类可读表示，请使用 ``OS.get_keycode_string(event.get_keycode_with_modifiers())``\ ，其中 ``event`` 是 **InputEventKey**\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_physical_keycode_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_physical_keycode_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_physical_keycode_with_modifiers>`

返回与诸如 :kbd:`Shift` 或 :kbd:`Alt` 的修饰键组合的物理键码。另见 :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`\ 。

要获得带有修饰符的 **InputEventKey** 的人类可读表示，请使用 ``OS.get_keycode_string(event.get_physical_keycode_with_modifiers())``\ ，其中 ``event`` 是 **InputEventKey**\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
