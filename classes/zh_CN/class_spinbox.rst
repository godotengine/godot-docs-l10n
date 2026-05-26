:github_url: hide

.. meta::
	:keywords: number, numeric, input

.. _class_SpinBox:

SpinBox
=======

**继承：** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

数字的输入字段。

.. rst-class:: classref-introduction-group

描述
----

**SpinBox** 是一种用于输入数值的文本框，允许输入整数和浮点数。\ **SpinBox** 还提供了上下按钮，点击后会对取值进行上调和下调。取值还可以通过在 **SpinBox** 的箭头上上下拖动鼠标进行调整。

另外还可以输入数学表达式。用户在编辑 **SpinBox** 的文本框时按下 :kbd:`Enter` 就会进行表达式求值。对表达式的解析和求值是使用 :ref:`Expression<class_Expression>` 类实现的。表达式的结果会设为 **SpinBox** 的取值。有效表达式的示例： ``5 + 2 * 3``\ 、\ ``pow(2, 4)``\ 、\ ``PI + sin(0.5)``\ 。表达式是大小写敏感的。

\ **示例：**\ 创建 **SpinBox**\ ，禁用其上下文菜单，并将文本设置为右对齐。


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



\ **SpinBox** 的更多选项见 :ref:`Range<class_Range>` 类。

\ **注意：**\ **SpinBox** 的上下文菜单被禁用时，右键单击微调框的下半部分可以将取值设置最小值，右键单击上半部分可以将取值设置最大值。

\ **注意：**\ **SpinBox** 依赖底层的 :ref:`LineEdit<class_LineEdit>` 节点。要为 **SpinBox** 的背景设置主题，请为 :ref:`LineEdit<class_LineEdit>` 添加主题项目并进行自定义。该 :ref:`LineEdit<class_LineEdit>` 使用 ``SpinBoxInnerLineEdit`` 主题变体，因此你可以为其指定不同于普通 :ref:`LineEdit<class_LineEdit>` 的外观。

\ **注意：**\ 如果你想要为底层的 :ref:`LineEdit<class_LineEdit>` 实现拖放，可以对 :ref:`get_line_edit()<class_SpinBox_method_get_line_edit>` 所返回的节点使用 :ref:`Control.set_drag_forwarding()<class_Control_method_set_drag_forwarding>`\ 。

.. rst-class:: classref-reftable-group

属性
----

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

主题属性
--------

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

属性说明
--------

.. _class_SpinBox_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_SpinBox_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

更改底层 :ref:`LineEdit<class_LineEdit>` 的对齐方式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_custom_arrow_round:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_arrow_round** = ``false`` :ref:`🔗<class_SpinBox_property_custom_arrow_round>`

.. rst-class:: classref-property-setget

- |void| **set_custom_arrow_round**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_custom_arrow_rounding**\ (\ )

如果为 ``true``\ ，则与箭头按钮交互时，该值将四舍五入为 :ref:`custom_arrow_step<class_SpinBox_property_custom_arrow_step>` 的倍数。否则，值将增加 :ref:`custom_arrow_step<class_SpinBox_property_custom_arrow_step>`\ ，然后根据 :ref:`Range.step<class_Range_property_step>` 进行四舍五入。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_custom_arrow_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_arrow_step** = ``0.0`` :ref:`🔗<class_SpinBox_property_custom_arrow_step>`

.. rst-class:: classref-property-setget

- |void| **set_custom_arrow_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_arrow_step**\ (\ )

如果不是 ``0``\ ，则设置与 **SpinBox** 的箭头按钮交互时的步长。

\ **注意：**\ :ref:`Range.value<class_Range_property_value>` 仍然会舍入到 :ref:`Range.step<class_Range_property_step>` 的倍数。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_SpinBox_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

如果为 ``true``\ ，则 **SpinBox** 将是可编辑的。否则，它将是只读的。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_prefix:

.. rst-class:: classref-property

:ref:`String<class_String>` **prefix** = ``""`` :ref:`🔗<class_SpinBox_property_prefix>`

.. rst-class:: classref-property-setget

- |void| **set_prefix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_prefix**\ (\ )

在 **SpinBox** 的数值前添加指定的前缀字符串。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_select_all_on_focus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **select_all_on_focus** = ``false`` :ref:`🔗<class_SpinBox_property_select_all_on_focus>`

.. rst-class:: classref-property-setget

- |void| **set_select_all_on_focus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_select_all_on_focus**\ (\ )

如果为 ``true``\ ，则该 **SpinBox** 会在 :ref:`LineEdit<class_LineEdit>` 获得焦点时选中整个文本。点击上下箭头不会触发这种行为。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **suffix** = ``""`` :ref:`🔗<class_SpinBox_property_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_suffix**\ (\ )

在 **SpinBox** 的数值后添加指定的后缀字符串。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_update_on_text_changed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_on_text_changed** = ``false`` :ref:`🔗<class_SpinBox_property_update_on_text_changed>`

.. rst-class:: classref-property-setget

- |void| **set_update_on_text_changed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_on_text_changed**\ (\ )

设置该 **SpinBox** 的 :ref:`Range<class_Range>` 值在 :ref:`LineEdit<class_LineEdit>` 文本\ *发生改变时*\ 更新，不再在\ *提交时*\ 更新。见 :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>` 和 :ref:`LineEdit.text_submitted<class_LineEdit_signal_text_submitted>`\ 。

\ **注意：**\ 如果设置为 ``true``\ ，会影响在 **SpinBox** 中输入数学表达式。\ **SpinBox** 会在你打字时尝试对表达式求值，因此，部分符号会因为表达式求值而被立即移除，例如末尾的 ``+`` 号。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SpinBox_method_apply:

.. rst-class:: classref-method

|void| **apply**\ (\ ) :ref:`🔗<class_SpinBox_method_apply>`

应用 **SpinBox** 的当前值。等价于在 **SpinBox** 所使用的 :ref:`LineEdit<class_LineEdit>` 中进行编辑时按下 :kbd:`Enter` 键。会导致发出 :ref:`LineEdit.text_submitted<class_LineEdit_signal_text_submitted>`\ 、对当前所包含的表达式进行求值。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_method_get_line_edit:

.. rst-class:: classref-method

:ref:`LineEdit<class_LineEdit>` **get_line_edit**\ (\ ) :ref:`🔗<class_SpinBox_method_get_line_edit>`

返回这个 **SpinBox** 中的 :ref:`LineEdit<class_LineEdit>` 实例。你可以用它来访问 :ref:`LineEdit<class_LineEdit>` 的属性和方法。

\ **警告：**\ 这是一个必要的内部节点，移除和释放它可能会导致崩溃。如果你想隐藏它或它的任何子节点，请使用其 :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` 属性。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_SpinBox_theme_color_down_disabled_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_disabled_icon_modulate** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_SpinBox_theme_color_down_disabled_icon_modulate>`

向下按钮处于禁用状态时的图标调制颜色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_hover_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_hover_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_hover_icon_modulate>`

向下按钮处于悬停状态时的图标调制颜色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_icon_modulate** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_icon_modulate>`

向下按钮的图标调制颜色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_pressed_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_pressed_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_pressed_icon_modulate>`

向下按钮处于按下状态时的图标调制颜色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_disabled_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_disabled_icon_modulate** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_SpinBox_theme_color_up_disabled_icon_modulate>`

向上按钮处于禁用状态时的图标调制颜色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_hover_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_hover_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_hover_icon_modulate>`

向上按钮处于悬停状态时的图标调制颜色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_icon_modulate** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_icon_modulate>`

向上按钮的图标调制颜色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_pressed_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_pressed_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_pressed_icon_modulate>`

向上按钮处于按下状态时的图标调制颜色。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_buttons_vertical_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_vertical_separation** = ``0`` :ref:`🔗<class_SpinBox_theme_constant_buttons_vertical_separation>`

上下按钮之间的垂直间隔。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_buttons_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_width** = ``16`` :ref:`🔗<class_SpinBox_theme_constant_buttons_width>`

上下按钮的宽度。如果小于按钮上设置的图标，那么对应的图标就可能与相邻的元素重叠。如果小于 ``0``\ ，那么就会根据图标的大小自动调整宽度。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_field_and_buttons_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **field_and_buttons_separation** = ``2`` :ref:`🔗<class_SpinBox_theme_constant_field_and_buttons_separation>`

文本输入框（\ :ref:`LineEdit<class_LineEdit>`\ ）与按钮之间的水平间隔宽度。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_set_min_buttons_width_from_icons:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **set_min_buttons_width_from_icons** = ``1`` :ref:`🔗<class_SpinBox_theme_constant_set_min_buttons_width_from_icons>`

如果非 ``0``\ ，则最小按钮宽度对应这些按钮所设置的最宽的图标，即便 :ref:`buttons_width<class_SpinBox_theme_constant_buttons_width>` 更小。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down** :ref:`🔗<class_SpinBox_theme_icon_down>`

向下按钮的图标，在下按钮（减小取值）的中间显示。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_disabled** :ref:`🔗<class_SpinBox_theme_icon_down_disabled>`

向下按钮禁用时的图标。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_hover:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_hover** :ref:`🔗<class_SpinBox_theme_icon_down_hover>`

向下按钮悬停时的图标。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_pressed** :ref:`🔗<class_SpinBox_theme_icon_down_pressed>`

向下按钮按下时的图标。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up** :ref:`🔗<class_SpinBox_theme_icon_up>`

向上按钮的图标，在上按钮（增加取值）的中间显示。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_disabled** :ref:`🔗<class_SpinBox_theme_icon_up_disabled>`

向上按钮禁用时的图标。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_hover:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_hover** :ref:`🔗<class_SpinBox_theme_icon_up_hover>`

向上按钮悬停时的图标。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_pressed** :ref:`🔗<class_SpinBox_theme_icon_up_pressed>`

向上按钮按下时的图标。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_updown:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown** :ref:`🔗<class_SpinBox_theme_icon_updown>`

代表上下按钮图标的单个纹理。该纹理显示在按钮中间，交互式不会改变。分配有效的图标后会代替 :ref:`up<class_SpinBox_theme_icon_up>` 和 :ref:`down<class_SpinBox_theme_icon_down>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background** :ref:`🔗<class_SpinBox_theme_style_down_background>`

向下按钮的背景样式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_disabled** :ref:`🔗<class_SpinBox_theme_style_down_background_disabled>`

向下按钮禁用时的背景样式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_hovered** :ref:`🔗<class_SpinBox_theme_style_down_background_hovered>`

向下按钮悬停时的背景样式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_pressed** :ref:`🔗<class_SpinBox_theme_style_down_background_pressed>`

向下按钮按下时的背景样式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_field_and_buttons_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **field_and_buttons_separator** :ref:`🔗<class_SpinBox_theme_style_field_and_buttons_separator>`

输入框和按钮之间的间隔区域内绘制的 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background** :ref:`🔗<class_SpinBox_theme_style_up_background>`

向上按钮的背景样式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_disabled** :ref:`🔗<class_SpinBox_theme_style_up_background_disabled>`

向上按钮禁用时的背景样式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_hovered** :ref:`🔗<class_SpinBox_theme_style_up_background_hovered>`

向上按钮悬停时的背景样式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_pressed** :ref:`🔗<class_SpinBox_theme_style_up_background_pressed>`

向上按钮按下时的背景样式。

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_down_buttons_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_down_buttons_separator** :ref:`🔗<class_SpinBox_theme_style_up_down_buttons_separator>`

上下按钮之间的间隔区域内绘制的 :ref:`StyleBox<class_StyleBox>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
