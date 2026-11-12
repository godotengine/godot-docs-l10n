:github_url: hide

.. meta::
	:keywords: number, numeric, input

.. _class_SpinBox:

SpinBox
=======

**繼承：** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

數位的輸入欄位。

.. rst-class:: classref-introduction-group

說明
----

**SpinBox** is a numerical input text field. It allows entering integers and floating-point numbers. The **SpinBox** also has up and down buttons that can be clicked to increase or decrease the value. The value can also be changed by dragging the mouse up or down over the **SpinBox**'s arrows.

Additionally, mathematical expressions can be entered. These are evaluated when the user presses :kbd:`Enter` while editing the **SpinBox**'s text field. This uses the :ref:`Expression<class_Expression>` class to parse and evaluate the expression. The result of the expression is then set as the value of the **SpinBox**. Some examples of valid expressions are ``5 + 2 * 3``, ``pow(2, 4)``, and ``PI + sin(0.5)``. Expressions are case-sensitive.

\ **Example:** Create a **SpinBox**, disable its context menu and set its text alignment to right.


.. tabs::

 .. code-tab:: gdscript

    var spin_box = SpinBox.new()
    add_child(spin_box)
    var line_edit = spin_box.get_line_edit()
    line_edit.context_menu_enabled = false
    spin_box.horizontal_alignment = LineEdit.HORIZONTAL_ALIGNMENT_RIGHT

 .. code-tab:: csharp

    var spinBox = new SpinBox();
    AddChild(spinBox);
    var lineEdit = spinBox.GetLineEdit();
    lineEdit.ContextMenuEnabled = false;
    spinBox.AlignHorizontal = LineEdit.HorizontalAlignEnum.Right;



See :ref:`Range<class_Range>` class for more options over the **SpinBox**.

\ **Note:** With the **SpinBox**'s context menu disabled, you can right-click the bottom half of the spinbox to set the value to its minimum, while right-clicking the top half sets the value to its maximum.

\ **Note:** **SpinBox** relies on an underlying :ref:`LineEdit<class_LineEdit>` node. To theme a **SpinBox**'s background and audio feedback on its text field, add theme items for :ref:`LineEdit<class_LineEdit>` and customize them. The :ref:`LineEdit<class_LineEdit>` has the ``SpinBoxInnerLineEdit`` theme variation, so that you can give it a distinct appearance from regular :ref:`LineEdit<class_LineEdit>`\ s.

\ **Note:** If you want to implement drag and drop for the underlying :ref:`LineEdit<class_LineEdit>`, you can use :ref:`Control.set_drag_forwarding()<class_Control_method_set_drag_forwarding>` on the node returned by :ref:`get_line_edit()<class_SpinBox_method_get_line_edit>`.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | :ref:`alignment<class_SpinBox_property_alignment>`                                   | ``0``                                                                        |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`custom_arrow_round<class_SpinBox_property_custom_arrow_round>`                 | ``false``                                                                    |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`custom_arrow_step<class_SpinBox_property_custom_arrow_step>`                   | ``0.0``                                                                      |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`editable<class_SpinBox_property_editable>`                                     | ``true``                                                                     |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`format<class_SpinBox_property_format>`                                         | ``""``                                                                       |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`             | :ref:`format_auto_translate_mode<class_SpinBox_property_format_auto_translate_mode>` | ``2``                                                                        |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`plural_format<class_SpinBox_property_plural_format>`                           |                                                                              |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`prefix<class_SpinBox_property_prefix>`                                         | ``""``                                                                       |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`select_all_on_focus<class_SpinBox_property_select_all_on_focus>`               | ``false``                                                                    |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]            | size_flags_vertical                                                                  | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | step                                                                                 | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)                  |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`suffix<class_SpinBox_property_suffix>`                                         | ``""``                                                                       |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`update_on_text_changed<class_SpinBox_property_update_on_text_changed>`         | ``false``                                                                    |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------+
   | |void|                          | :ref:`apply<class_SpinBox_method_apply>`\ (\ )                 |
   +---------------------------------+----------------------------------------------------------------+
   | :ref:`LineEdit<class_LineEdit>` | :ref:`get_line_edit<class_SpinBox_method_get_line_edit>`\ (\ ) |
   +---------------------------------+----------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`down_disabled_icon_modulate<class_SpinBox_theme_color_down_disabled_icon_modulate>`              | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`down_hover_icon_modulate<class_SpinBox_theme_color_down_hover_icon_modulate>`                    | ``Color(0.95, 0.95, 0.95, 1)``      |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`down_icon_modulate<class_SpinBox_theme_color_down_icon_modulate>`                                | ``Color(0.875, 0.875, 0.875, 1)``   |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`down_pressed_icon_modulate<class_SpinBox_theme_color_down_pressed_icon_modulate>`                | ``Color(0.95, 0.95, 0.95, 1)``      |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`up_disabled_icon_modulate<class_SpinBox_theme_color_up_disabled_icon_modulate>`                  | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`up_hover_icon_modulate<class_SpinBox_theme_color_up_hover_icon_modulate>`                        | ``Color(0.95, 0.95, 0.95, 1)``      |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`up_icon_modulate<class_SpinBox_theme_color_up_icon_modulate>`                                    | ``Color(0.875, 0.875, 0.875, 1)``   |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`up_pressed_icon_modulate<class_SpinBox_theme_color_up_pressed_icon_modulate>`                    | ``Color(0.95, 0.95, 0.95, 1)``      |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`buttons_vertical_separation<class_SpinBox_theme_constant_buttons_vertical_separation>`           | ``0``                               |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`buttons_width<class_SpinBox_theme_constant_buttons_width>`                                       | ``16``                              |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`field_and_buttons_separation<class_SpinBox_theme_constant_field_and_buttons_separation>`         | ``2``                               |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`icon_max_width<class_SpinBox_theme_constant_icon_max_width>`                                     | ``0``                               |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`set_min_buttons_width_from_icons<class_SpinBox_theme_constant_set_min_buttons_width_from_icons>` | ``1``                               |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`down<class_SpinBox_theme_icon_down>`                                                             |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`down_disabled<class_SpinBox_theme_icon_down_disabled>`                                           |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`down_hover<class_SpinBox_theme_icon_down_hover>`                                                 |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`down_pressed<class_SpinBox_theme_icon_down_pressed>`                                             |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`up<class_SpinBox_theme_icon_up>`                                                                 |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`up_disabled<class_SpinBox_theme_icon_up_disabled>`                                               |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`up_hover<class_SpinBox_theme_icon_up_hover>`                                                     |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`up_pressed<class_SpinBox_theme_icon_up_pressed>`                                                 |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`updown<class_SpinBox_theme_icon_updown>`                                                         |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`focus_sound<class_SpinBox_theme_sound_focus_sound>`                                              |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`pressed_disabled_sound<class_SpinBox_theme_sound_pressed_disabled_sound>`                        |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`pressed_sound<class_SpinBox_theme_sound_pressed_sound>`                                          |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`down_background<class_SpinBox_theme_style_down_background>`                                      |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`down_background_disabled<class_SpinBox_theme_style_down_background_disabled>`                    |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`down_background_hovered<class_SpinBox_theme_style_down_background_hovered>`                      |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`down_background_pressed<class_SpinBox_theme_style_down_background_pressed>`                      |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`field_and_buttons_separator<class_SpinBox_theme_style_field_and_buttons_separator>`              |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`up_background<class_SpinBox_theme_style_up_background>`                                          |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`up_background_disabled<class_SpinBox_theme_style_up_background_disabled>`                        |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`up_background_hovered<class_SpinBox_theme_style_up_background_hovered>`                          |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`up_background_pressed<class_SpinBox_theme_style_up_background_pressed>`                          |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`up_down_buttons_separator<class_SpinBox_theme_style_up_down_buttons_separator>`                  |                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SpinBox_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_SpinBox_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

更改底層 :ref:`LineEdit<class_LineEdit>` 的對齊方式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_custom_arrow_round:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_arrow_round** = ``false`` :ref:`🔗<class_SpinBox_property_custom_arrow_round>`

.. rst-class:: classref-property-setget

- |void| **set_custom_arrow_round**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_custom_arrow_rounding**\ (\ )

如果為 ``true``\ ，則與箭頭按鈕互動時，該值將四捨五入為 :ref:`custom_arrow_step<class_SpinBox_property_custom_arrow_step>` 的倍數。否則，值將增加 :ref:`custom_arrow_step<class_SpinBox_property_custom_arrow_step>`\ ，然後根據 :ref:`Range.step<class_Range_property_step>` 進行四捨五入。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_custom_arrow_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_arrow_step** = ``0.0`` :ref:`🔗<class_SpinBox_property_custom_arrow_step>`

.. rst-class:: classref-property-setget

- |void| **set_custom_arrow_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_arrow_step**\ (\ )

如果不是 ``0``\ ，則設定與 **SpinBox** 的箭頭按鈕互動時的步長。

\ **注意：**\ :ref:`Range.value<class_Range_property_value>` 仍然會捨入到 :ref:`Range.step<class_Range_property_step>` 的倍數。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_SpinBox_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

如果為 ``true``\ ，則 **SpinBox** 將是可編輯的。否則，它將是唯讀的。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_format:

.. rst-class:: classref-property

:ref:`String<class_String>` **format** = ``""`` :ref:`🔗<class_SpinBox_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_format**\ (\ )

The formatting of the displayed numeric value, using the same rules as :ref:`String<class_String>`'s ``%`` operator (see :doc:`GDScript format strings <../tutorials/scripting/gdscript/gdscript_format_string>`). If empty, the value is displayed with no special formatting. If the format string is invalid, the **SpinBox** will display ``"<Invalid>"``, with the error message available as a configuration warning.

The following format strings can be used as examples:

- ``"(%s)"`` displays as a number in parentheses (e.g. ``(6.9)``).

- ``"%d ms"`` displays as an integer with milliseconds unit (e.g. ``420 ms``).

- ``"%0.2f%%"`` displays as a percentage, with 2 decimal places of precision (e.g. ``21.37%``).

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_format_auto_translate_mode:

.. rst-class:: classref-property

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **format_auto_translate_mode** = ``2`` :ref:`🔗<class_SpinBox_property_format_auto_translate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_format_auto_translate_mode**\ (\ value\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ )
- :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **get_format_auto_translate_mode**\ (\ )

Auto-translation mode for the :ref:`format<class_SpinBox_property_format>`. Useful when the format has a word that can be translated.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_plural_format:

.. rst-class:: classref-property

:ref:`String<class_String>` **plural_format** :ref:`🔗<class_SpinBox_property_plural_format>`

.. rst-class:: classref-property-setget

- |void| **set_plural_format**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_plural_format**\ (\ )

Plural version of :ref:`format<class_SpinBox_property_format>`. Used only if :ref:`format<class_SpinBox_property_format>` is not empty and :ref:`format_auto_translate_mode<class_SpinBox_property_format_auto_translate_mode>` is not disabled. If either :ref:`format<class_SpinBox_property_format>` or this contain ``%s`` the other must also use it. See also :ref:`Object.tr_n()<class_Object_method_tr_n>`.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_prefix:

.. rst-class:: classref-property

:ref:`String<class_String>` **prefix** = ``""`` :ref:`🔗<class_SpinBox_property_prefix>`

.. rst-class:: classref-property-setget

- |void| **set_prefix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_prefix**\ (\ )

**已棄用：** Use :ref:`format<class_SpinBox_property_format>` instead.

Adds the specified prefix string before the numerical value of the **SpinBox**. This is used only if :ref:`format<class_SpinBox_property_format>` is empty.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_select_all_on_focus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **select_all_on_focus** = ``false`` :ref:`🔗<class_SpinBox_property_select_all_on_focus>`

.. rst-class:: classref-property-setget

- |void| **set_select_all_on_focus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_select_all_on_focus**\ (\ )

如果為 ``true``\ ，則該 **SpinBox** 會在 :ref:`LineEdit<class_LineEdit>` 獲得焦點時選中整個文字。點選上下箭頭不會觸發這種行為。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **suffix** = ``""`` :ref:`🔗<class_SpinBox_property_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_suffix**\ (\ )

**已棄用：** Use :ref:`format<class_SpinBox_property_format>` instead.

Adds the specified suffix string after the numerical value of the **SpinBox**. This is used only if :ref:`format<class_SpinBox_property_format>` is empty.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_update_on_text_changed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_on_text_changed** = ``false`` :ref:`🔗<class_SpinBox_property_update_on_text_changed>`

.. rst-class:: classref-property-setget

- |void| **set_update_on_text_changed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_on_text_changed**\ (\ )

設定該 **SpinBox** 的 :ref:`Range<class_Range>` 值在 :ref:`LineEdit<class_LineEdit>` 文字\ *發生改變時*\ 更新，不再在\ *提交時*\ 更新。見 :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>` 和 :ref:`LineEdit.text_submitted<class_LineEdit_signal_text_submitted>`\ 。

\ **注意：**\ 如果設定為 ``true``\ ，會影響在 **SpinBox** 中輸入數學運算式。\ **SpinBox** 會在你打字時嘗試對運算式求值，因此，部分符號會因為運算式求值而被立即移除，例如末尾的 ``+`` 號。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SpinBox_method_apply:

.. rst-class:: classref-method

|void| **apply**\ (\ ) :ref:`🔗<class_SpinBox_method_apply>`

應用 **SpinBox** 的目前值。等價於在 **SpinBox** 所使用的 :ref:`LineEdit<class_LineEdit>` 中進行編輯時按下 :kbd:`Enter` 鍵。會導致發出 :ref:`LineEdit.text_submitted<class_LineEdit_signal_text_submitted>`\ 、對目前所包含的運算式進行求值。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_method_get_line_edit:

.. rst-class:: classref-method

:ref:`LineEdit<class_LineEdit>` **get_line_edit**\ (\ ) :ref:`🔗<class_SpinBox_method_get_line_edit>`

返回這個 **SpinBox** 中的 :ref:`LineEdit<class_LineEdit>` 實例。你可以用它來存取 :ref:`LineEdit<class_LineEdit>` 的屬性和方法。

\ **警告：**\ 這是一個必要的內部節點，移除和釋放它可能會導致當機。如果你想隱藏它或它的任何子節點，請使用其 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 屬性。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_SpinBox_theme_color_down_disabled_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_disabled_icon_modulate** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_SpinBox_theme_color_down_disabled_icon_modulate>`

向下按鈕處於停用狀態時的圖示調制顏色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_hover_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_hover_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_hover_icon_modulate>`

向下按鈕處於懸停狀態時的圖示調制顏色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_icon_modulate** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_icon_modulate>`

向下按鈕的圖示調制顏色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_pressed_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_pressed_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_pressed_icon_modulate>`

向下按鈕處於按下狀態時的圖示調制顏色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_disabled_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_disabled_icon_modulate** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_SpinBox_theme_color_up_disabled_icon_modulate>`

向上按鈕處於停用狀態時的圖示調制顏色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_hover_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_hover_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_hover_icon_modulate>`

向上按鈕處於懸停狀態時的圖示調制顏色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_icon_modulate** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_icon_modulate>`

向上按鈕的圖示調制顏色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_pressed_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_pressed_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_pressed_icon_modulate>`

向上按鈕處於按下狀態時的圖示調制顏色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_buttons_vertical_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_vertical_separation** = ``0`` :ref:`🔗<class_SpinBox_theme_constant_buttons_vertical_separation>`

上下按鈕之間的垂直間隔。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_buttons_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_width** = ``16`` :ref:`🔗<class_SpinBox_theme_constant_buttons_width>`

上下按鈕的寬度。如果小於按鈕上設定的圖示，那麼對應的圖示就可能與相鄰的元素重疊。如果小於 ``0``\ ，那麼就會根據圖示的大小自動調整寬度。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_field_and_buttons_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **field_and_buttons_separation** = ``2`` :ref:`🔗<class_SpinBox_theme_constant_field_and_buttons_separation>`

文字輸入框（\ :ref:`LineEdit<class_LineEdit>`\ ）與按鈕之間的水平間隔寬度。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_icon_max_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_width** = ``0`` :ref:`🔗<class_SpinBox_theme_constant_icon_max_width>`

The maximum allowed width of the **SpinBox**'s up and down icons. The height is adjusted according to the icon's ratio.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_set_min_buttons_width_from_icons:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **set_min_buttons_width_from_icons** = ``1`` :ref:`🔗<class_SpinBox_theme_constant_set_min_buttons_width_from_icons>`

如果非 ``0``\ ，則最小按鈕寬度對應這些按鈕所設定的最寬的圖示，即便 :ref:`buttons_width<class_SpinBox_theme_constant_buttons_width>` 更小。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down** :ref:`🔗<class_SpinBox_theme_icon_down>`

向下按鈕的圖示，在下按鈕（減小取值）的中間顯示。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_disabled** :ref:`🔗<class_SpinBox_theme_icon_down_disabled>`

向下按鈕停用時的圖示。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_hover:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_hover** :ref:`🔗<class_SpinBox_theme_icon_down_hover>`

向下按鈕懸停時的圖示。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_pressed** :ref:`🔗<class_SpinBox_theme_icon_down_pressed>`

向下按鈕按下時的圖示。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up** :ref:`🔗<class_SpinBox_theme_icon_up>`

向上按鈕的圖示，在上按鈕（增加取值）的中間顯示。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_disabled** :ref:`🔗<class_SpinBox_theme_icon_up_disabled>`

向上按鈕停用時的圖示。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_hover:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_hover** :ref:`🔗<class_SpinBox_theme_icon_up_hover>`

向上按鈕懸停時的圖示。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_pressed** :ref:`🔗<class_SpinBox_theme_icon_up_pressed>`

向上按鈕按下時的圖示。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_updown:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown** :ref:`🔗<class_SpinBox_theme_icon_updown>`

代表上下按鈕圖示的單個紋理。該紋理顯示在按鈕中間，互動式不會改變。分配有效的圖示後會代替 :ref:`up<class_SpinBox_theme_icon_up>` 和 :ref:`down<class_SpinBox_theme_icon_down>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_sound_focus_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **focus_sound** :ref:`🔗<class_SpinBox_theme_sound_focus_sound>`

Played when this **SpinBox** receives keyboard or gamepad-induced focus. Mouse or touch-induced focus does not play a focus sound.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_sound_pressed_disabled_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **pressed_disabled_sound** :ref:`🔗<class_SpinBox_theme_sound_pressed_disabled_sound>`

Played when the up or down button is pressed while the **SpinBox** is disabled due to :ref:`editable<class_SpinBox_property_editable>` being ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_sound_pressed_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **pressed_sound** :ref:`🔗<class_SpinBox_theme_sound_pressed_sound>`

Played when the up or down button is pressed.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background** :ref:`🔗<class_SpinBox_theme_style_down_background>`

向下按鈕的背景樣式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_disabled** :ref:`🔗<class_SpinBox_theme_style_down_background_disabled>`

向下按鈕停用時的背景樣式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_hovered** :ref:`🔗<class_SpinBox_theme_style_down_background_hovered>`

向下按鈕懸停時的背景樣式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_pressed** :ref:`🔗<class_SpinBox_theme_style_down_background_pressed>`

向下按鈕按下時的背景樣式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_field_and_buttons_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **field_and_buttons_separator** :ref:`🔗<class_SpinBox_theme_style_field_and_buttons_separator>`

輸入框和按鈕之間的間隔區域內繪製的 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background** :ref:`🔗<class_SpinBox_theme_style_up_background>`

向上按鈕的背景樣式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_disabled** :ref:`🔗<class_SpinBox_theme_style_up_background_disabled>`

向上按鈕停用時的背景樣式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_hovered** :ref:`🔗<class_SpinBox_theme_style_up_background_hovered>`

向上按鈕懸停時的背景樣式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_pressed** :ref:`🔗<class_SpinBox_theme_style_up_background_pressed>`

向上按鈕按下時的背景樣式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_down_buttons_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_down_buttons_separator** :ref:`🔗<class_SpinBox_theme_style_up_down_buttons_separator>`

上下按鈕之間的間隔區域內繪製的 :ref:`StyleBox<class_StyleBox>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
