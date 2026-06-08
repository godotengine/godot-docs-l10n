:github_url: hide

.. _class_InputEvent:

InputEvent
==========

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`InputEventAction<class_InputEventAction>`, :ref:`InputEventFromWindow<class_InputEventFromWindow>`, :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`, :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, :ref:`InputEventMIDI<class_InputEventMIDI>`, :ref:`InputEventShortcut<class_InputEventShortcut>`

输入事件的抽象基类。

.. rst-class:: classref-introduction-group

描述
----

各种输入事件的抽象基类。见 :ref:`Node._input()<class_Node_private_method__input>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

- :doc:`Viewport 和画布变换 <../tutorials/2d/2d_transforms>`

- `2D Dodge The Creeps 演示 <https://godotengine.org/asset-library/asset/2712>`__

- `3D 体素演示 <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`device<class_InputEvent_property_device>` | ``0`` |
   +-----------------------+-------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`accumulate<class_InputEvent_method_accumulate>`\ (\ with_event\: :ref:`InputEvent<class_InputEvent>`\ )                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`as_text<class_InputEvent_method_as_text>`\ (\ ) |const|                                                                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_action_strength<class_InputEvent_method_get_action_strength>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                           |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action<class_InputEvent_method_is_action>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_pressed<class_InputEvent_method_is_action_pressed>`\ (\ action\: :ref:`StringName<class_StringName>`, allow_echo\: :ref:`bool<class_bool>` = false, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_released<class_InputEvent_method_is_action_released>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                             |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_type<class_InputEvent_method_is_action_type>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_canceled<class_InputEvent_method_is_canceled>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_echo<class_InputEvent_method_is_echo>`\ (\ ) |const|                                                                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_match<class_InputEvent_method_is_match>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const|                                                                   |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_pressed<class_InputEvent_method_is_pressed>`\ (\ ) |const|                                                                                                                                                          |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_released<class_InputEvent_method_is_released>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`InputEvent<class_InputEvent>` | :ref:`xformed_by<class_InputEvent_method_xformed_by>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, local_ofs\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_InputEvent_constant_DEVICE_ID_EMULATION:

.. rst-class:: classref-constant

**DEVICE_ID_EMULATION** = ``-1`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_EMULATION>`

模拟设备 ID，用于根据触屏事件生成的鼠标输入，或根据鼠标事件生成的触摸输入。可以据此来区分模拟鼠标输入和物理鼠标输入，以及模拟触摸输入和物理触摸输入。

.. _class_InputEvent_constant_DEVICE_ID_KEYBOARD:

.. rst-class:: classref-constant

**DEVICE_ID_KEYBOARD** = ``16`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_KEYBOARD>`

用于键盘输入的设备 ID。这可用于区分键盘输入事件和游戏手柄输入事件。

.. _class_InputEvent_constant_DEVICE_ID_MOUSE:

.. rst-class:: classref-constant

**DEVICE_ID_MOUSE** = ``32`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_MOUSE>`

用于鼠标输入的设备 ID。这可用于区分鼠标输入事件和游戏手柄输入事件。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_InputEvent_property_device:

.. rst-class:: classref-property

:ref:`int<class_int>` **device** = ``0`` :ref:`🔗<class_InputEvent_property_device>`

.. rst-class:: classref-property-setget

- |void| **set_device**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_device**\ (\ )

事件的设备 ID。

\ **注意：**\ :ref:`device<class_InputEvent_property_device>` 在特殊情况下可能为负数，此时表示的不是系统中物理存在的设备。见 :ref:`DEVICE_ID_EMULATION<class_InputEvent_constant_DEVICE_ID_EMULATION>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_InputEvent_method_accumulate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **accumulate**\ (\ with_event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputEvent_method_accumulate>`

如果给定的输入事件和这个输入事件可以相加，则返回 ``true``\ （只针对 :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` 类型的事件）。

给定输入事件的位置、全局位置和速度将被复制。产生的 ``relative`` 是两个事件的总和。两个事件的修饰符必须是相同的。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_as_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_as_text>`

返回事件的 :ref:`String<class_String>` 字符串表示。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_get_action_strength:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_action_strength**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_get_action_strength>`

根据给定动作的状态返回 0.0 到 1.0 之间的值。获取 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 类型事件的值时很有用。

如果 ``exact_match`` 为 ``false``\ ，它会忽略 :ref:`InputEventKey<class_InputEventKey>` 和 :ref:`InputEventMouseButton<class_InputEventMouseButton>` 事件的额外输入修饰键，以及 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 事件的方向。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action>`

如果该输入事件匹配任何类型的预定义动作，则返回 ``true``\ 。

如果 ``exact_match`` 为 ``false``\ ，它会忽略 :ref:`InputEventKey<class_InputEventKey>` 和 :ref:`InputEventMouseButton<class_InputEventMouseButton>` 事件的额外输入修饰键，以及 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 事件的方向。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_pressed**\ (\ action\: :ref:`StringName<class_StringName>`, allow_echo\: :ref:`bool<class_bool>` = false, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_pressed>`

如果给定的动作与该事件匹配且正被按下，则返回 ``true``\ （除非 ``allow_echo`` 为 ``true``\ ，否则不是 :ref:`InputEventKey<class_InputEventKey>` 事件中的回显事件）。与 :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` 或 :ref:`InputEventScreenDrag<class_InputEventScreenDrag>` 类型的事件无关。

如果 ``exact_match`` 为 ``false``\ ，则它会忽略 :ref:`InputEventKey<class_InputEventKey>` 和 :ref:`InputEventMouseButton<class_InputEventMouseButton>` 事件的额外输入修饰键，以及 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 事件的方向。

\ **注意：**\ 由于键盘重影，\ :ref:`is_action_pressed()<class_InputEvent_method_is_action_pressed>` 可能会返回 ``false``\ ，即使动作的某个键被按下时也是如此。有关详细信息，请参阅文档中的 `《输入示例》 <../tutorials/inputs/input_examples.html#keyboard-events>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_released**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_released>`

如果给定的动作与该事件匹配且被释放（即未按下），则返回 ``true``\ 。与 :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` 或 :ref:`InputEventScreenDrag<class_InputEventScreenDrag>` 类型的事件无关。

如果 ``exact_match`` 为 ``false``\ ，它会忽略 :ref:`InputEventKey<class_InputEventKey>` 和 :ref:`InputEventMouseButton<class_InputEventMouseButton>` 事件的额外输入修饰键，以及 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 事件的方向。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_type**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_type>`

如果该输入事件的类型可以分配给输入事件则返回 ``true``\ ，这些类型包括：\ :ref:`InputEventKey<class_InputEventKey>`\ 、\ :ref:`InputEventMouseButton<class_InputEventMouseButton>`\ 、\ :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`\ 、\ :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`\ 、\ :ref:`InputEventAction<class_InputEventAction>`\ 。其他所有输入事件类型都会返回 ``false``\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_canceled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_canceled**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_canceled>`

如果这个输入事件已被取消，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_echo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_echo**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_echo>`

如果该输入事件是回显事件（仅适用于 :ref:`InputEventKey<class_InputEventKey>` 类型的事件），则返回 ``true``\ 。回显事件是用户按住按键时发送的重复按键事件。任何其他事件类型都返回 ``false``\ 。

\ **注意：**\ 发送回显事件的速率通常约为每秒 20 个事件（按住按键约半秒钟后）。但是，在操作系统设置中，按键重复延迟/速度可被用户修改或者完全禁用。为确保你的项目在所有配置下都能正常工作，请不要假设用户在项目行为中具有特定的按键重复配置。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_match:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_match**\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_InputEvent_method_is_match>`

如果指定的 ``event`` 与该事件匹配，则返回 ``true``\ 。仅对动作事件有效，包括按键事件（\ :ref:`InputEventKey<class_InputEventKey>`\ ）、按钮事件（\ :ref:`InputEventMouseButton<class_InputEventMouseButton>` 或 :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`\ ）、轴事件 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`\ 、动作事件（\ :ref:`InputEventAction<class_InputEventAction>`\ ）。

如果 ``exact_match`` 为 ``false``\ ，检查时会忽略 :ref:`InputEventKey<class_InputEventKey>` 和 :ref:`InputEventMouseButton<class_InputEventMouseButton>` 事件的额外输入修饰键，以及 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 事件的方向。

\ **注意：**\ 该方法只会考虑事件配置（例如键盘按键和游戏手柄轴），不会考虑 :ref:`is_pressed()<class_InputEvent_method_is_pressed>`\ 、\ :ref:`is_released()<class_InputEvent_method_is_released>`\ 、\ :ref:`is_echo()<class_InputEvent_method_is_echo>`\ 、\ :ref:`is_canceled()<class_InputEvent_method_is_canceled>` 等状态信息。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pressed**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_pressed>`

如果该输入事件是按下事件，则返回 ``true``\ 。与 :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` 或 :ref:`InputEventScreenDrag<class_InputEventScreenDrag>` 类型的事件无关。

\ **注意：**\ 由于键盘重影，即使按下动作的某个键，\ :ref:`is_pressed()<class_InputEvent_method_is_pressed>` 也有可能会返回 ``false``\ 。详见文档中的\ `《输入示例》 <../tutorials/inputs/input_examples.html#keyboard-events>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_released**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_released>`

如果该输入事件是松开事件，则返回 ``true``\ 。不适用于类型为 :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` 和 :ref:`InputEventScreenDrag<class_InputEventScreenDrag>` 的事件。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_xformed_by:

.. rst-class:: classref-method

:ref:`InputEvent<class_InputEvent>` **xformed_by**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, local_ofs\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_InputEvent_method_xformed_by>`

返回给定输入事件的副本，该副本已被 ``local_ofs`` 偏移并被 ``xform`` 变换。与 :ref:`InputEventMouseButton<class_InputEventMouseButton>`\ 、\ :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`\ 、\ :ref:`InputEventScreenTouch<class_InputEventScreenTouch>`\ 、\ :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`\ 、\ :ref:`InputEventMagnifyGesture<class_InputEventMagnifyGesture>` 和 :ref:`InputEventPanGesture<class_InputEventPanGesture>` 类型的事件相关。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
