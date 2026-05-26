:github_url: hide

.. meta::
	:keywords: number, numeric, input

.. _class_SpinBox:

SpinBox
=======

**Hérite de :** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un champ de saisie pour des nombres.

.. rst-class:: classref-introduction-group

Description
-----------

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

Propriétés
--------------------

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

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------+
   | |void|                          | :ref:`apply<class_SpinBox_method_apply>`\ (\ )                 |
   +---------------------------------+----------------------------------------------------------------+
   | :ref:`LineEdit<class_LineEdit>` | :ref:`get_line_edit<class_SpinBox_method_get_line_edit>`\ (\ ) |
   +---------------------------------+----------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

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

Descriptions des propriétés
------------------------------------------------------

.. _class_SpinBox_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_SpinBox_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Change l'alignement du :ref:`LineEdit<class_LineEdit>` sous-jacent.

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

Si différent de ``0``, définit le pas lors de l'interaction avec les boutons flèche de la **SpinBox**.

\ **Note :** :ref:`Range.value<class_Range_property_value>` sera toujours arrondi à un multiple de :ref:`Range.step<class_Range_property_step>`.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_editable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editable** = ``true`` :ref:`🔗<class_SpinBox_property_editable>`

.. rst-class:: classref-property-setget

- |void| **set_editable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editable**\ (\ )

Si ``true``, la **SpinBox** sera modifiable. Sinon, elle sera en lecture seule.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_prefix:

.. rst-class:: classref-property

:ref:`String<class_String>` **prefix** = ``""`` :ref:`🔗<class_SpinBox_property_prefix>`

.. rst-class:: classref-property-setget

- |void| **set_prefix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_prefix**\ (\ )

Ajoute la chaîne de caractères de préfixe spécifiée avant la valeur numérique de la **SpinBox**.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_select_all_on_focus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **select_all_on_focus** = ``false`` :ref:`🔗<class_SpinBox_property_select_all_on_focus>`

.. rst-class:: classref-property-setget

- |void| **set_select_all_on_focus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_select_all_on_focus**\ (\ )

Si ``true``, la **SpinBox** sélectionnera tout le texte lorsque le :ref:`LineEdit<class_LineEdit>` obtient le focus. Cliquer sur les flèches haut et bas ne déclenchera pas ce comportement.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_suffix:

.. rst-class:: classref-property

:ref:`String<class_String>` **suffix** = ``""`` :ref:`🔗<class_SpinBox_property_suffix>`

.. rst-class:: classref-property-setget

- |void| **set_suffix**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_suffix**\ (\ )

Ajoute la chaîne de caractères de suffixe spécifiée avant la valeur numérique de la **SpinBox**.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_property_update_on_text_changed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_on_text_changed** = ``false`` :ref:`🔗<class_SpinBox_property_update_on_text_changed>`

.. rst-class:: classref-property-setget

- |void| **set_update_on_text_changed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_on_text_changed**\ (\ )

Définit la valeur du :ref:`Range<class_Range>` pour cette **SpinBox** lorsque le texte du :ref:`LineEdit<class_LineEdit>` est *modifié* au lieu d'être *soumis*. Voir :ref:`LineEdit.text_changed<class_LineEdit_signal_text_changed>` et :ref:`LineEdit.text_submitted<class_LineEdit_signal_text_submitted>`.

\ **Note :** Si défini à ``true``, cela interfère avec l'entrée d'expressions mathématiques dans la **SpinBox**. La **SpinBox** tentera d'évaluer l'expression au fur et à mesure que vous la tapiez, ce qui signifie que les symboles comme un ``+`` de fin sont enlevés immédiatement par l’évaluation de l’expression.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SpinBox_method_apply:

.. rst-class:: classref-method

|void| **apply**\ (\ ) :ref:`🔗<class_SpinBox_method_apply>`

Applique la valeur actuelle de cette **SpinBox**. Ceci équivaut à appuyer sur :kbd:`Entrée` lors de l'édition du :ref:`LineEdit<class_LineEdit>` utilisé par la **SpinBox**. Cela provoquer l'émission de :ref:`LineEdit.text_submitted<class_LineEdit_signal_text_submitted>` et l'évaluation de son expression actuellement contenue.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_method_get_line_edit:

.. rst-class:: classref-method

:ref:`LineEdit<class_LineEdit>` **get_line_edit**\ (\ ) :ref:`🔗<class_SpinBox_method_get_line_edit>`

Renvoie l'instance :ref:`LineEdit<class_LineEdit>` utilisé pour ce **SpinBox**. Vous pouvez l'utiliser pour accéder au propriétés et méthodes de ce :ref:`LineEdit<class_LineEdit>`.

\ **Avertissement :** Cette instance est nécessaire en interne, la retirer ou la libérer peut provoquer un crash. Si vous voulez la masquer elle ou ses enfants, préférez leur propriété :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_SpinBox_theme_color_down_disabled_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_disabled_icon_modulate** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_SpinBox_theme_color_down_disabled_icon_modulate>`

Couleur de modulation de l'icône du bouton bas, lorsque le bouton est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_hover_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_hover_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_hover_icon_modulate>`

Couleur de modulation de l'icône du bouton bas, lorsque le bouton est survolé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_icon_modulate** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_icon_modulate>`

Couleur de modulation de l'icône du bouton bas.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_down_pressed_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **down_pressed_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_down_pressed_icon_modulate>`

Couleur de modulation de l'icône du bouton bas, lorsque le bouton est appuyé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_disabled_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_disabled_icon_modulate** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_SpinBox_theme_color_up_disabled_icon_modulate>`

Couleur de modulation de l'icône du bouton haut, lorsque le bouton est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_hover_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_hover_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_hover_icon_modulate>`

Couleur de modulation de l'icône du bouton haut, lorsque le bouton est survolé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_icon_modulate** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_icon_modulate>`

Couleur de modulation de l'icône du bouton haut.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_color_up_pressed_icon_modulate:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **up_pressed_icon_modulate** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_SpinBox_theme_color_up_pressed_icon_modulate>`

Couleur de modulation de l'icône du bouton haut, lorsque le bouton est appuyé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_buttons_vertical_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_vertical_separation** = ``0`` :ref:`🔗<class_SpinBox_theme_constant_buttons_vertical_separation>`

Séparation verticale entre les boutons haut et bas.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_buttons_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_width** = ``16`` :ref:`🔗<class_SpinBox_theme_constant_buttons_width>`

Largeur des boutons haut et bas. Si plus petite que n'importe quelle icône définie sur les boutons, l'icône respective peut recouvrir les éléments voisins. Si plus petite que ``0``, la largeur est automatiquement ajustée depuis la taille de l'icône.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_field_and_buttons_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **field_and_buttons_separation** = ``2`` :ref:`🔗<class_SpinBox_theme_constant_field_and_buttons_separation>`

Largeur de la séparation horizontale entre le champ de saisie de texte (:ref:`LineEdit<class_LineEdit>`) et les boutons.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_constant_set_min_buttons_width_from_icons:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **set_min_buttons_width_from_icons** = ``1`` :ref:`🔗<class_SpinBox_theme_constant_set_min_buttons_width_from_icons>`

Si différent de ``0``, la largeur minimale du bouton correspond à la plus grande largeur des icônes définies sur ces boutons, même si :ref:`buttons_width<class_SpinBox_theme_constant_buttons_width>` est plus petite.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down** :ref:`🔗<class_SpinBox_theme_icon_down>`

Icône du bouton bas, affichée au milieu du bouton bas (diminution de la valeur).

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_disabled** :ref:`🔗<class_SpinBox_theme_icon_down_disabled>`

Icône du bouton bas lorsque le bouton est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_hover:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_hover** :ref:`🔗<class_SpinBox_theme_icon_down_hover>`

Icône du bouton bas lorsque le bouton est survolé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_down_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **down_pressed** :ref:`🔗<class_SpinBox_theme_icon_down_pressed>`

Icône du bouton bas lorsque le bouton est appuyé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up** :ref:`🔗<class_SpinBox_theme_icon_up>`

Icône du bouton haut, affichée au milieu du bouton haut (augmentation de la valeur).

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_disabled** :ref:`🔗<class_SpinBox_theme_icon_up_disabled>`

Icône du bouton haut lorsque le bouton est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_hover:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_hover** :ref:`🔗<class_SpinBox_theme_icon_up_hover>`

Icône du bouton haut lorsque le bouton est survolé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_up_pressed:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **up_pressed** :ref:`🔗<class_SpinBox_theme_icon_up_pressed>`

Icône du bouton haut lorsque le bouton est appuyé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_icon_updown:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **updown** :ref:`🔗<class_SpinBox_theme_icon_updown>`

Texture unique représentant à la fois les icônes des boutons haut et bas. Elle est affichée au milieu des boutons et ne change pas lors d'une interaction. Si une icône valide est assignée, elle remplacera :ref:`up<class_SpinBox_theme_icon_up>` et :ref:`down<class_SpinBox_theme_icon_down>`.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background** :ref:`🔗<class_SpinBox_theme_style_down_background>`

Style de l'arrière-plan du bouton bas.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_disabled** :ref:`🔗<class_SpinBox_theme_style_down_background_disabled>`

Style de l'arrière-plan du bouton bas lorsque désactivé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_hovered** :ref:`🔗<class_SpinBox_theme_style_down_background_hovered>`

Style de l'arrière-plan du bouton bas lorsque survolé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_down_background_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **down_background_pressed** :ref:`🔗<class_SpinBox_theme_style_down_background_pressed>`

Style de l'arrière-plan du bouton bas lorsqu'appuyé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_field_and_buttons_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **field_and_buttons_separator** :ref:`🔗<class_SpinBox_theme_style_field_and_buttons_separator>`

:ref:`StyleBox<class_StyleBox>` dessinée dans l'espace occupé par la séparation entre le champ de saisie et les boutons.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background** :ref:`🔗<class_SpinBox_theme_style_up_background>`

Style d'arrière-plan du bouton haut.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_disabled** :ref:`🔗<class_SpinBox_theme_style_up_background_disabled>`

Style de l'arrière-plan du bouton haut lorsque désactivé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_hovered** :ref:`🔗<class_SpinBox_theme_style_up_background_hovered>`

Style de l'arrière-plan du bouton haut lorsque survolé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_background_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_background_pressed** :ref:`🔗<class_SpinBox_theme_style_up_background_pressed>`

Style de l'arrière-plan du bouton haut lorsqu'appuyé.

.. rst-class:: classref-item-separator

----

.. _class_SpinBox_theme_style_up_down_buttons_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **up_down_buttons_separator** :ref:`🔗<class_SpinBox_theme_style_up_down_buttons_separator>`

:ref:`StyleBox<class_StyleBox>` dessinée dans l'espace occupé par la séparation entre les boutons haut et bas.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
