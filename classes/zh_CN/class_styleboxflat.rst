:github_url: hide

.. _class_StyleBoxFlat:

StyleBoxFlat
============

**继承：** :ref:`StyleBox<class_StyleBox>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

不使用纹理的自定义 :ref:`StyleBox<class_StyleBox>`\ 。

.. rst-class:: classref-introduction-group

描述
----

通过配置这个样式盒的各种属性，你可以不使用纹理实现许多常见外观，包括可选的圆角边框、抗锯齿、阴影、偏斜等。

允许将圆角半径设置为较高的值。两角重叠时，样式盒将切换到相对系统：

.. code:: text

    height = 30
    corner_radius_top_left = 50
    corner_radius_bottom_left = 100

相对系统现在将采用两个左角的 1:2 比率来计算实际角宽度。添加的两个角\ **永远**\ 不会超过高度。结果：

.. code:: text

    corner_radius_top_left: 10
    corner_radius_bottom_left: 20

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`       | :ref:`anti_aliasing<class_StyleBoxFlat_property_anti_aliasing>`                           | ``true``                    |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`anti_aliasing_size<class_StyleBoxFlat_property_anti_aliasing_size>`                 | ``1.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Color<class_Color>`     | :ref:`bg_color<class_StyleBoxFlat_property_bg_color>`                                     | ``Color(0.6, 0.6, 0.6, 1)`` |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`       | :ref:`border_blend<class_StyleBoxFlat_property_border_blend>`                             | ``false``                   |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Color<class_Color>`     | :ref:`border_color<class_StyleBoxFlat_property_border_color>`                             | ``Color(0.8, 0.8, 0.8, 1)`` |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_bottom<class_StyleBoxFlat_property_border_width_bottom>`               | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_left<class_StyleBoxFlat_property_border_width_left>`                   | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_right<class_StyleBoxFlat_property_border_width_right>`                 | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`border_width_top<class_StyleBoxFlat_property_border_width_top>`                     | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_detail<class_StyleBoxFlat_property_corner_detail>`                           | ``8``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_bottom_left<class_StyleBoxFlat_property_corner_radius_bottom_left>`   | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_bottom_right<class_StyleBoxFlat_property_corner_radius_bottom_right>` | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_top_left<class_StyleBoxFlat_property_corner_radius_top_left>`         | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`corner_radius_top_right<class_StyleBoxFlat_property_corner_radius_top_right>`       | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`       | :ref:`draw_center<class_StyleBoxFlat_property_draw_center>`                               | ``true``                    |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_bottom<class_StyleBoxFlat_property_expand_margin_bottom>`             | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_left<class_StyleBoxFlat_property_expand_margin_left>`                 | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_right<class_StyleBoxFlat_property_expand_margin_right>`               | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`float<class_float>`     | :ref:`expand_margin_top<class_StyleBoxFlat_property_expand_margin_top>`                   | ``0.0``                     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Color<class_Color>`     | :ref:`shadow_color<class_StyleBoxFlat_property_shadow_color>`                             | ``Color(0, 0, 0, 0.6)``     |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`shadow_offset<class_StyleBoxFlat_property_shadow_offset>`                           | ``Vector2(0, 0)``           |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`int<class_int>`         | :ref:`shadow_size<class_StyleBoxFlat_property_shadow_size>`                               | ``0``                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`skew<class_StyleBoxFlat_property_skew>`                                             | ``Vector2(0, 0)``           |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_border_width<class_StyleBoxFlat_method_get_border_width>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                               |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_border_width_min<class_StyleBoxFlat_method_get_border_width_min>`\ (\ ) |const|                                                                     |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_corner_radius<class_StyleBoxFlat_method_get_corner_radius>`\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_expand_margin<class_StyleBoxFlat_method_get_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                             |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_border_width<class_StyleBoxFlat_method_set_border_width>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )        |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_border_width_all<class_StyleBoxFlat_method_set_border_width_all>`\ (\ width\: :ref:`int<class_int>`\ )                                              |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_corner_radius<class_StyleBoxFlat_method_set_corner_radius>`\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_corner_radius_all<class_StyleBoxFlat_method_set_corner_radius_all>`\ (\ radius\: :ref:`int<class_int>`\ )                                           |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin<class_StyleBoxFlat_method_set_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )   |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin_all<class_StyleBoxFlat_method_set_expand_margin_all>`\ (\ size\: :ref:`float<class_float>`\ )                                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_StyleBoxFlat_property_anti_aliasing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **anti_aliasing** = ``true`` :ref:`🔗<class_StyleBoxFlat_property_anti_aliasing>`

.. rst-class:: classref-property-setget

- |void| **set_anti_aliased**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_anti_aliased**\ (\ )

抗锯齿会在边缘周围绘制一个渐变到透明的小环。因此边缘看起来会更加平滑。这仅在使用圆角或 :ref:`skew<class_StyleBoxFlat_property_skew>` 时才明显。

\ **注意：**\ 使用 45 度倒角（\ :ref:`corner_detail<class_StyleBoxFlat_property_corner_detail>` = 1）时，建议将 :ref:`anti_aliasing<class_StyleBoxFlat_property_anti_aliasing>` 设为 ``false``\ ，这样可以保证画面锐利、避免一些显示问题。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_anti_aliasing_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **anti_aliasing_size** = ``1.0`` :ref:`🔗<class_StyleBoxFlat_property_anti_aliasing_size>`

.. rst-class:: classref-property-setget

- |void| **set_aa_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_aa_size**\ (\ )

修改抗锯齿效果的大小。要在 100% 缩放时达到最佳效果推荐使用 ``1.0``\ ，和网页浏览器以及大多数矢量图绘制软件中圆角矩阵的绘制方式是一致的。

\ **注意：**\ 较高的值可能产生模糊效果，但框本身较小、圆角半径较大的情况下也可能产生不理想的显示问题。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_bg_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **bg_color** = ``Color(0.6, 0.6, 0.6, 1)`` :ref:`🔗<class_StyleBoxFlat_property_bg_color>`

.. rst-class:: classref-property-setget

- |void| **set_bg_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_bg_color**\ (\ )

StyleBox的背景颜色。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_blend:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **border_blend** = ``false`` :ref:`🔗<class_StyleBoxFlat_property_border_blend>`

.. rst-class:: classref-property-setget

- |void| **set_border_blend**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_border_blend**\ (\ )

如果为 ``true``\ ，边框会淡入背景色。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **border_color** = ``Color(0.8, 0.8, 0.8, 1)`` :ref:`🔗<class_StyleBoxFlat_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_border_color**\ (\ )

设置边框的颜色。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_bottom** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

底边框的宽度。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_left** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_left>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

左边框的宽度。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_right** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_right>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

右边框的宽度。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_border_width_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **border_width_top** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_border_width_top>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

顶边框的宽度。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_detail:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_detail** = ``8`` :ref:`🔗<class_StyleBoxFlat_property_corner_detail>`

.. rst-class:: classref-property-setget

- |void| **set_corner_detail**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_detail**\ (\ )

设置用于每个角的顶点数。更高的值生成更圆的角，但需要更多的处理计算。选择值时，应考虑角半径（\ :ref:`set_corner_radius_all()<class_StyleBoxFlat_method_set_corner_radius_all>`\ ）。

对于小于 10 的角半径，\ ``4`` 或 ``5`` 应该就足够。对于小于 30 的角半径，\ ``8`` 和 ``12`` 之间的值应该足够。

\ ``1``\ 的角细节会导致倒角而不是圆角，这对于某些艺术效果很有用。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_bottom_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_bottom_left** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_bottom_left>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

左下角的半径。如果为 ``0``\ ，则该角不圆滑。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_bottom_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_bottom_right** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_bottom_right>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

右下角的半径。如果为 ``0``\ ，则该角不圆滑。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_top_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_top_left** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_top_left>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

左上角的半径。如果为 ``0``\ ，则该角不圆滑。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_corner_radius_top_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **corner_radius_top_right** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_corner_radius_top_right>`

.. rst-class:: classref-property-setget

- |void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const|

右上角的半径。如果为 ``0``\ ，则该角不圆滑。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_draw_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_center** = ``true`` :ref:`🔗<class_StyleBoxFlat_property_draw_center>`

.. rst-class:: classref-property-setget

- |void| **set_draw_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_center_enabled**\ (\ )

切换绘制 StyleBox 的内部部分。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_bottom** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

将该样式盒扩展到该控件矩形的底边。可以与 :ref:`border_width_bottom<class_StyleBoxFlat_property_border_width_bottom>` 组合，在该控件矩形之外绘制边框。

\ **注意：**\ 与 :ref:`StyleBox.content_margin_bottom<class_StyleBox_property_content_margin_bottom>` 不同，\ :ref:`expand_margin_bottom<class_StyleBoxFlat_property_expand_margin_bottom>` *并不会*\ 影响 :ref:`Control<class_Control>` 的可点击区域。错误使用时会对可用性造成负面影响，因为用户可能会点击该 StyleBox 上实际无法接受点击的区域。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_left** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

将该样式盒扩展到该控件矩形的左边。可以与 :ref:`border_width_left<class_StyleBoxFlat_property_border_width_left>` 组合，在该控件矩形之外绘制边框。

\ **注意：**\ 与 :ref:`StyleBox.content_margin_left<class_StyleBox_property_content_margin_left>` 不同，\ :ref:`expand_margin_left<class_StyleBoxFlat_property_expand_margin_left>` *并不会*\ 影响 :ref:`Control<class_Control>` 的可点击区域。错误使用时会对可用性造成负面影响，因为用户可能会点击该 StyleBox 上实际无法接受点击的区域。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_right** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

将该样式盒扩展到该控件矩形的右边。可以与 :ref:`border_width_right<class_StyleBoxFlat_property_border_width_right>` 组合，在该控件矩形之外绘制边框。

\ **注意：**\ 与 :ref:`StyleBox.content_margin_right<class_StyleBox_property_content_margin_right>` 不同，\ :ref:`expand_margin_right<class_StyleBoxFlat_property_expand_margin_right>` *并不会*\ 影响 :ref:`Control<class_Control>` 的可点击区域。错误使用时会对可用性造成负面影响，因为用户可能会点击该 StyleBox 上实际无法接受点击的区域。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_expand_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_top** = ``0.0`` :ref:`🔗<class_StyleBoxFlat_property_expand_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

将该样式盒扩展到该控件矩形的顶边。可以与 :ref:`border_width_top<class_StyleBoxFlat_property_border_width_top>` 组合，在该控件矩形之外绘制边框。

\ **注意：**\ 与 :ref:`StyleBox.content_margin_top<class_StyleBox_property_content_margin_top>` 不同，\ :ref:`expand_margin_top<class_StyleBoxFlat_property_expand_margin_top>` *并不会*\ 影响 :ref:`Control<class_Control>` 的可点击区域。错误使用时会对可用性造成负面影响，因为用户可能会点击该 StyleBox 上实际无法接受点击的区域。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_shadow_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **shadow_color** = ``Color(0, 0, 0, 0.6)`` :ref:`🔗<class_StyleBoxFlat_property_shadow_color>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_shadow_color**\ (\ )

阴影的颜色。如果 :ref:`shadow_size<class_StyleBoxFlat_property_shadow_size>` 小于 1，这将不起作用。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_shadow_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **shadow_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_StyleBoxFlat_property_shadow_offset>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_shadow_offset**\ (\ )

以像素为单位的阴影偏移。相对于StyleBox调整阴影的位置。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_shadow_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_size** = ``0`` :ref:`🔗<class_StyleBoxFlat_property_shadow_size>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_shadow_size**\ (\ )

以像素为单位的阴影大小。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_property_skew:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **skew** = ``Vector2(0, 0)`` :ref:`🔗<class_StyleBoxFlat_property_skew>`

.. rst-class:: classref-property-setget

- |void| **set_skew**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_skew**\ (\ )

如果任何轴被设为了非零值，\ :ref:`skew<class_StyleBoxFlat_property_skew>` 就会将该 StyleBox 进行横向和/或纵向变形。可用于实现“未来风”的 UI。正值会让该 StyleBox 朝右（X 轴）上（Y 轴）偏斜，负值会让该 StyleBox 朝左（X 轴）下（Y 轴）偏斜。

\ **注意：**\ 为了让文本不触碰到该 StyleBox 的边缘，请考虑增大该 :ref:`StyleBox<class_StyleBox>` 的内容边距（见 :ref:`StyleBox.content_margin_bottom<class_StyleBox_property_content_margin_bottom>`\ ）。增大内容边距比增大扩展边距（见 :ref:`expand_margin_bottom<class_StyleBoxFlat_property_expand_margin_bottom>`\ ）更好，因为增大扩展边距并不会增大 :ref:`Control<class_Control>` 的可点击区域。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_StyleBoxFlat_method_get_border_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_border_width>`

返回指定边 :ref:`Side<enum_@GlobalScope_Side>` 的边框宽度。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_get_border_width_min:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_border_width_min**\ (\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_border_width_min>`

返回所有四条边中，最小的边框宽度。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_get_corner_radius:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_corner_radius>`

返回 ``corner`` 中指定的角落的圆角半径。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_get_expand_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxFlat_method_get_expand_margin>`

返回指定边 :ref:`Side<enum_@GlobalScope_Side>` 的扩展边距的大小。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_border_width:

.. rst-class:: classref-method

|void| **set_border_width**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_border_width>`

将指定边 :ref:`Side<enum_@GlobalScope_Side>` 的边框宽度设置为 ``width`` 像素。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_border_width_all:

.. rst-class:: classref-method

|void| **set_border_width_all**\ (\ width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_border_width_all>`

将所有边的边框宽度设置为 ``width`` 像素。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_corner_radius:

.. rst-class:: classref-method

|void| **set_corner_radius**\ (\ corner\: :ref:`Corner<enum_@GlobalScope_Corner>`, radius\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_corner_radius>`

将 ``corner`` 中指定的角落的圆角半径设置为 ``radius`` 像素。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_corner_radius_all:

.. rst-class:: classref-method

|void| **set_corner_radius_all**\ (\ radius\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_corner_radius_all>`

将所有角的圆角半径设置为 ``radius`` 像素。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_expand_margin:

.. rst-class:: classref-method

|void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_expand_margin>`

将指定边 :ref:`Side<enum_@GlobalScope_Side>` 的扩展边距设置为 ``size`` 像素。

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxFlat_method_set_expand_margin_all:

.. rst-class:: classref-method

|void| **set_expand_margin_all**\ (\ size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxFlat_method_set_expand_margin_all>`

将所有边的扩展边距都设置为 ``size`` 像素。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
