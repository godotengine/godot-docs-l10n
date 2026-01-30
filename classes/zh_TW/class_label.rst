:github_url: hide

.. meta::
	:keywords: text

.. _class_Label:

Label
=====

**繼承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於顯示純文字的控制項。

.. rst-class:: classref-introduction-group

說明
----

A control for displaying plain text. It gives you control over the horizontal and vertical alignment and can wrap the text inside the node's bounding rectangle. It doesn't support bold, italics, or other rich text formatting. For that, use :ref:`RichTextLabel<class_RichTextLabel>` instead.

\ **Note:** A single Label node is not designed to display huge amounts of text. To display large amounts of text in a single node, consider using :ref:`RichTextLabel<class_RichTextLabel>` instead as it supports features like an integrated scroll bar and threading. :ref:`RichTextLabel<class_RichTextLabel>` generally performs better when displaying large amounts of text (several pages or more).

.. rst-class:: classref-introduction-group

教學
----

- `2D Dodge The Creeps 範例 <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`                           | :ref:`autowrap_mode<class_Label_property_autowrap_mode>`                                                 | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]           | :ref:`autowrap_trim_flags<class_Label_property_autowrap_trim_flags>`                                     | ``192``                                                                      |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                     | :ref:`clip_text<class_Label_property_clip_text>`                                                         | ``false``                                                                    |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                 | :ref:`ellipsis_char<class_Label_property_ellipsis_char>`                                                 | ``"…"``                                                                      |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`           | :ref:`horizontal_alignment<class_Label_property_horizontal_alignment>`                                   | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]   | :ref:`justification_flags<class_Label_property_justification_flags>`                                     | ``163``                                                                      |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`LabelSettings<class_LabelSettings>`                                   | :ref:`label_settings<class_Label_property_label_settings>`                                               |                                                                              |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                 | :ref:`language<class_Label_property_language>`                                                           | ``""``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                       | :ref:`lines_skipped<class_Label_property_lines_skipped>`                                                 | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                       | :ref:`max_lines_visible<class_Label_property_max_lines_visible>`                                         | ``-1``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`                                | mouse_filter                                                                                             | ``2`` (overrides :ref:`Control<class_Control_property_mouse_filter>`)        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                 | :ref:`paragraph_separator<class_Label_property_paragraph_separator>`                                     | ``"\\n"``                                                                    |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]                      | size_flags_vertical                                                                                      | ``4`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`           | :ref:`structured_text_bidi_override<class_Label_property_structured_text_bidi_override>`                 | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                   | :ref:`structured_text_bidi_override_options<class_Label_property_structured_text_bidi_override_options>` | ``[]``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`                         | :ref:`tab_stops<class_Label_property_tab_stops>`                                                         | ``PackedFloat32Array()``                                                     |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                 | :ref:`text<class_Label_property_text>`                                                                   | ``""``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                            | :ref:`text_direction<class_Label_property_text_direction>`                                               | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`                     | :ref:`text_overrun_behavior<class_Label_property_text_overrun_behavior>`                                 | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                     | :ref:`uppercase<class_Label_property_uppercase>`                                                         | ``false``                                                                    |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`               | :ref:`vertical_alignment<class_Label_property_vertical_alignment>`                                       | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                       | :ref:`visible_characters<class_Label_property_visible_characters>`                                       | ``-1``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>` | :ref:`visible_characters_behavior<class_Label_property_visible_characters_behavior>`                     | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                   | :ref:`visible_ratio<class_Label_property_visible_ratio>`                                                 | ``1.0``                                                                      |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_character_bounds<class_Label_method_get_character_bounds>`\ (\ pos\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_line_count<class_Label_method_get_line_count>`\ (\ ) |const|                                          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_line_height<class_Label_method_get_line_height>`\ (\ line\: :ref:`int<class_int>` = -1\ ) |const|     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_total_character_count<class_Label_method_get_total_character_count>`\ (\ ) |const|                    |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_visible_line_count<class_Label_method_get_visible_line_count>`\ (\ ) |const|                          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_Label_theme_color_font_color>`                      | ``Color(1, 1, 1, 1)`` |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_Label_theme_color_font_outline_color>`      | ``Color(0, 0, 0, 1)`` |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_shadow_color<class_Label_theme_color_font_shadow_color>`        | ``Color(0, 0, 0, 0)`` |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`line_spacing<class_Label_theme_constant_line_spacing>`               | ``3``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_Label_theme_constant_outline_size>`               | ``0``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`paragraph_spacing<class_Label_theme_constant_paragraph_spacing>`     | ``0``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`shadow_offset_x<class_Label_theme_constant_shadow_offset_x>`         | ``1``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`shadow_offset_y<class_Label_theme_constant_shadow_offset_y>`         | ``1``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`shadow_outline_size<class_Label_theme_constant_shadow_outline_size>` | ``1``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_Label_theme_font_font>`                                   |                       |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_Label_theme_font_size_font_size>`                    |                       |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`focus<class_Label_theme_style_focus>`                                |                       |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal<class_Label_theme_style_normal>`                              |                       |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Label_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_Label_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

If set to something other than :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>`, the text gets wrapped inside the node's bounding rectangle. If you resize the node, it will change its height automatically to show all the text.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_autowrap_trim_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **autowrap_trim_flags** = ``192`` :ref:`🔗<class_Label_property_autowrap_trim_flags>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_trim_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_autowrap_trim_flags**\ (\ )

Autowrap space trimming flags. See :ref:`TextServer.BREAK_TRIM_START_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_START_EDGE_SPACES>` and :ref:`TextServer.BREAK_TRIM_END_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_END_EDGE_SPACES>` for more info.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_clip_text:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_text** = ``false`` :ref:`🔗<class_Label_property_clip_text>`

.. rst-class:: classref-property-setget

- |void| **set_clip_text**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_clipping_text**\ (\ )

如果為 ``true``\ ，Label 將僅顯示位於其邊界矩形內部的文字，並將水平裁剪文字。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_Label_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

Ellipsis character used for text clipping.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_horizontal_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **horizontal_alignment** = ``0`` :ref:`🔗<class_Label_property_horizontal_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Controls the text's horizontal alignment. Supports left, center, right, and fill (also known as justify).

.. rst-class:: classref-item-separator

----

.. _class_Label_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_Label_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

Line fill alignment rules.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_label_settings:

.. rst-class:: classref-property

:ref:`LabelSettings<class_LabelSettings>` **label_settings** :ref:`🔗<class_Label_property_label_settings>`

.. rst-class:: classref-property-setget

- |void| **set_label_settings**\ (\ value\: :ref:`LabelSettings<class_LabelSettings>`\ )
- :ref:`LabelSettings<class_LabelSettings>` **get_label_settings**\ (\ )

:ref:`LabelSettings<class_LabelSettings>` 資源，可以在多個 **Label** 節點之間共用。優先於主題屬性。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_Label_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Language code used for line-breaking and text shaping algorithms. If left empty, the current locale is used instead.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_lines_skipped:

.. rst-class:: classref-property

:ref:`int<class_int>` **lines_skipped** = ``0`` :ref:`🔗<class_Label_property_lines_skipped>`

.. rst-class:: classref-property-setget

- |void| **set_lines_skipped**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_lines_skipped**\ (\ )

The number of the lines ignored and not displayed from the start of the :ref:`text<class_Label_property_text>` value.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_max_lines_visible:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_lines_visible** = ``-1`` :ref:`🔗<class_Label_property_max_lines_visible>`

.. rst-class:: classref-property-setget

- |void| **set_max_lines_visible**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_lines_visible**\ (\ )

限制節點在螢幕上顯示的文字行數。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_paragraph_separator:

.. rst-class:: classref-property

:ref:`String<class_String>` **paragraph_separator** = ``"\\n"`` :ref:`🔗<class_Label_property_paragraph_separator>`

.. rst-class:: classref-property-setget

- |void| **set_paragraph_separator**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_paragraph_separator**\ (\ )

String used as a paragraph separator. Each paragraph is processed independently, in its own BiDi context.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_Label_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

為結構化文字設定 BiDi 演算法覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_Label_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

設定 BiDi 覆蓋的附加選項。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_tab_stops:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **tab_stops** = ``PackedFloat32Array()`` :ref:`🔗<class_Label_property_tab_stops>`

.. rst-class:: classref-property-setget

- |void| **set_tab_stops**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_tab_stops**\ (\ )

將文字與給定的定位停駐點對齊。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_Label_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

要在螢幕上顯示的文字。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_Label_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

基礎文字書寫方向。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_Label_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

The clipping behavior when the text exceeds the node's bounding rectangle.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_uppercase:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **uppercase** = ``false`` :ref:`🔗<class_Label_property_uppercase>`

.. rst-class:: classref-property-setget

- |void| **set_uppercase**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_uppercase**\ (\ )

如果為 ``true``\ ，所有文字都將顯示為大寫。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_vertical_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_alignment** = ``0`` :ref:`🔗<class_Label_property_vertical_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_alignment**\ (\ )

Controls the text's vertical alignment. Supports top, center, bottom, and fill.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_visible_characters:

.. rst-class:: classref-property

:ref:`int<class_int>` **visible_characters** = ``-1`` :ref:`🔗<class_Label_property_visible_characters>`

.. rst-class:: classref-property-setget

- |void| **set_visible_characters**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_visible_characters**\ (\ )

The number of characters to display. If set to ``-1``, all characters are displayed. This can be useful when animating the text appearing in a dialog box.

\ **Note:** Setting this property updates :ref:`visible_ratio<class_Label_property_visible_ratio>` accordingly.

\ **Note:** Characters are counted as Unicode codepoints. A single visible grapheme may contain multiple codepoints (e.g. certain emoji use three codepoints). A single codepoint may contain two UTF-16 characters, which are used in C# strings.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_visible_characters_behavior:

.. rst-class:: classref-property

:ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>` **visible_characters_behavior** = ``0`` :ref:`🔗<class_Label_property_visible_characters_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_visible_characters_behavior**\ (\ value\: :ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>`\ )
- :ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>` **get_visible_characters_behavior**\ (\ )

The clipping behavior when :ref:`visible_characters<class_Label_property_visible_characters>` or :ref:`visible_ratio<class_Label_property_visible_ratio>` is set.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_visible_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **visible_ratio** = ``1.0`` :ref:`🔗<class_Label_property_visible_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_visible_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visible_ratio**\ (\ )

相對於字元總數（參見 :ref:`get_total_character_count()<class_Label_method_get_total_character_count>`\ ），要顯示的字元的占比。如果設定為 ``1.0``\ ，則顯示所有字元。如果設定為 ``0.5``\ ，則只顯示一半的字元。這用於在對話方塊中為顯示的文字設定動畫。

\ **注意：**\ 設定該屬性會相應地更新 :ref:`visible_characters<class_Label_property_visible_characters>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Label_method_get_character_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_character_bounds**\ (\ pos\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Label_method_get_character_bounds>`

Returns the bounding rectangle of the character at position ``pos`` in the label's local coordinate system. If the character is a non-visual character or ``pos`` is outside the valid range, an empty :ref:`Rect2<class_Rect2>` is returned. If the character is a part of a composite grapheme, the bounding rectangle of the whole grapheme is returned.

.. rst-class:: classref-item-separator

----

.. _class_Label_method_get_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_count**\ (\ ) |const| :ref:`🔗<class_Label_method_get_line_count>`

返回該 Label 的文字行數。

.. rst-class:: classref-item-separator

----

.. _class_Label_method_get_line_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_height**\ (\ line\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_Label_method_get_line_height>`

返回行 ``line`` 的高度。

如果 ``line`` 被設定為 ``-1`` ，則返回最大的行高。

如果沒有行，則返回字形大小，單位是圖元。

.. rst-class:: classref-item-separator

----

.. _class_Label_method_get_total_character_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_total_character_count**\ (\ ) |const| :ref:`🔗<class_Label_method_get_total_character_count>`

返回文字中可列印的字元總數，不包括空格和分行符號。

.. rst-class:: classref-item-separator

----

.. _class_Label_method_get_visible_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_visible_line_count**\ (\ ) |const| :ref:`🔗<class_Label_method_get_visible_line_count>`

返回顯示的行數。如果 **Label** 的高度目前無法顯示所有的行數，將會有用。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_Label_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Label_theme_color_font_color>`

**Label** 標籤的預設文字顏色 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Label_theme_color_font_outline_color>`

文字輪廓的顏色。

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_color_font_shadow_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_shadow_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_Label_theme_color_font_shadow_color>`

文字陰影效果的顏色 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_line_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **line_spacing** = ``3`` :ref:`🔗<class_Label_theme_constant_line_spacing>`

Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_Label_theme_constant_outline_size>`

Text outline size.

\ **Note:** If using a font with :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` enabled, its :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` must be set to at least *twice* the value of :ref:`outline_size<class_Label_theme_constant_outline_size>` for outline rendering to look correct. Otherwise, the outline may appear to be cut off earlier than intended.

\ **Note:** Using a value that is larger than half the font size is not recommended, as the font outline may fail to be fully closed in this case.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_paragraph_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **paragraph_spacing** = ``0`` :ref:`🔗<class_Label_theme_constant_paragraph_spacing>`

Vertical space between paragraphs. Added on top of :ref:`line_spacing<class_Label_theme_constant_line_spacing>`.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_shadow_offset_x:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **shadow_offset_x** = ``1`` :ref:`🔗<class_Label_theme_constant_shadow_offset_x>`

文字陰影的水平偏移。

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_shadow_offset_y:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **shadow_offset_y** = ``1`` :ref:`🔗<class_Label_theme_constant_shadow_offset_y>`

文字陰影的垂直偏移。

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_shadow_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **shadow_outline_size** = ``1`` :ref:`🔗<class_Label_theme_constant_shadow_outline_size>`

陰影輪廓的大小。

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_Label_theme_font_font>`

用於標籤 **Label** 文字的字形 :ref:`Font<class_Font>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_Label_theme_font_size_font_size>`

該 **Label** 文字的字形大小。

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_Label_theme_style_focus>`

:ref:`StyleBox<class_StyleBox>` used when the **Label** is focused (when used with assistive apps).

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_style_normal:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal** :ref:`🔗<class_Label_theme_style_normal>`

為 **Label** 設定背景樣式盒 :ref:`StyleBox<class_StyleBox>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
