:github_url: hide

.. _class_TextureProgressBar:

TextureProgressBar
==================

**继承：** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

基于纹理的进度条。适用于加载屏幕和生命或体力条。

.. rst-class:: classref-introduction-group

描述
----

TextureProgressBar 的工作方式类似于 :ref:`ProgressBar<class_ProgressBar>`\ ，但最多使用 3 个纹理，不使用 Godot 的 :ref:`Theme<class_Theme>` 资源。可用于创建水平、垂直和径向进度条。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>`                             | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`           | mouse_filter                                                                              | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`)        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>`           | ``false``                                                                    |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                          | :ref:`radial_center_offset<class_TextureProgressBar_property_radial_center_offset>`       | ``Vector2(0, 0)``                                                            |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`         | ``360.0``                                                                    |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>`       | ``0.0``                                                                      |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical                                                                       | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | step                                                                                      | ``1.0`` (overrides :ref:`Range<class_Range_property_step>`)                  |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>`     | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_left<class_TextureProgressBar_property_stretch_margin_left>`         | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_right<class_TextureProgressBar_property_stretch_margin_right>`       | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`stretch_margin_top<class_TextureProgressBar_property_stretch_margin_top>`           | ``0``                                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                      | :ref:`texture_over<class_TextureProgressBar_property_texture_over>`                       |                                                                              |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                      | :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`               |                                                                              |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                          | :ref:`texture_progress_offset<class_TextureProgressBar_property_texture_progress_offset>` | ``Vector2(0, 0)``                                                            |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                      | :ref:`texture_under<class_TextureProgressBar_property_texture_under>`                     |                                                                              |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                              | :ref:`tint_over<class_TextureProgressBar_property_tint_over>`                             | ``Color(1, 1, 1, 1)``                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                              | :ref:`tint_progress<class_TextureProgressBar_property_tint_progress>`                     | ``Color(1, 1, 1, 1)``                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                              | :ref:`tint_under<class_TextureProgressBar_property_tint_under>`                           | ``Color(1, 1, 1, 1)``                                                        |
   +--------------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_stretch_margin<class_TextureProgressBar_method_get_stretch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                        |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_stretch_margin<class_TextureProgressBar_method_set_stretch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_TextureProgressBar_FillMode:

.. rst-class:: classref-enumeration

enum **FillMode**: :ref:`🔗<enum_TextureProgressBar_FillMode>`

.. _class_TextureProgressBar_constant_FILL_LEFT_TO_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_LEFT_TO_RIGHT** = ``0``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 从左到右填充。

.. _class_TextureProgressBar_constant_FILL_RIGHT_TO_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_RIGHT_TO_LEFT** = ``1``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 从右到左填充。

.. _class_TextureProgressBar_constant_FILL_TOP_TO_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_TOP_TO_BOTTOM** = ``2``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 从上到下填充。

.. _class_TextureProgressBar_constant_FILL_BOTTOM_TO_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_BOTTOM_TO_TOP** = ``3``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 自下而上填充。

.. _class_TextureProgressBar_constant_FILL_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_CLOCKWISE** = ``4``

将节点变成径向条形。\ :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 顺时针填充。参阅\ :ref:`radial_center_offset<class_TextureProgressBar_property_radial_center_offset>`\ 、\ :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>`\ 和\ :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`\ 来控制条形填充的方式。

.. _class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_COUNTER_CLOCKWISE** = ``5``

将节点变成径向条形。\ :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`\ 逆时针填充。参阅\ :ref:`radial_center_offset<class_TextureProgressBar_property_radial_center_offset>`\ 、\ :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>`\ 和\ :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`\ 来控制条形填充的方式。

.. _class_TextureProgressBar_constant_FILL_BILINEAR_LEFT_AND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_BILINEAR_LEFT_AND_RIGHT** = ``6``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`\ 从中心开始填充，向左和向右扩展。

.. _class_TextureProgressBar_constant_FILL_BILINEAR_TOP_AND_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_BILINEAR_TOP_AND_BOTTOM** = ``7``

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`\ 从中心开始填充，同时向顶部和底部扩展。

.. _class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_TextureProgressBar_FillMode>` **FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE** = ``8``

将节点变成径向条形。\ :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`\ 从中心径向填充，顺时针和逆时针扩展。参阅\ :ref:`radial_center_offset<class_TextureProgressBar_property_radial_center_offset>`\ 、\ :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>`\ 和\ :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`\ 来控制条形填充的方式。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_TextureProgressBar_property_fill_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **fill_mode** = ``0`` :ref:`🔗<class_TextureProgressBar_property_fill_mode>`

.. rst-class:: classref-property-setget

- |void| **set_fill_mode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fill_mode**\ (\ )

填充方向。可能的取值见 :ref:`FillMode<enum_TextureProgressBar_FillMode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_nine_patch_stretch:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nine_patch_stretch** = ``false`` :ref:`🔗<class_TextureProgressBar_property_nine_patch_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_nine_patch_stretch**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_nine_patch_stretch**\ (\ )

如果为 ``true``\ ，Godot 会像在 :ref:`NinePatchRect<class_NinePatchRect>` 中那样处理进度条的纹理。请使用 :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>` 等 ``stretch_margin_*`` 属性来设置九宫格的 3×3 网格。当使用径向的 :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` 时，该设置将为 :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 启用拉伸，\ :ref:`texture_under<class_TextureProgressBar_property_texture_under>` 和 :ref:`texture_over<class_TextureProgressBar_property_texture_over>` 则进行类似于 :ref:`NinePatchRect<class_NinePatchRect>` 的处理。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_radial_center_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **radial_center_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_TextureProgressBar_property_radial_center_offset>`

.. rst-class:: classref-property-setget

- |void| **set_radial_center_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_radial_center_offset**\ (\ )

:ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` 为 :ref:`FILL_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE>`\ 、\ :ref:`FILL_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE>` 或 :ref:`FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE>` 时， :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 的偏移。

\ **注意：**\ 有效的径向中心始终保持在 :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 的范围内。如果需要将其移动到纹理的边界之外，请修改 :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>`\ ，让该纹理包含所需的额外空白空间。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_radial_fill_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_fill_degrees** = ``360.0`` :ref:`🔗<class_TextureProgressBar_property_radial_fill_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_fill_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fill_degrees**\ (\ )

:ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` 为 :ref:`FILL_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE>`\ 、\ :ref:`FILL_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE>` 或 :ref:`FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE>` 时， :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 的填充上限。当节点的 ``value`` 等于其 ``max_value`` 时，则纹理将会填充到这个角度。

见 :ref:`Range.value<class_Range_property_value>`\ 、\ :ref:`Range.max_value<class_Range_property_max_value>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_radial_initial_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **radial_initial_angle** = ``0.0`` :ref:`🔗<class_TextureProgressBar_property_radial_initial_angle>`

.. rst-class:: classref-property-setget

- |void| **set_radial_initial_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radial_initial_angle**\ (\ )

:ref:`fill_mode<class_TextureProgressBar_property_fill_mode>` 为 :ref:`FILL_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE>`\ 、\ :ref:`FILL_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_COUNTER_CLOCKWISE>` 或 :ref:`FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE<class_TextureProgressBar_constant_FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE>` 时，\ :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 填充的起始角度。当节点的 ``value`` 等于其 ``min_value`` 时，纹理根本不会显示出来。当 ``value`` 增加时，纹理填充并趋向于 :ref:`radial_fill_degrees<class_TextureProgressBar_property_radial_fill_degrees>`\ 。

\ **注意：**\ :ref:`radial_initial_angle<class_TextureProgressBar_property_radial_initial_angle>` 会在 ``0`` 到 ``360`` 度之间环绕（包含两端）。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_bottom** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

九宫格底部一行的高度。边距为 16 意味着九宫格的底角和侧面将有 16 像素的高度。你可以单独设置所有 4 个边距值，来创建边框不均一的面板。仅在 :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_left** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

九宫格左侧一列的宽度。仅在 :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_right** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

九宫格右侧一列的宽度。仅在 :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_stretch_margin_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **stretch_margin_top** = ``0`` :ref:`🔗<class_TextureProgressBar_property_stretch_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

九宫格顶部一行的高度。仅在 :ref:`nine_patch_stretch<class_TextureProgressBar_property_nine_patch_stretch>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_over:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_over** :ref:`🔗<class_TextureProgressBar_property_texture_over>`

.. rst-class:: classref-property-setget

- |void| **set_over_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_over_texture**\ (\ )

在进度条至上绘制的 :ref:`Texture2D<class_Texture2D>`\ 。可用于添加高光，也可用于添加遮挡部分 :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 的上层边框。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_progress:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_progress** :ref:`🔗<class_TextureProgressBar_property_texture_progress>`

.. rst-class:: classref-property-setget

- |void| **set_progress_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_progress_texture**\ (\ )

被裁剪的 :ref:`Texture2D<class_Texture2D>`\ 。裁剪基于该节点的 ``value`` 和 :ref:`fill_mode<class_TextureProgressBar_property_fill_mode>`\ 。随着 ``value`` 的增加，该纹理将被填满。当 ``value`` 达到 ``max_value`` 时，它将完整显示。如果 ``value`` 等于 ``min_value``\ ，则它根本不显示。

\ ``value`` 属性来自 :ref:`Range<class_Range>`\ 。参见 :ref:`Range.value<class_Range_property_value>`\ 、\ :ref:`Range.min_value<class_Range_property_min_value>`\ 、\ :ref:`Range.max_value<class_Range_property_max_value>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_progress_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **texture_progress_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_TextureProgressBar_property_texture_progress_offset>`

.. rst-class:: classref-property-setget

- |void| **set_texture_progress_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_texture_progress_offset**\ (\ )

:ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 的偏移量。对于带有花哨的边框的 :ref:`texture_over<class_TextureProgressBar_property_texture_over>` 和 :ref:`texture_under<class_TextureProgressBar_property_texture_under>` 很有用，可以避免进度纹理的边缘透明。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_texture_under:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_under** :ref:`🔗<class_TextureProgressBar_property_texture_under>`

.. rst-class:: classref-property-setget

- |void| **set_under_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_under_texture**\ (\ )

在进度条下绘制的 :ref:`Texture2D<class_Texture2D>`\ 。该进度条的背景。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_tint_over:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_over** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TextureProgressBar_property_tint_over>`

.. rst-class:: classref-property-setget

- |void| **set_tint_over**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_over**\ (\ )

将与该进度条的 :ref:`texture_over<class_TextureProgressBar_property_texture_over>` 纹理的颜色相乘。其效果类似于 :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>` ，只是它只影响这个特定的纹理，而不是整个节点。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_tint_progress:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_progress** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TextureProgressBar_property_tint_progress>`

.. rst-class:: classref-property-setget

- |void| **set_tint_progress**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_progress**\ (\ )

将与该进度条的 :ref:`texture_progress<class_TextureProgressBar_property_texture_progress>` 纹理的颜色相乘。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_property_tint_under:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **tint_under** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TextureProgressBar_property_tint_under>`

.. rst-class:: classref-property-setget

- |void| **set_tint_under**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_tint_under**\ (\ )

将与该进度条的 :ref:`texture_under<class_TextureProgressBar_property_texture_under>` 纹理的颜色相乘。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_TextureProgressBar_method_get_stretch_margin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_TextureProgressBar_method_get_stretch_margin>`

返回给定索引的拉伸边距。见 :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>` 及相关属性。

.. rst-class:: classref-item-separator

----

.. _class_TextureProgressBar_method_set_stretch_margin:

.. rst-class:: classref-method

|void| **set_stretch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TextureProgressBar_method_set_stretch_margin>`

设置给定索引的拉伸边距。见 :ref:`stretch_margin_bottom<class_TextureProgressBar_property_stretch_margin_bottom>` 及相关属性。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
