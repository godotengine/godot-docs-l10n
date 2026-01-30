:github_url: hide

.. meta::
	:keywords: text

.. _class_Label3D:

Label3D
=======

**继承：** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

用于在 3D 空间显示纯文本的节点。

.. rst-class:: classref-introduction-group

描述
----

用于在 3D 空间显示纯文本的节点。通过调整该节点的各种属性，可以配置文本外观、是否面朝相机等特性。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`3D 文本 <../tutorials/3d/3d_text>`

.. rst-class:: classref-reftable-group

属性
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

枚举
----

.. _enum_Label3D_DrawFlags:

.. rst-class:: classref-enumeration

enum **DrawFlags**: :ref:`🔗<enum_Label3D_DrawFlags>`

.. _class_Label3D_constant_FLAG_SHADED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_SHADED** = ``0``

如果打开，环境中的灯光会影响该标签。

.. _class_Label3D_constant_FLAG_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_DOUBLE_SIDED** = ``1``

如果打开，从后面也可以看到文本。如果不打开，从后面看该文本是不可见的。

.. _class_Label3D_constant_FLAG_DISABLE_DEPTH_TEST:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_DISABLE_DEPTH_TEST** = ``2``

禁用深度测试，所以这个对象被画在所有其他对象的上面。但是，在绘制顺序中，在它之后绘制的对象可能会覆盖它。

.. _class_Label3D_constant_FLAG_FIXED_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_FIXED_SIZE** = ``3``

标签会根据深度进行缩放，从而在屏幕上始终以相同的大小显示。

.. _class_Label3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_MAX** = ``4``

代表 :ref:`DrawFlags<enum_Label3D_DrawFlags>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_Label3D_AlphaCutMode:

.. rst-class:: classref-enumeration

enum **AlphaCutMode**: :ref:`🔗<enum_Label3D_AlphaCutMode>`

.. _class_Label3D_constant_ALPHA_CUT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_DISABLED** = ``0``

该模式会执行标准的 Alpha 混合。它可以显示半透明区域，但当多个透明材质重叠时，可能会出现透明度排序问题。\ :ref:`GeometryInstance3D.cast_shadow<class_GeometryInstance3D_property_cast_shadow>` 在使用该透明模式时无效；\ **Label3D** 永远不会投射阴影。

.. _class_Label3D_constant_ALPHA_CUT_DISCARD:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_DISCARD** = ``1``

该模式仅允许完全透明或完全不透明的像素。除非启用了某种形式的屏幕空间抗锯齿（见 :ref:`ProjectSettings.rendering/anti_aliasing/quality/screen_space_aa<class_ProjectSettings_property_rendering/anti_aliasing/quality/screen_space_aa>`\ ），否则会看到粗糙的边缘。该模式也被称为 *Alpha 测试* 或 *1 位透明度*\ 。

\ **注意：**\ 该模式可能会出现抗锯齿字体和轮廓问题，请尝试调整 :ref:`alpha_scissor_threshold<class_Label3D_property_alpha_scissor_threshold>` 或使用 MSDF 字体。

\ **注意：**\ 当使用具有重叠字形的文本（例如草书）时，该模式可能会在正文和轮廓之间，出现透明度排序问题。

.. _class_Label3D_constant_ALPHA_CUT_OPAQUE_PREPASS:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_OPAQUE_PREPASS** = ``2``

这个模式会在深度预处理时绘制完全不透明的像素。比 :ref:`ALPHA_CUT_DISABLED<class_Label3D_constant_ALPHA_CUT_DISABLED>` 或 :ref:`ALPHA_CUT_DISCARD<class_Label3D_constant_ALPHA_CUT_DISCARD>` 要慢，但能够对半透明区域和平滑边缘进行正确的排序。

\ **注意：**\ 文本中存在重叠的字形时（例如手写体），这个模式可能会造成主文本和轮廓的透明度排序问题。

.. _class_Label3D_constant_ALPHA_CUT_HASH:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_HASH** = ``3``

该模式绘制时会截断所有低于空间确定性阈值的值，其余值将保持不透明。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Label3D_property_alpha_antialiasing_edge:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_antialiasing_edge** = ``0.0`` :ref:`🔗<class_Label3D_property_alpha_antialiasing_edge>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing_edge**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_antialiasing_edge**\ (\ )

将在 Alpha 通道上应用抗锯齿的阈值。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_antialiasing_mode:

.. rst-class:: classref-property

:ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **alpha_antialiasing_mode** = ``0`` :ref:`🔗<class_Label3D_property_alpha_antialiasing_mode>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing**\ (\ value\: :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>`\ )
- :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **get_alpha_antialiasing**\ (\ )

要应用的 Alpha 抗锯齿类型。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_cut:

.. rst-class:: classref-property

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **alpha_cut** = ``0`` :ref:`🔗<class_Label3D_property_alpha_cut>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_cut_mode**\ (\ value\: :ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>`\ )
- :ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **get_alpha_cut_mode**\ (\ )

精灵所使用的 Alpha 剪切模式。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_hash_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_hash_scale** = ``1.0`` :ref:`🔗<class_Label3D_property_alpha_hash_scale>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_hash_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_hash_scale**\ (\ )

Alpha Hash 的哈希比例。推荐 ``0`` 和 ``2`` 之间的值。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_scissor_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_scissor_threshold** = ``0.5`` :ref:`🔗<class_Label3D_property_alpha_scissor_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_scissor_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_scissor_threshold**\ (\ )

Alpha 裁剪丢弃数值的阈值。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_Label3D_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

如果设置为 :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>` 以外的值，则文本将在节点的边界矩形内自动换行。如果你调整节点大小，就会自动更改其高度，从而显示所有文本。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_autowrap_trim_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **autowrap_trim_flags** = ``192`` :ref:`🔗<class_Label3D_property_autowrap_trim_flags>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_trim_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_autowrap_trim_flags**\ (\ )

自动换行空格修剪标志。详见 :ref:`TextServer.BREAK_TRIM_START_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_START_EDGE_SPACES>` 和 :ref:`TextServer.BREAK_TRIM_END_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_END_EDGE_SPACES>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_billboard:

.. rst-class:: classref-property

:ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **billboard** = ``0`` :ref:`🔗<class_Label3D_property_billboard>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_mode**\ (\ value\: :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`\ )
- :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **get_billboard_mode**\ (\ )

标签使用的公告板模式。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_double_sided:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_sided** = ``true`` :ref:`🔗<class_Label3D_property_double_sided>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

如果为 ``true``\ ，则从后面也可以看到文本，如果为 ``false``\ ，则从后面看它是不可见的。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_fixed_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fixed_size** = ``false`` :ref:`🔗<class_Label3D_property_fixed_size>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

如果为 ``true``\ ，则标签始终以相同的大小渲染，忽略距离。标签在屏幕上的大小与相机距离标签原点 ``1.0`` 单位时相同，忽略与相机的实际距离。\ :ref:`Camera3D<class_Camera3D>` 的视野（使用正交/视锥模式时则为 :ref:`Camera3D.size<class_Camera3D_property_size>`\ ）仍然会影响标签绘制的大小。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **font** :ref:`🔗<class_Label3D_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_font**\ (\ )

用于显示文本的字体配置。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_size** = ``32`` :ref:`🔗<class_Label3D_property_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_size**\ (\ )

**Label3D** 文本的字体大小。为了让字体在近距离时看起来更细腻，可增加 :ref:`font_size<class_Label3D_property_font_size>`\ ，同时减小 :ref:`pixel_size<class_Label3D_property_pixel_size>`\ 。

较大的字体大小需要更多时间来渲染新字符，这可能会导致在游戏过程中卡顿。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_horizontal_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **horizontal_alignment** = ``1`` :ref:`🔗<class_Label3D_property_horizontal_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

控制文本的水平对齐方式。支持左对齐、居中对齐、右对齐、填充（即两端对齐）。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_Label3D_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

行填充对齐规则。

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

行与行之间的额外纵向留白（单位为像素），留白会被添加到行的降部。该值可以为负数。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Label3D_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

该 **Label3D** 的文本颜色 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_no_depth_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **no_depth_test** = ``false`` :ref:`🔗<class_Label3D_property_no_depth_test>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

如果为 ``true``\ ，深度测试被禁用，对象将按渲染顺序绘制。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Label3D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

文本绘制偏移（单位为像素）。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_outline_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **outline_modulate** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Label3D_property_outline_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_outline_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_outline_modulate**\ (\ )

文本轮廓的色调。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_outline_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **outline_render_priority** = ``-1`` :ref:`🔗<class_Label3D_property_outline_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_outline_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outline_render_priority**\ (\ )

设置文本轮廓的渲染优先级。优先级高的物体将被排序在优先级低的物体前面。

\ **注意：**\ 仅在 :ref:`alpha_cut<class_Label3D_property_alpha_cut>` 为 :ref:`ALPHA_CUT_DISABLED<class_Label3D_constant_ALPHA_CUT_DISABLED>`\ （默认值）时适用。

\ **注意：**\ 仅适用于透明物体的排序。这不会影响透明物体相对于不透明物体的排序方式。这是因为不透明对象不被排序，而透明对象则从后往前排序（取决于优先级）。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_outline_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outline_size** = ``12`` :ref:`🔗<class_Label3D_property_outline_size>`

.. rst-class:: classref-property-setget

- |void| **set_outline_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outline_size**\ (\ )

文本轮廓大小。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_pixel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **pixel_size** = ``0.005`` :ref:`🔗<class_Label3D_property_pixel_size>`

.. rst-class:: classref-property-setget

- |void| **set_pixel_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pixel_size**\ (\ )

标签中一个像素宽度对应缩放至的 3D 大小。要让字体在较近距离时也能够看到细节，请在减小 :ref:`pixel_size<class_Label3D_property_pixel_size>` 的同时增大 :ref:`font_size<class_Label3D_property_font_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** = ``0`` :ref:`🔗<class_Label3D_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

设置文本的渲染优先级。优先级高的物体将被排序在优先级低的物体前面。

\ **注意：**\ 仅在 :ref:`alpha_cut<class_Label3D_property_alpha_cut>` 为 :ref:`ALPHA_CUT_DISABLED<class_Label3D_constant_ALPHA_CUT_DISABLED>`\ （默认值）时适用。

\ **注意：**\ 仅适用于透明物体的排序。这不会影响透明物体相对于不透明物体的排序方式。这是因为不透明对象不被排序，而透明对象则从后往前排序（取决于优先级）。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_shaded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shaded** = ``false`` :ref:`🔗<class_Label3D_property_shaded>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

如果为 ``true``\ ，则 :ref:`Environment<class_Environment>` 中的 :ref:`Light3D<class_Light3D>` 会影响该标签。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_Label3D_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

为结构化文本设置 BiDi 算法覆盖。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_Label3D_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

设置 BiDi 覆盖的附加选项。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_Label3D_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

要在屏幕上显示的文本。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_text_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **text_direction** = ``0`` :ref:`🔗<class_Label3D_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_text_direction**\ (\ )

基础文本书写方向。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **texture_filter** = ``3`` :ref:`🔗<class_Label3D_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`\ )
- :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **get_texture_filter**\ (\ )

纹理的过滤标志。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_uppercase:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **uppercase** = ``false`` :ref:`🔗<class_Label3D_property_uppercase>`

.. rst-class:: classref-property-setget

- |void| **set_uppercase**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_uppercase**\ (\ )

如果为 ``true``\ ，所有文本都将显示为大写。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_vertical_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_alignment** = ``1`` :ref:`🔗<class_Label3D_property_vertical_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_alignment**\ (\ )

控制文本的垂直对齐方式。支持顶部对齐、居中对齐、底部对齐。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``500.0`` :ref:`🔗<class_Label3D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

文本宽度（单位为像素），用于自动换行和填充对齐。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Label3D_method_generate_triangle_mesh:

.. rst-class:: classref-method

:ref:`TriangleMesh<class_TriangleMesh>` **generate_triangle_mesh**\ (\ ) |const| :ref:`🔗<class_Label3D_method_generate_triangle_mesh>`

返回使用该标签的顶点组成的 :ref:`TriangleMesh<class_TriangleMesh>`\ ，遵循当前的配置（例如 :ref:`pixel_size<class_Label3D_property_pixel_size>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_method_get_draw_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const| :ref:`🔗<class_Label3D_method_get_draw_flag>`

返回指定标志的值。

.. rst-class:: classref-item-separator

----

.. _class_Label3D_method_set_draw_flag:

.. rst-class:: classref-method

|void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Label3D_method_set_draw_flag>`

如果为 ``true``\ ，则启用 ``flag`` 指定的标志。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
