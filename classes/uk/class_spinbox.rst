:github_url: hide

.. meta::
	:keywords: number, numeric, input

.. _class_SpinBox:

SpinBox
=======

**Успадковує:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Поле введення для чисел.

.. rst-class:: classref-introduction-group

Опис
--------

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

Властивості
----------------------

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

Методи
------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------+
   | |void|                          | :ref:`apply<class_SpinBox_method_apply>`\ (\ )                 |
   +---------------------------------+----------------------------------------------------------------+
   | :ref:`LineEdit<class_LineEdit>` | :ref:`get_line_edit<class_SpinBox_method_get_line_edit>`\ (\ ) |
   +---------------------------------+----------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

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

Описи властивостей
------------------------------------

.. _class_SpinBox_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_SpinBox_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Зміна вирівнювання основи :ref:`LineEdit<class_LineEdit>`.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_custom_arrow_round:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_arrow_round** = ``false`` :ref:`🔗<class_SpinBox_property_custom_arrow_round>`

.. rst-class:: classref-property-setget

- |void| **set_custom_arrow_round**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_custom_arrow_rounding**\ (\ )

Якщо ``true``, значення буде округлено до числа, кратного :ref:`custom_arrow_step<class_SpinBox_property_custom_arrow_step>` під час взаємодії з кнопками зі стрілками. В іншому випадку значення збільшується на :ref:`custom_arrow_step<class_SpinBox_property_custom_arrow_step>`, а потім округлюється відповідно до :ref:`Range.step<class_Range_property_step>`.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_custom_arrow_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_arrow_step** = ``0.0`` :ref:`🔗<class_SpinBox_property_custom_arrow_step>`

.. rst-class:: classref-property-setget

- |void| **set_custom_arrow_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_arrow_step**\ (\ )

Якщо не ``0``, встановлює крок під час взаємодії з кнопками зі стрілками **SpinBox**.

\ **Примітка:** :ref:`Range.value<class_Range_property_value>` все одно буде округлено до кратного :ref:`Range.step<class_Range_property_step>`.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_SpinBox_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

Якщо ``true``, то **SpinBox** буде редаговано. В іншому випадку це буде читати тільки.

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

**Застаріло:** Use :ref:`format<class_SpinBox_property_format>` instead.

Adds the specified prefix string before the numerical value of the **SpinBox**. This is used only if :ref:`format<class_SpinBox_property_format>` is empty.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_select_all_on_focus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **select_all_on_focus** = ``false`` :ref:`🔗<class_SpinBox_property_select_all_on_focus>`

.. rst-class:: classref-property-setget

- |void| **set_select_all_on_focus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_select_all_on_focus**\ (\ )

Якщо ``true``, **SpinBox** вибере весь текст, коли :ref:`LineEdit<class_LineEdit>` отримує фокус. Натискання стрілок вгору і вниз не запускати цю поведінку.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **suffix** = ``""`` :ref:`🔗<class_SpinBox_property_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_suffix**\ (\ )

**Застаріло:** Use :ref:`format<class_SpinBox_property_format>` instead.

Adds the specified suffix string after the numerical value of the **SpinBox**. This is used only if :ref:`format<class_SpinBox_property_format>` is empty.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_update_on_text_changed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_on_text_changed** = ``false`` :ref:`🔗<class_SpinBox_property_update_on_text_changed>`

.. rst-class:: classref-property-setget

- |void| **set_update_on_text_changed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_on_text_changed**\ (\ )

Встановлює значення :ref:`Range<class_Range>` для цього **SpinBox**, коли текст :ref:`LineEdit<class_LineEdit>` *змінюється* замість *надсилається*. Див. :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>` та :ref:`LineEdit.text_submitted<class_LineEdit_signal_text_submitted>`.

\ **Примітка:** Якщо встановлено значення ``true``, це заважатиме введенню математичних виразів у **SpinBox**. **SpinBox** намагатиметься обчислити вираз під час введення, що означає, що такі символи, як завершальний ``+``, негайно видаляються обчислюваним виразом.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SpinBox_method_apply:

.. rst-class:: classref-method

|void| **apply**\ (\ ) :ref:`🔗<class_SpinBox_method_apply>`

Застосовує поточне значення цього **SpinBox**. Це еквівалентно натисканню :kbd:`Enter` під час редагування :ref:`LineEdit<class_LineEdit>`, що використовується **SpinBox**. Це призведе до генерації :ref:`LineEdit.text_submitted<class_LineEdit_signal_text_submitted>` та обчислення поточного виразу, що міститься в ньому.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_method_get_line_edit:

.. rst-class:: classref-method

:ref:`LineEdit<class_LineEdit>` **get_line_edit**\ (\ ) :ref:`🔗<class_SpinBox_method_get_line_edit>`

Повернення екземпляра :ref:`LineEdit<class_LineEdit>` з цього **SpinBox**. Ви можете використовувати його для доступу та методів :ref:`LineEdit<class_LineEdit>`.

\ **Попередження:** Це необхідний внутрішній вузол, видаляючи і звільняючи його може призвести до аварії. Якщо ви хочете приховати його або будь-який з своїх дітей, скористайтеся їх :ref:`CanvasItem.pic<class_CanvasItem_property_pic>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_SpinBox_theme_color_down_disabled_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_disabled_icon_modulate** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_SpinBox_theme_color_down_disabled_icon_modulate>`

Колір модуляції піктограми кнопки вниз, коли кнопка вимкнена.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_hover_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_hover_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_hover_icon_modulate>`

Колір модуляції значка кнопки вниз, коли на кнопку наведено курсор.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_icon_modulate** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_icon_modulate>`

Колір модуляції значка кнопки вниз.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_pressed_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_pressed_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_pressed_icon_modulate>`

Колір модуляції піктограми кнопки вниз, коли кнопка натиснута.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_disabled_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_disabled_icon_modulate** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_SpinBox_theme_color_up_disabled_icon_modulate>`

Колір модуляції значка кнопки вгору, коли кнопку вимкнено.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_hover_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_hover_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_hover_icon_modulate>`

Колір модуляції значка кнопки вгору, коли на кнопку наведено курсор.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_icon_modulate** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_icon_modulate>`

Колір модуляції значка кнопки вгору.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_pressed_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_pressed_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_pressed_icon_modulate>`

Колір модуляції піктограми кнопки вгору, коли кнопка натискається.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_buttons_vertical_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_vertical_separation** = ``0`` :ref:`🔗<class_SpinBox_theme_constant_buttons_vertical_separation>`

Вертикальна роздільність між кнопками вгору та вниз.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_buttons_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_width** = ``16`` :ref:`🔗<class_SpinBox_theme_constant_buttons_width>`

Ширина кнопок вгору та вниз. Якщо менший за будь-який набір піктограм на кнопках, відповідний значок може перекривати сусідні елементи. Якщо менше ``0``, ширина автоматично регулюється відповідно до розміру значка.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_field_and_buttons_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **field_and_buttons_separation** = ``2`` :ref:`🔗<class_SpinBox_theme_constant_field_and_buttons_separation>`

Ширина горизонтального розділення між полем введення тексту (:ref:`LineEdit<class_LineEdit>`) і кнопками.

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

Якщо не ``0``, мінімальна ширина кнопки відповідає найширшій із усіх піктограм, установлених на цих кнопках, навіть якщо :ref:`buttons_width<class_SpinBox_theme_constant_buttons_width>` менше.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down** :ref:`🔗<class_SpinBox_theme_icon_down>`

Піктограма кнопки вниз, відображається посередині кнопки вниз (зменшується значення).

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_disabled** :ref:`🔗<class_SpinBox_theme_icon_down_disabled>`

Значок кнопки вниз, коли кнопку вимкнено.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_hover:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_hover** :ref:`🔗<class_SpinBox_theme_icon_down_hover>`

Значок кнопки вниз, коли на кнопку наведено курсор.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_pressed** :ref:`🔗<class_SpinBox_theme_icon_down_pressed>`

Значок кнопки вниз, коли кнопка натиснута.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up** :ref:`🔗<class_SpinBox_theme_icon_up>`

Піктограма кнопки вгору, відображається посередині кнопки вгору (збільшення значення).

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_disabled** :ref:`🔗<class_SpinBox_theme_icon_up_disabled>`

Значок кнопки вгору, коли кнопку вимкнено.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_hover:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_hover** :ref:`🔗<class_SpinBox_theme_icon_up_hover>`

Значок кнопки вгору, коли на кнопку наведено курсор.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_pressed** :ref:`🔗<class_SpinBox_theme_icon_up_pressed>`

Значок кнопки вгору під час натискання кнопки.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_updown:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown** :ref:`🔗<class_SpinBox_theme_icon_updown>`

Єдина текстура, що представляє значки кнопок «вгору» та «вниз». Вона відображається посередині кнопок і не змінюється під час взаємодії. Якщо призначено коректний значок, він замінить :ref:`up<class_SpinBox_theme_icon_up>` та :ref:`down<class_SpinBox_theme_icon_down>`.

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

Стиль тла кнопки вниз.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_disabled** :ref:`🔗<class_SpinBox_theme_style_down_background_disabled>`

Стиль тла кнопки вниз, коли вимкнено.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_hovered** :ref:`🔗<class_SpinBox_theme_style_down_background_hovered>`

Стиль тла кнопки вниз під час наведення.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_pressed** :ref:`🔗<class_SpinBox_theme_style_down_background_pressed>`

Стиль тла кнопки вниз під час натискання.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_field_and_buttons_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **field_and_buttons_separator** :ref:`🔗<class_SpinBox_theme_style_field_and_buttons_separator>`

:ref:`StyleBox<class_StyleBox>` намальовано в місці, яке займає розділення між полем введення та кнопками.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background** :ref:`🔗<class_SpinBox_theme_style_up_background>`

Стиль тла кнопки вгору.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_disabled** :ref:`🔗<class_SpinBox_theme_style_up_background_disabled>`

Стиль тла кнопки вгору, коли вимкнено.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_hovered** :ref:`🔗<class_SpinBox_theme_style_up_background_hovered>`

Стиль тла кнопки вгору під час наведення.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_pressed** :ref:`🔗<class_SpinBox_theme_style_up_background_pressed>`

Стиль тла кнопки вгору під час натискання.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_down_buttons_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_down_buttons_separator** :ref:`🔗<class_SpinBox_theme_style_up_down_buttons_separator>`

:ref:`StyleBox<class_StyleBox>` намальовано в місці, яке займає роздільник між кнопками вгору та вниз.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
