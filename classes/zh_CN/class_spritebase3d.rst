:github_url: hide

.. _class_SpriteBase3D:

SpriteBase3D
============

**继承：** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`AnimatedSprite3D<class_AnimatedSprite3D>`, :ref:`Sprite3D<class_Sprite3D>`

3D 环境中的 2D 精灵节点。

.. rst-class:: classref-introduction-group

描述
----

在 3D 环境中显示 2D 纹理信息的节点。另见 :ref:`Sprite3D<class_Sprite3D>`\ ，其中定义了许多其他属性。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_antialiasing_edge<class_SpriteBase3D_property_alpha_antialiasing_edge>` | ``0.0``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` | :ref:`alpha_antialiasing_mode<class_SpriteBase3D_property_alpha_antialiasing_mode>` | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>`             | :ref:`alpha_cut<class_SpriteBase3D_property_alpha_cut>`                             | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_hash_scale<class_SpriteBase3D_property_alpha_hash_scale>`               | ``1.0``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_scissor_threshold<class_SpriteBase3D_property_alpha_scissor_threshold>` | ``0.5``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                                  | :ref:`axis<class_SpriteBase3D_property_axis>`                                       | ``2``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`         | :ref:`billboard<class_SpriteBase3D_property_billboard>`                             | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`centered<class_SpriteBase3D_property_centered>`                               | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`double_sided<class_SpriteBase3D_property_double_sided>`                       | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`fixed_size<class_SpriteBase3D_property_fixed_size>`                           | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`flip_h<class_SpriteBase3D_property_flip_h>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`flip_v<class_SpriteBase3D_property_flip_v>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                       | :ref:`modulate<class_SpriteBase3D_property_modulate>`                               | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`no_depth_test<class_SpriteBase3D_property_no_depth_test>`                     | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                                   | :ref:`offset<class_SpriteBase3D_property_offset>`                                   | ``Vector2(0, 0)``     |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`pixel_size<class_SpriteBase3D_property_pixel_size>`                           | ``0.01``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                           | :ref:`render_priority<class_SpriteBase3D_property_render_priority>`                 | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`shaded<class_SpriteBase3D_property_shaded>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`         | :ref:`texture_filter<class_SpriteBase3D_property_texture_filter>`                   | ``3``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`transparent<class_SpriteBase3D_property_transparent>`                         | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TriangleMesh<class_TriangleMesh>` | :ref:`generate_triangle_mesh<class_SpriteBase3D_method_generate_triangle_mesh>`\ (\ ) |const|                                                                |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                 | :ref:`get_draw_flag<class_SpriteBase3D_method_get_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|                            |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`               | :ref:`get_item_rect<class_SpriteBase3D_method_get_item_rect>`\ (\ ) |const|                                                                                  |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_draw_flag<class_SpriteBase3D_method_set_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_SpriteBase3D_DrawFlags:

.. rst-class:: classref-enumeration

enum **DrawFlags**: :ref:`🔗<enum_SpriteBase3D_DrawFlags>`

.. _class_SpriteBase3D_constant_FLAG_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_TRANSPARENT** = ``0``

如果设置，纹理的透明度和不透明性用于使精灵的这些部分不可见。

.. _class_SpriteBase3D_constant_FLAG_SHADED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_SHADED** = ``1``

如果设置，环境中的灯光会影响精灵。

.. _class_SpriteBase3D_constant_FLAG_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_DOUBLE_SIDED** = ``2``

如果启用，则纹理也可以从背面看到。如果未启用，则纹理从后面查看时不可见。

.. _class_SpriteBase3D_constant_FLAG_DISABLE_DEPTH_TEST:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_DISABLE_DEPTH_TEST** = ``3``

禁用深度测试，所以这个对象被画在所有其他对象的上面。但是，在绘制顺序中，在它之后绘制的对象可能会覆盖它。

.. _class_SpriteBase3D_constant_FLAG_FIXED_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_FIXED_SIZE** = ``4``

标签会根据深度进行缩放，从而在屏幕上始终以相同的大小显示。

.. _class_SpriteBase3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_MAX** = ``5``

代表 :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_SpriteBase3D_AlphaCutMode:

.. rst-class:: classref-enumeration

enum **AlphaCutMode**: :ref:`🔗<enum_SpriteBase3D_AlphaCutMode>`

.. _class_SpriteBase3D_constant_ALPHA_CUT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_DISABLED** = ``0``

这个模式会进行标准的 Alpha 混合。可以显示半透明区域，但透明材质存在重叠时可能会暴露透明度排序问题。

.. _class_SpriteBase3D_constant_ALPHA_CUT_DISCARD:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_DISCARD** = ``1``

该模式仅允许完全透明或完全不透明的像素。除非启用了某种形式的屏幕空间抗锯齿（请参阅 :ref:`ProjectSettings.rendering/anti_aliasing/quality/screen_space_aa<class_ProjectSettings_property_rendering/anti_aliasing/quality/screen_space_aa>`\ ），否则会看到粗糙的边缘。从好的方面来说，当多个透明材质重叠时，该模式不会出现透明度排序问题。这种模式也被称为 *alpha 测试*\ 或 *1 位透明度*\ 。

.. _class_SpriteBase3D_constant_ALPHA_CUT_OPAQUE_PREPASS:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_OPAQUE_PREPASS** = ``2``

该模式在深度预渲染阶段绘制完全不透明的像素。这比 :ref:`ALPHA_CUT_DISABLED<class_SpriteBase3D_constant_ALPHA_CUT_DISABLED>` 或 :ref:`ALPHA_CUT_DISCARD<class_SpriteBase3D_constant_ALPHA_CUT_DISCARD>` 慢，但它允许在使用正确排序的同时显示半透明区域和平滑边缘。

.. _class_SpriteBase3D_constant_ALPHA_CUT_HASH:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_HASH** = ``3``

该模式绘制时会截断所有低于空间确定性阈值的值，其余值将保持不透明。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SpriteBase3D_property_alpha_antialiasing_edge:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_antialiasing_edge** = ``0.0`` :ref:`🔗<class_SpriteBase3D_property_alpha_antialiasing_edge>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing_edge**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_antialiasing_edge**\ (\ )

将在 Alpha 通道上应用抗锯齿的阈值。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_antialiasing_mode:

.. rst-class:: classref-property

:ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **alpha_antialiasing_mode** = ``0`` :ref:`🔗<class_SpriteBase3D_property_alpha_antialiasing_mode>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing**\ (\ value\: :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>`\ )
- :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **get_alpha_antialiasing**\ (\ )

要应用的 Alpha 抗锯齿类型。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_cut:

.. rst-class:: classref-property

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **alpha_cut** = ``0`` :ref:`🔗<class_SpriteBase3D_property_alpha_cut>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_cut_mode**\ (\ value\: :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>`\ )
- :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **get_alpha_cut_mode**\ (\ )

精灵所使用的 Alpha 剪切模式。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_hash_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_hash_scale** = ``1.0`` :ref:`🔗<class_SpriteBase3D_property_alpha_hash_scale>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_hash_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_hash_scale**\ (\ )

Alpha Hash 的哈希比例。推荐 ``0`` 和 ``2`` 之间的值。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_scissor_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_scissor_threshold** = ``0.5`` :ref:`🔗<class_SpriteBase3D_property_alpha_scissor_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_scissor_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_scissor_threshold**\ (\ )

Alpha 裁剪丢弃数值的阈值。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_axis:

.. rst-class:: classref-property

:ref:`Axis<enum_Vector3_Axis>` **axis** = ``2`` :ref:`🔗<class_SpriteBase3D_property_axis>`

.. rst-class:: classref-property-setget

- |void| **set_axis**\ (\ value\: :ref:`Axis<enum_Vector3_Axis>`\ )
- :ref:`Axis<enum_Vector3_Axis>` **get_axis**\ (\ )

纹理正面朝向的方向。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_billboard:

.. rst-class:: classref-property

:ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **billboard** = ``0`` :ref:`🔗<class_SpriteBase3D_property_billboard>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_mode**\ (\ value\: :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`\ )
- :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **get_billboard_mode**\ (\ )

精灵的公告板模式。

\ **注意：**\ 如果启用了公告板并且材质能够投射阴影，那么渲染阴影时公告板面向的是\ **场景中**\ 的相机。如果场景中存在多个相机，则无法确定阴影，会导致未定义的行为。详见 `GitHub Pull Request #72638 <https://github.com/godotengine/godot/pull/72638>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_SpriteBase3D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

如果为 ``true``\ ，纹理将被居中。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_double_sided:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_sided** = ``true`` :ref:`🔗<class_SpriteBase3D_property_double_sided>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

如果为 ``true``\ ，则从后面也可以看到纹理，如果为 ``false``\ ，则从后面看它是不可见的。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_fixed_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fixed_size** = ``false`` :ref:`🔗<class_SpriteBase3D_property_fixed_size>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

如果为 ``true``\ ，则纹理始终以相同的大小渲染，忽略距离。纹理在屏幕上的大小与相机距离纹理原点 ``1.0`` 单位时相同，忽略与相机的实际距离。\ :ref:`Camera3D<class_Camera3D>` 的视野（使用正交/视锥模式时则为 :ref:`Camera3D.size<class_Camera3D_property_size>`\ ）仍然会影响精灵绘制的大小。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_SpriteBase3D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

如果为 ``true``\ ，纹理将被水平翻转。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_SpriteBase3D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

如果为 ``true``\ ，纹理将被垂直翻转。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_SpriteBase3D_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

用于\ *乘以*\ 纹理颜色的颜色值。可用于氛围着色或模拟环境光的颜色。

\ **注意：**\ 与 2D 的 :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>` 不同，不支持大于 ``1.0`` 的颜色值（过亮）。

\ **注意：**\ 如果在 **SpriteBase3D** 上定义了 :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>`\ ，则必须配置该材质，让它的反照率考虑顶点颜色。否则 :ref:`modulate<class_SpriteBase3D_property_modulate>` 中定义的颜色将被忽略。对于 :ref:`BaseMaterial3D<class_BaseMaterial3D>`\ ，\ :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` 必须为 ``true``\ 。对于 :ref:`ShaderMaterial<class_ShaderMaterial>`\ ，必须将 ``ALBEDO *= COLOR.rgb;``\ ，插入到着色器的 ``fragment()`` 函数中。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_no_depth_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **no_depth_test** = ``false`` :ref:`🔗<class_SpriteBase3D_property_no_depth_test>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

如果为 ``true``\ ，深度测试被禁用，对象将按渲染顺序绘制。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_SpriteBase3D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

纹理绘制偏移。

\ **注意：**\ 在 Sprite3D 中增大 :ref:`offset<class_SpriteBase3D_property_offset>`.y 会让精灵在世界中向上移动（即 +Y 朝上）。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_pixel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **pixel_size** = ``0.01`` :ref:`🔗<class_SpriteBase3D_property_pixel_size>`

.. rst-class:: classref-property-setget

- |void| **set_pixel_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pixel_size**\ (\ )

精灵上一个像素宽度的大小，以 3D 缩放。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** = ``0`` :ref:`🔗<class_SpriteBase3D_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

设置该精灵的渲染优先级。优先级高的物体将被排序在优先级低的物体前面。

\ **注意：**\ 仅在 :ref:`alpha_cut<class_SpriteBase3D_property_alpha_cut>` 为 :ref:`ALPHA_CUT_DISABLED<class_SpriteBase3D_constant_ALPHA_CUT_DISABLED>`\ （默认值）时适用。

\ **注意：**\ 仅适用于透明物体的排序。这不会影响透明物体相对于不透明物体的排序方式。这是因为不透明对象不被排序，而透明对象则从后往前排序（取决于优先级）。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_shaded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shaded** = ``false`` :ref:`🔗<class_SpriteBase3D_property_shaded>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

如果为 ``true``\ ，则 :ref:`Environment<class_Environment>` 中的 :ref:`Light3D<class_Light3D>` 对该精灵有影响。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **texture_filter** = ``3`` :ref:`🔗<class_SpriteBase3D_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`\ )
- :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **get_texture_filter**\ (\ )

纹理过滤标志。

\ **注意：**\ 线性过滤可能导致边缘的显示问题，对不透明纹理尤为明显。要避免这个问题，请使用具有透明边缘或边缘颜色一致的纹理。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_transparent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transparent** = ``true`` :ref:`🔗<class_SpriteBase3D_property_transparent>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

如果为 ``true``\ ，纹理的透明度和不透明度用于使精灵的这些部分不可见。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SpriteBase3D_method_generate_triangle_mesh:

.. rst-class:: classref-method

:ref:`TriangleMesh<class_TriangleMesh>` **generate_triangle_mesh**\ (\ ) |const| :ref:`🔗<class_SpriteBase3D_method_generate_triangle_mesh>`

返回一个 :ref:`TriangleMesh<class_TriangleMesh>`\ ，其中精灵的顶点遵循它的当前配置（例如它的 :ref:`axis<class_SpriteBase3D_property_axis>` 和 :ref:`pixel_size<class_SpriteBase3D_property_pixel_size>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_get_draw_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const| :ref:`🔗<class_SpriteBase3D_method_get_draw_flag>`

返回指定标志的值。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_get_item_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_item_rect**\ (\ ) |const| :ref:`🔗<class_SpriteBase3D_method_get_item_rect>`

返回表示此精灵的矩形。

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_set_draw_flag:

.. rst-class:: classref-method

|void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SpriteBase3D_method_set_draw_flag>`

如果为 ``true``\ ，则将启用指定的标志。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
