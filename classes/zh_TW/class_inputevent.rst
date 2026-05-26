:github_url: hide

.. _class_InputEvent:

InputEvent
==========

**繼承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`InputEventAction<class_InputEventAction>`, :ref:`InputEventFromWindow<class_InputEventFromWindow>`, :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`, :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, :ref:`InputEventMIDI<class_InputEventMIDI>`, :ref:`InputEventShortcut<class_InputEventShortcut>`

輸入事件的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

各種輸入事件的抽象基底類別。見 :ref:`Node._input()<class_Node_private_method__input>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

- :doc:`Viewport 和畫布變換 <../tutorials/2d/2d_transforms>`

- `2D Dodge The Creeps 範例 <https://godotengine.org/asset-library/asset/2712>`__

- `3D 體素示範 <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

屬性
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

常數
----

.. _class_InputEvent_constant_DEVICE_ID_EMULATION:

.. rst-class:: classref-constant

**DEVICE_ID_EMULATION** = ``-1`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_EMULATION>`

Device ID used for emulated mouse input from a touchscreen, or for emulated touch input from a mouse. This can be used to distinguish emulated mouse input from physical mouse input, or emulated touch input from physical touch input.

.. _class_InputEvent_constant_DEVICE_ID_KEYBOARD:

.. rst-class:: classref-constant

**DEVICE_ID_KEYBOARD** = ``16`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_KEYBOARD>`

Device ID used for input from a keyboard. This can be used to distinguish keyboard input events from joypad input events.

.. _class_InputEvent_constant_DEVICE_ID_MOUSE:

.. rst-class:: classref-constant

**DEVICE_ID_MOUSE** = ``32`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_MOUSE>`

Device ID used for input from a mouse. This can be used to distinguish mouse input events from joypad input events.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_InputEvent_property_device:

.. rst-class:: classref-property

:ref:`int<class_int>` **device** = ``0`` :ref:`🔗<class_InputEvent_property_device>`

.. rst-class:: classref-property-setget

- |void| **set_device**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_device**\ (\ )

The event's device ID.

\ **Note:** :ref:`device<class_InputEvent_property_device>` can be negative for special use cases that don't refer to devices physically present on the system. See :ref:`DEVICE_ID_EMULATION<class_InputEvent_constant_DEVICE_ID_EMULATION>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_InputEvent_method_accumulate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **accumulate**\ (\ with_event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputEvent_method_accumulate>`

如果給定的輸入事件和這個輸入事件可以相加，則返回 ``true``\ （只針對 :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` 型別的事件）。

給定輸入事件的位置、全域位置和速度將被複製。產生的 ``relative`` 是兩個事件的總和。兩個事件的修飾符必須是相同的。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_as_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_as_text>`

返回事件的 :ref:`String<class_String>` 字串表示。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_get_action_strength:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_action_strength**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_get_action_strength>`

根據給定動作的狀態返回 0.0 到 1.0 之間的值。獲取 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 類型事件的值時很有用。

如果 ``exact_match`` 為 ``false``\ ，它會忽略 :ref:`InputEventKey<class_InputEventKey>` 和 :ref:`InputEventMouseButton<class_InputEventMouseButton>` 事件的額外輸入修飾鍵，以及 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 事件的方向。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action>`

如果該輸入事件配對任何型別的預定義動作，則返回 ``true``\ 。

如果 ``exact_match`` 為 ``false``\ ，它會忽略 :ref:`InputEventKey<class_InputEventKey>` 和 :ref:`InputEventMouseButton<class_InputEventMouseButton>` 事件的額外輸入修飾鍵，以及 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 事件的方向。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_pressed**\ (\ action\: :ref:`StringName<class_StringName>`, allow_echo\: :ref:`bool<class_bool>` = false, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_pressed>`

Returns ``true`` if the given action matches this event and is being pressed (and is not an echo event for :ref:`InputEventKey<class_InputEventKey>` events, unless ``allow_echo`` is ``true``). Not relevant for events of type :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` or :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

If ``exact_match`` is ``false``, it ignores additional input modifiers for :ref:`InputEventKey<class_InputEventKey>` and :ref:`InputEventMouseButton<class_InputEventMouseButton>` events, and the direction for :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` events.

\ **Note:** Due to keyboard ghosting, :ref:`is_action_pressed()<class_InputEvent_method_is_action_pressed>` may return ``false`` even if one of the action's keys is pressed. See `Input examples <../tutorials/inputs/input_examples.html#keyboard-events>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_released**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_released>`

Returns ``true`` if the given action matches this event and is released (i.e. not pressed). Not relevant for events of type :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` or :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

If ``exact_match`` is ``false``, it ignores additional input modifiers for :ref:`InputEventKey<class_InputEventKey>` and :ref:`InputEventMouseButton<class_InputEventMouseButton>` events, and the direction for :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` events.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_type**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_type>`

Returns ``true`` if this input event's type is one that can be assigned to an input action: :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`, :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, :ref:`InputEventAction<class_InputEventAction>`. Returns ``false`` for all other input event types.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_canceled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_canceled**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_canceled>`

如果這個輸入事件已被取消，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_echo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_echo**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_echo>`

Returns ``true`` if this input event is an echo event (only for events of type :ref:`InputEventKey<class_InputEventKey>`). An echo event is a repeated key event sent when the user is holding down the key. Any other event type returns ``false``.

\ **Note:** The rate at which echo events are sent is typically around 20 events per second (after holding down the key for roughly half a second). However, the key repeat delay/speed can be changed by the user or disabled entirely in the operating system settings. To ensure your project works correctly on all configurations, do not assume the user has a specific key repeat configuration in your project's behavior.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_match:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_match**\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_InputEvent_method_is_match>`

Returns ``true`` if the specified ``event`` matches this event. Only valid for action events, which include key (:ref:`InputEventKey<class_InputEventKey>`), button (:ref:`InputEventMouseButton<class_InputEventMouseButton>` or :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`), axis :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, and action (:ref:`InputEventAction<class_InputEventAction>`) events.

If ``exact_match`` is ``false``, the check ignores additional input modifiers for :ref:`InputEventKey<class_InputEventKey>` and :ref:`InputEventMouseButton<class_InputEventMouseButton>` events, and the direction for :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` events.

\ **Note:** This method only considers the event configuration (such as the keyboard key or the joypad axis), not state information like :ref:`is_pressed()<class_InputEvent_method_is_pressed>`, :ref:`is_released()<class_InputEvent_method_is_released>`, :ref:`is_echo()<class_InputEvent_method_is_echo>`, or :ref:`is_canceled()<class_InputEvent_method_is_canceled>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pressed**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_pressed>`

如果該輸入事件被按下，則返回 ``true``\ 。與 :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` 或 :ref:`InputEventScreenDrag<class_InputEventScreenDrag>` 型別的事件無關。

\ **注意：**\ 由於鍵盤重影，即使按下動作的某個鍵，\ :ref:`is_pressed()<class_InputEvent_method_is_pressed>` 也有可能會返回 ``false``\ 。有關詳細資訊，請參閱文件中的\ `《輸入範例》 <../tutorials/inputs/input_examples.html#keyboard-events>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_released**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_released>`

如果該輸入事件是回顯事件，則返回 ``true``\ 。不適用於型別為 :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` 和 :ref:`InputEventScreenDrag<class_InputEventScreenDrag>` 的事件。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_xformed_by:

.. rst-class:: classref-method

:ref:`InputEvent<class_InputEvent>` **xformed_by**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, local_ofs\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_InputEvent_method_xformed_by>`

返回給定輸入事件的副本，該副本已被 ``local_ofs`` 偏移並被 ``xform`` 變換。與 :ref:`InputEventMouseButton<class_InputEventMouseButton>`\ 、\ :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`\ 、\ :ref:`InputEventScreenTouch<class_InputEventScreenTouch>`\ 、\ :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`\ 、\ :ref:`InputEventMagnifyGesture<class_InputEventMagnifyGesture>`\ 、和 :ref:`InputEventPanGesture<class_InputEventPanGesture>` 型別的事件相關。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
