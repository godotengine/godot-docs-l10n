:github_url: hide

.. _class_Color:

Color
=====

以 RGBA 格式表示的颜色。

.. rst-class:: classref-introduction-group

描述
----

由红（\ :ref:`r<class_Color_property_r>`\ ）、绿（\ :ref:`g<class_Color_property_g>`\ ）、蓝（\ :ref:`b<class_Color_property_b>`\ ）和 alpha（\ :ref:`a<class_Color_property_a>`\ ）分量表示的 RGBA 格式的颜色。每个分量都是一个 32 位浮点值，通常介于 ``0.0`` 到 ``1.0`` 之间。某些属性（例如 :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>`\ ）可能支持大于 ``1.0`` 的值，用于表示过亮或 HDR（High Dynamic Range，高动态范围）颜色。

创建颜色的方法有很多：可以使用 **Color** 的各种构造函数，\ :ref:`from_hsv()<class_Color_method_from_hsv>` 等静态方法，以及使用基于 `X11 颜色名称 <https://en.wikipedia.org/wiki/X11_color_names>`__\ 的标准化颜色集外加 :ref:`TRANSPARENT<class_Color_constant_TRANSPARENT>`\ 。GDScript 还提供了 :ref:`@GDScript.Color8()<class_@GDScript_method_Color8>`\ ，使用的是 ``0`` 到 ``255`` 之间的整数，且不支持过亮的颜色。

颜色数据可以使用不同的色彩空间和编码进行存储。\ :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` 和 :ref:`linear_to_srgb()<class_Color_method_linear_to_srgb>` 方法可以在非线性 sRGB 编码和线性 RGB 编码之间进行转换。

\ **注意：**\ 在布尔上下文中，等于 ``Color(0, 0, 0, 1)``\ （不透明的黑色）的 Color 将被评估为 ``false``\ 。否则，Color 将始终被评估为 ``true``\ 。

\ `Color 常量速查表 <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/color_constants.png>`__

.. note::

	通过 C# 使用该 API 时会有显著不同，详见 :ref:`doc_c_sharp_differences`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `2D GD 画图演示 <https://godotengine.org/asset-library/asset/2768>`__

- `补间插值演示 <https://godotengine.org/asset-library/asset/2733>`__

- `GUI 拖放演示 <https://godotengine.org/asset-library/asset/2767>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`a<class_Color_property_a>`               | ``1.0`` |
   +---------------------------+------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`a8<class_Color_property_a8>`             | ``255`` |
   +---------------------------+------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`b<class_Color_property_b>`               | ``0.0`` |
   +---------------------------+------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`b8<class_Color_property_b8>`             | ``0``   |
   +---------------------------+------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`g<class_Color_property_g>`               | ``0.0`` |
   +---------------------------+------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`g8<class_Color_property_g8>`             | ``0``   |
   +---------------------------+------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`h<class_Color_property_h>`               | ``0.0`` |
   +---------------------------+------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`ok_hsl_h<class_Color_property_ok_hsl_h>` | ``0.0`` |
   +---------------------------+------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`ok_hsl_l<class_Color_property_ok_hsl_l>` | ``0.0`` |
   +---------------------------+------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`ok_hsl_s<class_Color_property_ok_hsl_s>` | ``0.0`` |
   +---------------------------+------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`r<class_Color_property_r>`               | ``0.0`` |
   +---------------------------+------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`r8<class_Color_property_r8>`             | ``0``   |
   +---------------------------+------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`s<class_Color_property_s>`               | ``0.0`` |
   +---------------------------+------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`v<class_Color_property_v>`               | ``0.0`` |
   +---------------------------+------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`Color<class_Color_constructor_Color>`\ (\ )                                                                                                                             |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`Color<class_Color_constructor_Color>`\ (\ from\: :ref:`Color<class_Color>`, alpha\: :ref:`float<class_float>`\ )                                                        |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`Color<class_Color_constructor_Color>`\ (\ from\: :ref:`Color<class_Color>`\ )                                                                                           |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`Color<class_Color_constructor_Color>`\ (\ code\: :ref:`String<class_String>`\ )                                                                                         |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`Color<class_Color_constructor_Color>`\ (\ code\: :ref:`String<class_String>`, alpha\: :ref:`float<class_float>`\ )                                                      |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`Color<class_Color_constructor_Color>`\ (\ r\: :ref:`float<class_float>`, g\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`\ )                                |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`Color<class_Color_constructor_Color>`\ (\ r\: :ref:`float<class_float>`, g\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, a\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`blend<class_Color_method_blend>`\ (\ over\: :ref:`Color<class_Color>`\ ) |const|                                                                                                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`clamp<class_Color_method_clamp>`\ (\ min\: :ref:`Color<class_Color>` = Color(0, 0, 0, 0), max\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) |const|                                          |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`darkened<class_Color_method_darkened>`\ (\ amount\: :ref:`float<class_float>`\ ) |const|                                                                                                          |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`from_hsv<class_Color_method_from_hsv>`\ (\ h\: :ref:`float<class_float>`, s\: :ref:`float<class_float>`, v\: :ref:`float<class_float>`, alpha\: :ref:`float<class_float>` = 1.0\ ) |static|       |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`from_ok_hsl<class_Color_method_from_ok_hsl>`\ (\ h\: :ref:`float<class_float>`, s\: :ref:`float<class_float>`, l\: :ref:`float<class_float>`, alpha\: :ref:`float<class_float>` = 1.0\ ) |static| |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`from_rgba8<class_Color_method_from_rgba8>`\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) |static|                   |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`from_rgbe9995<class_Color_method_from_rgbe9995>`\ (\ rgbe\: :ref:`int<class_int>`\ ) |static|                                                                                                     |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`from_string<class_Color_method_from_string>`\ (\ str\: :ref:`String<class_String>`, default\: :ref:`Color<class_Color>`\ ) |static|                                                               |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`   | :ref:`get_luminance<class_Color_method_get_luminance>`\ (\ ) |const|                                                                                                                                    |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`hex<class_Color_method_hex>`\ (\ hex\: :ref:`int<class_int>`\ ) |static|                                                                                                                          |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`hex64<class_Color_method_hex64>`\ (\ hex\: :ref:`int<class_int>`\ ) |static|                                                                                                                      |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`html<class_Color_method_html>`\ (\ rgba\: :ref:`String<class_String>`\ ) |static|                                                                                                                 |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`html_is_valid<class_Color_method_html_is_valid>`\ (\ color\: :ref:`String<class_String>`\ ) |static|                                                                                              |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`inverted<class_Color_method_inverted>`\ (\ ) |const|                                                                                                                                              |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_equal_approx<class_Color_method_is_equal_approx>`\ (\ to\: :ref:`Color<class_Color>`\ ) |const|                                                                                                |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`lerp<class_Color_method_lerp>`\ (\ to\: :ref:`Color<class_Color>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`lightened<class_Color_method_lightened>`\ (\ amount\: :ref:`float<class_float>`\ ) |const|                                                                                                        |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`linear_to_srgb<class_Color_method_linear_to_srgb>`\ (\ ) |const|                                                                                                                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`   | :ref:`srgb_to_linear<class_Color_method_srgb_to_linear>`\ (\ ) |const|                                                                                                                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`to_abgr32<class_Color_method_to_abgr32>`\ (\ ) |const|                                                                                                                                            |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`to_abgr64<class_Color_method_to_abgr64>`\ (\ ) |const|                                                                                                                                            |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`to_argb32<class_Color_method_to_argb32>`\ (\ ) |const|                                                                                                                                            |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`to_argb64<class_Color_method_to_argb64>`\ (\ ) |const|                                                                                                                                            |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`to_html<class_Color_method_to_html>`\ (\ with_alpha\: :ref:`bool<class_bool>` = true\ ) |const|                                                                                                   |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`to_rgba32<class_Color_method_to_rgba32>`\ (\ ) |const|                                                                                                                                            |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`to_rgba64<class_Color_method_to_rgba64>`\ (\ ) |const|                                                                                                                                            |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator !=<class_Color_operator_neq_Color>`\ (\ right\: :ref:`Color<class_Color>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`operator *<class_Color_operator_mul_Color>`\ (\ right\: :ref:`Color<class_Color>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`operator *<class_Color_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`operator *<class_Color_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )        |
   +---------------------------+---------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`operator +<class_Color_operator_sum_Color>`\ (\ right\: :ref:`Color<class_Color>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`operator -<class_Color_operator_dif_Color>`\ (\ right\: :ref:`Color<class_Color>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`operator /<class_Color_operator_div_Color>`\ (\ right\: :ref:`Color<class_Color>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`operator /<class_Color_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`operator /<class_Color_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )        |
   +---------------------------+---------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator ==<class_Color_operator_eq_Color>`\ (\ right\: :ref:`Color<class_Color>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`operator []<class_Color_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )       |
   +---------------------------+---------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`operator unary+<class_Color_operator_unplus>`\ (\ )                                   |
   +---------------------------+---------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`operator unary-<class_Color_operator_unminus>`\ (\ )                                  |
   +---------------------------+---------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_Color_constant_ALICE_BLUE:

.. rst-class:: classref-constant

**ALICE_BLUE** = ``Color(0.9411765, 0.972549, 1, 1)`` :ref:`🔗<class_Color_constant_ALICE_BLUE>`

爱丽丝蓝。

.. _class_Color_constant_ANTIQUE_WHITE:

.. rst-class:: classref-constant

**ANTIQUE_WHITE** = ``Color(0.98039216, 0.92156863, 0.84313726, 1)`` :ref:`🔗<class_Color_constant_ANTIQUE_WHITE>`

古董白。

.. _class_Color_constant_AQUA:

.. rst-class:: classref-constant

**AQUA** = ``Color(0, 1, 1, 1)`` :ref:`🔗<class_Color_constant_AQUA>`

水色。

.. _class_Color_constant_AQUAMARINE:

.. rst-class:: classref-constant

**AQUAMARINE** = ``Color(0.49803922, 1, 0.83137256, 1)`` :ref:`🔗<class_Color_constant_AQUAMARINE>`

海蓝色。

.. _class_Color_constant_AZURE:

.. rst-class:: classref-constant

**AZURE** = ``Color(0.9411765, 1, 1, 1)`` :ref:`🔗<class_Color_constant_AZURE>`

天蓝色。

.. _class_Color_constant_BEIGE:

.. rst-class:: classref-constant

**BEIGE** = ``Color(0.9607843, 0.9607843, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_BEIGE>`

米黄色。

.. _class_Color_constant_BISQUE:

.. rst-class:: classref-constant

**BISQUE** = ``Color(1, 0.89411765, 0.76862746, 1)`` :ref:`🔗<class_Color_constant_BISQUE>`

橘黄色。

.. _class_Color_constant_BLACK:

.. rst-class:: classref-constant

**BLACK** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Color_constant_BLACK>`

黑色。在 GDScript 中，这是所有颜色的默认值。

.. _class_Color_constant_BLANCHED_ALMOND:

.. rst-class:: classref-constant

**BLANCHED_ALMOND** = ``Color(1, 0.92156863, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_BLANCHED_ALMOND>`

杏仁白色。

.. _class_Color_constant_BLUE:

.. rst-class:: classref-constant

**BLUE** = ``Color(0, 0, 1, 1)`` :ref:`🔗<class_Color_constant_BLUE>`

蓝色。

.. _class_Color_constant_BLUE_VIOLET:

.. rst-class:: classref-constant

**BLUE_VIOLET** = ``Color(0.5411765, 0.16862746, 0.8862745, 1)`` :ref:`🔗<class_Color_constant_BLUE_VIOLET>`

蓝紫色的颜色。

.. _class_Color_constant_BROWN:

.. rst-class:: classref-constant

**BROWN** = ``Color(0.64705884, 0.16470589, 0.16470589, 1)`` :ref:`🔗<class_Color_constant_BROWN>`

棕色。

.. _class_Color_constant_BURLYWOOD:

.. rst-class:: classref-constant

**BURLYWOOD** = ``Color(0.87058824, 0.72156864, 0.5294118, 1)`` :ref:`🔗<class_Color_constant_BURLYWOOD>`

硬木色。

.. _class_Color_constant_CADET_BLUE:

.. rst-class:: classref-constant

**CADET_BLUE** = ``Color(0.37254903, 0.61960787, 0.627451, 1)`` :ref:`🔗<class_Color_constant_CADET_BLUE>`

军服蓝。

.. _class_Color_constant_CHARTREUSE:

.. rst-class:: classref-constant

**CHARTREUSE** = ``Color(0.49803922, 1, 0, 1)`` :ref:`🔗<class_Color_constant_CHARTREUSE>`

黄褐色。

.. _class_Color_constant_CHOCOLATE:

.. rst-class:: classref-constant

**CHOCOLATE** = ``Color(0.8235294, 0.4117647, 0.11764706, 1)`` :ref:`🔗<class_Color_constant_CHOCOLATE>`

巧克力色。

.. _class_Color_constant_CORAL:

.. rst-class:: classref-constant

**CORAL** = ``Color(1, 0.49803922, 0.3137255, 1)`` :ref:`🔗<class_Color_constant_CORAL>`

珊瑚色。

.. _class_Color_constant_CORNFLOWER_BLUE:

.. rst-class:: classref-constant

**CORNFLOWER_BLUE** = ``Color(0.39215687, 0.58431375, 0.92941177, 1)`` :ref:`🔗<class_Color_constant_CORNFLOWER_BLUE>`

矢车菊蓝色。

.. _class_Color_constant_CORNSILK:

.. rst-class:: classref-constant

**CORNSILK** = ``Color(1, 0.972549, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_CORNSILK>`

玉米须色。

.. _class_Color_constant_CRIMSON:

.. rst-class:: classref-constant

**CRIMSON** = ``Color(0.8627451, 0.078431375, 0.23529412, 1)`` :ref:`🔗<class_Color_constant_CRIMSON>`

绯红的颜色。

.. _class_Color_constant_CYAN:

.. rst-class:: classref-constant

**CYAN** = ``Color(0, 1, 1, 1)`` :ref:`🔗<class_Color_constant_CYAN>`

青色。

.. _class_Color_constant_DARK_BLUE:

.. rst-class:: classref-constant

**DARK_BLUE** = ``Color(0, 0, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_BLUE>`

深蓝色。

.. _class_Color_constant_DARK_CYAN:

.. rst-class:: classref-constant

**DARK_CYAN** = ``Color(0, 0.54509807, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_CYAN>`

深青色。

.. _class_Color_constant_DARK_GOLDENROD:

.. rst-class:: classref-constant

**DARK_GOLDENROD** = ``Color(0.72156864, 0.5254902, 0.043137256, 1)`` :ref:`🔗<class_Color_constant_DARK_GOLDENROD>`

深色菊科植物的颜色。

.. _class_Color_constant_DARK_GRAY:

.. rst-class:: classref-constant

**DARK_GRAY** = ``Color(0.6627451, 0.6627451, 0.6627451, 1)`` :ref:`🔗<class_Color_constant_DARK_GRAY>`

深灰色。

.. _class_Color_constant_DARK_GREEN:

.. rst-class:: classref-constant

**DARK_GREEN** = ``Color(0, 0.39215687, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_GREEN>`

深绿色。

.. _class_Color_constant_DARK_KHAKI:

.. rst-class:: classref-constant

**DARK_KHAKI** = ``Color(0.7411765, 0.7176471, 0.41960785, 1)`` :ref:`🔗<class_Color_constant_DARK_KHAKI>`

深卡其色。

.. _class_Color_constant_DARK_MAGENTA:

.. rst-class:: classref-constant

**DARK_MAGENTA** = ``Color(0.54509807, 0, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_MAGENTA>`

深洋红色。

.. _class_Color_constant_DARK_OLIVE_GREEN:

.. rst-class:: classref-constant

**DARK_OLIVE_GREEN** = ``Color(0.33333334, 0.41960785, 0.18431373, 1)`` :ref:`🔗<class_Color_constant_DARK_OLIVE_GREEN>`

深橄榄绿色。

.. _class_Color_constant_DARK_ORANGE:

.. rst-class:: classref-constant

**DARK_ORANGE** = ``Color(1, 0.54901963, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_ORANGE>`

深橙色。

.. _class_Color_constant_DARK_ORCHID:

.. rst-class:: classref-constant

**DARK_ORCHID** = ``Color(0.6, 0.19607843, 0.8, 1)`` :ref:`🔗<class_Color_constant_DARK_ORCHID>`

深色的兰花色。

.. _class_Color_constant_DARK_RED:

.. rst-class:: classref-constant

**DARK_RED** = ``Color(0.54509807, 0, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_RED>`

深红色。

.. _class_Color_constant_DARK_SALMON:

.. rst-class:: classref-constant

**DARK_SALMON** = ``Color(0.9137255, 0.5882353, 0.47843137, 1)`` :ref:`🔗<class_Color_constant_DARK_SALMON>`

深鲑鱼色。

.. _class_Color_constant_DARK_SEA_GREEN:

.. rst-class:: classref-constant

**DARK_SEA_GREEN** = ``Color(0.56078434, 0.7372549, 0.56078434, 1)`` :ref:`🔗<class_Color_constant_DARK_SEA_GREEN>`

深海绿色。

.. _class_Color_constant_DARK_SLATE_BLUE:

.. rst-class:: classref-constant

**DARK_SLATE_BLUE** = ``Color(0.28235295, 0.23921569, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_SLATE_BLUE>`

深板蓝的颜色。

.. _class_Color_constant_DARK_SLATE_GRAY:

.. rst-class:: classref-constant

**DARK_SLATE_GRAY** = ``Color(0.18431373, 0.30980393, 0.30980393, 1)`` :ref:`🔗<class_Color_constant_DARK_SLATE_GRAY>`

暗石板灰色。

.. _class_Color_constant_DARK_TURQUOISE:

.. rst-class:: classref-constant

**DARK_TURQUOISE** = ``Color(0, 0.80784315, 0.81960785, 1)`` :ref:`🔗<class_Color_constant_DARK_TURQUOISE>`

深绿松石色。

.. _class_Color_constant_DARK_VIOLET:

.. rst-class:: classref-constant

**DARK_VIOLET** = ``Color(0.5803922, 0, 0.827451, 1)`` :ref:`🔗<class_Color_constant_DARK_VIOLET>`

深紫罗兰色。

.. _class_Color_constant_DEEP_PINK:

.. rst-class:: classref-constant

**DEEP_PINK** = ``Color(1, 0.078431375, 0.5764706, 1)`` :ref:`🔗<class_Color_constant_DEEP_PINK>`

深粉色。

.. _class_Color_constant_DEEP_SKY_BLUE:

.. rst-class:: classref-constant

**DEEP_SKY_BLUE** = ``Color(0, 0.7490196, 1, 1)`` :ref:`🔗<class_Color_constant_DEEP_SKY_BLUE>`

深邃的天蓝色。

.. _class_Color_constant_DIM_GRAY:

.. rst-class:: classref-constant

**DIM_GRAY** = ``Color(0.4117647, 0.4117647, 0.4117647, 1)`` :ref:`🔗<class_Color_constant_DIM_GRAY>`

暗灰色。

.. _class_Color_constant_DODGER_BLUE:

.. rst-class:: classref-constant

**DODGER_BLUE** = ``Color(0.11764706, 0.5647059, 1, 1)`` :ref:`🔗<class_Color_constant_DODGER_BLUE>`

道奇蓝色。

.. _class_Color_constant_FIREBRICK:

.. rst-class:: classref-constant

**FIREBRICK** = ``Color(0.69803923, 0.13333334, 0.13333334, 1)`` :ref:`🔗<class_Color_constant_FIREBRICK>`

耐火砖红色。

.. _class_Color_constant_FLORAL_WHITE:

.. rst-class:: classref-constant

**FLORAL_WHITE** = ``Color(1, 0.98039216, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_FLORAL_WHITE>`

花白色。

.. _class_Color_constant_FOREST_GREEN:

.. rst-class:: classref-constant

**FOREST_GREEN** = ``Color(0.13333334, 0.54509807, 0.13333334, 1)`` :ref:`🔗<class_Color_constant_FOREST_GREEN>`

森林绿色。

.. _class_Color_constant_FUCHSIA:

.. rst-class:: classref-constant

**FUCHSIA** = ``Color(1, 0, 1, 1)`` :ref:`🔗<class_Color_constant_FUCHSIA>`

洋红色。

.. _class_Color_constant_GAINSBORO:

.. rst-class:: classref-constant

**GAINSBORO** = ``Color(0.8627451, 0.8627451, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_GAINSBORO>`

庚斯伯勒灰色。

.. _class_Color_constant_GHOST_WHITE:

.. rst-class:: classref-constant

**GHOST_WHITE** = ``Color(0.972549, 0.972549, 1, 1)`` :ref:`🔗<class_Color_constant_GHOST_WHITE>`

幽灵白颜色。

.. _class_Color_constant_GOLD:

.. rst-class:: classref-constant

**GOLD** = ``Color(1, 0.84313726, 0, 1)`` :ref:`🔗<class_Color_constant_GOLD>`

金色。

.. _class_Color_constant_GOLDENROD:

.. rst-class:: classref-constant

**GOLDENROD** = ``Color(0.85490197, 0.64705884, 0.1254902, 1)`` :ref:`🔗<class_Color_constant_GOLDENROD>`

金菊色。

.. _class_Color_constant_GRAY:

.. rst-class:: classref-constant

**GRAY** = ``Color(0.74509805, 0.74509805, 0.74509805, 1)`` :ref:`🔗<class_Color_constant_GRAY>`

灰色。

.. _class_Color_constant_GREEN:

.. rst-class:: classref-constant

**GREEN** = ``Color(0, 1, 0, 1)`` :ref:`🔗<class_Color_constant_GREEN>`

绿色。

.. _class_Color_constant_GREEN_YELLOW:

.. rst-class:: classref-constant

**GREEN_YELLOW** = ``Color(0.6784314, 1, 0.18431373, 1)`` :ref:`🔗<class_Color_constant_GREEN_YELLOW>`

绿黄色。

.. _class_Color_constant_HONEYDEW:

.. rst-class:: classref-constant

**HONEYDEW** = ``Color(0.9411765, 1, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_HONEYDEW>`

蜜露色。

.. _class_Color_constant_HOT_PINK:

.. rst-class:: classref-constant

**HOT_PINK** = ``Color(1, 0.4117647, 0.7058824, 1)`` :ref:`🔗<class_Color_constant_HOT_PINK>`

亮粉色。

.. _class_Color_constant_INDIAN_RED:

.. rst-class:: classref-constant

**INDIAN_RED** = ``Color(0.8039216, 0.36078432, 0.36078432, 1)`` :ref:`🔗<class_Color_constant_INDIAN_RED>`

印度红色。

.. _class_Color_constant_INDIGO:

.. rst-class:: classref-constant

**INDIGO** = ``Color(0.29411766, 0, 0.50980395, 1)`` :ref:`🔗<class_Color_constant_INDIGO>`

靛青色。

.. _class_Color_constant_IVORY:

.. rst-class:: classref-constant

**IVORY** = ``Color(1, 1, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_IVORY>`

象牙色。

.. _class_Color_constant_KHAKI:

.. rst-class:: classref-constant

**KHAKI** = ``Color(0.9411765, 0.9019608, 0.54901963, 1)`` :ref:`🔗<class_Color_constant_KHAKI>`

卡其色。

.. _class_Color_constant_LAVENDER:

.. rst-class:: classref-constant

**LAVENDER** = ``Color(0.9019608, 0.9019608, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_LAVENDER>`

薰衣草色。

.. _class_Color_constant_LAVENDER_BLUSH:

.. rst-class:: classref-constant

**LAVENDER_BLUSH** = ``Color(1, 0.9411765, 0.9607843, 1)`` :ref:`🔗<class_Color_constant_LAVENDER_BLUSH>`

薰衣草紫红色。

.. _class_Color_constant_LAWN_GREEN:

.. rst-class:: classref-constant

**LAWN_GREEN** = ``Color(0.4862745, 0.9882353, 0, 1)`` :ref:`🔗<class_Color_constant_LAWN_GREEN>`

草坪绿色。

.. _class_Color_constant_LEMON_CHIFFON:

.. rst-class:: classref-constant

**LEMON_CHIFFON** = ``Color(1, 0.98039216, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_LEMON_CHIFFON>`

柠檬雪纺色。

.. _class_Color_constant_LIGHT_BLUE:

.. rst-class:: classref-constant

**LIGHT_BLUE** = ``Color(0.6784314, 0.84705883, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_LIGHT_BLUE>`

浅蓝色。

.. _class_Color_constant_LIGHT_CORAL:

.. rst-class:: classref-constant

**LIGHT_CORAL** = ``Color(0.9411765, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_LIGHT_CORAL>`

浅珊瑚色。

.. _class_Color_constant_LIGHT_CYAN:

.. rst-class:: classref-constant

**LIGHT_CYAN** = ``Color(0.8784314, 1, 1, 1)`` :ref:`🔗<class_Color_constant_LIGHT_CYAN>`

淡青色。

.. _class_Color_constant_LIGHT_GOLDENROD:

.. rst-class:: classref-constant

**LIGHT_GOLDENROD** = ``Color(0.98039216, 0.98039216, 0.8235294, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GOLDENROD>`

亮金菊黄色。

.. _class_Color_constant_LIGHT_GRAY:

.. rst-class:: classref-constant

**LIGHT_GRAY** = ``Color(0.827451, 0.827451, 0.827451, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GRAY>`

浅灰色。

.. _class_Color_constant_LIGHT_GREEN:

.. rst-class:: classref-constant

**LIGHT_GREEN** = ``Color(0.5647059, 0.93333334, 0.5647059, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GREEN>`

浅绿色。

.. _class_Color_constant_LIGHT_PINK:

.. rst-class:: classref-constant

**LIGHT_PINK** = ``Color(1, 0.7137255, 0.75686276, 1)`` :ref:`🔗<class_Color_constant_LIGHT_PINK>`

浅粉色。

.. _class_Color_constant_LIGHT_SALMON:

.. rst-class:: classref-constant

**LIGHT_SALMON** = ``Color(1, 0.627451, 0.47843137, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SALMON>`

浅鲑鱼色。

.. _class_Color_constant_LIGHT_SEA_GREEN:

.. rst-class:: classref-constant

**LIGHT_SEA_GREEN** = ``Color(0.1254902, 0.69803923, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SEA_GREEN>`

浅海绿色。

.. _class_Color_constant_LIGHT_SKY_BLUE:

.. rst-class:: classref-constant

**LIGHT_SKY_BLUE** = ``Color(0.5294118, 0.80784315, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SKY_BLUE>`

浅天蓝色。

.. _class_Color_constant_LIGHT_SLATE_GRAY:

.. rst-class:: classref-constant

**LIGHT_SLATE_GRAY** = ``Color(0.46666667, 0.53333336, 0.6, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SLATE_GRAY>`

浅板岩灰色。

.. _class_Color_constant_LIGHT_STEEL_BLUE:

.. rst-class:: classref-constant

**LIGHT_STEEL_BLUE** = ``Color(0.6901961, 0.76862746, 0.87058824, 1)`` :ref:`🔗<class_Color_constant_LIGHT_STEEL_BLUE>`

浅钢蓝色。

.. _class_Color_constant_LIGHT_YELLOW:

.. rst-class:: classref-constant

**LIGHT_YELLOW** = ``Color(1, 1, 0.8784314, 1)`` :ref:`🔗<class_Color_constant_LIGHT_YELLOW>`

浅黄色。

.. _class_Color_constant_LIME:

.. rst-class:: classref-constant

**LIME** = ``Color(0, 1, 0, 1)`` :ref:`🔗<class_Color_constant_LIME>`

青柠色。

.. _class_Color_constant_LIME_GREEN:

.. rst-class:: classref-constant

**LIME_GREEN** = ``Color(0.19607843, 0.8039216, 0.19607843, 1)`` :ref:`🔗<class_Color_constant_LIME_GREEN>`

石灰绿色。

.. _class_Color_constant_LINEN:

.. rst-class:: classref-constant

**LINEN** = ``Color(0.98039216, 0.9411765, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_LINEN>`

亚麻色。

.. _class_Color_constant_MAGENTA:

.. rst-class:: classref-constant

**MAGENTA** = ``Color(1, 0, 1, 1)`` :ref:`🔗<class_Color_constant_MAGENTA>`

洋红色。

.. _class_Color_constant_MAROON:

.. rst-class:: classref-constant

**MAROON** = ``Color(0.6901961, 0.1882353, 0.3764706, 1)`` :ref:`🔗<class_Color_constant_MAROON>`

栗色。

.. _class_Color_constant_MEDIUM_AQUAMARINE:

.. rst-class:: classref-constant

**MEDIUM_AQUAMARINE** = ``Color(0.4, 0.8039216, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_AQUAMARINE>`

中等海蓝宝石色。

.. _class_Color_constant_MEDIUM_BLUE:

.. rst-class:: classref-constant

**MEDIUM_BLUE** = ``Color(0, 0, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_BLUE>`

中蓝色。

.. _class_Color_constant_MEDIUM_ORCHID:

.. rst-class:: classref-constant

**MEDIUM_ORCHID** = ``Color(0.7294118, 0.33333334, 0.827451, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_ORCHID>`

中等兰色。

.. _class_Color_constant_MEDIUM_PURPLE:

.. rst-class:: classref-constant

**MEDIUM_PURPLE** = ``Color(0.5764706, 0.4392157, 0.85882354, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_PURPLE>`

中等紫色。

.. _class_Color_constant_MEDIUM_SEA_GREEN:

.. rst-class:: classref-constant

**MEDIUM_SEA_GREEN** = ``Color(0.23529412, 0.7019608, 0.44313726, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SEA_GREEN>`

中海绿色。

.. _class_Color_constant_MEDIUM_SLATE_BLUE:

.. rst-class:: classref-constant

**MEDIUM_SLATE_BLUE** = ``Color(0.48235294, 0.40784314, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SLATE_BLUE>`

中等板岩蓝色。

.. _class_Color_constant_MEDIUM_SPRING_GREEN:

.. rst-class:: classref-constant

**MEDIUM_SPRING_GREEN** = ``Color(0, 0.98039216, 0.6039216, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SPRING_GREEN>`

中等春天绿色。

.. _class_Color_constant_MEDIUM_TURQUOISE:

.. rst-class:: classref-constant

**MEDIUM_TURQUOISE** = ``Color(0.28235295, 0.81960785, 0.8, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_TURQUOISE>`

中等绿松石色。

.. _class_Color_constant_MEDIUM_VIOLET_RED:

.. rst-class:: classref-constant

**MEDIUM_VIOLET_RED** = ``Color(0.78039217, 0.08235294, 0.52156866, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_VIOLET_RED>`

中等紫红色。

.. _class_Color_constant_MIDNIGHT_BLUE:

.. rst-class:: classref-constant

**MIDNIGHT_BLUE** = ``Color(0.09803922, 0.09803922, 0.4392157, 1)`` :ref:`🔗<class_Color_constant_MIDNIGHT_BLUE>`

午夜蓝色。

.. _class_Color_constant_MINT_CREAM:

.. rst-class:: classref-constant

**MINT_CREAM** = ``Color(0.9607843, 1, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_MINT_CREAM>`

薄荷奶油色。

.. _class_Color_constant_MISTY_ROSE:

.. rst-class:: classref-constant

**MISTY_ROSE** = ``Color(1, 0.89411765, 0.88235295, 1)`` :ref:`🔗<class_Color_constant_MISTY_ROSE>`

朦胧的玫瑰色。

.. _class_Color_constant_MOCCASIN:

.. rst-class:: classref-constant

**MOCCASIN** = ``Color(1, 0.89411765, 0.70980394, 1)`` :ref:`🔗<class_Color_constant_MOCCASIN>`

鹿皮鞋颜色。

.. _class_Color_constant_NAVAJO_WHITE:

.. rst-class:: classref-constant

**NAVAJO_WHITE** = ``Color(1, 0.87058824, 0.6784314, 1)`` :ref:`🔗<class_Color_constant_NAVAJO_WHITE>`

纳瓦白。

.. _class_Color_constant_NAVY_BLUE:

.. rst-class:: classref-constant

**NAVY_BLUE** = ``Color(0, 0, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_NAVY_BLUE>`

藏青色。

.. _class_Color_constant_OLD_LACE:

.. rst-class:: classref-constant

**OLD_LACE** = ``Color(0.99215686, 0.9607843, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_OLD_LACE>`

旧蕾丝色。

.. _class_Color_constant_OLIVE:

.. rst-class:: classref-constant

**OLIVE** = ``Color(0.5019608, 0.5019608, 0, 1)`` :ref:`🔗<class_Color_constant_OLIVE>`

橄榄色。

.. _class_Color_constant_OLIVE_DRAB:

.. rst-class:: classref-constant

**OLIVE_DRAB** = ``Color(0.41960785, 0.5568628, 0.13725491, 1)`` :ref:`🔗<class_Color_constant_OLIVE_DRAB>`

暗淡橄榄色。

.. _class_Color_constant_ORANGE:

.. rst-class:: classref-constant

**ORANGE** = ``Color(1, 0.64705884, 0, 1)`` :ref:`🔗<class_Color_constant_ORANGE>`

橙色。

.. _class_Color_constant_ORANGE_RED:

.. rst-class:: classref-constant

**ORANGE_RED** = ``Color(1, 0.27058825, 0, 1)`` :ref:`🔗<class_Color_constant_ORANGE_RED>`

橘红色。

.. _class_Color_constant_ORCHID:

.. rst-class:: classref-constant

**ORCHID** = ``Color(0.85490197, 0.4392157, 0.8392157, 1)`` :ref:`🔗<class_Color_constant_ORCHID>`

兰花色。

.. _class_Color_constant_PALE_GOLDENROD:

.. rst-class:: classref-constant

**PALE_GOLDENROD** = ``Color(0.93333334, 0.9098039, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_PALE_GOLDENROD>`

淡金色。

.. _class_Color_constant_PALE_GREEN:

.. rst-class:: classref-constant

**PALE_GREEN** = ``Color(0.59607846, 0.9843137, 0.59607846, 1)`` :ref:`🔗<class_Color_constant_PALE_GREEN>`

淡绿色。

.. _class_Color_constant_PALE_TURQUOISE:

.. rst-class:: classref-constant

**PALE_TURQUOISE** = ``Color(0.6862745, 0.93333334, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_PALE_TURQUOISE>`

淡绿松石色。

.. _class_Color_constant_PALE_VIOLET_RED:

.. rst-class:: classref-constant

**PALE_VIOLET_RED** = ``Color(0.85882354, 0.4392157, 0.5764706, 1)`` :ref:`🔗<class_Color_constant_PALE_VIOLET_RED>`

淡紫红色。

.. _class_Color_constant_PAPAYA_WHIP:

.. rst-class:: classref-constant

**PAPAYA_WHIP** = ``Color(1, 0.9372549, 0.8352941, 1)`` :ref:`🔗<class_Color_constant_PAPAYA_WHIP>`

木瓜鞭色。

.. _class_Color_constant_PEACH_PUFF:

.. rst-class:: classref-constant

**PEACH_PUFF** = ``Color(1, 0.85490197, 0.7254902, 1)`` :ref:`🔗<class_Color_constant_PEACH_PUFF>`

桃花粉。

.. _class_Color_constant_PERU:

.. rst-class:: classref-constant

**PERU** = ``Color(0.8039216, 0.52156866, 0.24705882, 1)`` :ref:`🔗<class_Color_constant_PERU>`

秘鲁色。

.. _class_Color_constant_PINK:

.. rst-class:: classref-constant

**PINK** = ``Color(1, 0.7529412, 0.79607844, 1)`` :ref:`🔗<class_Color_constant_PINK>`

粉红色。

.. _class_Color_constant_PLUM:

.. rst-class:: classref-constant

**PLUM** = ``Color(0.8666667, 0.627451, 0.8666667, 1)`` :ref:`🔗<class_Color_constant_PLUM>`

梅花色。

.. _class_Color_constant_POWDER_BLUE:

.. rst-class:: classref-constant

**POWDER_BLUE** = ``Color(0.6901961, 0.8784314, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_POWDER_BLUE>`

浅蓝色。

.. _class_Color_constant_PURPLE:

.. rst-class:: classref-constant

**PURPLE** = ``Color(0.627451, 0.1254902, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_PURPLE>`

紫色。

.. _class_Color_constant_REBECCA_PURPLE:

.. rst-class:: classref-constant

**REBECCA_PURPLE** = ``Color(0.4, 0.2, 0.6, 1)`` :ref:`🔗<class_Color_constant_REBECCA_PURPLE>`

丽贝卡紫色。

.. _class_Color_constant_RED:

.. rst-class:: classref-constant

**RED** = ``Color(1, 0, 0, 1)`` :ref:`🔗<class_Color_constant_RED>`

红色。

.. _class_Color_constant_ROSY_BROWN:

.. rst-class:: classref-constant

**ROSY_BROWN** = ``Color(0.7372549, 0.56078434, 0.56078434, 1)`` :ref:`🔗<class_Color_constant_ROSY_BROWN>`

玫瑰棕。

.. _class_Color_constant_ROYAL_BLUE:

.. rst-class:: classref-constant

**ROYAL_BLUE** = ``Color(0.25490198, 0.4117647, 0.88235295, 1)`` :ref:`🔗<class_Color_constant_ROYAL_BLUE>`

宝蓝色。

.. _class_Color_constant_SADDLE_BROWN:

.. rst-class:: classref-constant

**SADDLE_BROWN** = ``Color(0.54509807, 0.27058825, 0.07450981, 1)`` :ref:`🔗<class_Color_constant_SADDLE_BROWN>`

鞍棕色。

.. _class_Color_constant_SALMON:

.. rst-class:: classref-constant

**SALMON** = ``Color(0.98039216, 0.5019608, 0.44705883, 1)`` :ref:`🔗<class_Color_constant_SALMON>`

鲑鱼色。

.. _class_Color_constant_SANDY_BROWN:

.. rst-class:: classref-constant

**SANDY_BROWN** = ``Color(0.95686275, 0.6431373, 0.3764706, 1)`` :ref:`🔗<class_Color_constant_SANDY_BROWN>`

沙褐色。

.. _class_Color_constant_SEA_GREEN:

.. rst-class:: classref-constant

**SEA_GREEN** = ``Color(0.18039216, 0.54509807, 0.34117648, 1)`` :ref:`🔗<class_Color_constant_SEA_GREEN>`

海绿色。

.. _class_Color_constant_SEASHELL:

.. rst-class:: classref-constant

**SEASHELL** = ``Color(1, 0.9607843, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_SEASHELL>`

贝壳色。

.. _class_Color_constant_SIENNA:

.. rst-class:: classref-constant

**SIENNA** = ``Color(0.627451, 0.32156864, 0.1764706, 1)`` :ref:`🔗<class_Color_constant_SIENNA>`

西恩娜色。

.. _class_Color_constant_SILVER:

.. rst-class:: classref-constant

**SILVER** = ``Color(0.7529412, 0.7529412, 0.7529412, 1)`` :ref:`🔗<class_Color_constant_SILVER>`

银色。

.. _class_Color_constant_SKY_BLUE:

.. rst-class:: classref-constant

**SKY_BLUE** = ``Color(0.5294118, 0.80784315, 0.92156863, 1)`` :ref:`🔗<class_Color_constant_SKY_BLUE>`

天蓝色。

.. _class_Color_constant_SLATE_BLUE:

.. rst-class:: classref-constant

**SLATE_BLUE** = ``Color(0.41568628, 0.3529412, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_SLATE_BLUE>`

石板蓝色。

.. _class_Color_constant_SLATE_GRAY:

.. rst-class:: classref-constant

**SLATE_GRAY** = ``Color(0.4392157, 0.5019608, 0.5647059, 1)`` :ref:`🔗<class_Color_constant_SLATE_GRAY>`

石板灰。

.. _class_Color_constant_SNOW:

.. rst-class:: classref-constant

**SNOW** = ``Color(1, 0.98039216, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_SNOW>`

雪白。

.. _class_Color_constant_SPRING_GREEN:

.. rst-class:: classref-constant

**SPRING_GREEN** = ``Color(0, 1, 0.49803922, 1)`` :ref:`🔗<class_Color_constant_SPRING_GREEN>`

春绿。

.. _class_Color_constant_STEEL_BLUE:

.. rst-class:: classref-constant

**STEEL_BLUE** = ``Color(0.27450982, 0.50980395, 0.7058824, 1)`` :ref:`🔗<class_Color_constant_STEEL_BLUE>`

钢蓝色。

.. _class_Color_constant_TAN:

.. rst-class:: classref-constant

**TAN** = ``Color(0.8235294, 0.7058824, 0.54901963, 1)`` :ref:`🔗<class_Color_constant_TAN>`

棕褐色。

.. _class_Color_constant_TEAL:

.. rst-class:: classref-constant

**TEAL** = ``Color(0, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_TEAL>`

青色。

.. _class_Color_constant_THISTLE:

.. rst-class:: classref-constant

**THISTLE** = ``Color(0.84705883, 0.7490196, 0.84705883, 1)`` :ref:`🔗<class_Color_constant_THISTLE>`

蓟色。

.. _class_Color_constant_TOMATO:

.. rst-class:: classref-constant

**TOMATO** = ``Color(1, 0.3882353, 0.2784314, 1)`` :ref:`🔗<class_Color_constant_TOMATO>`

番茄色。

.. _class_Color_constant_TRANSPARENT:

.. rst-class:: classref-constant

**TRANSPARENT** = ``Color(1, 1, 1, 0)`` :ref:`🔗<class_Color_constant_TRANSPARENT>`

透明色（Alpha 为零的白色）。

.. _class_Color_constant_TURQUOISE:

.. rst-class:: classref-constant

**TURQUOISE** = ``Color(0.2509804, 0.8784314, 0.8156863, 1)`` :ref:`🔗<class_Color_constant_TURQUOISE>`

松石绿。

.. _class_Color_constant_VIOLET:

.. rst-class:: classref-constant

**VIOLET** = ``Color(0.93333334, 0.50980395, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_VIOLET>`

紫罗兰色。

.. _class_Color_constant_WEB_GRAY:

.. rst-class:: classref-constant

**WEB_GRAY** = ``Color(0.5019608, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_WEB_GRAY>`

网格灰。

.. _class_Color_constant_WEB_GREEN:

.. rst-class:: classref-constant

**WEB_GREEN** = ``Color(0, 0.5019608, 0, 1)`` :ref:`🔗<class_Color_constant_WEB_GREEN>`

网络绿。

.. _class_Color_constant_WEB_MAROON:

.. rst-class:: classref-constant

**WEB_MAROON** = ``Color(0.5019608, 0, 0, 1)`` :ref:`🔗<class_Color_constant_WEB_MAROON>`

网络栗。

.. _class_Color_constant_WEB_PURPLE:

.. rst-class:: classref-constant

**WEB_PURPLE** = ``Color(0.5019608, 0, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_WEB_PURPLE>`

网络紫。

.. _class_Color_constant_WHEAT:

.. rst-class:: classref-constant

**WHEAT** = ``Color(0.9607843, 0.87058824, 0.7019608, 1)`` :ref:`🔗<class_Color_constant_WHEAT>`

小麦色。

.. _class_Color_constant_WHITE:

.. rst-class:: classref-constant

**WHITE** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Color_constant_WHITE>`

白色。

.. _class_Color_constant_WHITE_SMOKE:

.. rst-class:: classref-constant

**WHITE_SMOKE** = ``Color(0.9607843, 0.9607843, 0.9607843, 1)`` :ref:`🔗<class_Color_constant_WHITE_SMOKE>`

白烟色。

.. _class_Color_constant_YELLOW:

.. rst-class:: classref-constant

**YELLOW** = ``Color(1, 1, 0, 1)`` :ref:`🔗<class_Color_constant_YELLOW>`

黄色。

.. _class_Color_constant_YELLOW_GREEN:

.. rst-class:: classref-constant

**YELLOW_GREEN** = ``Color(0.6039216, 0.8039216, 0.19607843, 1)`` :ref:`🔗<class_Color_constant_YELLOW_GREEN>`

黄绿色。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Color_property_a:

.. rst-class:: classref-property

:ref:`float<class_float>` **a** = ``1.0`` :ref:`🔗<class_Color_property_a>`

颜色的 Alpha 分量，通常在 0 到 1 的范围内。取值为 0 表示颜色完全透明。取值为 1 表示颜色完全不透明。

\ **注意：**\ Alpha 通道始终按照线性编码存储，与其他颜色通道的色彩空间无关。\ :ref:`linear_to_srgb()<class_Color_method_linear_to_srgb>` 和 :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` 等方法不影响 Alpha 通道。

.. rst-class:: classref-item-separator

----

.. _class_Color_property_a8:

.. rst-class:: classref-property

:ref:`int<class_int>` **a8** = ``255`` :ref:`🔗<class_Color_property_a8>`

对 :ref:`a<class_Color_property_a>` 的封装，使用 0 到 255 的范围而不是 0 到 1。

.. rst-class:: classref-item-separator

----

.. _class_Color_property_b:

.. rst-class:: classref-property

:ref:`float<class_float>` **b** = ``0.0`` :ref:`🔗<class_Color_property_b>`

颜色的蓝色分量，一般在 0 到 1 的范围内。

.. rst-class:: classref-item-separator

----

.. _class_Color_property_b8:

.. rst-class:: classref-property

:ref:`int<class_int>` **b8** = ``0`` :ref:`🔗<class_Color_property_b8>`

对 :ref:`b<class_Color_property_b>` 的封装，使用 0 到 255 的范围而不是 0 到 1。

.. rst-class:: classref-item-separator

----

.. _class_Color_property_g:

.. rst-class:: classref-property

:ref:`float<class_float>` **g** = ``0.0`` :ref:`🔗<class_Color_property_g>`

颜色的绿色分量，一般在 0 到 1 的范围内。

.. rst-class:: classref-item-separator

----

.. _class_Color_property_g8:

.. rst-class:: classref-property

:ref:`int<class_int>` **g8** = ``0`` :ref:`🔗<class_Color_property_g8>`

对 :ref:`g<class_Color_property_g>` 的封装，使用 0 到 255 的范围而不是 0 到 1。

.. rst-class:: classref-item-separator

----

.. _class_Color_property_h:

.. rst-class:: classref-property

:ref:`float<class_float>` **h** = ``0.0`` :ref:`🔗<class_Color_property_h>`

这个颜色的 HSV 色相，范围是 0 到 1。

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_h:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_h** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_h>`

这个颜色的 OKHSL 色相，范围是 0 到 1。

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_l:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_l** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_l>`

这个颜色的 OKHSL 亮度，范围为 0 到 1。

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_s:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_s** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_s>`

这个颜色的 OKHSL 饱和度，范围为 0 到 1。

.. rst-class:: classref-item-separator

----

.. _class_Color_property_r:

.. rst-class:: classref-property

:ref:`float<class_float>` **r** = ``0.0`` :ref:`🔗<class_Color_property_r>`

颜色的红色分量，通常在 0 到 1 的范围内。

.. rst-class:: classref-item-separator

----

.. _class_Color_property_r8:

.. rst-class:: classref-property

:ref:`int<class_int>` **r8** = ``0`` :ref:`🔗<class_Color_property_r8>`

对 :ref:`r<class_Color_property_r>` 的封装，使用 0 到 255 的范围而不是 0 到 1。

.. rst-class:: classref-item-separator

----

.. _class_Color_property_s:

.. rst-class:: classref-property

:ref:`float<class_float>` **s** = ``0.0`` :ref:`🔗<class_Color_property_s>`

这个颜色的 HSV 饱和度，范围为 0 到 1。

.. rst-class:: classref-item-separator

----

.. _class_Color_property_v:

.. rst-class:: classref-property

:ref:`float<class_float>` **v** = ``0.0`` :ref:`🔗<class_Color_property_v>`

这个颜色的 HSV 值（亮度），范围为 0 至 1。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_Color_constructor_Color:

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ ) :ref:`🔗<class_Color_constructor_Color>`

用不透明的黑色构造默认的 **Color**\ ，与 :ref:`BLACK<class_Color_constant_BLACK>` 相同。

\ **注意：**\ 在 C# 中构造的是所有分量都为 ``0.0`` 的颜色（透明黑）。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ from\: :ref:`Color<class_Color>`, alpha\: :ref:`float<class_float>`\ )

从现有的颜色构造 **Color**\ ，\ :ref:`a<class_Color_property_a>` 设置为给定的 ``alpha`` 值。


.. tabs::

 .. code-tab:: gdscript

    var red = Color(Color.RED, 0.2) # 20% 不透明红色。

 .. code-tab:: csharp

    var red = new Color(Colors.Red, 0.2f); // 20% 不透明红色。



.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ from\: :ref:`Color<class_Color>`\ )

构造给定 **Color** 的副本。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ code\: :ref:`String<class_String>`\ )

从 HTML 颜色代码或标准化的颜色名称中构建 **Color**\ 。支持的颜色名称与常量名相同。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ code\: :ref:`String<class_String>`, alpha\: :ref:`float<class_float>`\ )

从 HTML 颜色代码或标准化的颜色名称中构建 **Color**\ ，\ ``alpha`` 的范围为 0.0 到 1.0。支持的颜色名称与常量名相同。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ r\: :ref:`float<class_float>`, g\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`\ )

从通常介于 0.0 和 1.0 之间的 RGB 值构造一个 **Color**\ 。\ :ref:`a<class_Color_property_a>` 被设置为 1.0。


.. tabs::

 .. code-tab:: gdscript

    var color = Color(0.2, 1.0, 0.7) # 类似于 `Color8(51, 255, 178, 255)`

 .. code-tab:: csharp

    var color = new Color(0.2f, 1.0f, 0.7f); // 类似于 `Color.Color8(51, 255, 178, 255)`



.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ r\: :ref:`float<class_float>`, g\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, a\: :ref:`float<class_float>`\ )

从通常介于 0.0 和 1.0 之间的 RGBA 值构造一个 **Color**\ 。


.. tabs::

 .. code-tab:: gdscript

    var color = Color(0.2, 1.0, 0.7, 0.8) # 类似于 `Color8(51, 255, 178, 204)`

 .. code-tab:: csharp

    var color = new Color(0.2f, 1.0f, 0.7f, 0.8f); // 类似于 `Color.Color8(51, 255, 178, 255, 204)`



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Color_method_blend:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **blend**\ (\ over\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_Color_method_blend>`

返回将该颜色混合到给定颜色上所产生的新颜色。在绘画程序中，你可以将其想象为在该颜色（包括 alpha）上绘制的 ``over`` 颜色。


.. tabs::

 .. code-tab:: gdscript

    var bg = Color(0.0, 1.0, 0.0, 0.5) # 50% 不透明的绿色
    var fg = Color(1.0, 0.0, 0.0, 0.5) # 50% 不透明的红色
    var blended_color = bg.blend(fg) # 75% 不透明的棕色

 .. code-tab:: csharp

    var bg = new Color(0.0f, 1.0f, 0.0f, 0.5f); // 50% 不透明的绿色
    var fg = new Color(1.0f, 0.0f, 0.0f, 0.5f); // 50% 不透明的红色
    Color blendedColor = bg.Blend(fg); // 75% 不透明的棕色



.. rst-class:: classref-item-separator

----

.. _class_Color_method_clamp:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **clamp**\ (\ min\: :ref:`Color<class_Color>` = Color(0, 0, 0, 0), max\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) |const| :ref:`🔗<class_Color_method_clamp>`

通过在每个分量上运行 :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>`\ ，返回一种新颜色，其中所有分量都被钳制在 ``min`` 和 ``max`` 的分量之间。

.. rst-class:: classref-item-separator

----

.. _class_Color_method_darkened:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **darkened**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_darkened>`

返回通过指定 ``amount``\ （从 0.0 到 1.0 的比率）使该颜色变暗而产生的新颜色。另见 :ref:`lightened()<class_Color_method_lightened>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var green = Color(0.0, 1.0, 0.0)
    var darkgreen = green.darkened(0.2) # 比普通的绿色深 20%

 .. code-tab:: csharp

    var green = new Color(0.0f, 1.0f, 0.0f);
    Color darkgreen = green.Darkened(0.2f); // 比普通的绿色深 20%



.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_hsv:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_hsv**\ (\ h\: :ref:`float<class_float>`, s\: :ref:`float<class_float>`, v\: :ref:`float<class_float>`, alpha\: :ref:`float<class_float>` = 1.0\ ) |static| :ref:`🔗<class_Color_method_from_hsv>`

根据 `HSV 配置 <https://zh.wikipedia.org/wiki/HSL%E5%92%8CHSV%E8%89%B2%E5%BD%A9%E7%A9%BA%E9%97%B4>`__\ 构建颜色。色相（\ ``h``\ ）、饱和度（\ ``s``\ ）和值（\ ``v``\ ）通常在 0.0 和 1.0 之间。


.. tabs::

 .. code-tab:: gdscript

    var color = Color.from_hsv(0.58, 0.5, 0.79, 0.8)

 .. code-tab:: csharp

    var color = Color.FromHsv(0.58f, 0.5f, 0.79f, 0.8f);



.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_ok_hsl:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_ok_hsl**\ (\ h\: :ref:`float<class_float>`, s\: :ref:`float<class_float>`, l\: :ref:`float<class_float>`, alpha\: :ref:`float<class_float>` = 1.0\ ) |static| :ref:`🔗<class_Color_method_from_ok_hsl>`

根据 `OK HSL 配置 <https://bottosson.github.io/posts/colorpicker/>`__\ 构建颜色。色相（\ ``h``\ ）、饱和度（\ ``s``\ ）和亮度（\ ``l``\ ）通常在 0.0 和 1.0 之间。


.. tabs::

 .. code-tab:: gdscript

    var color = Color.from_ok_hsl(0.58, 0.5, 0.79, 0.8)

 .. code-tab:: csharp

    var color = Color.FromOkHsl(0.58f, 0.5f, 0.79f, 0.8f);



.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_rgba8:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_rgba8**\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) |static| :ref:`🔗<class_Color_method_from_rgba8>`

返回一个由整数红通道（\ ``r8``\ ）、整数绿通道（\ ``g8``\ ）、整数蓝通道（\ ``b8``\ ）和可选的整数 Alpha 通道（\ ``a8``\ ）构造的 **Color**\ ，每个通道的最终值都是除以 ``255.0`` 后得到的。

::

    var red = Color.from_rgba8(255, 0, 0)             # 与 Color(1, 0, 0) 相同。
    var dark_blue = Color.from_rgba8(0, 0, 51)        # 与 Color(0, 0, 0.2) 相同。
    var my_color = Color.from_rgba8(306, 255, 0, 102) # 与 Color(1.2, 1, 0, 0.4) 相同。

\ **注意：**\ 因为 :ref:`from_rgba8()<class_Color_method_from_rgba8>` 的精度比标准 **Color** 构造函数低，所以使用 :ref:`from_rgba8()<class_Color_method_from_rgba8>` 创建的颜色通常与使用标准 **Color** 构造函数创建的相同颜色不相等。请使用 :ref:`is_equal_approx()<class_Color_method_is_equal_approx>` 进行比较，避免浮点数精度误差。

.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_rgbe9995:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_rgbe9995**\ (\ rgbe\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_from_rgbe9995>`

从 RGBE9995 格式的整数解码 **Color**\ 。见 :ref:`Image.FORMAT_RGBE9995<class_Image_constant_FORMAT_RGBE9995>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_string:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_string**\ (\ str\: :ref:`String<class_String>`, default\: :ref:`Color<class_Color>`\ ) |static| :ref:`🔗<class_Color_method_from_string>`

从给定的字符串创建 **Color**\ ，该字符串可以是 HTML 颜色代码，也可以是颜色名称（不区分大小写）。如果无法从字符串中推断出颜色，则返回 ``default``\ 。

如果你想要在常量表达式中使用 String 创建颜色，请改用对应的构造函数（即 ``Color("颜色字符串")``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Color_method_get_luminance:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_luminance**\ (\ ) |const| :ref:`🔗<class_Color_method_get_luminance>`

将颜色的光照强度返回为一个介于 0.0 和 1.0（包含）之间的值。这在确定浅色或深色时很有用。亮度小于 0.5 的颜色通常可以认为是深色。

\ **注意：**\ :ref:`get_luminance()<class_Color_method_get_luminance>` 依赖于线性色彩空间中的颜色，以返回准确的相对亮度值。如果颜色在 sRGB 色彩空间，请先使用 :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` 将其转换为线性色彩空间。

.. rst-class:: classref-item-separator

----

.. _class_Color_method_hex:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **hex**\ (\ hex\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_hex>`

返回与提供的整数 ``hex`` 相关联的 **Color**\ ，使用 32 位 RGBA 格式（每通道 8 位）。该方法是 :ref:`to_rgba32()<class_Color_method_to_rgba32>` 的逆方法。

在 GDScript 和 C# 中，展示该 :ref:`int<class_int>` 的最好方法是十六进制表示法（使用 ``"0x"`` 前缀，得到 ``"0xRRGGBBAA"``\ ）。


.. tabs::

 .. code-tab:: gdscript

    var red = Color.hex(0xff0000ff)
    var dark_cyan = Color.hex(0x008b8bff)
    var my_color = Color.hex(0xbbefd2a4)

 .. code-tab:: csharp

    var red = new Color(0xff0000ff);
    var dark_cyan = new Color(0x008b8bff);
    var my_color = new Color(0xbbefd2a4);



如果你想要在常量表达式中使用十六进制表示，请改用对应的构造函数（即 ``Color(0xRRGGBBAA)``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Color_method_hex64:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **hex64**\ (\ hex\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_hex64>`

返回与提供的整数 ``hex`` 相关联的 **Color**\ ，使用 64 位 RGBA 格式（每通道 8 位）。该方法是 :ref:`to_rgba64()<class_Color_method_to_rgba64>` 的逆方法。

在 GDScript 和 C# 中，展示该 :ref:`int<class_int>` 的最好方法是十六进制表示法（使用 ``"0x"`` 前缀，得到 ``"0xRRRRGGGGBBBBAAAA"``\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Color_method_html:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **html**\ (\ rgba\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_Color_method_html>`

从 HTML 十六进制颜色字符串 ``rgba`` 返回一个新颜色。\ ``rgba`` 不区分大小写，可以使用哈希符号（\ ``#``\ ）作为前缀。

\ ``rgba`` 必须是有效的三位或六位十六进制颜色字符串，并且可以包含 alpha 通道值。如果 ``rgba`` 不包含 alpha 通道值，则应用 alpha 通道值 1.0。如果 ``rgba`` 无效，则返回一个空颜色。


.. tabs::

 .. code-tab:: gdscript

    var blue = Color.html("#0000ff") # blue 为 Color(0.0, 0.0, 1.0, 1.0)
    var green = Color.html("#0F0")   # green 为 Color(0.0, 1.0, 0.0, 1.0)
    var col = Color.html("663399cc") # col 为 Color(0.4, 0.2, 0.6, 0.8)

 .. code-tab:: csharp

    var blue = Color.FromHtml("#0000ff"); // blue 为 Color(0.0, 0.0, 1.0, 1.0)
    var green = Color.FromHtml("#0F0");   // green 为 Color(0.0, 1.0, 0.0, 1.0)
    var col = Color.FromHtml("663399cc"); // col 为 Color(0.4, 0.2, 0.6, 0.8)



.. rst-class:: classref-item-separator

----

.. _class_Color_method_html_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **html_is_valid**\ (\ color\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_Color_method_html_is_valid>`

如果 ``color`` 是一个有效的 HTML 十六进制颜色字符串，则返回 ``true``\ 。该字符串必须是一个由 3、4、6 或 8 位数字组成的十六进制值（不区分大小写），并且可以以井号 (``#``) 作为前缀。该方法与 :ref:`String.is_valid_html_color()<class_String_method_is_valid_html_color>` 相同。


.. tabs::

 .. code-tab:: gdscript

    Color.html_is_valid("#55aaFF")   # 返回 true
    Color.html_is_valid("#55AAFF20") # 返回 true
    Color.html_is_valid("55AAFF")    # 返回 true
    Color.html_is_valid("#F2C")      # 返回 true

    Color.html_is_valid("#AABBC")     # 返回 false
    Color.html_is_valid("#55aaFF5")  # 返回 false

 .. code-tab:: csharp

    Color.HtmlIsValid("#55AAFF");   // 返回 true
    Color.HtmlIsValid("#55AAFF20"); // 返回 true
    Color.HtmlIsValid("55AAFF");    // 返回 true
    Color.HtmlIsValid("#F2C");      // 返回 true

    Color.HtmlIsValid("#AABBC");    // 返回 false
    Color.HtmlIsValid("#55aaFF5");  // 返回 false



.. rst-class:: classref-item-separator

----

.. _class_Color_method_inverted:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **inverted**\ (\ ) |const| :ref:`🔗<class_Color_method_inverted>`

返回将 :ref:`r<class_Color_property_r>`\ 、\ :ref:`g<class_Color_property_g>`\ 、\ :ref:`b<class_Color_property_b>` 分量翻转后的颜色（\ ``(1 - r, 1 - g, 1 - b, a)``\ ）。


.. tabs::

 .. code-tab:: gdscript

    var black = Color.WHITE.inverted()
    var color = Color(0.3, 0.4, 0.9)
    var inverted_color = color.inverted() # 等价于 `Color(0.7, 0.6, 0.1)`

 .. code-tab:: csharp

    var black = Colors.White.Inverted();
    var color = new Color(0.3f, 0.4f, 0.9f);
    Color invertedColor = color.Inverted(); // 等价于 `new Color(0.7f, 0.6f, 0.1f)`



.. rst-class:: classref-item-separator

----

.. _class_Color_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ to\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_Color_method_is_equal_approx>`

如果该颜色和 ``to`` 近似相等，则返回 ``true``\ ，判断近似相等的方法是通过在每个分量上运行 :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Color_method_lerp:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **lerp**\ (\ to\: :ref:`Color<class_Color>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_lerp>`

返回将该颜色的分量和 ``to`` 的分量进行线性插值的结果。插值系数 ``weight`` 应该在 0.0 和 1.0 之间（闭区间）。另见 :ref:`@GlobalScope.lerp()<class_@GlobalScope_method_lerp>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var red = Color(1.0, 0.0, 0.0)
    var aqua = Color(0.0, 1.0, 0.8)

    red.lerp(aqua, 0.2) # 返回 Color(0.8, 0.2, 0.16)
    red.lerp(aqua, 0.5) # 返回 Color(0.5, 0.5, 0.4)
    red.lerp(aqua, 1.0) # 返回 Color(0.0, 1.0, 0.8)

 .. code-tab:: csharp

    var red = new Color(1.0f, 0.0f, 0.0f);
    var aqua = new Color(0.0f, 1.0f, 0.8f);

    red.Lerp(aqua, 0.2f); // 返回 Color(0.8f, 0.2f, 0.16f)
    red.Lerp(aqua, 0.5f); // 返回 Color(0.5f, 0.5f, 0.4f)
    red.Lerp(aqua, 1.0f); // 返回 Color(0.0f, 1.0f, 0.8f)



.. rst-class:: classref-item-separator

----

.. _class_Color_method_lightened:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **lightened**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_lightened>`

返回通过指定 ``amount``\ （从 0.0 到 1.0 的比率）使该颜色变亮而产生的新颜色。另见 :ref:`darkened()<class_Color_method_darkened>`\ 。


.. tabs::

 .. code-tab:: gdscript

    var green = Color(0.0, 1.0, 0.0)
    var light_green = green.lightened(0.2) # 比普通的绿色要淡 20%

 .. code-tab:: csharp

    var green = new Color(0.0f, 1.0f, 0.0f);
    Color lightGreen = green.Lightened(0.2f); // 比普通的绿色要淡 20%



.. rst-class:: classref-item-separator

----

.. _class_Color_method_linear_to_srgb:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **linear_to_srgb**\ (\ ) |const| :ref:`🔗<class_Color_method_linear_to_srgb>`

返回转换到 `sRGB <https://en.wikipedia.org/wiki/SRGB>`__ 色彩空间的颜色。该方法假定原始颜色位于线性色彩空间中。另见执行相反操作的 :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>`\ 。

\ **注意：**\ 颜色的 Alpha 通道 :ref:`a<class_Color_property_a>` 不受影响。Alpha 通道始终使用线性编码，与其他颜色通道所使用的色彩空间无关。

.. rst-class:: classref-item-separator

----

.. _class_Color_method_srgb_to_linear:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **srgb_to_linear**\ (\ ) |const| :ref:`🔗<class_Color_method_srgb_to_linear>`

返回转换到线性色彩空间的颜色。该方法假定原始颜色已经在 sRGB 色彩空间中。另请参见执行相反操作的 :ref:`linear_to_srgb()<class_Color_method_linear_to_srgb>`\ 。

\ **注意：**\ 颜色的 Alpha 通道 :ref:`a<class_Color_property_a>` 不受影响。Alpha 通道始终使用线性编码，与其他颜色通道所使用的色彩空间无关。

.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_abgr32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_abgr32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_abgr32>`

返回转换为 ABGR 格式（每个分量为 8 位）的 32 位整数的颜色。ABGR 是默认 RGBA 格式的反转版本。


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_abgr32()) # 输出 4281565439

 .. code-tab:: csharp

    var color = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(color.ToAbgr32()); // 输出 4281565439



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_abgr64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_abgr64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_abgr64>`

返回转换为 ABGR 格式（每个分量为 16 位）的 64 位整数的颜色。ABGR 是默认 RGBA 格式的反转版本。


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_abgr64()) # 输出 -225178692812801

 .. code-tab:: csharp

    var color = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(color.ToAbgr64()); // 输出 -225178692812801



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_argb32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_argb32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_argb32>`

返回转换为 ARGB 格式（每个分量为 8 位）的 32 位整数的颜色。ARGB 与 DirectX 更兼容。


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_argb32()) # 输出 4294934323

 .. code-tab:: csharp

    var color = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(color.ToArgb32()); // 输出 4294934323



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_argb64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_argb64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_argb64>`

返回转换为 ARGB 格式（每个分量为 16 位）的 64 位整数的颜色。ARGB 与 DirectX 更兼容。


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_argb64()) # 输出 -2147470541

 .. code-tab:: csharp

    var color = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(color.ToArgb64()); // 输出 -2147470541



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_html:

.. rst-class:: classref-method

:ref:`String<class_String>` **to_html**\ (\ with_alpha\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Color_method_to_html>`

返回将该颜色转换为 RGBA 格式的 HTML 十六进制颜色 :ref:`String<class_String>`\ ，不带（\ ``#``\ ）前缀。

将 ``with_alpha`` 设置为 ``false``\ ，会从十六进制字符串中排除 alpha，使用 RGB 格式而不是 RGBA 格式。


.. tabs::

 .. code-tab:: gdscript

    var white = Color(1, 1, 1, 0.5)
    var with_alpha = white.to_html() # 返回 "ffffff7f"
    var without_alpha = white.to_html(false) # 返回 "ffffff"

 .. code-tab:: csharp

    var white = new Color(1, 1, 1, 0.5f);
    string withAlpha = white.ToHtml(); // 返回 "ffffff7f"
    string withoutAlpha = white.ToHtml(false); // 返回 "ffffff"



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_rgba32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_rgba32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_rgba32>`

返回转换为 RGBA 格式（每个分量为 8 位）的 32 位整数的颜色。RGBA 是 Godot 的默认格式。该方法是 :ref:`hex()<class_Color_method_hex>` 的逆方法。


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_rgba32()) # 输出 4286526463

 .. code-tab:: csharp

    var color = new Color(1, 0.5f, 0.2f);
    GD.Print(color.ToRgba32()); // 输出 4286526463



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_rgba64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_rgba64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_rgba64>`

返回转换为 RGBA 格式（每个分量为 16 位）的 64 位整数的颜色。RGBA 是 Godot 的默认格式。该方法是 :ref:`hex64()<class_Color_method_hex64>` 的逆方法。


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_rgba64()) # 输出 -140736629309441

 .. code-tab:: csharp

    var color = new Color(1, 0.5f, 0.2f);
    GD.Print(color.ToRgba64()); // 输出 -140736629309441



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_Color_operator_neq_Color:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_neq_Color>`

如果颜色不完全相等，则返回 ``true``\ 。

\ **注意：**\ 由于浮点数精度误差，请考虑改用 :ref:`is_equal_approx()<class_Color_method_is_equal_approx>`\ ，会更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_mul_Color>`

将该 **Color** 的每个分量乘以给定 **Color** 的对应分量。

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Color_operator_mul_float>`

将该 **Color** 的每个分量乘以给定的 :ref:`float<class_float>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_mul_int>`

将该 **Color** 的每个分量乘以给定的 :ref:`int<class_int>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_sum_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator +**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_sum_Color>`

将该 **Color** 的每个分量加上给定 **Color** 的对应分量。

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_dif_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator -**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_dif_Color>`

将该 **Color** 的每个分量减去给定 **Color** 的对应分量。

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_div_Color>`

将该 **Color** 的每个分量除以给定 **Color** 的每个分量。

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_float:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Color_operator_div_float>`

将该 **Color** 的每个分量除以给定的 :ref:`float<class_float>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_int:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_div_int>`

将该 **Color** 的每个分量除以给定的 :ref:`int<class_int>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_eq_Color:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_eq_Color>`

如果颜色完全相同，则返回 ``true``\ 。

\ **注意：**\ 由于浮点精度误差，请考虑改用更可靠的 :ref:`is_equal_approx()<class_Color_method_is_equal_approx>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_idx_int>`

使用索引访问颜色分量。\ ``[0]`` 相当于 :ref:`r<class_Color_property_r>`\ ，\ ``[1]`` 相当于 :ref:`g<class_Color_property_g>`\ ，\ ``[2]`` 相当于 :ref:`b<class_Color_property_b>`\ ，\ ``[3]`` 相当于 :ref:`a<class_Color_property_a>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_unplus:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator unary+**\ (\ ) :ref:`🔗<class_Color_operator_unplus>`

返回与 ``+`` 不存在时相同的值。单目 ``+`` 没有作用，但有时可以使你的代码更具可读性。

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_unminus:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator unary-**\ (\ ) :ref:`🔗<class_Color_operator_unminus>`

反转给定的颜色。这相当于 ``Color.WHITE - c`` 或 ``Color(1 - c.r, 1 - c.g, 1 - c.b, 1 - c.a)``\ 。与 :ref:`inverted()<class_Color_method_inverted>` 不同，\ :ref:`a<class_Color_property_a>` 分量也将被反转。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
