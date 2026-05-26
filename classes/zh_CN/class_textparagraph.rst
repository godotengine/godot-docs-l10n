:github_url: hide

.. _class_TextParagraph:

TextParagraph
=============

**继承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

持有一个文本段落。

.. rst-class:: classref-introduction-group

描述
----

对 :ref:`TextServer<class_TextServer>` 的抽象，用于处理单个文本段落。

.. rst-class:: classref-reftable-group

属性
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

属性说明
--------

.. _class_TextParagraph_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_TextParagraph_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_alignment**\ (\ )

段落的水平对齐。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_break_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **break_flags** = ``3`` :ref:`🔗<class_TextParagraph_property_break_flags>`

.. rst-class:: classref-property-setget

- |void| **set_break_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_break_flags**\ (\ )

断行规则。详见 :ref:`TextServer<class_TextServer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_custom_punctuation:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_punctuation** = ``""`` :ref:`🔗<class_TextParagraph_property_custom_punctuation>`

.. rst-class:: classref-property-setget

- |void| **set_custom_punctuation**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_custom_punctuation**\ (\ )

自定义标点字符列表，用于分词。如果设置为空字符串，则使用服务器的默认值。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **direction** = ``0`` :ref:`🔗<class_TextParagraph_property_direction>`

.. rst-class:: classref-property-setget

- |void| **set_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_direction**\ (\ )

文本书写方向。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_TextParagraph_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

用于文本裁剪的省略字符。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_TextParagraph_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

行填充对齐规则。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``0.0`` :ref:`🔗<class_TextParagraph_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

行与行之间的额外纵向留白（单位为像素），留白会被添加到行的降部。该值可以为负数。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_max_lines_visible:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_lines_visible** = ``-1`` :ref:`🔗<class_TextParagraph_property_max_lines_visible>`

.. rst-class:: classref-property-setget

- |void| **set_max_lines_visible**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_lines_visible**\ (\ )

限制显示文本的行数。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_orientation:

.. rst-class:: classref-property

:ref:`Orientation<enum_TextServer_Orientation>` **orientation** = ``0`` :ref:`🔗<class_TextParagraph_property_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_orientation**\ (\ value\: :ref:`Orientation<enum_TextServer_Orientation>`\ )
- :ref:`Orientation<enum_TextServer_Orientation>` **get_orientation**\ (\ )

文本朝向。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_preserve_control:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_control** = ``false`` :ref:`🔗<class_TextParagraph_property_preserve_control>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_control**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_control**\ (\ )

如果设置为 ``true``\ ，则将在文本中显示控制字符。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_preserve_invalid:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_invalid** = ``true`` :ref:`🔗<class_TextParagraph_property_preserve_invalid>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_invalid**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_invalid**\ (\ )

如果设置为 ``true``\ ，则将在文本中显示无效字符。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_TextParagraph_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

当文本超出段落所设置的宽度时的裁剪行为。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``-1.0`` :ref:`🔗<class_TextParagraph_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

段落宽度。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_TextParagraph_method_add_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextParagraph_method_add_object>`

向文本缓冲中添加内联对象，\ ``key`` 必须唯一。在文本中，对象使用 ``length`` 个对象替换字符表示。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_add_string:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_string**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_TextParagraph_method_add_string>`

添加文本区间以及用于绘制的字体。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TextParagraph_method_clear>`

清空文本段落（移除文本和内联对象）。

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

在画布项中的给定位置绘制文本中所有行和首字下沉，颜色为 ``color``\ 。\ ``pos`` 指定的是边界框的左上角。如果 ``oversampling`` 大于零则会用作字体过采样系数，否则使用视口的过采样设置。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_dropcap:

.. rst-class:: classref-method

|void| **draw_dropcap**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_dropcap>`

在画布项中的给定位置绘制首字下沉，颜色为 ``color``\ 。\ ``pos`` 指定的是边界框的左上角。如果 ``oversampling`` 大于零则会用作字体过采样系数，否则使用视口的过采样设置。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_dropcap_outline:

.. rst-class:: classref-method

|void| **draw_dropcap_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_dropcap_outline>`

在画布项中的给定位置绘制首字下沉的轮廓，颜色为 ``color``\ 。\ ``pos`` 指定的是边界框的左上角。如果 ``oversampling`` 大于零则会用作字体过采样系数，否则使用视口的过采样设置。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_line:

.. rst-class:: classref-method

|void| **draw_line**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_line>`

在画布项中的给定位置绘制一行文本，颜色为 ``color``\ 。\ ``pos`` 指定的是边界框的左上角。如果 ``oversampling`` 大于零则会用作字体过采样系数，否则使用视口的过采样设置。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_line_outline:

.. rst-class:: classref-method

|void| **draw_line_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_line_outline>`

在画布项中的给定位置绘制一行文本的轮廓，颜色为 ``color``\ 。\ ``pos`` 指定的是边界框的左上角。如果 ``oversampling`` 大于零则会用作字体过采样系数，否则使用视口的过采样设置。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_outline:

.. rst-class:: classref-method

|void| **draw_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_outline>`

在画布项中的给定位置绘制文本中所有行和首字下沉的轮廓，颜色为 ``color``\ 。\ ``pos`` 指定的是边界框的左上角。如果 ``oversampling`` 大于零则会用作字体过采样系数，否则使用视口的过采样设置。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_duplicate:

.. rst-class:: classref-method

:ref:`TextParagraph<class_TextParagraph>` **duplicate**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_duplicate>`

复制该 **TextParagraph**\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_lines:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_dropcap_lines**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_lines>`

返回首字下沉使用的行数。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_dropcap_rid**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_rid>`

返回首字下沉文本缓冲 RID。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_dropcap_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_size>`

返回首字下沉边界框大小。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_inferred_direction:

.. rst-class:: classref-method

:ref:`Direction<enum_TextServer_Direction>` **get_inferred_direction**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_inferred_direction>`

返回由 BiDi 算法推断的文本书写方向。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_ascent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_ascent**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_ascent>`

返回文本行上高（对于水平布局，为基线上方的像素数；或对于垂直布局，基线左侧的像素数）。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_count**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_count>`

返回段落中的行数。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_descent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_descent**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_descent>`

返回文本行下深（对于水平布局，为基线下方的像素数；或对于垂直布局，基线右侧的像素数）。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_object_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_line_object_rect**\ (\ line\: :ref:`int<class_int>`, key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_object_rect>`

返回内联对象的边界矩形。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_objects:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_line_objects**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_objects>`

返回某行中内联对象的数组。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_range:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_line_range**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_range>`

返回某行中的字符范围。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_line_rid**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_rid>`

返回 TextServer 行缓冲 RID。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_line_size**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_size>`

返回文本行边界框的大小。返回的大小会向上舍入。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_underline_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_position**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_underline_position>`

返回基线下方下划线的像素偏移。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_underline_thickness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_thickness**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_underline_thickness>`

返回下划线的粗细度。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_width:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_width**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_width>`

返回文本行的宽度（水平排版）或高度（垂直排版）。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_non_wrapped_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_non_wrapped_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_non_wrapped_size>`

返回段落边界框的大小，不带换行符。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_range:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_range**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_range>`

返回段落的字符范围。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_rid>`

返回 TextServer 完整字符串缓冲区的 RID。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_size>`

返回段落边界框的大小。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_has_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_object**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextParagraph_method_has_object>`

如果该塑形文本缓冲区中嵌入了具有 ``key`` 的对象，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_hit_test:

.. rst-class:: classref-method

:ref:`int<class_int>` **hit_test**\ (\ coords\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TextParagraph_method_hit_test>`

返回指定坐标处的文本光标的偏移量。该函数始终返回一个有效位置。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_resize_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **resize_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextParagraph_method_resize_object>`

设置嵌入对象的新大小和对齐方式。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_set_bidi_override:

.. rst-class:: classref-method

|void| **set_bidi_override**\ (\ override\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_TextParagraph_method_set_bidi_override>`

覆盖用于结构化文本的 BiDi。

覆盖范围应覆盖完整的源文本而没有重叠。BiDi 算法将分别被用于每个范围。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_set_dropcap:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_dropcap**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, dropcap_margins\: :ref:`Rect2<class_Rect2>` = Rect2(0, 0, 0, 0), language\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_TextParagraph_method_set_dropcap>`

设置首字下沉，会覆盖之前设置的首字下沉。首字下沉是段落开头的装饰元素，比文本的其余部分大。

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_tab_align:

.. rst-class:: classref-method

|void| **tab_align**\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_TextParagraph_method_tab_align>`

将段落与给定的制表位对齐。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
