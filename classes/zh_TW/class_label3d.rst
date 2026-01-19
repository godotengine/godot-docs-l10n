:github_url: hide

.. meta::
	:keywords: text

.. _class_Label3D:

Label3D
=======

**繼承：** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用於在 3D 空間顯示純文字的節點。

.. rst-class:: classref-introduction-group

說明
----

用於在 3D 空間顯示純文字的節點。通過調整該節點的各種屬性，可以配置文字外觀、是否面朝相機等功能。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`3D 文字 <../tutorials/3d/3d_text>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`alpha_antialiasing_edge<class_Label3D_property_alpha_antialiasing_edge>`                             | ``0.0``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>`           | :ref:`alpha_antialiasing_mode<class_Label3D_property_alpha_antialiasing_mode>`                             | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>`                            | :ref:`alpha_cut<class_Label3D_property_alpha_cut>`                                                         | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`alpha_hash_scale<class_Label3D_property_alpha_hash_scale>`                                           | ``1.0``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`alpha_scissor_threshold<class_Label3D_property_alpha_scissor_threshold>`                             | ``0.5``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`                         | :ref:`autowrap_mode<class_Label3D_property_autowrap_mode>`                                                 | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]         | :ref:`autowrap_trim_flags<class_Label3D_property_autowrap_trim_flags>`                                     | ``192``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`                   | :ref:`billboard<class_Label3D_property_billboard>`                                                         | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` | cast_shadow                                                                                                | ``0`` (overrides :ref:`GeometryInstance3D<class_GeometryInstance3D_property_cast_shadow>`) |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`double_sided<class_Label3D_property_double_sided>`                                                   | ``true``                                                                                   |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`fixed_size<class_Label3D_property_fixed_size>`                                                       | ``false``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Font<class_Font>`                                                   | :ref:`font<class_Label3D_property_font>`                                                                   |                                                                                            |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`font_size<class_Label3D_property_font_size>`                                                         | ``32``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`GIMode<enum_GeometryInstance3D_GIMode>`                             | gi_mode                                                                                                    | ``0`` (overrides :ref:`GeometryInstance3D<class_GeometryInstance3D_property_gi_mode>`)     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`horizontal_alignment<class_Label3D_property_horizontal_alignment>`                                   | ``1``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`justification_flags<class_Label3D_property_justification_flags>`                                     | ``163``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                               | :ref:`language<class_Label3D_property_language>`                                                           | ``""``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`line_spacing<class_Label3D_property_line_spacing>`                                                   | ``0.0``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                                                 | :ref:`modulate<class_Label3D_property_modulate>`                                                           | ``Color(1, 1, 1, 1)``                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`no_depth_test<class_Label3D_property_no_depth_test>`                                                 | ``false``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                             | :ref:`offset<class_Label3D_property_offset>`                                                               | ``Vector2(0, 0)``                                                                          |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                                                 | :ref:`outline_modulate<class_Label3D_property_outline_modulate>`                                           | ``Color(0, 0, 0, 1)``                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`outline_render_priority<class_Label3D_property_outline_render_priority>`                             | ``-1``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`outline_size<class_Label3D_property_outline_size>`                                                   | ``12``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`pixel_size<class_Label3D_property_pixel_size>`                                                       | ``0.005``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`render_priority<class_Label3D_property_render_priority>`                                             | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`shaded<class_Label3D_property_shaded>`                                                               | ``false``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`         | :ref:`structured_text_bidi_override<class_Label3D_property_structured_text_bidi_override>`                 | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                 | :ref:`structured_text_bidi_override_options<class_Label3D_property_structured_text_bidi_override_options>` | ``[]``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                               | :ref:`text<class_Label3D_property_text>`                                                                   | ``""``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`text_direction<class_Label3D_property_text_direction>`                                               | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`                   | :ref:`texture_filter<class_Label3D_property_texture_filter>`                                               | ``3``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`uppercase<class_Label3D_property_uppercase>`                                                         | ``false``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`             | :ref:`vertical_alignment<class_Label3D_property_vertical_alignment>`                                       | ``1``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_Label3D_property_width>`                                                                 | ``500.0``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TriangleMesh<class_TriangleMesh>` | :ref:`generate_triangle_mesh<class_Label3D_method_generate_triangle_mesh>`\ (\ ) |const|                                                           |
   +-----------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                 | :ref:`get_draw_flag<class_Label3D_method_get_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|                            |
   +-----------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_draw_flag<class_Label3D_method_set_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Label3D_DrawFlags:

.. rst-class:: classref-enumeration

enum **DrawFlags**: :ref:`🔗<enum_Label3D_DrawFlags>`

.. _class_Label3D_constant_FLAG_SHADED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_SHADED** = ``0``

如果打開，環境中的燈光會影響該標籤。

.. _class_Label3D_constant_FLAG_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_DOUBLE_SIDED** = ``1``

如果打開，從後面也可以看到文字。如果不打開，從後面看該文字是不可見的。

.. _class_Label3D_constant_FLAG_DISABLE_DEPTH_TEST:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_DISABLE_DEPTH_TEST** = ``2``

禁用深度測試，所以這個物件被畫在所有其他物件的上面。但是，在繪製順序中，在它之後繪製的物件可能會覆蓋它。

.. _class_Label3D_constant_FLAG_FIXED_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_FIXED_SIZE** = ``3``

標籤會根據深度進行縮放，從而在螢幕上始終以相同的大小顯示。

.. _class_Label3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_MAX** = ``4``

代表 :ref:`DrawFlags<enum_Label3D_DrawFlags>` 列舉的大小。

.. rst-class:: classref-item-separator

----

.. _enum_Label3D_AlphaCutMode:

.. rst-class:: classref-enumeration

enum **AlphaCutMode**: :ref:`🔗<enum_Label3D_AlphaCutMode>`

.. _class_Label3D_constant_ALPHA_CUT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_DISABLED** = ``0``

該模式會執行標準的 Alpha 混合。它可以顯示半透明區域，但當多個透明材質重疊時，可能會出現透明度排序問題。\ :ref:`GeometryInstance3D.cast_shadow<class_GeometryInstance3D_property_cast_shadow>` 在使用該透明模式時無效；\ **Label3D** 永遠不會投射陰影。

.. _class_Label3D_constant_ALPHA_CUT_DISCARD:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_DISCARD** = ``1``

該模式僅允許完全透明、或完全不透明的圖元。除非啟用了某種形式的螢幕空間抗鋸齒（請參閱 :ref:`ProjectSettings.rendering/anti_aliasing/quality/screen_space_aa<class_ProjectSettings_property_rendering/anti_aliasing/quality/screen_space_aa>`\ ），否則會看到粗糙的邊緣。該模式也被稱為 *Alpha 測試* 或 *1 位透明度*\ 。

\ **注意：**\ 該模式可能會出現抗鋸齒字形和輪廓問題，請嘗試調整 :ref:`alpha_scissor_threshold<class_Label3D_property_alpha_scissor_threshold>` 或使用 MSDF 字形。

\ **注意：**\ 當使用具有重疊字形的文字（例如草書）時，該模式可能會在正文和輪廓之間，出現透明度排序問題。

.. _class_Label3D_constant_ALPHA_CUT_OPAQUE_PREPASS:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_OPAQUE_PREPASS** = ``2``

這個模式會在深度預處理時繪製完全不透明的圖元。比 :ref:`ALPHA_CUT_DISABLED<class_Label3D_constant_ALPHA_CUT_DISABLED>` 或 :ref:`ALPHA_CUT_DISCARD<class_Label3D_constant_ALPHA_CUT_DISCARD>` 要慢，但能夠對半透明區域和平滑邊緣進行正確的排序。

\ **注意：**\ 文字中存在重疊的字形時（例如手寫體），這個模式可能會造成主文字和輪廓的透明度排序問題。

.. _class_Label3D_constant_ALPHA_CUT_HASH:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_HASH** = ``3``

該模式繪製時會截斷所有低於空間確定性閾值的值，其餘值將保持不透明。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Label3D_property_alpha_antialiasing_edge:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_antialiasing_edge** = ``0.0`` :ref:`🔗<class_Label3D_property_alpha_antialiasing_edge>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing_edge**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_antialiasing_edge**\ (\ )

在 Alpha 通道上套用抗鋸齒的臨界值。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_antialiasing_mode:

.. rst-class:: classref-property

:ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **alpha_antialiasing_mode** = ``0`` :ref:`🔗<class_Label3D_property_alpha_antialiasing_mode>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing**\ (\ value\: :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>`\ )
- :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **get_alpha_antialiasing**\ (\ )

要套用的 Alpha 抗鋸齒類型。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_cut:

.. rst-class:: classref-property

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **alpha_cut** = ``0`` :ref:`🔗<class_Label3D_property_alpha_cut>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_cut_mode**\ (\ value\: :ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>`\ )
- :ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **get_alpha_cut_mode**\ (\ )

The alpha cutting mode to use for the sprite.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_hash_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_hash_scale** = ``1.0`` :ref:`🔗<class_Label3D_property_alpha_hash_scale>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_hash_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_hash_scale**\ (\ )

Alpha Hash 的雜湊比例，建議值介於 ``0`` 與 ``2`` 之間。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_scissor_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_scissor_threshold** = ``0.5`` :ref:`🔗<class_Label3D_property_alpha_scissor_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_scissor_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_scissor_threshold**\ (\ )

Alpha 裁剪丟棄數值的閾值。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_Label3D_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

If set to something other than :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>`, the text gets wrapped inside the node's bounding rectangle. If you resize the node, it will change its height automatically to show all the text.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_autowrap_trim_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **autowrap_trim_flags** = ``192`` :ref:`🔗<class_Label3D_property_autowrap_trim_flags>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_trim_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_autowrap_trim_flags**\ (\ )

Autowrap space trimming flags. See :ref:`TextServer.BREAK_TRIM_START_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_START_EDGE_SPACES>` and :ref:`TextServer.BREAK_TRIM_END_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_END_EDGE_SPACES>` for more info.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_billboard:

.. rst-class:: classref-property

:ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **billboard** = ``0`` :ref:`🔗<class_Label3D_property_billboard>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_mode**\ (\ value\: :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`\ )
- :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **get_billboard_mode**\ (\ )

The billboard mode to use for the label.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_double_sided:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_sided** = ``true`` :ref:`🔗<class_Label3D_property_double_sided>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

如果為 ``true``\ ，則從後面也可以看到文字，如果為 ``false``\ ，則從後面看它是不可見的。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_fixed_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fixed_size** = ``false`` :ref:`🔗<class_Label3D_property_fixed_size>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

If ``true``, the label is rendered at the same size regardless of distance. The label's size on screen is the same as if the camera was ``1.0`` units away from the label's origin, regardless of the actual distance from the camera. The :ref:`Camera3D<class_Camera3D>`'s field of view (or :ref:`Camera3D.size<class_Camera3D_property_size>` when in orthogonal/frustum mode) still affects the size the label is drawn at.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **font** :ref:`🔗<class_Label3D_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_font**\ (\ )

用於顯示文字的字形配置。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_size** = ``32`` :ref:`🔗<class_Label3D_property_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_size**\ (\ )

**Label3D** 文字的字形大小。為了讓字形在近距離時看起來更細膩，可增加 :ref:`font_size<class_Label3D_property_font_size>`\ ，同時減小 :ref:`pixel_size<class_Label3D_property_pixel_size>`\ 。

較大的字形大小需要更多時間來算繪新字元，這可能會導致在遊戲過程中卡頓。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_horizontal_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **horizontal_alignment** = ``1`` :ref:`🔗<class_Label3D_property_horizontal_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Controls the text's horizontal alignment. Supports left, center, right, and fill (also known as justify).

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_Label3D_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

Line fill alignment rules.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_Label3D_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Language code used for line-breaking and text shaping algorithms. If left empty, the current locale is used instead.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``0.0`` :ref:`🔗<class_Label3D_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Label3D_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

該 **Label3D** 的文字顏色 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_no_depth_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **no_depth_test** = ``false`` :ref:`🔗<class_Label3D_property_no_depth_test>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

若設為 ``true``\ ，將停用深度測試，物件依繪製順序顯示。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Label3D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

文字繪製偏移（單位為圖元）。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_outline_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **outline_modulate** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Label3D_property_outline_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_outline_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_outline_modulate**\ (\ )

文字輪廓的色調。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_outline_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **outline_render_priority** = ``-1`` :ref:`🔗<class_Label3D_property_outline_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_outline_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outline_render_priority**\ (\ )

設定文字輪廓的算繪優先順序。優先順序高的物體將被排序在優先順序低的物體前面。

\ **注意：**\ 僅在 :ref:`alpha_cut<class_Label3D_property_alpha_cut>` 為 :ref:`ALPHA_CUT_DISABLED<class_Label3D_constant_ALPHA_CUT_DISABLED>`\ （預設值）時適用。

\ **注意：**\ 僅適用於透明物體的排序。這不會影響透明物體相對於不透明物體的排序方式。這是因為不透明物件不被排序，而透明物件則從後往前排序（取決於優先順序）。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_outline_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outline_size** = ``12`` :ref:`🔗<class_Label3D_property_outline_size>`

.. rst-class:: classref-property-setget

- |void| **set_outline_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outline_size**\ (\ )

文字輪廓大小。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_pixel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **pixel_size** = ``0.005`` :ref:`🔗<class_Label3D_property_pixel_size>`

.. rst-class:: classref-property-setget

- |void| **set_pixel_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pixel_size**\ (\ )

標籤中一個圖元寬度對應縮放至的 3D 大小。要讓字形在較近距離時也能夠看到細節，請在減小 :ref:`pixel_size<class_Label3D_property_pixel_size>` 的同時增大 :ref:`font_size<class_Label3D_property_font_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** = ``0`` :ref:`🔗<class_Label3D_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

設定文字的算繪優先順序。優先順序高的物體將被排序在優先順序低的物體前面。

\ **注意：**\ 僅在 :ref:`alpha_cut<class_Label3D_property_alpha_cut>` 為 :ref:`ALPHA_CUT_DISABLED<class_Label3D_constant_ALPHA_CUT_DISABLED>`\ （預設值）時適用。

\ **注意：**\ 僅適用於透明物體的排序。這不會影響透明物體相對於不透明物體的排序方式。這是因為不透明物件不被排序，而透明物件則從後往前排序（取決於優先順序）。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_shaded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shaded** = ``false`` :ref:`🔗<class_Label3D_property_shaded>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

如果為 ``true``\ ，則 :ref:`Environment<class_Environment>` 中的 :ref:`Light3D<class_Light3D>` 會影響該標籤。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_Label3D_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

為結構化文字設定 BiDi 演算法覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_Label3D_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

設定 BiDi 覆蓋的附加選項。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_Label3D_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

要在螢幕上顯示的文字。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_text_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **text_direction** = ``0`` :ref:`🔗<class_Label3D_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_text_direction**\ (\ )

基礎文字書寫方向。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **texture_filter** = ``3`` :ref:`🔗<class_Label3D_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`\ )
- :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **get_texture_filter**\ (\ )

Filter flags for the texture.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_uppercase:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **uppercase** = ``false`` :ref:`🔗<class_Label3D_property_uppercase>`

.. rst-class:: classref-property-setget

- |void| **set_uppercase**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_uppercase**\ (\ )

如果為 ``true``\ ，所有文字都將顯示為大寫。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_vertical_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_alignment** = ``1`` :ref:`🔗<class_Label3D_property_vertical_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_alignment**\ (\ )

Controls the text's vertical alignment. Supports top, center, and bottom.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``500.0`` :ref:`🔗<class_Label3D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

文字寬度（單位為圖元），用於自動換行和填充對齊。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Label3D_method_generate_triangle_mesh:

.. rst-class:: classref-method

:ref:`TriangleMesh<class_TriangleMesh>` **generate_triangle_mesh**\ (\ ) |const| :ref:`🔗<class_Label3D_method_generate_triangle_mesh>`

返回使用該標籤的頂點組成的 :ref:`TriangleMesh<class_TriangleMesh>`\ ，遵循目前的配置（例如 :ref:`pixel_size<class_Label3D_property_pixel_size>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_method_get_draw_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const| :ref:`🔗<class_Label3D_method_get_draw_flag>`

返回指定旗標的值。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_method_set_draw_flag:

.. rst-class:: classref-method

|void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Label3D_method_set_draw_flag>`

If ``true``, the specified ``flag`` will be enabled.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
