:github_url: hide

.. meta::
	:keywords: number, numeric, input

.. _class_SpinBox:

SpinBox
=======

**Hereda:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un campo de entrada para números.

.. rst-class:: classref-introduction-group

Descripción
----------------------

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

Propiedades
----------------------

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

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------+
   | |void|                          | :ref:`apply<class_SpinBox_method_apply>`\ (\ )                 |
   +---------------------------------+----------------------------------------------------------------+
   | :ref:`LineEdit<class_LineEdit>` | :ref:`get_line_edit<class_SpinBox_method_get_line_edit>`\ (\ ) |
   +---------------------------------+----------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SpinBox_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_SpinBox_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Cambia la alineación del :ref:`LineEdit<class_LineEdit>` subyacente.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_custom_arrow_round:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_arrow_round** = ``false`` :ref:`🔗<class_SpinBox_property_custom_arrow_round>`

.. rst-class:: classref-property-setget

- |void| **set_custom_arrow_round**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_custom_arrow_rounding**\ (\ )

If ``true``, the value will be rounded to a multiple of :ref:`custom_arrow_step<class_SpinBox_property_custom_arrow_step>` when interacting with the arrow buttons. Otherwise, increments the value by :ref:`custom_arrow_step<class_SpinBox_property_custom_arrow_step>` and then rounds it according to :ref:`Range.step<class_Range_property_step>`.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_custom_arrow_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_arrow_step** = ``0.0`` :ref:`🔗<class_SpinBox_property_custom_arrow_step>`

.. rst-class:: classref-property-setget

- |void| **set_custom_arrow_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_arrow_step**\ (\ )

Si no es ``0``, establece el paso al interactuar con los botones de flecha del **SpinBox**.

\ **Nota:** :ref:`Range.value<class_Range_property_value>` seguirá redondeándose a un múltiplo de :ref:`Range.step<class_Range_property_step>`.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_SpinBox_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

Si es ``true``, el **SpinBox** será editable. De lo contrario, sólo será de lectura.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_prefix:

.. rst-class:: classref-property

:ref:`String<class_String>` **prefix** = ``""`` :ref:`🔗<class_SpinBox_property_prefix>`

.. rst-class:: classref-property-setget

- |void| **set_prefix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_prefix**\ (\ )

Añade la string especificada como prefijo antes del valor numérico del **SpinBox**.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_select_all_on_focus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **select_all_on_focus** = ``false`` :ref:`🔗<class_SpinBox_property_select_all_on_focus>`

.. rst-class:: classref-property-setget

- |void| **set_select_all_on_focus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_select_all_on_focus**\ (\ )

Si es ``true``, el **SpinBox** seleccionará todo el texto cuando el :ref:`LineEdit<class_LineEdit>` gane el foco. Hacer clic en las flechas de arriba y abajo no desencadenará este comportamiento.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **suffix** = ``""`` :ref:`🔗<class_SpinBox_property_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_suffix**\ (\ )

Añade la string especificada como sufijo después del valor numérico del **SpinBox**.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_update_on_text_changed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_on_text_changed** = ``false`` :ref:`🔗<class_SpinBox_property_update_on_text_changed>`

.. rst-class:: classref-property-setget

- |void| **set_update_on_text_changed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_on_text_changed**\ (\ )

Establece el valor del :ref:`Range<class_Range>` para este **SpinBox** cuando el texto del :ref:`LineEdit<class_LineEdit>` es *cambiado* en lugar de *enviado*. Véase :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>` y :ref:`LineEdit.text_submitted<class_LineEdit_signal_text_submitted>`.

\ **Nota:** Si se establece en ``true``, esto interferirá con la introducción de expresiones matemáticas en el **SpinBox**. El **SpinBox** intentará evaluar la expresión mientras escribes, lo que significa que los símbolos como un ``+`` final se eliminan inmediatamente al evaluar la expresión.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SpinBox_method_apply:

.. rst-class:: classref-method

|void| **apply**\ (\ ) :ref:`🔗<class_SpinBox_method_apply>`

Aplica el valor actual de este **SpinBox**. Esto es equivalente a pulsar :kbd:`Enter` mientras se edita el :ref:`LineEdit<class_LineEdit>` utilizado por el **SpinBox**. Esto hará que se emita :ref:`LineEdit.text_submitted<class_LineEdit_signal_text_submitted>` y que se evalúe su expresión contenida actualmente.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_method_get_line_edit:

.. rst-class:: classref-method

:ref:`LineEdit<class_LineEdit>` **get_line_edit**\ (\ ) :ref:`🔗<class_SpinBox_method_get_line_edit>`

Devuelve la instancia :ref:`LineEdit<class_LineEdit>` de este **SpinBox**. Puedes usarla para acceder a las propiedades y métodos de :ref:`LineEdit<class_LineEdit>`.

\ **Advertencia:** Este es un nodo interno requerido, removerlo y liberarlo puede causar un fallo. Si deseas ocultarlo o alguno de sus hijos, usa su propiedad :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_SpinBox_theme_color_down_disabled_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_disabled_icon_modulate** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_SpinBox_theme_color_down_disabled_icon_modulate>`

Color de modulación del icono del botón de abajo, cuando el botón está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_hover_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_hover_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_hover_icon_modulate>`

Color de modulación del icono del botón de abajo, cuando el botón está en foco.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_icon_modulate** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_icon_modulate>`

Color de modulación del icono del botón de abajo.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_pressed_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_pressed_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_pressed_icon_modulate>`

Color de modulación del icono del botón de abajo, cuando el botón está siendo presionado.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_disabled_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_disabled_icon_modulate** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_SpinBox_theme_color_up_disabled_icon_modulate>`

Color de modulación del icono del botón de arriba, cuando el botón está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_hover_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_hover_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_hover_icon_modulate>`

Color de modulación del icono del botón de arriba, cuando el botón está en foco.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_icon_modulate** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_icon_modulate>`

Color de modulación del icono del botón de arriba.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_pressed_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_pressed_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_pressed_icon_modulate>`

Color de modulación del icono del botón de arriba, cuando el botón está siendo presionado.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_buttons_vertical_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_vertical_separation** = ``0`` :ref:`🔗<class_SpinBox_theme_constant_buttons_vertical_separation>`

Separación vertical entre los botones de arriba y abajo.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_buttons_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_width** = ``16`` :ref:`🔗<class_SpinBox_theme_constant_buttons_width>`

Ancho de los botones de arriba y abajo. Si es más pequeño que cualquier icono establecido en los botones, el icono respectivo puede superponerse a los elementos vecinos. Si es menor que ``0``, el ancho se ajusta automáticamente a partir del tamaño del icono.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_field_and_buttons_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **field_and_buttons_separation** = ``2`` :ref:`🔗<class_SpinBox_theme_constant_field_and_buttons_separation>`

Ancho de la separación horizontal entre el campo de entrada de texto (:ref:`LineEdit<class_LineEdit>`) y los botones.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_set_min_buttons_width_from_icons:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **set_min_buttons_width_from_icons** = ``1`` :ref:`🔗<class_SpinBox_theme_constant_set_min_buttons_width_from_icons>`

Si no es ``0``, el ancho mínimo del botón corresponde al más ancho de todos los iconos establecidos en esos botones, incluso si :ref:`buttons_width<class_SpinBox_theme_constant_buttons_width>` es más pequeño.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down** :ref:`🔗<class_SpinBox_theme_icon_down>`

Icono del botón de abajo, que se muestra en el centro del botón de abajo (que disminuye el valor).

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_disabled** :ref:`🔗<class_SpinBox_theme_icon_down_disabled>`

Icono del botón de abajo cuando el botón está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_hover:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_hover** :ref:`🔗<class_SpinBox_theme_icon_down_hover>`

Icono del botón de abajo cuando el botón está en foco.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_pressed** :ref:`🔗<class_SpinBox_theme_icon_down_pressed>`

Icono del botón de bajar cuando se presiona el botón.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up** :ref:`🔗<class_SpinBox_theme_icon_up>`

Icono del botón de arriba, que se muestra en el centro del botón de arriba (que aumenta el valor).

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_disabled** :ref:`🔗<class_SpinBox_theme_icon_up_disabled>`

Icono del botón de arriba cuando el botón está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_hover:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_hover** :ref:`🔗<class_SpinBox_theme_icon_up_hover>`

Icono del botón de arriba cuando el botón está en foco.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_pressed** :ref:`🔗<class_SpinBox_theme_icon_up_pressed>`

Icono del botón de arriba cuando se está pulsando el botón.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_updown:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown** :ref:`🔗<class_SpinBox_theme_icon_updown>`

Una sola textura que representa los iconos de los botones de arriba y abajo. Se muestra en el centro de los botones y no cambia al interactuar con ellos. Si se asigna un icono válido, reemplazará a :ref:`up<class_SpinBox_theme_icon_up>` y :ref:`down<class_SpinBox_theme_icon_down>`.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background** :ref:`🔗<class_SpinBox_theme_style_down_background>`

Estilo de fondo del botón de abajo.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_disabled** :ref:`🔗<class_SpinBox_theme_style_down_background_disabled>`

Estilo de fondo del botón de abajo cuando está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_hovered** :ref:`🔗<class_SpinBox_theme_style_down_background_hovered>`

Estilo de fondo del botón de abajo cuando está en foco.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_pressed** :ref:`🔗<class_SpinBox_theme_style_down_background_pressed>`

Estilo de fondo del botón de abajo cuando está siendo presionado.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_field_and_buttons_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **field_and_buttons_separator** :ref:`🔗<class_SpinBox_theme_style_field_and_buttons_separator>`

:ref:`StyleBox<class_StyleBox>` dibujado en el espacio ocupado por la separación entre el campo de entrada y los botones.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background** :ref:`🔗<class_SpinBox_theme_style_up_background>`

Estilo de fondo del botón de arriba.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_disabled** :ref:`🔗<class_SpinBox_theme_style_up_background_disabled>`

Estilo de fondo del botón de arriba cuando está desactivado.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_hovered** :ref:`🔗<class_SpinBox_theme_style_up_background_hovered>`

Estilo de fondo del botón de arriba cuando está en foco.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_pressed** :ref:`🔗<class_SpinBox_theme_style_up_background_pressed>`

Estilo de fondo del botón de arriba cuando está siendo pulsado.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_down_buttons_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_down_buttons_separator** :ref:`🔗<class_SpinBox_theme_style_up_down_buttons_separator>`

:ref:`StyleBox<class_StyleBox>` dibujado en el espacio ocupado por la separación entre los botones de arriba y abajo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
