:github_url: hide

.. _class_BaseButton:

BaseButton
==========

**繼承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`Button<class_Button>`, :ref:`LinkButton<class_LinkButton>`, :ref:`TextureButton<class_TextureButton>`

GUI 按鈕的抽象基底類別。

.. rst-class:: classref-introduction-group

說明
----

**BaseButton** 是 GUI 按鈕的抽象基底類別，本身不會顯示任何內容。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`ActionMode<enum_BaseButton_ActionMode>`                           | :ref:`action_mode<class_BaseButton_property_action_mode>`                   | ``1``                                                               |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`ButtonGroup<class_ButtonGroup>`                                   | :ref:`button_group<class_BaseButton_property_button_group>`                 |                                                                     |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] | :ref:`button_mask<class_BaseButton_property_button_mask>`                   | ``1``                                                               |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`button_pressed<class_BaseButton_property_button_pressed>`             | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`disabled<class_BaseButton_property_disabled>`                         | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                                | focus_mode                                                                  | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`keep_pressed_outside<class_BaseButton_property_keep_pressed_outside>` | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`Shortcut<class_Shortcut>`                                         | :ref:`shortcut<class_BaseButton_property_shortcut>`                         |                                                                     |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`shortcut_feedback<class_BaseButton_property_shortcut_feedback>`       | ``true``                                                            |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`shortcut_in_tooltip<class_BaseButton_property_shortcut_in_tooltip>`   | ``true``                                                            |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                 | :ref:`toggle_mode<class_BaseButton_property_toggle_mode>`                   | ``false``                                                           |
   +-------------------------------------------------------------------------+-----------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`_pressed<class_BaseButton_private_method__pressed>`\ (\ ) |virtual|                                            |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`_toggled<class_BaseButton_private_method__toggled>`\ (\ toggled_on\: :ref:`bool<class_bool>`\ ) |virtual|      |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`DrawMode<enum_BaseButton_DrawMode>` | :ref:`get_draw_mode<class_BaseButton_method_get_draw_mode>`\ (\ ) |const|                                            |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_hovered<class_BaseButton_method_is_hovered>`\ (\ ) |const|                                                  |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_pressed_no_signal<class_BaseButton_method_set_pressed_no_signal>`\ (\ pressed\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_BaseButton_signal_button_down:

.. rst-class:: classref-signal

**button_down**\ (\ ) :ref:`🔗<class_BaseButton_signal_button_down>`

當開始按住按鈕時發出。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_signal_button_up:

.. rst-class:: classref-signal

**button_up**\ (\ ) :ref:`🔗<class_BaseButton_signal_button_up>`

當停止按住按鈕時發出。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_BaseButton_signal_pressed>`

當按鈕被切換或按下時發出。若 :ref:`action_mode<class_BaseButton_property_action_mode>` 為 :ref:`ACTION_MODE_BUTTON_PRESS<class_BaseButton_constant_ACTION_MODE_BUTTON_PRESS>`\ ，則在 :ref:`button_down<class_BaseButton_signal_button_down>` 觸發；否則在 :ref:`button_up<class_BaseButton_signal_button_up>` 觸發。

若需知道按鈕目前的按下狀態（且已啟用 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>`\ ），請改用 :ref:`toggled<class_BaseButton_signal_toggled>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_signal_toggled:

.. rst-class:: classref-signal

**toggled**\ (\ toggled_on\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BaseButton_signal_toggled>`

當按鈕於按下與正常狀態間剛完成切換時發出（僅在 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` 啟用時）。新狀態會包含於參數 ``toggled_on`` 中。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_BaseButton_DrawMode:

.. rst-class:: classref-enumeration

enum **DrawMode**: :ref:`🔗<enum_BaseButton_DrawMode>`

.. _class_BaseButton_constant_DRAW_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_NORMAL** = ``0``

按鈕的正常狀態（未按下、未懸停、未切換且已啟用）。

.. _class_BaseButton_constant_DRAW_PRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_PRESSED** = ``1``

按鈕被按下的狀態。

.. _class_BaseButton_constant_DRAW_HOVER:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_HOVER** = ``2``

按鈕處於滑鼠懸停的狀態。

.. _class_BaseButton_constant_DRAW_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_DISABLED** = ``3``

按鈕處於停用狀態。

.. _class_BaseButton_constant_DRAW_HOVER_PRESSED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawMode<enum_BaseButton_DrawMode>` **DRAW_HOVER_PRESSED** = ``4``

按鈕同時處於懸停且按下的狀態。

.. rst-class:: classref-item-separator

----

.. _enum_BaseButton_ActionMode:

.. rst-class:: classref-enumeration

enum **ActionMode**: :ref:`🔗<enum_BaseButton_ActionMode>`

.. _class_BaseButton_constant_ACTION_MODE_BUTTON_PRESS:

.. rst-class:: classref-enumeration-constant

:ref:`ActionMode<enum_BaseButton_ActionMode>` **ACTION_MODE_BUTTON_PRESS** = ``0``

只需按下即可視為已點擊。

.. _class_BaseButton_constant_ACTION_MODE_BUTTON_RELEASE:

.. rst-class:: classref-enumeration-constant

:ref:`ActionMode<enum_BaseButton_ActionMode>` **ACTION_MODE_BUTTON_RELEASE** = ``1``

需按下後再釋放才算一次點擊。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_BaseButton_property_action_mode:

.. rst-class:: classref-property

:ref:`ActionMode<enum_BaseButton_ActionMode>` **action_mode** = ``1`` :ref:`🔗<class_BaseButton_property_action_mode>`

.. rst-class:: classref-property-setget

- |void| **set_action_mode**\ (\ value\: :ref:`ActionMode<enum_BaseButton_ActionMode>`\ )
- :ref:`ActionMode<enum_BaseButton_ActionMode>` **get_action_mode**\ (\ )

決定按鈕被視為已點擊的時機。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_button_group:

.. rst-class:: classref-property

:ref:`ButtonGroup<class_ButtonGroup>` **button_group** :ref:`🔗<class_BaseButton_property_button_group>`

.. rst-class:: classref-property-setget

- |void| **set_button_group**\ (\ value\: :ref:`ButtonGroup<class_ButtonGroup>`\ )
- :ref:`ButtonGroup<class_ButtonGroup>` **get_button_group**\ (\ )

與此按鈕關聯的 :ref:`ButtonGroup<class_ButtonGroup>`\ ，不要與「節點群組」混淆。

\ **注意：** 如果為按鈕指定了 :ref:`ButtonGroup<class_ButtonGroup>`\ ，它將被設定為單選按鈕。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_button_mask:

.. rst-class:: classref-property

|bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **button_mask** = ``1`` :ref:`🔗<class_BaseButton_property_button_mask>`

.. rst-class:: classref-property-setget

- |void| **set_button_mask**\ (\ value\: |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\]\ )
- |bitfield|\[:ref:`MouseButtonMask<enum_@GlobalScope_MouseButtonMask>`\] **get_button_mask**\ (\ )

二進位遮罩，用來指定此按鈕要回應哪些滑鼠鍵。

若要同時允許左鍵與右鍵點擊，請使用 ``MOUSE_BUTTON_MASK_LEFT | MOUSE_BUTTON_MASK_RIGHT``\ 。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_button_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **button_pressed** = ``false`` :ref:`🔗<class_BaseButton_property_button_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

若為 ``true``\ ，表示按鈕處於按下狀態，或在 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` 啟用時處於切換狀態。僅在 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` 為 ``true`` 時有效。

\ **注意：** 直接修改 :ref:`button_pressed<class_BaseButton_property_button_pressed>` 會觸發 :ref:`toggled<class_BaseButton_signal_toggled>`\ 。若要在不發出該訊號的情況下改變狀態，請使用 :ref:`set_pressed_no_signal()<class_BaseButton_method_set_pressed_no_signal>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_BaseButton_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

If ``true``, the button is in disabled state and can't be clicked or toggled.

\ **Note:** If the button is disabled while held down, :ref:`button_up<class_BaseButton_signal_button_up>` will be emitted.

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_keep_pressed_outside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_pressed_outside** = ``false`` :ref:`🔗<class_BaseButton_property_keep_pressed_outside>`

.. rst-class:: classref-property-setget

- |void| **set_keep_pressed_outside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keep_pressed_outside**\ (\ )

若為 ``true``\ ，按下按鈕後即使將游標移出按鈕區域，按鈕仍保持按下狀態。

\ **注意：** 此屬性僅影響視覺效果，訊號的觸發時機不受其影響。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_shortcut:

.. rst-class:: classref-property

:ref:`Shortcut<class_Shortcut>` **shortcut** :ref:`🔗<class_BaseButton_property_shortcut>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut**\ (\ value\: :ref:`Shortcut<class_Shortcut>`\ )
- :ref:`Shortcut<class_Shortcut>` **get_shortcut**\ (\ )

與此按鈕關聯的 :ref:`Shortcut<class_Shortcut>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_shortcut_feedback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shortcut_feedback** = ``true`` :ref:`🔗<class_BaseButton_property_shortcut_feedback>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut_feedback**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shortcut_feedback**\ (\ )

若為 ``true``\ ，當其快捷鍵被觸發時，按鈕會短暫反白。若為 ``false`` 且 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` 為 ``false``\ ，快捷鍵將在無視覺回饋下觸發。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_shortcut_in_tooltip:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shortcut_in_tooltip** = ``true`` :ref:`🔗<class_BaseButton_property_shortcut_in_tooltip>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut_in_tooltip**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shortcut_in_tooltip_enabled**\ (\ )

若為 ``true``\ ，工具提示會自動附加此按鈕的快捷鍵資訊。

\ **注意：** 若透過 :ref:`Control._make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` 自訂了工具提示，此屬性將不會生效。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_property_toggle_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **toggle_mode** = ``false`` :ref:`🔗<class_BaseButton_property_toggle_mode>`

.. rst-class:: classref-property-setget

- |void| **set_toggle_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_toggle_mode**\ (\ )

若為 ``true``\ ，按鈕進入切換模式：每次點擊都會在按下／彈起狀態間切換。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_BaseButton_private_method__pressed:

.. rst-class:: classref-method

|void| **_pressed**\ (\ ) |virtual| :ref:`🔗<class_BaseButton_private_method__pressed>`

當按下按鈕時呼叫。如果你需要得知按鈕的按下狀態（且已啟用 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>`\ ），請改用 :ref:`_toggled()<class_BaseButton_private_method__toggled>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_private_method__toggled:

.. rst-class:: classref-method

|void| **_toggled**\ (\ toggled_on\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_BaseButton_private_method__toggled>`

當按鈕被切換時呼叫（僅在 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` 啟用時）。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_method_get_draw_mode:

.. rst-class:: classref-method

:ref:`DrawMode<enum_BaseButton_DrawMode>` **get_draw_mode**\ (\ ) |const| :ref:`🔗<class_BaseButton_method_get_draw_mode>`

傳回用於繪製按鈕的視覺狀態。通常於覆寫 _draw() 或連接「draw」訊號，實作自訂繪製程式碼時使用。按鈕的視覺狀態由 :ref:`DrawMode<enum_BaseButton_DrawMode>` 列舉定義。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_method_is_hovered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_hovered**\ (\ ) |const| :ref:`🔗<class_BaseButton_method_is_hovered>`

若滑鼠已進入按鈕且尚未離開，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_BaseButton_method_set_pressed_no_signal:

.. rst-class:: classref-method

|void| **set_pressed_no_signal**\ (\ pressed\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BaseButton_method_set_pressed_no_signal>`

變更按鈕的 :ref:`button_pressed<class_BaseButton_property_button_pressed>` 狀態而不觸發 :ref:`toggled<class_BaseButton_signal_toggled>`\ 。當你只想改變狀態而不送出按下事件（例如在初始化場景時）可使用此方法。僅在 :ref:`toggle_mode<class_BaseButton_property_toggle_mode>` 為 ``true`` 時有效。

\ **注意：** 這個方法不會將 :ref:`button_group<class_BaseButton_property_button_group>` 內的其他按鈕彈起。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
