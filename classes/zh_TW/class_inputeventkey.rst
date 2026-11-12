:github_url: hide

.. _class_InputEventKey:

InputEventKey
=============

**繼承：** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

代表鍵盤上的某個按鍵被按下或鬆開。

.. rst-class:: classref-introduction-group

說明
----

鍵盤上的按鍵操作對應的輸入事件。支援按鍵按下、釋放和 :ref:`echo<class_InputEventKey_property_echo>` 事件。還可以在 :ref:`Node._unhandled_key_input()<class_Node_private_method__unhandled_key_input>` 收到。

\ **注意：**\ 從鍵盤上接收的事件通常設定了所有屬性。事件對應應該只設定 :ref:`keycode<class_InputEventKey_property_keycode>`\ 、\ :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>`\ 、\ :ref:`unicode<class_InputEventKey_property_unicode>` 的其中之一。

比較事件時，將按以下優先順序檢查屬性——\ :ref:`keycode<class_InputEventKey_property_keycode>`\ 、\ :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>`\ 、\ :ref:`unicode<class_InputEventKey_property_unicode>`\ 。有一個配對就會認為事件相等。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用 InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_InputEventKey_property_echo:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **echo** = ``false`` :ref:`🔗<class_InputEventKey_property_echo>`

.. rst-class:: classref-property-setget

- |void| **set_echo**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_echo**\ (\ )

如果為 ``true``\ ，則表示在該事件之前已按下該鍵。回顯事件是使用者按住該鍵時發送的重複按鍵事件。

\ **注意：**\ 發送回顯事件的速率通常約為每秒 20 個事件（按住按鍵約半秒鐘後）。但是，在作業系統設定中，按鍵重複延遲/速度可被使用者修改或者完全停用。為確保你的專案在所有設定下都能正常工作，請不要假設使用者在專案行為中具有特定的按鍵重複設定。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_key_label:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **key_label** = ``0`` :ref:`🔗<class_InputEventKey_property_key_label>`

.. rst-class:: classref-property-setget

- |void| **set_key_label**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_key_label**\ (\ )

Represents the localized label printed on the key in the current keyboard layout, which corresponds to one of the :ref:`Key<enum_@GlobalScope_Key>` constants or any valid Unicode character. Key labels are meant for key prompts.

For keyboard layouts with a single label on the key, it is equivalent to :ref:`keycode<class_InputEventKey_property_keycode>`.

To get a human-readable representation of the **InputEventKey**, use ``OS.get_keycode_string(event.key_label)`` where ``event`` is the **InputEventKey**.

.. code:: text

    ┌─────┐ ┌─────┐
    │ Q   │ │ Q   │ - "Q" - keycode
    │   Й │ │  ض │ - "Й" and "ض" - key_label
    └─────┘ └─────┘

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_keycode:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **keycode** = ``0`` :ref:`🔗<class_InputEventKey_property_keycode>`

.. rst-class:: classref-property-setget

- |void| **set_keycode**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_keycode**\ (\ )

Latin label printed on the key in the current keyboard layout, which corresponds to one of the :ref:`Key<enum_@GlobalScope_Key>` constants. Key codes are meant for shortcuts expressed with a standard Latin keyboard, such as :kbd:`Ctrl + S` for a "Save" shortcut.

To get a human-readable representation of the **InputEventKey**, use ``OS.get_keycode_string(event.keycode)`` where ``event`` is the **InputEventKey**.

.. code:: text

    ┌─────┐ ┌─────┐
    │ Q   │ │ Q   │ - "Q" - keycode
    │   Й │ │  ض │ - "Й" and "ض" - key_label
    └─────┘ └─────┘

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_location:

.. rst-class:: classref-property

:ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` **location** = ``0`` :ref:`🔗<class_InputEventKey_property_location>`

.. rst-class:: classref-property-setget

- |void| **set_location**\ (\ value\: :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>`\ )
- :ref:`KeyLocation<enum_@GlobalScope_KeyLocation>` **get_location**\ (\ )

表示具有左右版本的鍵的位置，例如 :kbd:`Shift` 和 :kbd:`Alt`\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_physical_keycode:

.. rst-class:: classref-property

:ref:`Key<enum_@GlobalScope_Key>` **physical_keycode** = ``0`` :ref:`🔗<class_InputEventKey_property_physical_keycode>`

.. rst-class:: classref-property-setget

- |void| **set_physical_keycode**\ (\ value\: :ref:`Key<enum_@GlobalScope_Key>`\ )
- :ref:`Key<enum_@GlobalScope_Key>` **get_physical_keycode**\ (\ )

代表按鍵在 101/102 鍵的美式鍵盤上的物理位置，對應一個 :ref:`Key<enum_@GlobalScope_Key>` 常數。用於遊戲輸入的物理鍵碼，例如 WASD 移動鍵，其中只有按鍵的位置很重要。

要取得 **InputEventKey** 的人類可讀表示，請搭配使用 :ref:`OS.get_keycode_string()<class_OS_method_get_keycode_string>` 和 :ref:`DisplayServer.keyboard_get_keycode_from_physical()<class_DisplayServer_method_keyboard_get_keycode_from_physical>` 或 :ref:`DisplayServer.keyboard_get_label_from_physical()<class_DisplayServer_method_keyboard_get_label_from_physical>` 方法：


.. tabs::

 .. code-tab:: gdscript

    func _input(event):
        if event is InputEventKey:
            var keycode = DisplayServer.keyboard_get_keycode_from_physical(event.physical_keycode)
            var label = DisplayServer.keyboard_get_label_from_physical(event.physical_keycode)
            print(OS.get_keycode_string(keycode))
            print(OS.get_keycode_string(label))

 .. code-tab:: csharp

    public override void _Input(InputEvent @event)
    {
        if (@event is InputEventKey inputEventKey)
        {
            var keycode = DisplayServer.KeyboardGetKeycodeFromPhysical(inputEventKey.PhysicalKeycode);
            var label = DisplayServer.KeyboardGetLabelFromPhysical(inputEventKey.PhysicalKeycode);
            GD.Print(OS.GetKeycodeString(keycode));
            GD.Print(OS.GetKeycodeString(label));
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

如果為 ``true``\ ，按鍵的狀態是被按下。如果為 ``false``\ ，該鍵的狀態被釋放。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_property_unicode:

.. rst-class:: classref-property

:ref:`int<class_int>` **unicode** = ``0`` :ref:`🔗<class_InputEventKey_property_unicode>`

.. rst-class:: classref-property-setget

- |void| **set_unicode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_unicode**\ (\ )

按鍵 Unicode 字元程式碼（當相關時），由修飾鍵進行調整。除非 IME 輸入模式處於活動狀態，否則復合字元和複雜文字的 Unicode 字元程式碼可能不可用。有關詳細資訊，請參閱 :ref:`Window.set_ime_active()<class_Window_method_set_ime_active>`\ 。Unicode 字元碼用於文字輸入。

\ **注意：**\ 該屬性由引擎設定僅用於按下事件。如果事件是由 IME 或虛擬鍵盤發送的，則不會發送相應的按鍵釋放事件。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_InputEventKey_method_as_text_key_label:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_key_label**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_key_label>`

返回該事件 :ref:`key_label<class_InputEventKey_property_key_label>` 及修飾鍵的 :ref:`String<class_String>` 字串表示。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_keycode:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_keycode**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_keycode>`

返回該事件 :ref:`keycode<class_InputEventKey_property_keycode>` 及修飾鍵的 :ref:`String<class_String>` 字串表示。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_location:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_location**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_location>`

回傳事件的 :ref:`location<class_InputEventKey_property_location>` 的 :ref:`String<class_String>` 表示形式。如果該事件不特定於某個位置，則這將是一個空白字串。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_as_text_physical_keycode:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text_physical_keycode**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_as_text_physical_keycode>`

返回該事件 :ref:`physical_keycode<class_InputEventKey_property_physical_keycode>` 及修飾鍵的 :ref:`String<class_String>` 字串表示。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_key_label_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_key_label_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_key_label_with_modifiers>`

返回與修飾鍵，例如 :kbd:`Shift` 或 :kbd:`Alt` 組合的當地語系化鍵標籤。另見 :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`\ 。

要獲得帶有修飾鍵的 **InputEventKey** 的人類可讀表示，請使用 ``OS.get_keycode_string(event.get_key_label_with_modifiers())``\ ，其中 ``event`` 是 **InputEventKey**\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_keycode_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_keycode_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_keycode_with_modifiers>`

返回與 :kbd:`Shift` 或 :kbd:`Alt` 等修飾鍵組合的拉丁鍵碼。另見 :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`\ 。

要獲得帶有修飾鍵的 **InputEventKey** 的人類可讀表示，請使用 ``OS.get_keycode_string(event.get_keycode_with_modifiers())``\ ，其中 ``event`` 是 **InputEventKey**\ 。

.. rst-class:: classref-item-separator

----

.. _class_InputEventKey_method_get_physical_keycode_with_modifiers:

.. rst-class:: classref-method

:ref:`Key<enum_@GlobalScope_Key>` **get_physical_keycode_with_modifiers**\ (\ ) |const| :ref:`🔗<class_InputEventKey_method_get_physical_keycode_with_modifiers>`

返回與諸如 :kbd:`Shift` 或 :kbd:`Alt` 的修飾鍵組合的物理鍵碼。另請參閱 :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`\ 。

要獲得帶有修飾符的 **InputEventKey** 的人類可讀表示，請使用 ``OS.get_keycode_string(event.get_physical_keycode_with_modifiers())``\ ，其中 ``event`` 是 **InputEventKey**\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
