:github_url: hide

.. _class_TextLine:

TextLine
========

**繼承：** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

存放一行文字。

.. rst-class:: classref-introduction-group

說明
----

基於 :ref:`TextServer<class_TextServer>` 的抽象，用於處理單行文字。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`alignment<class_TextLine_property_alignment>`                         | ``0``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`direction<class_TextLine_property_direction>`                         | ``0``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                               | :ref:`ellipsis_char<class_TextLine_property_ellipsis_char>`                 | ``"…"``   |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`flags<class_TextLine_property_flags>`                                 | ``3``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Orientation<enum_TextServer_Orientation>`                           | :ref:`orientation<class_TextLine_property_orientation>`                     | ``0``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_control<class_TextLine_property_preserve_control>`           | ``false`` |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_invalid<class_TextLine_property_preserve_invalid>`           | ``true``  |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`                   | :ref:`text_overrun_behavior<class_TextLine_property_text_overrun_behavior>` | ``3``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_TextLine_property_width>`                                 | ``-1.0``  |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_object<class_TextLine_method_add_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ ) |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_string<class_TextLine_method_add_string>`\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ )                                         |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`clear<class_TextLine_method_clear>`\ (\ )                                                                                                                                                                                                                                                    |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw<class_TextLine_method_draw>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                                  |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_outline<class_TextLine_method_draw_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|        |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextLine<class_TextLine>`             | :ref:`duplicate<class_TextLine_method_duplicate>`\ (\ ) |const|                                                                                                                                                                                                                                    |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Direction<enum_TextServer_Direction>` | :ref:`get_inferred_direction<class_TextLine_method_get_inferred_direction>`\ (\ ) |const|                                                                                                                                                                                                          |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_ascent<class_TextLine_method_get_line_ascent>`\ (\ ) |const|                                                                                                                                                                                                                        |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_descent<class_TextLine_method_get_line_descent>`\ (\ ) |const|                                                                                                                                                                                                                      |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_position<class_TextLine_method_get_line_underline_position>`\ (\ ) |const|                                                                                                                                                                                                |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_thickness<class_TextLine_method_get_line_underline_thickness>`\ (\ ) |const|                                                                                                                                                                                              |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_width<class_TextLine_method_get_line_width>`\ (\ ) |const|                                                                                                                                                                                                                          |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                   | :ref:`get_object_rect<class_TextLine_method_get_object_rect>`\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                   |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                   | :ref:`get_objects<class_TextLine_method_get_objects>`\ (\ ) |const|                                                                                                                                                                                                                                |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_rid<class_TextLine_method_get_rid>`\ (\ ) |const|                                                                                                                                                                                                                                        |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_size<class_TextLine_method_get_size>`\ (\ ) |const|                                                                                                                                                                                                                                      |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`has_object<class_TextLine_method_has_object>`\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                             |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`hit_test<class_TextLine_method_hit_test>`\ (\ coords\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                  |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`resize_object<class_TextLine_method_resize_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ )                               |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_bidi_override<class_TextLine_method_set_bidi_override>`\ (\ override\: :ref:`Array<class_Array>`\ )                                                                                                                                                                                      |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`tab_align<class_TextLine_method_tab_align>`\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )                                                                                                                                                                           |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_TextLine_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_TextLine_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

設定行內的文字對齊方式，始終按照該行為橫向的情況設定。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **direction** = ``0`` :ref:`🔗<class_TextLine_property_direction>`

.. rst-class:: classref-property-setget

- |void| **set_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_direction**\ (\ )

文字書寫方向。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_TextLine_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

用於文字裁剪的省略字元。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **flags** = ``3`` :ref:`🔗<class_TextLine_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_flags**\ (\ )

行對齊規則。詳細請參閱 :ref:`TextServer<class_TextServer>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_orientation:

.. rst-class:: classref-property

:ref:`Orientation<enum_TextServer_Orientation>` **orientation** = ``0`` :ref:`🔗<class_TextLine_property_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_orientation**\ (\ value\: :ref:`Orientation<enum_TextServer_Orientation>`\ )
- :ref:`Orientation<enum_TextServer_Orientation>` **get_orientation**\ (\ )

文字朝向。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_preserve_control:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_control** = ``false`` :ref:`🔗<class_TextLine_property_preserve_control>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_control**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_control**\ (\ )

如果設定為 ``true``\ ，則將在文字中顯示控制字元。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_preserve_invalid:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_invalid** = ``true`` :ref:`🔗<class_TextLine_property_preserve_invalid>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_invalid**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_invalid**\ (\ )

如果設定為 ``true``\ ，則將在文字中顯示無效字元。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``3`` :ref:`🔗<class_TextLine_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

當文字超出設定的行寬時的裁剪行為。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``-1.0`` :ref:`🔗<class_TextLine_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

文字行寬。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TextLine_method_add_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextLine_method_add_object>`

向文字緩衝中新增行內物件，\ ``key`` 必須唯一。在文字中，物件使用 ``length`` 個物件替換字元表示。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_add_string:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_string**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_TextLine_method_add_string>`

新增文字區間以及用於繪製的字形。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TextLine_method_clear>`

清除文字行（移除文字和行內物件）。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextLine_method_draw>`

在畫布項中的給定位置繪製文字，顏色為 ``color``\ 。\ ``pos`` 指定的是邊界框的左上角。如果 ``oversampling`` 大於零則會用作字型過取樣係數，否則使用視埠的過取樣設定。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_draw_outline:

.. rst-class:: classref-method

|void| **draw_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextLine_method_draw_outline>`

在畫布項中的給定位置繪製文字，顏色為 ``color``\ 。\ ``pos`` 指定的是邊界框的左上角。如果 ``oversampling`` 大於零則會用作字型過取樣係數，否則使用視埠的過取樣設定。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_duplicate:

.. rst-class:: classref-method

:ref:`TextLine<class_TextLine>` **duplicate**\ (\ ) |const| :ref:`🔗<class_TextLine_method_duplicate>`

複製該 **TextLine**\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_inferred_direction:

.. rst-class:: classref-method

:ref:`Direction<enum_TextServer_Direction>` **get_inferred_direction**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_inferred_direction>`

回傳由 BiDi 算法推斷的文字書寫方向。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_ascent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_ascent**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_ascent>`

返回該文字的升部（水平排版時為基線上方的圖元數，垂直排版時為基線左側的圖元數）。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_descent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_descent**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_descent>`

返回該文字的降部（水平排版時為基線下方的圖元數，垂直排版時為基線右側的圖元數）。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_underline_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_position**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_underline_position>`

返回基線下方底線的圖元偏移。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_underline_thickness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_thickness**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_underline_thickness>`

返回底線的粗細度。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_width:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_width**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_width>`

返回文字的寬度（對於水平排版）或高度（對於垂直排版）。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_object_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_object_rect**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextLine_method_get_object_rect>`

返回行內對象的邊界矩形。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_objects:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_objects**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_objects>`

返回行內物件的陣列。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_rid>`

返回 TextServer 緩衝區 RID。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_size>`

返回文字邊界框的大小。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_has_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_object**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextLine_method_has_object>`

如果該行中嵌入了具有 ``key`` 的物件，則回傳 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_hit_test:

.. rst-class:: classref-method

:ref:`int<class_int>` **hit_test**\ (\ coords\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_TextLine_method_hit_test>`

返回基線處指定圖元偏移處的文字游標的偏移量。該函式始終返回一個有效位置。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_resize_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **resize_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextLine_method_resize_object>`

設定內嵌物件的新大小和對齊方式。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_set_bidi_override:

.. rst-class:: classref-method

|void| **set_bidi_override**\ (\ override\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_TextLine_method_set_bidi_override>`

覆蓋用於結構化文字的 BiDi。

覆蓋範圍應覆蓋完整的源文字而沒有重疊。BiDi 演算法將分別被用於每個範圍。

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_tab_align:

.. rst-class:: classref-method

|void| **tab_align**\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_TextLine_method_tab_align>`

將文字與給定的定位停駐點對齊。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
