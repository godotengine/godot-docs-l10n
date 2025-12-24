:github_url: hide

.. meta::
	:keywords: expandable, collapsible, collapse

.. _class_FoldableContainer:

FoldableContainer
=================

**繼承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A container that can be expanded/collapsed.

.. rst-class:: classref-introduction-group

說明
----

A container that can be expanded/collapsed, with a title that can be filled with controls, such as buttons.

The title can be positioned at the top or bottom of the container.

The container can be expanded or collapsed by clicking the title or by pressing ``ui_accept`` when focused.

Child control nodes are hidden when the container is collapsed. Ignores non-control children.

Can allow grouping with other FoldableContainers, check :ref:`foldable_group<class_FoldableContainer_property_foldable_group>` and :ref:`FoldableGroup<class_FoldableGroup>`.

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                          | focus_mode                                                                                       | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`)   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`FoldableGroup<class_FoldableGroup>`                         | :ref:`foldable_group<class_FoldableContainer_property_foldable_group>`                           |                                                                       |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`folded<class_FoldableContainer_property_folded>`                                           | ``false``                                                             |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`language<class_FoldableContainer_property_language>`                                       | ``""``                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`                      | mouse_filter                                                                                     | ``0`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`title<class_FoldableContainer_property_title>`                                             | ``""``                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | :ref:`title_alignment<class_FoldableContainer_property_title_alignment>`                         | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`TitlePosition<enum_FoldableContainer_TitlePosition>`        | :ref:`title_position<class_FoldableContainer_property_title_position>`                           | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                  | :ref:`title_text_direction<class_FoldableContainer_property_title_text_direction>`               | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`           | :ref:`title_text_overrun_behavior<class_FoldableContainer_property_title_text_overrun_behavior>` | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_title_bar_control<class_FoldableContainer_method_add_title_bar_control>`\ (\ control\: :ref:`Control<class_Control>`\ )       |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`expand<class_FoldableContainer_method_expand>`\ (\ )                                                                              |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`fold<class_FoldableContainer_method_fold>`\ (\ )                                                                                  |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_title_bar_control<class_FoldableContainer_method_remove_title_bar_control>`\ (\ control\: :ref:`Control<class_Control>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`collapsed_font_color<class_FoldableContainer_theme_color_collapsed_font_color>`               | ``Color(1, 1, 1, 1)``             |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_color<class_FoldableContainer_theme_color_font_color>`                                   | ``Color(0.875, 0.875, 0.875, 1)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_outline_color<class_FoldableContainer_theme_color_font_outline_color>`                   | ``Color(1, 1, 1, 1)``             |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`hover_font_color<class_FoldableContainer_theme_color_hover_font_color>`                       | ``Color(0.95, 0.95, 0.95, 1)``    |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`             | :ref:`h_separation<class_FoldableContainer_theme_constant_h_separation>`                            | ``2``                             |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`             | :ref:`outline_size<class_FoldableContainer_theme_constant_outline_size>`                            | ``0``                             |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Font<class_Font>`           | :ref:`font<class_FoldableContainer_theme_font_font>`                                                |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`             | :ref:`font_size<class_FoldableContainer_theme_font_size_font_size>`                                 |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`expanded_arrow<class_FoldableContainer_theme_icon_expanded_arrow>`                            |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`expanded_arrow_mirrored<class_FoldableContainer_theme_icon_expanded_arrow_mirrored>`          |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folded_arrow<class_FoldableContainer_theme_icon_folded_arrow>`                                |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folded_arrow_mirrored<class_FoldableContainer_theme_icon_folded_arrow_mirrored>`              |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`focus<class_FoldableContainer_theme_style_focus>`                                             |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`panel<class_FoldableContainer_theme_style_panel>`                                             |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`title_collapsed_hover_panel<class_FoldableContainer_theme_style_title_collapsed_hover_panel>` |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`title_collapsed_panel<class_FoldableContainer_theme_style_title_collapsed_panel>`             |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`title_hover_panel<class_FoldableContainer_theme_style_title_hover_panel>`                     |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`title_panel<class_FoldableContainer_theme_style_title_panel>`                                 |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_FoldableContainer_signal_folding_changed:

.. rst-class:: classref-signal

**folding_changed**\ (\ is_folded\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_FoldableContainer_signal_folding_changed>`

Emitted when the container is folded/expanded.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_FoldableContainer_TitlePosition:

.. rst-class:: classref-enumeration

enum **TitlePosition**: :ref:`🔗<enum_FoldableContainer_TitlePosition>`

.. _class_FoldableContainer_constant_POSITION_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **POSITION_TOP** = ``0``

Makes the title appear at the top of the container.

.. _class_FoldableContainer_constant_POSITION_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **POSITION_BOTTOM** = ``1``

Makes the title appear at the bottom of the container. Also makes all StyleBoxes flipped vertically.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_FoldableContainer_property_foldable_group:

.. rst-class:: classref-property

:ref:`FoldableGroup<class_FoldableGroup>` **foldable_group** :ref:`🔗<class_FoldableContainer_property_foldable_group>`

.. rst-class:: classref-property-setget

- |void| **set_foldable_group**\ (\ value\: :ref:`FoldableGroup<class_FoldableGroup>`\ )
- :ref:`FoldableGroup<class_FoldableGroup>` **get_foldable_group**\ (\ )

The :ref:`FoldableGroup<class_FoldableGroup>` associated with the container. When multiple **FoldableContainer** nodes share the same group, only one of them is allowed to be unfolded.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_folded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **folded** = ``false`` :ref:`🔗<class_FoldableContainer_property_folded>`

.. rst-class:: classref-property-setget

- |void| **set_folded**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_folded**\ (\ )

If ``true``, the container will becomes folded and will hide all its children.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_FoldableContainer_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Language code used for text shaping algorithms. If left empty, current locale is used instead.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``""`` :ref:`🔗<class_FoldableContainer_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

The container's title text.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **title_alignment** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_title_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_title_alignment**\ (\ )

Title's horizontal text alignment.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_position:

.. rst-class:: classref-property

:ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **title_position** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_position>`

.. rst-class:: classref-property-setget

- |void| **set_title_position**\ (\ value\: :ref:`TitlePosition<enum_FoldableContainer_TitlePosition>`\ )
- :ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **get_title_position**\ (\ )

Title's position.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **title_text_direction** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_title_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_title_text_direction**\ (\ )

Title text writing direction.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **title_text_overrun_behavior** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_title_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_title_text_overrun_behavior**\ (\ )

Defines the behavior of the title when the text is longer than the available space.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_FoldableContainer_method_add_title_bar_control:

.. rst-class:: classref-method

|void| **add_title_bar_control**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_FoldableContainer_method_add_title_bar_control>`

Adds a :ref:`Control<class_Control>` that will be placed next to the container's title, obscuring the clickable area. Prime usage is adding :ref:`Button<class_Button>` nodes, but it can be any :ref:`Control<class_Control>`.

The control will be added as a child of this container and removed from previous parent if necessary. The controls will be placed aligned to the right, with the first added control being the leftmost one.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_expand:

.. rst-class:: classref-method

|void| **expand**\ (\ ) :ref:`🔗<class_FoldableContainer_method_expand>`

Expands the container and emits :ref:`folding_changed<class_FoldableContainer_signal_folding_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_fold:

.. rst-class:: classref-method

|void| **fold**\ (\ ) :ref:`🔗<class_FoldableContainer_method_fold>`

Folds the container and emits :ref:`folding_changed<class_FoldableContainer_signal_folding_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_remove_title_bar_control:

.. rst-class:: classref-method

|void| **remove_title_bar_control**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_FoldableContainer_method_remove_title_bar_control>`

Removes a :ref:`Control<class_Control>` added with :ref:`add_title_bar_control()<class_FoldableContainer_method_add_title_bar_control>`. The node is not freed automatically, you need to use :ref:`Node.queue_free()<class_Node_method_queue_free>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_FoldableContainer_theme_color_collapsed_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **collapsed_font_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_collapsed_font_color>`

The title's font color when collapsed.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_font_color>`

The title's font color when expanded.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_font_outline_color>`

The title's font outline color.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_color_hover_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **hover_font_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_hover_font_color>`

The title's font hover color.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``2`` :ref:`🔗<class_FoldableContainer_theme_constant_h_separation>`

The horizontal separation between the title's icon and text, and between title bar controls.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_FoldableContainer_theme_constant_outline_size>`

The title's font outline size.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_FoldableContainer_theme_font_font>`

The title's font.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_FoldableContainer_theme_font_size_font_size>`

The title's font size.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_expanded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **expanded_arrow** :ref:`🔗<class_FoldableContainer_theme_icon_expanded_arrow>`

The title's icon used when expanded.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_expanded_arrow_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **expanded_arrow_mirrored** :ref:`🔗<class_FoldableContainer_theme_icon_expanded_arrow_mirrored>`

The title's icon used when expanded (for bottom title).

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_folded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folded_arrow** :ref:`🔗<class_FoldableContainer_theme_icon_folded_arrow>`

The title's icon used when folded (for left-to-right layouts).

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_folded_arrow_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folded_arrow_mirrored** :ref:`🔗<class_FoldableContainer_theme_icon_folded_arrow_mirrored>`

The title's icon used when collapsed (for right-to-left layouts).

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_FoldableContainer_theme_style_focus>`

Background used when **FoldableContainer** has GUI focus. The :ref:`focus<class_FoldableContainer_theme_style_focus>` :ref:`StyleBox<class_StyleBox>` is displayed *over* the base :ref:`StyleBox<class_StyleBox>`, so a partially transparent :ref:`StyleBox<class_StyleBox>` should be used to ensure the base :ref:`StyleBox<class_StyleBox>` remains visible. A :ref:`StyleBox<class_StyleBox>` that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a :ref:`StyleBoxEmpty<class_StyleBoxEmpty>` resource. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_FoldableContainer_theme_style_panel>`

Default background for the **FoldableContainer**.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_collapsed_hover_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_collapsed_hover_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_collapsed_hover_panel>`

Background used when the mouse cursor enters the title's area when collapsed.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_collapsed_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_collapsed_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_collapsed_panel>`

Default background for the **FoldableContainer**'s title when collapsed.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_hover_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_hover_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_hover_panel>`

Background used when the mouse cursor enters the title's area when expanded.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_panel>`

Default background for the **FoldableContainer**'s title when expanded.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
