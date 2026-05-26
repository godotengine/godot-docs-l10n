:github_url: hide

.. meta::
	:keywords: number, numeric, input

.. _class_SpinBox:

SpinBox
=======

**Наследует:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Поле ввода чисел.

.. rst-class:: classref-introduction-group

Описание
----------------

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

\ **Note:** **SpinBox** relies on an underlying :ref:`LineEdit<class_LineEdit>` node. To theme a **SpinBox**'s background, add theme items for :ref:`LineEdit<class_LineEdit>` and customize them. The :ref:`LineEdit<class_LineEdit>` has the ``SpinBoxInnerLineEdit`` theme variation, so that you can give it a distinct appearance from regular :ref:`LineEdit<class_LineEdit>`\ s.

\ **Note:** If you want to implement drag and drop for the underlying :ref:`LineEdit<class_LineEdit>`, you can use :ref:`Control.set_drag_forwarding()<class_Control_method_set_drag_forwarding>` on the node returned by :ref:`get_line_edit()<class_SpinBox_method_get_line_edit>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | :ref:`alignment<class_SpinBox_property_alignment>`                           | ``0``                                                                        |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`custom_arrow_round<class_SpinBox_property_custom_arrow_round>`         | ``false``                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | :ref:`custom_arrow_step<class_SpinBox_property_custom_arrow_step>`           | ``0.0``                                                                      |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`editable<class_SpinBox_property_editable>`                             | ``true``                                                                     |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`prefix<class_SpinBox_property_prefix>`                                 | ``""``                                                                       |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`select_all_on_focus<class_SpinBox_property_select_all_on_focus>`       | ``false``                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]            | size_flags_vertical                                                          | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                         | step                                                                         | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)                  |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`suffix<class_SpinBox_property_suffix>`                                 | ``""``                                                                       |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`update_on_text_changed<class_SpinBox_property_update_on_text_changed>` | ``false``                                                                    |
   +-------------------------------------------------------------------+------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------+
   | |void|                          | :ref:`apply<class_SpinBox_method_apply>`\ (\ )                 |
   +---------------------------------+----------------------------------------------------------------+
   | :ref:`LineEdit<class_LineEdit>` | :ref:`get_line_edit<class_SpinBox_method_get_line_edit>`\ (\ ) |
   +---------------------------------+----------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`down_disabled_icon_modulate<class_SpinBox_theme_color_down_disabled_icon_modulate>`              | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`down_hover_icon_modulate<class_SpinBox_theme_color_down_hover_icon_modulate>`                    | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`down_icon_modulate<class_SpinBox_theme_color_down_icon_modulate>`                                | ``Color(0.875, 0.875, 0.875, 1)``   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`down_pressed_icon_modulate<class_SpinBox_theme_color_down_pressed_icon_modulate>`                | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`up_disabled_icon_modulate<class_SpinBox_theme_color_up_disabled_icon_modulate>`                  | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`up_hover_icon_modulate<class_SpinBox_theme_color_up_hover_icon_modulate>`                        | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`up_icon_modulate<class_SpinBox_theme_color_up_icon_modulate>`                                    | ``Color(0.875, 0.875, 0.875, 1)``   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`up_pressed_icon_modulate<class_SpinBox_theme_color_up_pressed_icon_modulate>`                    | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`buttons_vertical_separation<class_SpinBox_theme_constant_buttons_vertical_separation>`           | ``0``                               |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`buttons_width<class_SpinBox_theme_constant_buttons_width>`                                       | ``16``                              |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`field_and_buttons_separation<class_SpinBox_theme_constant_field_and_buttons_separation>`         | ``2``                               |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`set_min_buttons_width_from_icons<class_SpinBox_theme_constant_set_min_buttons_width_from_icons>` | ``1``                               |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`down<class_SpinBox_theme_icon_down>`                                                             |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`down_disabled<class_SpinBox_theme_icon_down_disabled>`                                           |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`down_hover<class_SpinBox_theme_icon_down_hover>`                                                 |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`down_pressed<class_SpinBox_theme_icon_down_pressed>`                                             |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`up<class_SpinBox_theme_icon_up>`                                                                 |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`up_disabled<class_SpinBox_theme_icon_up_disabled>`                                               |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`up_hover<class_SpinBox_theme_icon_up_hover>`                                                     |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`up_pressed<class_SpinBox_theme_icon_up_pressed>`                                                 |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`updown<class_SpinBox_theme_icon_updown>`                                                         |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`down_background<class_SpinBox_theme_style_down_background>`                                      |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`down_background_disabled<class_SpinBox_theme_style_down_background_disabled>`                    |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`down_background_hovered<class_SpinBox_theme_style_down_background_hovered>`                      |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`down_background_pressed<class_SpinBox_theme_style_down_background_pressed>`                      |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`field_and_buttons_separator<class_SpinBox_theme_style_field_and_buttons_separator>`              |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`up_background<class_SpinBox_theme_style_up_background>`                                          |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`up_background_disabled<class_SpinBox_theme_style_up_background_disabled>`                        |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`up_background_hovered<class_SpinBox_theme_style_up_background_hovered>`                          |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`up_background_pressed<class_SpinBox_theme_style_up_background_pressed>`                          |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`up_down_buttons_separator<class_SpinBox_theme_style_up_down_buttons_separator>`                  |                                     |
   +-----------------------------------+--------------------------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SpinBox_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_SpinBox_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Изменяет выравнивание базового :ref:`LineEdit<class_LineEdit>`.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_custom_arrow_round:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_arrow_round** = ``false`` :ref:`🔗<class_SpinBox_property_custom_arrow_round>`

.. rst-class:: classref-property-setget

- |void| **set_custom_arrow_round**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_custom_arrow_rounding**\ (\ )

Если ``true``, значение будет округляться до кратного :ref:`custom_arrow_step<class_SpinBox_property_custom_arrow_step>` при взаимодействии со стрелками. В противном случае значение увеличивается на :ref:`custom_arrow_step<class_SpinBox_property_custom_arrow_step>`, а затем округляется в соответствии с :ref:`Range.step<class_Range_property_step>`.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_custom_arrow_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_arrow_step** = ``0.0`` :ref:`🔗<class_SpinBox_property_custom_arrow_step>`

.. rst-class:: classref-property-setget

- |void| **set_custom_arrow_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_arrow_step**\ (\ )

Если не ``0``, задает шаг при взаимодействии с кнопками со стрелками **SpinBox**.

\ **Примечание:** :ref:`Range.value<class_Range_property_value>` по-прежнему будет округляться до значения, кратного :ref:`Range.step<class_Range_property_step>`.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_SpinBox_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

Если ``true``, **SpinBox** будет доступен для редактирования. В противном случае он будет только для чтения.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_prefix:

.. rst-class:: classref-property

:ref:`String<class_String>` **prefix** = ``""`` :ref:`🔗<class_SpinBox_property_prefix>`

.. rst-class:: classref-property-setget

- |void| **set_prefix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_prefix**\ (\ )

Добавляет указанную строку префикса перед числовым значением **SpinBox**.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_select_all_on_focus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **select_all_on_focus** = ``false`` :ref:`🔗<class_SpinBox_property_select_all_on_focus>`

.. rst-class:: classref-property-setget

- |void| **set_select_all_on_focus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_select_all_on_focus**\ (\ )

Если ``true``, **SpinBox** будет выбирать весь текст, когда :ref:`LineEdit<class_LineEdit>` получает фокус. Нажатие на кнопки вверх и вниз не вызовет это поведение.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **suffix** = ``""`` :ref:`🔗<class_SpinBox_property_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_suffix**\ (\ )

Добавляет указанную строку суффикса после числового значения **SpinBox**.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_update_on_text_changed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_on_text_changed** = ``false`` :ref:`🔗<class_SpinBox_property_update_on_text_changed>`

.. rst-class:: classref-property-setget

- |void| **set_update_on_text_changed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_on_text_changed**\ (\ )

Устанавливает значение :ref:`Range<class_Range>` для этого **SpinBox**, когда текст :ref:`LineEdit<class_LineEdit>` *изменен* а не *отправлен*. См. :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>` и :ref:`LineEdit.text_submitted<class_LineEdit_signal_text_submitted>`.

\ **Примечание:** Если установлено значение ``true``, это помешает вводу математических выражений в **SpinBox**. **SpinBox** попытается вычислить выражение по мере ввода, что означает, что символы, такие как завершающий ``+``, немедленно удаляются вычисляемым выражением.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SpinBox_method_apply:

.. rst-class:: classref-method

|void| **apply**\ (\ ) :ref:`🔗<class_SpinBox_method_apply>`

Применяет текущее значение этого **SpinBox**. Это эквивалентно нажатию :kbd:`Enter` во время редактирования :ref:`LineEdit<class_LineEdit>`, используемого **SpinBox**. Это приведет к испусканию :ref:`LineEdit.text_submitted<class_LineEdit_signal_text_submitted>` и оценке его текущего содержащегося выражения.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_method_get_line_edit:

.. rst-class:: classref-method

:ref:`LineEdit<class_LineEdit>` **get_line_edit**\ (\ ) :ref:`🔗<class_SpinBox_method_get_line_edit>`

Возвращает экземпляр :ref:`LineEdit<class_LineEdit>` из этого **SpinBox**. Вы можете использовать его для доступа к свойствам и методам :ref:`LineEdit<class_LineEdit>`.

\ **Предупреждение:** Это обязательный внутренний узел, удаление и освобождение которого может привести к сбою. Если вы хотите скрыть его или любого из его дочерних элементов, используйте свойство :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_SpinBox_theme_color_down_disabled_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_disabled_icon_modulate** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_SpinBox_theme_color_down_disabled_icon_modulate>`

Цвет модуляции значка кнопки «вниз», когда кнопка отключена.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_hover_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_hover_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_hover_icon_modulate>`

Цвет модуляции значка кнопки «вниз» при наведении на кнопку.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_icon_modulate** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_icon_modulate>`

Цвет модуляции значка кнопки «вниз».

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_pressed_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_pressed_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_pressed_icon_modulate>`

Цвет модуляции значка кнопки «вниз» при нажатии кнопки.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_disabled_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_disabled_icon_modulate** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_SpinBox_theme_color_up_disabled_icon_modulate>`

Цвет модуляции значка кнопки «Вверх», когда кнопка отключена.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_hover_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_hover_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_hover_icon_modulate>`

Цвет модуляции значка кнопки «Вверх» при наведении на кнопку.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_icon_modulate** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_icon_modulate>`

Цвет модуляции значка кнопки «Вверх».

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_pressed_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_pressed_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_pressed_icon_modulate>`

Цвет модуляции значка кнопки «Вверх» при нажатии кнопки.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_buttons_vertical_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_vertical_separation** = ``0`` :ref:`🔗<class_SpinBox_theme_constant_buttons_vertical_separation>`

Вертикальное разделение между кнопками «вверх» и «вниз».

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_buttons_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_width** = ``16`` :ref:`🔗<class_SpinBox_theme_constant_buttons_width>`

Ширина кнопок вверх и вниз. Если меньше любого значка, установленного на кнопках, соответствующий значок может перекрывать соседние элементы. Если меньше ``0``, ширина автоматически подстраивается под размер значка.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_field_and_buttons_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **field_and_buttons_separation** = ``2`` :ref:`🔗<class_SpinBox_theme_constant_field_and_buttons_separation>`

Ширина горизонтального разделения между полем ввода текста (:ref:`LineEdit<class_LineEdit>`) и кнопками.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_set_min_buttons_width_from_icons:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **set_min_buttons_width_from_icons** = ``1`` :ref:`🔗<class_SpinBox_theme_constant_set_min_buttons_width_from_icons>`

Если не ``0``, минимальная ширина кнопки соответствует самой широкой из всех иконок, установленных на этих кнопках, даже если :ref:`buttons_width<class_SpinBox_theme_constant_buttons_width>` меньше.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down** :ref:`🔗<class_SpinBox_theme_icon_down>`

Значок кнопки «Вниз», отображаемый в середине кнопки «Вниз» (уменьшение значения).

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_disabled** :ref:`🔗<class_SpinBox_theme_icon_down_disabled>`

Значок кнопки «Вниз», когда кнопка отключена.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_hover:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_hover** :ref:`🔗<class_SpinBox_theme_icon_down_hover>`

Значок кнопки «Вниз» при наведении на кнопку.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_pressed** :ref:`🔗<class_SpinBox_theme_icon_down_pressed>`

Значок кнопки «Вниз» при нажатии кнопки.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up** :ref:`🔗<class_SpinBox_theme_icon_up>`

Значок кнопки «Вверх», отображаемый в середине кнопки «Вверх» (увеличение значения).

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_disabled** :ref:`🔗<class_SpinBox_theme_icon_up_disabled>`

Значок кнопки «Вверх», когда кнопка отключена.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_hover:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_hover** :ref:`🔗<class_SpinBox_theme_icon_up_hover>`

Значок кнопки «Вверх» при наведении на кнопку.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_pressed** :ref:`🔗<class_SpinBox_theme_icon_up_pressed>`

Значок кнопки «Вверх» при нажатии кнопки.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_updown:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown** :ref:`🔗<class_SpinBox_theme_icon_updown>`

Единая текстура, представляющая значки кнопок «вверх» и «вниз». Она отображается посередине кнопок и не меняется при взаимодействии с ними. Если назначен допустимый значок, он заменит :ref:`up<class_SpinBox_theme_icon_up>` и :ref:`down<class_SpinBox_theme_icon_down>`.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background** :ref:`🔗<class_SpinBox_theme_style_down_background>`

Стиль фона кнопки «вниз».

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_disabled** :ref:`🔗<class_SpinBox_theme_style_down_background_disabled>`

Стиль фона кнопки «вниз» при отключении.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_hovered** :ref:`🔗<class_SpinBox_theme_style_down_background_hovered>`

Стиль фона кнопки «вниз» при наведении курсора.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_pressed** :ref:`🔗<class_SpinBox_theme_style_down_background_pressed>`

Стиль фона кнопки «вниз» при нажатии.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_field_and_buttons_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **field_and_buttons_separator** :ref:`🔗<class_SpinBox_theme_style_field_and_buttons_separator>`

:ref:`StyleBox<class_StyleBox>` рисуется в пространстве, занимаемом разделителем между полем ввода и кнопками.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background** :ref:`🔗<class_SpinBox_theme_style_up_background>`

Стиль фона кнопки «вверх».

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_disabled** :ref:`🔗<class_SpinBox_theme_style_up_background_disabled>`

Стиль фона кнопки «вверх» при отключении.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_hovered** :ref:`🔗<class_SpinBox_theme_style_up_background_hovered>`

Стиль фона кнопки «вверх» при наведении курсора.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_pressed** :ref:`🔗<class_SpinBox_theme_style_up_background_pressed>`

Стиль фона кнопки «вверх» при нажатии.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_down_buttons_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_down_buttons_separator** :ref:`🔗<class_SpinBox_theme_style_up_down_buttons_separator>`

:ref:`StyleBox<class_StyleBox>` рисуется в пространстве, занимаемом разделением между кнопками «вверх» и «вниз».

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
