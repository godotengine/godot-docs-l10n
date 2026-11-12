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

用於顯示純文字的控制項。可以控制水平和垂直對齊方式以及文字在節點包圍框內的換行方式。不支援粗體、斜體等富文字格式。這種需求請改用 :ref:`RichTextLabel<class_RichTextLabel>`\ 。

\ **注意：**\ 單個標籤節點並非設計用於顯示大量文字。如果需要在單個節點中顯示大量文字，請考慮改用 :ref:`RichTextLabel<class_RichTextLabel>`\ ，因為它支援集成捲動條和多執行緒等功能。\ :ref:`RichTextLabel<class_RichTextLabel>` 在顯示大量文字（幾頁或更多）時通常效能更佳。

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
   | :ref:`int<class_int>`                                                       | :ref:`maximum_font_size<class_Label_property_maximum_font_size>`                                         | ``60``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                       | :ref:`minimum_font_size<class_Label_property_minimum_font_size>`                                         | ``10``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`                                | mouse_filter                                                                                             | ``2`` (overrides :ref:`Control<class_Control_property_mouse_filter>`)        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                 | :ref:`paragraph_separator<class_Label_property_paragraph_separator>`                                     | ``"\\n"``                                                                    |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                     | :ref:`resize_font_to_fit<class_Label_property_resize_font_to_fit>`                                       | ``false``                                                                    |
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
   | :ref:`int<class_int>`     | :ref:`get_rendered_font_size<class_Label_method_get_rendered_font_size>`\ (\ ) |const|                          |
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

如果設定為非 :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>` 的值，文字將在節點的邊界矩形內進行換行。如果你調整節點的大小，它將自動改變高度以顯示所有文字。

\ **注意：** 啟用了自動換行的標籤必須設定自訂的最大寬度才能正常工作，這可以通過標籤自身的 :ref:`Control.custom_maximum_size<class_Control_property_custom_maximum_size>` 實現，或者作為啟用了 :ref:`Control.propagate_maximum_size<class_Control_property_propagate_maximum_size>` 的父控制項傳遞過來的最大尺寸的結果。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_autowrap_trim_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **autowrap_trim_flags** = ``192`` :ref:`🔗<class_Label_property_autowrap_trim_flags>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_trim_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_autowrap_trim_flags**\ (\ )

自動換行空白修剪標誌。詳見 :ref:`TextServer.BREAK_TRIM_START_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_START_EDGE_SPACES>` 和 :ref:`TextServer.BREAK_TRIM_END_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_END_EDGE_SPACES>`\ 。

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

用於文字裁剪的省略字元。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_horizontal_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **horizontal_alignment** = ``0`` :ref:`🔗<class_Label_property_horizontal_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

控制文字的水平對齊方式。支援左對齊、居中對齊、右對齊、填充（即兩端對齊）。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_Label_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

行填充對齊規則。

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

用於斷行和文字塑形算法的語言程式碼。如果留空，則使用目前區域設定。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_lines_skipped:

.. rst-class:: classref-property

:ref:`int<class_int>` **lines_skipped** = ``0`` :ref:`🔗<class_Label_property_lines_skipped>`

.. rst-class:: classref-property-setget

- |void| **set_lines_skipped**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_lines_skipped**\ (\ )

從 :ref:`text<class_Label_property_text>` 值的開頭開始忽略且不顯示的行數。

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

.. _class_Label_property_maximum_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **maximum_font_size** = ``60`` :ref:`🔗<class_Label_property_maximum_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_maximum_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_maximum_font_size**\ (\ )

The maximum font size used when :ref:`resize_font_to_fit<class_Label_property_resize_font_to_fit>` is enabled. If :ref:`minimum_font_size<class_Label_property_minimum_font_size>` is greater than :ref:`maximum_font_size<class_Label_property_maximum_font_size>`, the minimum font size takes precedence.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_minimum_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **minimum_font_size** = ``10`` :ref:`🔗<class_Label_property_minimum_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_minimum_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_minimum_font_size**\ (\ )

The minimum font size used when :ref:`resize_font_to_fit<class_Label_property_resize_font_to_fit>` is enabled. Also determines the minimum vertical size of this **Label**, potentially used by a parent :ref:`Container<class_Container>`. If :ref:`minimum_font_size<class_Label_property_minimum_font_size>` is greater than :ref:`maximum_font_size<class_Label_property_maximum_font_size>`, the minimum font size takes precedence.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_paragraph_separator:

.. rst-class:: classref-property

:ref:`String<class_String>` **paragraph_separator** = ``"\\n"`` :ref:`🔗<class_Label_property_paragraph_separator>`

.. rst-class:: classref-property-setget

- |void| **set_paragraph_separator**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_paragraph_separator**\ (\ )

段落分隔符字串。段落獨立處理，使用自己的 BiDi 情境。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_resize_font_to_fit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **resize_font_to_fit** = ``false`` :ref:`🔗<class_Label_property_resize_font_to_fit>`

.. rst-class:: classref-property-setget

- |void| **set_resize_font_to_fit**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_resize_font_to_fit_enabled**\ (\ )

If ``true``, the text size will automatically shrink or grow to fit within the node's bounding rectangle. It will pick the largest font size between :ref:`minimum_font_size<class_Label_property_minimum_font_size>` and :ref:`maximum_font_size<class_Label_property_maximum_font_size>` that doesn't cause the text to be truncated.

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



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

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

設定文字超出節點邊界框時的裁剪行為。

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

控制文字的垂直對齊方式。支援頂部對齊、居中對齊、底部對齊、填充。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_visible_characters:

.. rst-class:: classref-property

:ref:`int<class_int>` **visible_characters** = ``-1`` :ref:`🔗<class_Label_property_visible_characters>`

.. rst-class:: classref-property-setget

- |void| **set_visible_characters**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_visible_characters**\ (\ )

要顯示的字元數。如果設定為 ``-1``\ ，則顯示所有字元。這用於在對話框中為顯示的文字設定動畫。

\ **注意：**\ 設定該屬性會相應地更新 :ref:`visible_ratio<class_Label_property_visible_ratio>`\ 。

\ **注意：**\ 字元按照 Unicode 碼位計算。一個可見的字素可能包含多個碼位（例如部分 Emoji 會使用三個碼位）。一個碼位可能包含兩個 UTF-16 字元，C# 字串中會用到。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_visible_characters_behavior:

.. rst-class:: classref-property

:ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>` **visible_characters_behavior** = ``0`` :ref:`🔗<class_Label_property_visible_characters_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_visible_characters_behavior**\ (\ value\: :ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>`\ )
- :ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>` **get_visible_characters_behavior**\ (\ )

設定 :ref:`visible_characters<class_Label_property_visible_characters>` 或 :ref:`visible_ratio<class_Label_property_visible_ratio>` 被設定時的裁剪行為。

.. rst-class:: classref-item-separator

----

.. _class_Label_property_visible_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **visible_ratio** = ``1.0`` :ref:`🔗<class_Label_property_visible_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_visible_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visible_ratio**\ (\ )

相對於字元總數（參見 :ref:`get_total_character_count()<class_Label_method_get_total_character_count>`\ ），要顯示的字元的占比。如果設定為 ``1.0``\ ，則顯示所有字元。如果設定為 ``0.5``\ ，則只顯示一半的字元。這用於在對話框中為顯示的文字設定動畫。

\ **注意：**\ 設定該屬性會相應地更新 :ref:`visible_characters<class_Label_property_visible_characters>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Label_method_get_character_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_character_bounds**\ (\ pos\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Label_method_get_character_bounds>`

回傳位置 ``pos`` 處字元的邊界矩形，使用標籤的區域座標系。如果字元是不可見字元或 ``pos`` 超出有效範圍，則回傳空 :ref:`Rect2<class_Rect2>`\ 。如果字元是復合字素的一部分，則回傳整個字素的邊界矩形。

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

.. _class_Label_method_get_rendered_font_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_rendered_font_size**\ (\ ) |const| :ref:`🔗<class_Label_method_get_rendered_font_size>`

Returns the font size that is currently used for rendering. When :ref:`resize_font_to_fit<class_Label_property_resize_font_to_fit>` is enabled, this returns the automatically calculated font size. Otherwise, it returns the theme font size.

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

行與行之間的額外縱向留白（單位為像素），留白會被新增到行的降部。該值可以為負數。

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_Label_theme_constant_outline_size>`

文字輪廓的大小。

\ **注意：**\ 如果使用啟用了 :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` 的字型，其 :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` 必須至少設定為 :ref:`outline_size<class_Label_theme_constant_outline_size>` 的\ *兩倍*\ ，輪廓渲染才能看起來正確。否則，輪廓可能會比預期的更早被切斷。

\ **注意：**\ 不建議使用大於字型大小一半的值，因為這種情況下字型輪廓可能無法完全閉合。

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_paragraph_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **paragraph_spacing** = ``0`` :ref:`🔗<class_Label_theme_constant_paragraph_spacing>`

段落之間的垂直空間。在 :ref:`line_spacing<class_Label_theme_constant_line_spacing>` 上新增。

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

**Label** 處於聚焦狀態時使用的 :ref:`StyleBox<class_StyleBox>`\ （適用於使用輔助應用）。

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
