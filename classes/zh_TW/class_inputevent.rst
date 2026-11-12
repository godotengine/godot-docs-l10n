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

模擬裝置 ID，用於根據觸屏事件生成的滑鼠輸入，或根據滑鼠事件生成的觸摸輸入。可以據此來區分模擬滑鼠輸入和物理滑鼠輸入，以及模擬觸摸輸入和物理觸摸輸入。

.. _class_InputEvent_constant_DEVICE_ID_KEYBOARD:

.. rst-class:: classref-constant

**DEVICE_ID_KEYBOARD** = ``16`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_KEYBOARD>`

用於鍵盤輸入的裝置 ID。這可用於區分鍵盤輸入事件和遊戲控制器輸入事件。

.. _class_InputEvent_constant_DEVICE_ID_MOUSE:

.. rst-class:: classref-constant

**DEVICE_ID_MOUSE** = ``32`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_MOUSE>`

用於滑鼠輸入的裝置 ID。這可用於區分滑鼠輸入事件和遊戲控制器輸入事件。

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

事件的裝置 ID。

\ **注意：**\ :ref:`device<class_InputEvent_property_device>` 在特殊情況下可能為負數，此時表示的不是系統中物理存在的裝置。見 :ref:`DEVICE_ID_EMULATION<class_InputEvent_constant_DEVICE_ID_EMULATION>`\ 。

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

Returns a value between ``0.0`` and ``1.0`` depending on the given action's state. Useful for getting the value of events of type :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

If ``exact_match`` is ``false``, it ignores additional input modifiers for :ref:`InputEventKey<class_InputEventKey>` and :ref:`InputEventMouseButton<class_InputEventMouseButton>` events, and the direction for :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` events.

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

如果給定的動作與該事件匹配且正被按下，則回傳 ``true``\ （除非 ``allow_echo`` 為 ``true``\ ，否則不是 :ref:`InputEventKey<class_InputEventKey>` 事件中的回顯事件）。與 :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` 或 :ref:`InputEventScreenDrag<class_InputEventScreenDrag>` 型別的事件無關。

如果 ``exact_match`` 為 ``false``\ ，則它會忽略 :ref:`InputEventKey<class_InputEventKey>` 和 :ref:`InputEventMouseButton<class_InputEventMouseButton>` 事件的額外輸入修飾鍵，以及 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 事件的方向。

\ **注意：**\ 由於鍵盤重影，\ :ref:`is_action_pressed()<class_InputEvent_method_is_action_pressed>` 可能會回傳 ``false``\ ，即使動作的某個鍵被按下時也是如此。有關詳細資訊，請參閱文件中的 `《輸入範例》 <../tutorials/inputs/input_examples.html#keyboard-events>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_released**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_released>`

如果給定的動作與該事件匹配且被釋放（即未按下），則回傳 ``true``\ 。與 :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` 或 :ref:`InputEventScreenDrag<class_InputEventScreenDrag>` 型別的事件無關。

如果 ``exact_match`` 為 ``false``\ ，它會忽略 :ref:`InputEventKey<class_InputEventKey>` 和 :ref:`InputEventMouseButton<class_InputEventMouseButton>` 事件的額外輸入修飾鍵，以及 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 事件的方向。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_type**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_type>`

如果該輸入事件的型別可以分配給輸入事件則回傳 ``true``\ ，這些型別包括：\ :ref:`InputEventKey<class_InputEventKey>`\ 、\ :ref:`InputEventMouseButton<class_InputEventMouseButton>`\ 、\ :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`\ 、\ :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`\ 、\ :ref:`InputEventAction<class_InputEventAction>`\ 。其他所有輸入事件型別都會回傳 ``false``\ 。

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

如果該輸入事件是回顯事件（僅適用於 :ref:`InputEventKey<class_InputEventKey>` 型別的事件），則回傳 ``true``\ 。回顯事件是使用者按住按鍵時發送的重複按鍵事件。任何其他事件型別都回傳 ``false``\ 。

\ **注意：**\ 發送回顯事件的速率通常約為每秒 20 個事件（按住按鍵約半秒鐘後）。但是，在作業系統設定中，按鍵重複延遲/速度可被使用者修改或者完全停用。為確保你的專案在所有設定下都能正常工作，請不要假設使用者在專案行為中具有特定的按鍵重複設定。

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_match:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_match**\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_InputEvent_method_is_match>`

如果指定的 ``event`` 與該事件匹配，則回傳 ``true``\ 。僅對動作事件有效，包括按鍵事件（\ :ref:`InputEventKey<class_InputEventKey>`\ ）、按鈕事件（\ :ref:`InputEventMouseButton<class_InputEventMouseButton>` 或 :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`\ ）、軸事件 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`\ 、動作事件（\ :ref:`InputEventAction<class_InputEventAction>`\ ）。

如果 ``exact_match`` 為 ``false``\ ，檢查時會忽略 :ref:`InputEventKey<class_InputEventKey>` 和 :ref:`InputEventMouseButton<class_InputEventMouseButton>` 事件的額外輸入修飾鍵，以及 :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` 事件的方向。

\ **注意：**\ 該方法只會考慮事件設定（例如鍵盤按鍵和遊戲控制器軸），不會考慮 :ref:`is_pressed()<class_InputEvent_method_is_pressed>`\ 、\ :ref:`is_released()<class_InputEvent_method_is_released>`\ 、\ :ref:`is_echo()<class_InputEvent_method_is_echo>`\ 、\ :ref:`is_canceled()<class_InputEvent_method_is_canceled>` 等狀態資訊。

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
