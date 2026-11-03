:github_url: hide

.. _class_TextParagraph:

TextParagraph
=============

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

持有一個文欄位落。

.. rst-class:: classref-introduction-group

說明
----

對 :ref:`TextServer<class_TextServer>` 的抽象，用於處理單個文欄位落。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`alignment<class_TextParagraph_property_alignment>`                         | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]         | :ref:`break_flags<class_TextParagraph_property_break_flags>`                     | ``3``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                               | :ref:`custom_punctuation<class_TextParagraph_property_custom_punctuation>`       | ``""``    |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`direction<class_TextParagraph_property_direction>`                         | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                               | :ref:`ellipsis_char<class_TextParagraph_property_ellipsis_char>`                 | ``"…"``   |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`justification_flags<class_TextParagraph_property_justification_flags>`     | ``163``   |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                 | :ref:`line_spacing<class_TextParagraph_property_line_spacing>`                   | ``0.0``   |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                     | :ref:`max_lines_visible<class_TextParagraph_property_max_lines_visible>`         | ``-1``    |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`Orientation<enum_TextServer_Orientation>`                           | :ref:`orientation<class_TextParagraph_property_orientation>`                     | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_control<class_TextParagraph_property_preserve_control>`           | ``false`` |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_invalid<class_TextParagraph_property_preserve_invalid>`           | ``true``  |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`                   | :ref:`text_overrun_behavior<class_TextParagraph_property_text_overrun_behavior>` | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_TextParagraph_property_width>`                                 | ``-1.0``  |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_object<class_TextParagraph_method_add_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ )                                                    |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_string<class_TextParagraph_method_add_string>`\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ )                                                                                            |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`clear<class_TextParagraph_method_clear>`\ (\ )                                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`clear_dropcap<class_TextParagraph_method_clear_dropcap>`\ (\ )                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw<class_TextParagraph_method_draw>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_dropcap<class_TextParagraph_method_draw_dropcap>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_dropcap_outline<class_TextParagraph_method_draw_dropcap_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_line<class_TextParagraph_method_draw_line>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_line_outline<class_TextParagraph_method_draw_line_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                   |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_outline<class_TextParagraph_method_draw_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextParagraph<class_TextParagraph>`   | :ref:`duplicate<class_TextParagraph_method_duplicate>`\ (\ ) |const|                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`get_dropcap_lines<class_TextParagraph_method_get_dropcap_lines>`\ (\ ) |const|                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_dropcap_rid<class_TextParagraph_method_get_dropcap_rid>`\ (\ ) |const|                                                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_dropcap_size<class_TextParagraph_method_get_dropcap_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                         |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Direction<enum_TextServer_Direction>` | :ref:`get_inferred_direction<class_TextParagraph_method_get_inferred_direction>`\ (\ ) |const|                                                                                                                                                                                                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_ascent<class_TextParagraph_method_get_line_ascent>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`get_line_count<class_TextParagraph_method_get_line_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_descent<class_TextParagraph_method_get_line_descent>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                   | :ref:`get_line_object_rect<class_TextParagraph_method_get_line_object_rect>`\ (\ line\: :ref:`int<class_int>`, key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                   | :ref:`get_line_objects<class_TextParagraph_method_get_line_objects>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`             | :ref:`get_line_range<class_TextParagraph_method_get_line_range>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_line_rid<class_TextParagraph_method_get_line_rid>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                   |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_line_size<class_TextParagraph_method_get_line_size>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                 |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_position<class_TextParagraph_method_get_line_underline_position>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_thickness<class_TextParagraph_method_get_line_underline_thickness>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                   |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_width<class_TextParagraph_method_get_line_width>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_non_wrapped_size<class_TextParagraph_method_get_non_wrapped_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                 |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`             | :ref:`get_range<class_TextParagraph_method_get_range>`\ (\ ) |const|                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_rid<class_TextParagraph_method_get_rid>`\ (\ ) |const|                                                                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_size<class_TextParagraph_method_get_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                         |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`has_object<class_TextParagraph_method_has_object>`\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                                                                                |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`hit_test<class_TextParagraph_method_hit_test>`\ (\ coords\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                                                                                                 |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`resize_object<class_TextParagraph_method_resize_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ )                                                                                  |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_bidi_override<class_TextParagraph_method_set_bidi_override>`\ (\ override\: :ref:`Array<class_Array>`\ )                                                                                                                                                                                                                                         |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`set_dropcap<class_TextParagraph_method_set_dropcap>`\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, dropcap_margins\: :ref:`Rect2<class_Rect2>` = Rect2(0, 0, 0, 0), language\: :ref:`String<class_String>` = ""\ )                                                                      |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`tab_align<class_TextParagraph_method_tab_align>`\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )                                                                                                                                                                                                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_TextParagraph_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_TextParagraph_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_alignment**\ (\ )

段落的水平對齊。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_break_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **break_flags** = ``3`` :ref:`🔗<class_TextParagraph_property_break_flags>`

.. rst-class:: classref-property-setget

- |void| **set_break_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_break_flags**\ (\ )

斷行規則。詳情見 :ref:`TextServer<class_TextServer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_custom_punctuation:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_punctuation** = ``""`` :ref:`🔗<class_TextParagraph_property_custom_punctuation>`

.. rst-class:: classref-property-setget

- |void| **set_custom_punctuation**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_custom_punctuation**\ (\ )

自訂標點字元列表，用於分詞。如果設定為空字串，則使用伺服器的預設值。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **direction** = ``0`` :ref:`🔗<class_TextParagraph_property_direction>`

.. rst-class:: classref-property-setget

- |void| **set_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_direction**\ (\ )

文字書寫方向。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_TextParagraph_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

用於文字裁剪的省略字元。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_TextParagraph_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

行填充對齊規則。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``0.0`` :ref:`🔗<class_TextParagraph_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

行與行之間的額外縱向留白（單位為像素），留白會被新增到行的降部。該值可以為負數。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_max_lines_visible:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_lines_visible** = ``-1`` :ref:`🔗<class_TextParagraph_property_max_lines_visible>`

.. rst-class:: classref-property-setget

- |void| **set_max_lines_visible**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_lines_visible**\ (\ )

限制顯示文字的行數。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_orientation:

.. rst-class:: classref-property

:ref:`Orientation<enum_TextServer_Orientation>` **orientation** = ``0`` :ref:`🔗<class_TextParagraph_property_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_orientation**\ (\ value\: :ref:`Orientation<enum_TextServer_Orientation>`\ )
- :ref:`Orientation<enum_TextServer_Orientation>` **get_orientation**\ (\ )

文字朝向。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_preserve_control:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_control** = ``false`` :ref:`🔗<class_TextParagraph_property_preserve_control>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_control**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_control**\ (\ )

如果設定為 ``true``\ ，則將在文字中顯示控制字元。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_preserve_invalid:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_invalid** = ``true`` :ref:`🔗<class_TextParagraph_property_preserve_invalid>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_invalid**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_invalid**\ (\ )

如果設定為 ``true``\ ，則將在文字中顯示無效字元。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_TextParagraph_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

當文字超出段落所設定的寬度時的裁剪行為。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``-1.0`` :ref:`🔗<class_TextParagraph_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

段落寬度。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TextParagraph_method_add_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextParagraph_method_add_object>`

向文字緩衝中新增行內物件，\ ``key`` 必須唯一。在文字中，物件使用 ``length`` 個物件替換字元表示。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_add_string:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_string**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_TextParagraph_method_add_string>`

新增文字區間以及用於繪製的字形。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TextParagraph_method_clear>`

清空文欄位落（移除文字和行內物件）。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_clear_dropcap:

.. rst-class:: classref-method

|void| **clear_dropcap**\ (\ ) :ref:`🔗<class_TextParagraph_method_clear_dropcap>`

移除首字下沉。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw>`

在畫布項中的給定位置繪製文字中所有行和首字下沈，顏色為 ``color``\ 。\ ``pos`` 指定的是邊界框的左上角。如果 ``oversampling`` 大於零則會用作字型過取樣係數，否則使用視埠的過取樣設定。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_dropcap:

.. rst-class:: classref-method

|void| **draw_dropcap**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_dropcap>`

在畫布項中的給定位置繪製首字下沈，顏色為 ``color``\ 。\ ``pos`` 指定的是邊界框的左上角。如果 ``oversampling`` 大於零則會用作字型過取樣係數，否則使用視埠的過取樣設定。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_dropcap_outline:

.. rst-class:: classref-method

|void| **draw_dropcap_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_dropcap_outline>`

在畫布項中的給定位置繪製首字下沈的輪廓，顏色為 ``color``\ 。\ ``pos`` 指定的是邊界框的左上角。如果 ``oversampling`` 大於零則會用作字型過取樣係數，否則使用視埠的過取樣設定。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_line:

.. rst-class:: classref-method

|void| **draw_line**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_line>`

在畫布項中的給定位置繪製一行文字，顏色為 ``color``\ 。\ ``pos`` 指定的是邊界框的左上角。如果 ``oversampling`` 大於零則會用作字型過取樣係數，否則使用視埠的過取樣設定。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_line_outline:

.. rst-class:: classref-method

|void| **draw_line_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_line_outline>`

在畫布項中的給定位置繪製一行文字的輪廓，顏色為 ``color``\ 。\ ``pos`` 指定的是邊界框的左上角。如果 ``oversampling`` 大於零則會用作字型過取樣係數，否則使用視埠的過取樣設定。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_outline:

.. rst-class:: classref-method

|void| **draw_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_outline>`

在畫布項中的給定位置繪製文字中所有行和首字下沈的輪廓，顏色為 ``color``\ 。\ ``pos`` 指定的是邊界框的左上角。如果 ``oversampling`` 大於零則會用作字型過取樣係數，否則使用視埠的過取樣設定。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_duplicate:

.. rst-class:: classref-method

:ref:`TextParagraph<class_TextParagraph>` **duplicate**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_duplicate>`

複製該 **TextParagraph**\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_lines:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_dropcap_lines**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_lines>`

返回首字下沉使用的行數。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_dropcap_rid**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_rid>`

返回首字下沉文字緩衝 RID。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_dropcap_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_size>`

返回首字下沉邊界框大小。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_inferred_direction:

.. rst-class:: classref-method

:ref:`Direction<enum_TextServer_Direction>` **get_inferred_direction**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_inferred_direction>`

回傳由 BiDi 算法推斷的文字書寫方向。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_ascent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_ascent**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_ascent>`

返回文字行上高（對於水平佈局，為基線上方的圖元數；或對於垂直佈局，基線左側的圖元數）。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_count**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_count>`

返回段落中的行數。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_descent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_descent**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_descent>`

返回文字行下深（對於水平佈局，為基線下方的圖元數；或對於垂直佈局，基線右側的圖元數）。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_object_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_line_object_rect**\ (\ line\: :ref:`int<class_int>`, key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_object_rect>`

返回行內對象的邊界矩形。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_objects:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_line_objects**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_objects>`

返回某行中行內物件的陣列。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_range:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_line_range**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_range>`

返回某行中的字元範圍。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_line_rid**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_rid>`

返回 TextServer 行緩衝 RID。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_line_size**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_size>`

回傳文字行邊界框的大小。回傳的大小會向上捨入。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_underline_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_position**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_underline_position>`

返回基線下方底線的圖元偏移。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_underline_thickness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_thickness**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_underline_thickness>`

返回底線的粗細度。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_width:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_width**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_width>`

返回文字行的寬度（水平排版）或高度（垂直排版）。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_non_wrapped_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_non_wrapped_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_non_wrapped_size>`

返回段落邊界框的大小，不帶分行符號。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_range:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_range**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_range>`

回傳段落的字元範圍。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_rid>`

返回 TextServer 完整字串緩衝區的 RID。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_size>`

返回段落邊界框的大小。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_has_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_object**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextParagraph_method_has_object>`

如果該塑形文字緩衝區中嵌入了具有 ``key`` 的物件，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_hit_test:

.. rst-class:: classref-method

:ref:`int<class_int>` **hit_test**\ (\ coords\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TextParagraph_method_hit_test>`

返回指定座標處的文字游標的偏移量。該函式始終返回一個有效位置。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_resize_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **resize_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextParagraph_method_resize_object>`

設定內嵌物件的新大小和對齊方式。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_set_bidi_override:

.. rst-class:: classref-method

|void| **set_bidi_override**\ (\ override\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_TextParagraph_method_set_bidi_override>`

覆蓋用於結構化文字的 BiDi。

覆蓋範圍應覆蓋完整的源文字而沒有重疊。BiDi 演算法將分別被用於每個範圍。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_set_dropcap:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_dropcap**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, dropcap_margins\: :ref:`Rect2<class_Rect2>` = Rect2(0, 0, 0, 0), language\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_TextParagraph_method_set_dropcap>`

設定首字下沉，會覆蓋之前設定的首字下沉。首字下沉是段落開頭的裝飾元素，比文字的其餘部分大。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_tab_align:

.. rst-class:: classref-method

|void| **tab_align**\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_TextParagraph_method_tab_align>`

將段落與給定的定位停駐點對齊。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
