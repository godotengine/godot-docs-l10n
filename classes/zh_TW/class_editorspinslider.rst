:github_url: hide

.. _class_EditorSpinSlider:

EditorSpinSlider
================

**繼承：** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Godot 編輯器用於編輯數值的控制項。

.. rst-class:: classref-introduction-group

說明
----

這個 :ref:`Control<class_Control>` 節點用於編輯器的屬性檢視器面板中，以允許編輯數值。可與 :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` 一起使用以達到相同的效果。

如果 :ref:`Range.step<class_Range_property_step>` 值是 ``1``\ ，\ **EditorSpinSlider** 將會顯示向上/向下箭頭，類似於 :ref:`SpinBox<class_SpinBox>`\ 。如果 :ref:`Range.step<class_Range_property_step>` 值不是 ``1``\ ，將會顯示滑桿代替。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`ControlState<enum_EditorSpinSlider_ControlState>` | :ref:`control_state<class_EditorSpinSlider_property_control_state>`           | ``0``                                                                        |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`deferred_drag_mode<class_EditorSpinSlider_property_deferred_drag_mode>` | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>`       | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`flat<class_EditorSpinSlider_property_flat>`                             | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                | focus_mode                                                                    | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`)          |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`hide_slider<class_EditorSpinSlider_property_hide_slider>`               | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                             | :ref:`label<class_EditorSpinSlider_property_label>`                           | ``""``                                                                       |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`read_only<class_EditorSpinSlider_property_read_only>`                   | ``false``                                                                    |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]  | size_flags_vertical                                                           | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                               | step                                                                          | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)                  |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                             | :ref:`suffix<class_EditorSpinSlider_property_suffix>`                         | ``""``                                                                       |
   +---------------------------------------------------------+-------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`label_color<class_EditorSpinSlider_theme_color_label_color>`                          | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+---------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`read_only_label_color<class_EditorSpinSlider_theme_color_read_only_label_color>`      | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+---------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`line_edit_margin<class_EditorSpinSlider_theme_constant_line_edit_margin>`             | ``0``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`line_edit_margin_empty<class_EditorSpinSlider_theme_constant_line_edit_margin_empty>` | ``0``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`updown<class_EditorSpinSlider_theme_icon_updown>`                                     |                       |
   +-----------------------------------+---------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`updown_disabled<class_EditorSpinSlider_theme_icon_updown_disabled>`                   |                       |
   +-----------------------------------+---------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`label_bg<class_EditorSpinSlider_theme_style_label_bg>`                                |                       |
   +-----------------------------------+---------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_EditorSpinSlider_signal_grabbed:

.. rst-class:: classref-signal

**grabbed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_grabbed>`

當微調器/滑桿被抓取時發出。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_ungrabbed:

.. rst-class:: classref-signal

**ungrabbed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_ungrabbed>`

當微調器/滑桿取消抓取時發出。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_updown_pressed:

.. rst-class:: classref-signal

**updown_pressed**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_updown_pressed>`

當按下上下按鈕時發出。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_value_focus_entered:

.. rst-class:: classref-signal

**value_focus_entered**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_value_focus_entered>`

值表單獲得焦點時發出。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_signal_value_focus_exited:

.. rst-class:: classref-signal

**value_focus_exited**\ (\ ) :ref:`🔗<class_EditorSpinSlider_signal_value_focus_exited>`

值表單丟失焦點時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_EditorSpinSlider_ControlState:

.. rst-class:: classref-enumeration

enum **ControlState**: :ref:`🔗<enum_EditorSpinSlider_ControlState>`

.. _class_EditorSpinSlider_constant_CONTROL_STATE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_DEFAULT** = ``0``

使用的控制項型別取決於 :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>` 的值。如果為 ``true``\ ，則使用上下箭頭；如果為 ``false``\ ，則使用滑桿。

.. _class_EditorSpinSlider_constant_CONTROL_STATE_PREFER_SLIDER:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_PREFER_SLIDER** = ``1``

即使啟用了 :ref:`editing_integer<class_EditorSpinSlider_property_editing_integer>`\ ，也會始終使用滑桿。

.. _class_EditorSpinSlider_constant_CONTROL_STATE_HIDE:

.. rst-class:: classref-enumeration-constant

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **CONTROL_STATE_HIDE** = ``2``

向上向下箭頭和滑桿都不會顯示。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_EditorSpinSlider_property_control_state:

.. rst-class:: classref-property

:ref:`ControlState<enum_EditorSpinSlider_ControlState>` **control_state** = ``0`` :ref:`🔗<class_EditorSpinSlider_property_control_state>`

.. rst-class:: classref-property-setget

- |void| **set_control_state**\ (\ value\: :ref:`ControlState<enum_EditorSpinSlider_ControlState>`\ )
- :ref:`ControlState<enum_EditorSpinSlider_ControlState>` **get_control_state**\ (\ )

用於操縱值的控制項將處於的狀態。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_deferred_drag_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deferred_drag_mode** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_deferred_drag_mode>`

.. rst-class:: classref-property-setget

- |void| **set_deferred_drag_mode_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deferred_drag_mode_enabled**\ (\ )

如果為 ``true``\ ，則通過拖動進行的更改僅在輸入結束時生效（例如，當使用者松開滑鼠按鈕時）。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_editing_integer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editing_integer** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_editing_integer>`

.. rst-class:: classref-property-setget

- |void| **set_editing_integer**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_integer**\ (\ )

如果為 ``true``\ ，則 **EditorSpinSlider** 會認為正在編輯整數值。如果為 ``false``\ ，則 **EditorSpinSlider** 會認為正在編輯浮點數值。預設用於確定是否繪製滑桿。只有浮點數才會繪製滑桿；整數使用的是類似於 :ref:`SpinBox<class_SpinBox>` 的上下箭頭，除非 :ref:`control_state<class_EditorSpinSlider_property_control_state>` 被設定為 :ref:`CONTROL_STATE_PREFER_SLIDER<class_EditorSpinSlider_constant_CONTROL_STATE_PREFER_SLIDER>`\ 。如果滑桿可用，它還將使用 :ref:`EditorSettings.interface/inspector/integer_drag_speed<class_EditorSettings_property_interface/inspector/integer_drag_speed>` 而非 :ref:`EditorSettings.interface/inspector/float_drag_speed<class_EditorSettings_property_interface/inspector/float_drag_speed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_flat:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flat** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_flat>`

.. rst-class:: classref-property-setget

- |void| **set_flat**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flat**\ (\ )

如果為 ``true``\ ，則滑桿不會繪製背景。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_hide_slider:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hide_slider** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_hide_slider>`

.. rst-class:: classref-property-setget

- |void| **set_hide_slider**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hiding_slider**\ (\ )

**已棄用：** Use :ref:`control_state<class_EditorSpinSlider_property_control_state>` instead.

如果為 ``true``\ ，則隱藏滑塊和向上/向下箭頭。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **label** = ``""`` :ref:`🔗<class_EditorSpinSlider_property_label>`

.. rst-class:: classref-property-setget

- |void| **set_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_label**\ (\ )

在值的左側顯示的文字。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_read_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **read_only** = ``false`` :ref:`🔗<class_EditorSpinSlider_property_read_only>`

.. rst-class:: classref-property-setget

- |void| **set_read_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_read_only**\ (\ )

如果為 ``true``\ ，則無法與滑桿互動。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_property_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **suffix** = ``""`` :ref:`🔗<class_EditorSpinSlider_property_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_suffix**\ (\ )

在值之後顯示的後綴（以一種淡化的顏色顯示）。這通常應該是一個複數形式的詞。如果後綴太長而無法顯示，可能必須使用縮寫。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_EditorSpinSlider_theme_color_label_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **label_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_EditorSpinSlider_theme_color_label_color>`

Font color of the left label (see :ref:`label<class_EditorSpinSlider_property_label>`).

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_theme_color_read_only_label_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **read_only_label_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_EditorSpinSlider_theme_color_read_only_label_color>`

Font color of the left label, when :ref:`read_only<class_EditorSpinSlider_property_read_only>` is enabled.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_theme_constant_line_edit_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **line_edit_margin** = ``0`` :ref:`🔗<class_EditorSpinSlider_theme_constant_line_edit_margin>`

Left margin of the internal :ref:`LineEdit<class_LineEdit>`, used to align text.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_theme_constant_line_edit_margin_empty:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **line_edit_margin_empty** = ``0`` :ref:`🔗<class_EditorSpinSlider_theme_constant_line_edit_margin_empty>`

Left margin of the internal :ref:`LineEdit<class_LineEdit>`, when :ref:`label<class_EditorSpinSlider_property_label>` is empty.

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_theme_icon_updown:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown** :ref:`🔗<class_EditorSpinSlider_theme_icon_updown>`

代表上下按鈕的單張紋理。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_theme_icon_updown_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown_disabled** :ref:`🔗<class_EditorSpinSlider_theme_icon_updown_disabled>`

控制項只讀或停用時，代表上下按鈕的單張紋理。

.. rst-class:: classref-item-separator

----

.. _class_EditorSpinSlider_theme_style_label_bg:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **label_bg** :ref:`🔗<class_EditorSpinSlider_theme_style_label_bg>`

Background stylebox for the left label, displayed when :ref:`flat<class_EditorSpinSlider_property_flat>` is enabled.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
