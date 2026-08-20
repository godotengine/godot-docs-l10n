:github_url: hide

.. _class_Color:

Color
=====

Цвет, представленный в формате RGBA.

.. rst-class:: classref-introduction-group

Описание
----------------

Цвет, представленный в формате RGBA компонентами красного (:ref:`r<class_Color_property_r>`), зеленого (:ref:`g<class_Color_property_g>`), синего (:ref:`b<class_Color_property_b>`) и альфа-канала (:ref:`a<class_Color_property_a>`). Каждый компонент представляет собой 32-битное значение с плавающей запятой, обычно в диапазоне от ``0.0`` до ``1.0``. Некоторые свойства (например, :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>`) могут поддерживать значения больше ``1.0`` для слишком ярких цветов или цветов HDR (High Dynamic Range).

Цвета могут быть созданы несколькими способами: с помощью различных конструкторов **Color**, с помощью статических методов, таких как :ref:`from_hsv()<class_Color_method_from_hsv>`, и с помощью имени из набора стандартизированных цветов, основанных на `названиях цветов X11 <https://en.wikipedia.org/wiki/X11_color_names>`__ с добавлением :ref:`TRANSPARENT<class_Color_constant_TRANSPARENT>`.

\ `Шпаргалка по цветовым константам <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/color_constants.png>`__\ 

Хотя **Color** может использоваться для хранения значений любой кодировки, Godot ожидает, что свойства красного (:ref:`r<class_Color_property_r>`), зеленого (:ref:`g<class_Color_property_g>`) и синего (:ref:`b<class_Color_property_b>`) из **Color** будут закодированы с использованием `нелинейной функции преобразования sRGB <https://en.wikipedia.org/wiki/SRGB#Transfer_function_(%22gamma%22)>`__, если не указано иное. Эта цветовая кодировка используется многими традиционными инструментами для работы с графикой и веб-контентом, что упрощает сопоставление цветов между Godot и этими инструментами. Godot использует `Rec. Основные цвета ITU-R BT.709 <https://en.wikipedia.org/wiki/Rec._709>`__, используемые стандартом sRGB.

Все физические расчеты, такие как расчеты освещения, и преобразования колориметрии, такие как :ref:`get_luminance()<class_Color_method_get_luminance>`, должны выполняться над линейно закодированными значениями для получения корректных результатов. При выполнении этих расчетов преобразуйте **Color** в линейное кодирование и обратно, используя :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` и :ref:`linear_to_srgb()<class_Color_method_linear_to_srgb>`.

\ **Примечание:** В логическом контексте значение Color будет равно ``false``, если оно равно ``Color(0, 0, 0, 1)`` (непрозрачный черный). В противном случае значение Color всегда будет равно ``true``.

\ **Примечание:** В C# цветовые константы определены в статическом классе ``Colors``, а не в ``Color``. Кроме того, имена цветов используют синтаксис ``PascalCase`` вместо ``UPPER_SNAKE_CASE``. Например, ``Color.ALICE_BLUE`` в GDScript соответствует ``Colors.AliceBlue`` в C#.

.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `2D GD Paint Дэмо <https://godotengine.org/asset-library/asset/2768>`__

- `Демонстрация интерполяции твинов <https://godotengine.org/asset-library/asset/2733>`__

- `GUI Drag And Drop Демо <https://godotengine.org/asset-library/asset/2767>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Конструкторы
------------------------

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

Методы
------------

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

Операторы
------------------

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

Константы
------------------

.. _class_Color_constant_ALICE_BLUE:

.. rst-class:: classref-constant

**ALICE_BLUE** = ``Color(0.9411765, 0.972549, 1, 1)`` :ref:`🔗<class_Color_constant_ALICE_BLUE>`

Синяя Элис.

.. _class_Color_constant_ANTIQUE_WHITE:

.. rst-class:: classref-constant

**ANTIQUE_WHITE** = ``Color(0.98039216, 0.92156863, 0.84313726, 1)`` :ref:`🔗<class_Color_constant_ANTIQUE_WHITE>`

Античный белый.

.. _class_Color_constant_AQUA:

.. rst-class:: classref-constant

**AQUA** = ``Color(0, 1, 1, 1)`` :ref:`🔗<class_Color_constant_AQUA>`

Цвет аква.

.. _class_Color_constant_AQUAMARINE:

.. rst-class:: classref-constant

**AQUAMARINE** = ``Color(0.49803922, 1, 0.83137256, 1)`` :ref:`🔗<class_Color_constant_AQUAMARINE>`

Цвет аквамарина.

.. _class_Color_constant_AZURE:

.. rst-class:: classref-constant

**AZURE** = ``Color(0.9411765, 1, 1, 1)`` :ref:`🔗<class_Color_constant_AZURE>`

Лазурный цвет.

.. _class_Color_constant_BEIGE:

.. rst-class:: classref-constant

**BEIGE** = ``Color(0.9607843, 0.9607843, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_BEIGE>`

Бежевый цвет.

.. _class_Color_constant_BISQUE:

.. rst-class:: classref-constant

**BISQUE** = ``Color(1, 0.89411765, 0.76862746, 1)`` :ref:`🔗<class_Color_constant_BISQUE>`

Цвет бисквита.

.. _class_Color_constant_BLACK:

.. rst-class:: classref-constant

**BLACK** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Color_constant_BLACK>`

Черный цвет. В GDScript это значение по умолчанию для любого цвета.

.. _class_Color_constant_BLANCHED_ALMOND:

.. rst-class:: classref-constant

**BLANCHED_ALMOND** = ``Color(1, 0.92156863, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_BLANCHED_ALMOND>`

Цвет бланшированного миндаля.

.. _class_Color_constant_BLUE:

.. rst-class:: classref-constant

**BLUE** = ``Color(0, 0, 1, 1)`` :ref:`🔗<class_Color_constant_BLUE>`

Синий цвет.

.. _class_Color_constant_BLUE_VIOLET:

.. rst-class:: classref-constant

**BLUE_VIOLET** = ``Color(0.5411765, 0.16862746, 0.8862745, 1)`` :ref:`🔗<class_Color_constant_BLUE_VIOLET>`

Сине-фиолетовый.

.. _class_Color_constant_BROWN:

.. rst-class:: classref-constant

**BROWN** = ``Color(0.64705884, 0.16470589, 0.16470589, 1)`` :ref:`🔗<class_Color_constant_BROWN>`

Коричневый цвет.

.. _class_Color_constant_BURLYWOOD:

.. rst-class:: classref-constant

**BURLYWOOD** = ``Color(0.87058824, 0.72156864, 0.5294118, 1)`` :ref:`🔗<class_Color_constant_BURLYWOOD>`

Цвет бурливуда.

.. _class_Color_constant_CADET_BLUE:

.. rst-class:: classref-constant

**CADET_BLUE** = ``Color(0.37254903, 0.61960787, 0.627451, 1)`` :ref:`🔗<class_Color_constant_CADET_BLUE>`

Серо-синий.

.. _class_Color_constant_CHARTREUSE:

.. rst-class:: classref-constant

**CHARTREUSE** = ``Color(0.49803922, 1, 0, 1)`` :ref:`🔗<class_Color_constant_CHARTREUSE>`

Цвет шартрез.

.. _class_Color_constant_CHOCOLATE:

.. rst-class:: classref-constant

**CHOCOLATE** = ``Color(0.8235294, 0.4117647, 0.11764706, 1)`` :ref:`🔗<class_Color_constant_CHOCOLATE>`

Шоколадный цвет.

.. _class_Color_constant_CORAL:

.. rst-class:: classref-constant

**CORAL** = ``Color(1, 0.49803922, 0.3137255, 1)`` :ref:`🔗<class_Color_constant_CORAL>`

Коралловый цвет.

.. _class_Color_constant_CORNFLOWER_BLUE:

.. rst-class:: classref-constant

**CORNFLOWER_BLUE** = ``Color(0.39215687, 0.58431375, 0.92941177, 1)`` :ref:`🔗<class_Color_constant_CORNFLOWER_BLUE>`

Васильково-синий цвет.

.. _class_Color_constant_CORNSILK:

.. rst-class:: classref-constant

**CORNSILK** = ``Color(1, 0.972549, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_CORNSILK>`

Цвет кукурузных рылец.

.. _class_Color_constant_CRIMSON:

.. rst-class:: classref-constant

**CRIMSON** = ``Color(0.8627451, 0.078431375, 0.23529412, 1)`` :ref:`🔗<class_Color_constant_CRIMSON>`

Багровый цвет.

.. _class_Color_constant_CYAN:

.. rst-class:: classref-constant

**CYAN** = ``Color(0, 1, 1, 1)`` :ref:`🔗<class_Color_constant_CYAN>`

Голубой цвет.

.. _class_Color_constant_DARK_BLUE:

.. rst-class:: classref-constant

**DARK_BLUE** = ``Color(0, 0, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_BLUE>`

Темно-синий цвет.

.. _class_Color_constant_DARK_CYAN:

.. rst-class:: classref-constant

**DARK_CYAN** = ``Color(0, 0.54509807, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_CYAN>`

Тёмный циан.

.. _class_Color_constant_DARK_GOLDENROD:

.. rst-class:: classref-constant

**DARK_GOLDENROD** = ``Color(0.72156864, 0.5254902, 0.043137256, 1)`` :ref:`🔗<class_Color_constant_DARK_GOLDENROD>`

Темно-золотистый.

.. _class_Color_constant_DARK_GRAY:

.. rst-class:: classref-constant

**DARK_GRAY** = ``Color(0.6627451, 0.6627451, 0.6627451, 1)`` :ref:`🔗<class_Color_constant_DARK_GRAY>`

Темно-серый.

.. _class_Color_constant_DARK_GREEN:

.. rst-class:: classref-constant

**DARK_GREEN** = ``Color(0, 0.39215687, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_GREEN>`

Темно-зеленый.

.. _class_Color_constant_DARK_KHAKI:

.. rst-class:: classref-constant

**DARK_KHAKI** = ``Color(0.7411765, 0.7176471, 0.41960785, 1)`` :ref:`🔗<class_Color_constant_DARK_KHAKI>`

Темный хаки.

.. _class_Color_constant_DARK_MAGENTA:

.. rst-class:: classref-constant

**DARK_MAGENTA** = ``Color(0.54509807, 0, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_MAGENTA>`

Тёмный фуксин.

.. _class_Color_constant_DARK_OLIVE_GREEN:

.. rst-class:: classref-constant

**DARK_OLIVE_GREEN** = ``Color(0.33333334, 0.41960785, 0.18431373, 1)`` :ref:`🔗<class_Color_constant_DARK_OLIVE_GREEN>`

Цвет темно-оливково-зеленый.

.. _class_Color_constant_DARK_ORANGE:

.. rst-class:: classref-constant

**DARK_ORANGE** = ``Color(1, 0.54901963, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_ORANGE>`

Темно-оранжевый.

.. _class_Color_constant_DARK_ORCHID:

.. rst-class:: classref-constant

**DARK_ORCHID** = ``Color(0.6, 0.19607843, 0.8, 1)`` :ref:`🔗<class_Color_constant_DARK_ORCHID>`

Темно-лиловый.

.. _class_Color_constant_DARK_RED:

.. rst-class:: classref-constant

**DARK_RED** = ``Color(0.54509807, 0, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_RED>`

Темно-красный.

.. _class_Color_constant_DARK_SALMON:

.. rst-class:: classref-constant

**DARK_SALMON** = ``Color(0.9137255, 0.5882353, 0.47843137, 1)`` :ref:`🔗<class_Color_constant_DARK_SALMON>`

Тёмная лососина.

.. _class_Color_constant_DARK_SEA_GREEN:

.. rst-class:: classref-constant

**DARK_SEA_GREEN** = ``Color(0.56078434, 0.7372549, 0.56078434, 1)`` :ref:`🔗<class_Color_constant_DARK_SEA_GREEN>`

Цвет темно-зеленой морской волны.

.. _class_Color_constant_DARK_SLATE_BLUE:

.. rst-class:: classref-constant

**DARK_SLATE_BLUE** = ``Color(0.28235295, 0.23921569, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_SLATE_BLUE>`

Цвет темно-синий.

.. _class_Color_constant_DARK_SLATE_GRAY:

.. rst-class:: classref-constant

**DARK_SLATE_GRAY** = ``Color(0.18431373, 0.30980393, 0.30980393, 1)`` :ref:`🔗<class_Color_constant_DARK_SLATE_GRAY>`

Цвет темно-серый.

.. _class_Color_constant_DARK_TURQUOISE:

.. rst-class:: classref-constant

**DARK_TURQUOISE** = ``Color(0, 0.80784315, 0.81960785, 1)`` :ref:`🔗<class_Color_constant_DARK_TURQUOISE>`

Темно-бирюзовый.

.. _class_Color_constant_DARK_VIOLET:

.. rst-class:: classref-constant

**DARK_VIOLET** = ``Color(0.5803922, 0, 0.827451, 1)`` :ref:`🔗<class_Color_constant_DARK_VIOLET>`

Темно-фиолетовый цвет.

.. _class_Color_constant_DEEP_PINK:

.. rst-class:: classref-constant

**DEEP_PINK** = ``Color(1, 0.078431375, 0.5764706, 1)`` :ref:`🔗<class_Color_constant_DEEP_PINK>`

Пурпурно-розовый.

.. _class_Color_constant_DEEP_SKY_BLUE:

.. rst-class:: classref-constant

**DEEP_SKY_BLUE** = ``Color(0, 0.7490196, 1, 1)`` :ref:`🔗<class_Color_constant_DEEP_SKY_BLUE>`

Насыщенный небесно-голубой цвет.

.. _class_Color_constant_DIM_GRAY:

.. rst-class:: classref-constant

**DIM_GRAY** = ``Color(0.4117647, 0.4117647, 0.4117647, 1)`` :ref:`🔗<class_Color_constant_DIM_GRAY>`

Тускло-серый.

.. _class_Color_constant_DODGER_BLUE:

.. rst-class:: classref-constant

**DODGER_BLUE** = ``Color(0.11764706, 0.5647059, 1, 1)`` :ref:`🔗<class_Color_constant_DODGER_BLUE>`

Защитно-синий.

.. _class_Color_constant_FIREBRICK:

.. rst-class:: classref-constant

**FIREBRICK** = ``Color(0.69803923, 0.13333334, 0.13333334, 1)`` :ref:`🔗<class_Color_constant_FIREBRICK>`

Кирпичный цвет.

.. _class_Color_constant_FLORAL_WHITE:

.. rst-class:: classref-constant

**FLORAL_WHITE** = ``Color(1, 0.98039216, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_FLORAL_WHITE>`

Цветочно-белый.

.. _class_Color_constant_FOREST_GREEN:

.. rst-class:: classref-constant

**FOREST_GREEN** = ``Color(0.13333334, 0.54509807, 0.13333334, 1)`` :ref:`🔗<class_Color_constant_FOREST_GREEN>`

Лесная зелень.

.. _class_Color_constant_FUCHSIA:

.. rst-class:: classref-constant

**FUCHSIA** = ``Color(1, 0, 1, 1)`` :ref:`🔗<class_Color_constant_FUCHSIA>`

Цвет фуксии.

.. _class_Color_constant_GAINSBORO:

.. rst-class:: classref-constant

**GAINSBORO** = ``Color(0.8627451, 0.8627451, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_GAINSBORO>`

Цвет Гейнсборо.

.. _class_Color_constant_GHOST_WHITE:

.. rst-class:: classref-constant

**GHOST_WHITE** = ``Color(0.972549, 0.972549, 1, 1)`` :ref:`🔗<class_Color_constant_GHOST_WHITE>`

Призрачно-белый.

.. _class_Color_constant_GOLD:

.. rst-class:: classref-constant

**GOLD** = ``Color(1, 0.84313726, 0, 1)`` :ref:`🔗<class_Color_constant_GOLD>`

Золотой цвет.

.. _class_Color_constant_GOLDENROD:

.. rst-class:: classref-constant

**GOLDENROD** = ``Color(0.85490197, 0.64705884, 0.1254902, 1)`` :ref:`🔗<class_Color_constant_GOLDENROD>`

Золотисто-рыжий цвет.

.. _class_Color_constant_GRAY:

.. rst-class:: classref-constant

**GRAY** = ``Color(0.74509805, 0.74509805, 0.74509805, 1)`` :ref:`🔗<class_Color_constant_GRAY>`

Серый цвет.

.. _class_Color_constant_GREEN:

.. rst-class:: classref-constant

**GREEN** = ``Color(0, 1, 0, 1)`` :ref:`🔗<class_Color_constant_GREEN>`

Зеленый цвет.

.. _class_Color_constant_GREEN_YELLOW:

.. rst-class:: classref-constant

**GREEN_YELLOW** = ``Color(0.6784314, 1, 0.18431373, 1)`` :ref:`🔗<class_Color_constant_GREEN_YELLOW>`

Жёлто-зелёный.

.. _class_Color_constant_HONEYDEW:

.. rst-class:: classref-constant

**HONEYDEW** = ``Color(0.9411765, 1, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_HONEYDEW>`

Цвет медовой росы.

.. _class_Color_constant_HOT_PINK:

.. rst-class:: classref-constant

**HOT_PINK** = ``Color(1, 0.4117647, 0.7058824, 1)`` :ref:`🔗<class_Color_constant_HOT_PINK>`

Ярко-розовый.

.. _class_Color_constant_INDIAN_RED:

.. rst-class:: classref-constant

**INDIAN_RED** = ``Color(0.8039216, 0.36078432, 0.36078432, 1)`` :ref:`🔗<class_Color_constant_INDIAN_RED>`

Индийский красный.

.. _class_Color_constant_INDIGO:

.. rst-class:: classref-constant

**INDIGO** = ``Color(0.29411766, 0, 0.50980395, 1)`` :ref:`🔗<class_Color_constant_INDIGO>`

Цвет индиго.

.. _class_Color_constant_IVORY:

.. rst-class:: classref-constant

**IVORY** = ``Color(1, 1, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_IVORY>`

Цвет слоновой кости.

.. _class_Color_constant_KHAKI:

.. rst-class:: classref-constant

**KHAKI** = ``Color(0.9411765, 0.9019608, 0.54901963, 1)`` :ref:`🔗<class_Color_constant_KHAKI>`

Цвет хаки.

.. _class_Color_constant_LAVENDER:

.. rst-class:: classref-constant

**LAVENDER** = ``Color(0.9019608, 0.9019608, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_LAVENDER>`

Цвет лаванды.

.. _class_Color_constant_LAVENDER_BLUSH:

.. rst-class:: classref-constant

**LAVENDER_BLUSH** = ``Color(1, 0.9411765, 0.9607843, 1)`` :ref:`🔗<class_Color_constant_LAVENDER_BLUSH>`

Лавандовый румянец.

.. _class_Color_constant_LAWN_GREEN:

.. rst-class:: classref-constant

**LAWN_GREEN** = ``Color(0.4862745, 0.9882353, 0, 1)`` :ref:`🔗<class_Color_constant_LAWN_GREEN>`

Зеленый газон.

.. _class_Color_constant_LEMON_CHIFFON:

.. rst-class:: classref-constant

**LEMON_CHIFFON** = ``Color(1, 0.98039216, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_LEMON_CHIFFON>`

Лимонный шифон.

.. _class_Color_constant_LIGHT_BLUE:

.. rst-class:: classref-constant

**LIGHT_BLUE** = ``Color(0.6784314, 0.84705883, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_LIGHT_BLUE>`

Светло-голубой.

.. _class_Color_constant_LIGHT_CORAL:

.. rst-class:: classref-constant

**LIGHT_CORAL** = ``Color(0.9411765, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_LIGHT_CORAL>`

Светло-коралловый.

.. _class_Color_constant_LIGHT_CYAN:

.. rst-class:: classref-constant

**LIGHT_CYAN** = ``Color(0.8784314, 1, 1, 1)`` :ref:`🔗<class_Color_constant_LIGHT_CYAN>`

Светло-синий.

.. _class_Color_constant_LIGHT_GOLDENROD:

.. rst-class:: classref-constant

**LIGHT_GOLDENROD** = ``Color(0.98039216, 0.98039216, 0.8235294, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GOLDENROD>`

Светло-золотистый.

.. _class_Color_constant_LIGHT_GRAY:

.. rst-class:: classref-constant

**LIGHT_GRAY** = ``Color(0.827451, 0.827451, 0.827451, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GRAY>`

Светло-серый цвет.

.. _class_Color_constant_LIGHT_GREEN:

.. rst-class:: classref-constant

**LIGHT_GREEN** = ``Color(0.5647059, 0.93333334, 0.5647059, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GREEN>`

Светло-зеленый.

.. _class_Color_constant_LIGHT_PINK:

.. rst-class:: classref-constant

**LIGHT_PINK** = ``Color(1, 0.7137255, 0.75686276, 1)`` :ref:`🔗<class_Color_constant_LIGHT_PINK>`

Светло-розовый.

.. _class_Color_constant_LIGHT_SALMON:

.. rst-class:: classref-constant

**LIGHT_SALMON** = ``Color(1, 0.627451, 0.47843137, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SALMON>`

Светло-лососевый.

.. _class_Color_constant_LIGHT_SEA_GREEN:

.. rst-class:: classref-constant

**LIGHT_SEA_GREEN** = ``Color(0.1254902, 0.69803923, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SEA_GREEN>`

Цвет светло-зеленой морской волны.

.. _class_Color_constant_LIGHT_SKY_BLUE:

.. rst-class:: classref-constant

**LIGHT_SKY_BLUE** = ``Color(0.5294118, 0.80784315, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SKY_BLUE>`

Цвет светло-голубой.

.. _class_Color_constant_LIGHT_SLATE_GRAY:

.. rst-class:: classref-constant

**LIGHT_SLATE_GRAY** = ``Color(0.46666667, 0.53333336, 0.6, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SLATE_GRAY>`

Цвет светло-серый.

.. _class_Color_constant_LIGHT_STEEL_BLUE:

.. rst-class:: classref-constant

**LIGHT_STEEL_BLUE** = ``Color(0.6901961, 0.76862746, 0.87058824, 1)`` :ref:`🔗<class_Color_constant_LIGHT_STEEL_BLUE>`

Цвет светло-стальной синевы.

.. _class_Color_constant_LIGHT_YELLOW:

.. rst-class:: classref-constant

**LIGHT_YELLOW** = ``Color(1, 1, 0.8784314, 1)`` :ref:`🔗<class_Color_constant_LIGHT_YELLOW>`

Светло-желтый.

.. _class_Color_constant_LIME:

.. rst-class:: classref-constant

**LIME** = ``Color(0, 1, 0, 1)`` :ref:`🔗<class_Color_constant_LIME>`

Цвет лайма.

.. _class_Color_constant_LIME_GREEN:

.. rst-class:: classref-constant

**LIME_GREEN** = ``Color(0.19607843, 0.8039216, 0.19607843, 1)`` :ref:`🔗<class_Color_constant_LIME_GREEN>`

Зеленый лайм.

.. _class_Color_constant_LINEN:

.. rst-class:: classref-constant

**LINEN** = ``Color(0.98039216, 0.9411765, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_LINEN>`

Цвет льна.

.. _class_Color_constant_MAGENTA:

.. rst-class:: classref-constant

**MAGENTA** = ``Color(1, 0, 1, 1)`` :ref:`🔗<class_Color_constant_MAGENTA>`

Пурпурный цвет.

.. _class_Color_constant_MAROON:

.. rst-class:: classref-constant

**MAROON** = ``Color(0.6901961, 0.1882353, 0.3764706, 1)`` :ref:`🔗<class_Color_constant_MAROON>`

Бордовый цвет.

.. _class_Color_constant_MEDIUM_AQUAMARINE:

.. rst-class:: classref-constant

**MEDIUM_AQUAMARINE** = ``Color(0.4, 0.8039216, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_AQUAMARINE>`

Умеренный аквамарин.

.. _class_Color_constant_MEDIUM_BLUE:

.. rst-class:: classref-constant

**MEDIUM_BLUE** = ``Color(0, 0, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_BLUE>`

Умеренно-синий.

.. _class_Color_constant_MEDIUM_ORCHID:

.. rst-class:: classref-constant

**MEDIUM_ORCHID** = ``Color(0.7294118, 0.33333334, 0.827451, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_ORCHID>`

Умеренный лиловый.

.. _class_Color_constant_MEDIUM_PURPLE:

.. rst-class:: classref-constant

**MEDIUM_PURPLE** = ``Color(0.5764706, 0.4392157, 0.85882354, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_PURPLE>`

Средне-фиолетовый.

.. _class_Color_constant_MEDIUM_SEA_GREEN:

.. rst-class:: classref-constant

**MEDIUM_SEA_GREEN** = ``Color(0.23529412, 0.7019608, 0.44313726, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SEA_GREEN>`

Цвет морской волны средней насыщенности.

.. _class_Color_constant_MEDIUM_SLATE_BLUE:

.. rst-class:: classref-constant

**MEDIUM_SLATE_BLUE** = ``Color(0.48235294, 0.40784314, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SLATE_BLUE>`

Цвет средне-синий.

.. _class_Color_constant_MEDIUM_SPRING_GREEN:

.. rst-class:: classref-constant

**MEDIUM_SPRING_GREEN** = ``Color(0, 0.98039216, 0.6039216, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SPRING_GREEN>`

Цвет средне-весенне-зеленый.

.. _class_Color_constant_MEDIUM_TURQUOISE:

.. rst-class:: classref-constant

**MEDIUM_TURQUOISE** = ``Color(0.28235295, 0.81960785, 0.8, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_TURQUOISE>`

Средне-бирюзовый.

.. _class_Color_constant_MEDIUM_VIOLET_RED:

.. rst-class:: classref-constant

**MEDIUM_VIOLET_RED** = ``Color(0.78039217, 0.08235294, 0.52156866, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_VIOLET_RED>`

Цвет средне-фиолетово-красный.

.. _class_Color_constant_MIDNIGHT_BLUE:

.. rst-class:: classref-constant

**MIDNIGHT_BLUE** = ``Color(0.09803922, 0.09803922, 0.4392157, 1)`` :ref:`🔗<class_Color_constant_MIDNIGHT_BLUE>`

Полуночно-синий.

.. _class_Color_constant_MINT_CREAM:

.. rst-class:: classref-constant

**MINT_CREAM** = ``Color(0.9607843, 1, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_MINT_CREAM>`

Мятно-кремовый.

.. _class_Color_constant_MISTY_ROSE:

.. rst-class:: classref-constant

**MISTY_ROSE** = ``Color(1, 0.89411765, 0.88235295, 1)`` :ref:`🔗<class_Color_constant_MISTY_ROSE>`

Туманно-розовый.

.. _class_Color_constant_MOCCASIN:

.. rst-class:: classref-constant

**MOCCASIN** = ``Color(1, 0.89411765, 0.70980394, 1)`` :ref:`🔗<class_Color_constant_MOCCASIN>`

Цвет мокасин.

.. _class_Color_constant_NAVAJO_WHITE:

.. rst-class:: classref-constant

**NAVAJO_WHITE** = ``Color(1, 0.87058824, 0.6784314, 1)`` :ref:`🔗<class_Color_constant_NAVAJO_WHITE>`

Белый навахо.

.. _class_Color_constant_NAVY_BLUE:

.. rst-class:: classref-constant

**NAVY_BLUE** = ``Color(0, 0, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_NAVY_BLUE>`

Темно-синий.

.. _class_Color_constant_OLD_LACE:

.. rst-class:: classref-constant

**OLD_LACE** = ``Color(0.99215686, 0.9607843, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_OLD_LACE>`

Старое кружево.

.. _class_Color_constant_OLIVE:

.. rst-class:: classref-constant

**OLIVE** = ``Color(0.5019608, 0.5019608, 0, 1)`` :ref:`🔗<class_Color_constant_OLIVE>`

Оливковый цвет.

.. _class_Color_constant_OLIVE_DRAB:

.. rst-class:: classref-constant

**OLIVE_DRAB** = ``Color(0.41960785, 0.5568628, 0.13725491, 1)`` :ref:`🔗<class_Color_constant_OLIVE_DRAB>`

Нежно-оливковый.

.. _class_Color_constant_ORANGE:

.. rst-class:: classref-constant

**ORANGE** = ``Color(1, 0.64705884, 0, 1)`` :ref:`🔗<class_Color_constant_ORANGE>`

Оранжевый цвет.

.. _class_Color_constant_ORANGE_RED:

.. rst-class:: classref-constant

**ORANGE_RED** = ``Color(1, 0.27058825, 0, 1)`` :ref:`🔗<class_Color_constant_ORANGE_RED>`

Оранжево-красный.

.. _class_Color_constant_ORCHID:

.. rst-class:: classref-constant

**ORCHID** = ``Color(0.85490197, 0.4392157, 0.8392157, 1)`` :ref:`🔗<class_Color_constant_ORCHID>`

Цвет орхидеи.

.. _class_Color_constant_PALE_GOLDENROD:

.. rst-class:: classref-constant

**PALE_GOLDENROD** = ``Color(0.93333334, 0.9098039, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_PALE_GOLDENROD>`

Бледно-золотистый.

.. _class_Color_constant_PALE_GREEN:

.. rst-class:: classref-constant

**PALE_GREEN** = ``Color(0.59607846, 0.9843137, 0.59607846, 1)`` :ref:`🔗<class_Color_constant_PALE_GREEN>`

Бледно-зеленый.

.. _class_Color_constant_PALE_TURQUOISE:

.. rst-class:: classref-constant

**PALE_TURQUOISE** = ``Color(0.6862745, 0.93333334, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_PALE_TURQUOISE>`

Бледно-бирюзовый.

.. _class_Color_constant_PALE_VIOLET_RED:

.. rst-class:: classref-constant

**PALE_VIOLET_RED** = ``Color(0.85882354, 0.4392157, 0.5764706, 1)`` :ref:`🔗<class_Color_constant_PALE_VIOLET_RED>`

Бледно-фиолетово-красный цвет.

.. _class_Color_constant_PAPAYA_WHIP:

.. rst-class:: classref-constant

**PAPAYA_WHIP** = ``Color(1, 0.9372549, 0.8352941, 1)`` :ref:`🔗<class_Color_constant_PAPAYA_WHIP>`

Побег папайи.

.. _class_Color_constant_PEACH_PUFF:

.. rst-class:: classref-constant

**PEACH_PUFF** = ``Color(1, 0.85490197, 0.7254902, 1)`` :ref:`🔗<class_Color_constant_PEACH_PUFF>`

Тёмно-персиковый.

.. _class_Color_constant_PERU:

.. rst-class:: classref-constant

**PERU** = ``Color(0.8039216, 0.52156866, 0.24705882, 1)`` :ref:`🔗<class_Color_constant_PERU>`

Перуанский цвет.

.. _class_Color_constant_PINK:

.. rst-class:: classref-constant

**PINK** = ``Color(1, 0.7529412, 0.79607844, 1)`` :ref:`🔗<class_Color_constant_PINK>`

Розовый цвет.

.. _class_Color_constant_PLUM:

.. rst-class:: classref-constant

**PLUM** = ``Color(0.8666667, 0.627451, 0.8666667, 1)`` :ref:`🔗<class_Color_constant_PLUM>`

Цвет сливы.

.. _class_Color_constant_POWDER_BLUE:

.. rst-class:: classref-constant

**POWDER_BLUE** = ``Color(0.6901961, 0.8784314, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_POWDER_BLUE>`

Зеленовато-голубой.

.. _class_Color_constant_PURPLE:

.. rst-class:: classref-constant

**PURPLE** = ``Color(0.627451, 0.1254902, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_PURPLE>`

Фиолетовый цвет.

.. _class_Color_constant_REBECCA_PURPLE:

.. rst-class:: classref-constant

**REBECCA_PURPLE** = ``Color(0.4, 0.2, 0.6, 1)`` :ref:`🔗<class_Color_constant_REBECCA_PURPLE>`

Фиолетовый Ребекки.

.. _class_Color_constant_RED:

.. rst-class:: classref-constant

**RED** = ``Color(1, 0, 0, 1)`` :ref:`🔗<class_Color_constant_RED>`

Красный цвет.

.. _class_Color_constant_ROSY_BROWN:

.. rst-class:: classref-constant

**ROSY_BROWN** = ``Color(0.7372549, 0.56078434, 0.56078434, 1)`` :ref:`🔗<class_Color_constant_ROSY_BROWN>`

Розово-коричневый.

.. _class_Color_constant_ROYAL_BLUE:

.. rst-class:: classref-constant

**ROYAL_BLUE** = ``Color(0.25490198, 0.4117647, 0.88235295, 1)`` :ref:`🔗<class_Color_constant_ROYAL_BLUE>`

Королевский синий.

.. _class_Color_constant_SADDLE_BROWN:

.. rst-class:: classref-constant

**SADDLE_BROWN** = ``Color(0.54509807, 0.27058825, 0.07450981, 1)`` :ref:`🔗<class_Color_constant_SADDLE_BROWN>`

Кожаного седла.

.. _class_Color_constant_SALMON:

.. rst-class:: classref-constant

**SALMON** = ``Color(0.98039216, 0.5019608, 0.44705883, 1)`` :ref:`🔗<class_Color_constant_SALMON>`

Цвет лосося.

.. _class_Color_constant_SANDY_BROWN:

.. rst-class:: classref-constant

**SANDY_BROWN** = ``Color(0.95686275, 0.6431373, 0.3764706, 1)`` :ref:`🔗<class_Color_constant_SANDY_BROWN>`

Рыжеватый.

.. _class_Color_constant_SEA_GREEN:

.. rst-class:: classref-constant

**SEA_GREEN** = ``Color(0.18039216, 0.54509807, 0.34117648, 1)`` :ref:`🔗<class_Color_constant_SEA_GREEN>`

Морской волны.

.. _class_Color_constant_SEASHELL:

.. rst-class:: classref-constant

**SEASHELL** = ``Color(1, 0.9607843, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_SEASHELL>`

Цвет морской раковины.

.. _class_Color_constant_SIENNA:

.. rst-class:: classref-constant

**SIENNA** = ``Color(0.627451, 0.32156864, 0.1764706, 1)`` :ref:`🔗<class_Color_constant_SIENNA>`

Цвет сиены.

.. _class_Color_constant_SILVER:

.. rst-class:: classref-constant

**SILVER** = ``Color(0.7529412, 0.7529412, 0.7529412, 1)`` :ref:`🔗<class_Color_constant_SILVER>`

Серебряный цвет.

.. _class_Color_constant_SKY_BLUE:

.. rst-class:: classref-constant

**SKY_BLUE** = ``Color(0.5294118, 0.80784315, 0.92156863, 1)`` :ref:`🔗<class_Color_constant_SKY_BLUE>`

Небесно-голубой цвет.

.. _class_Color_constant_SLATE_BLUE:

.. rst-class:: classref-constant

**SLATE_BLUE** = ``Color(0.41568628, 0.3529412, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_SLATE_BLUE>`

Аспидно-синий.

.. _class_Color_constant_SLATE_GRAY:

.. rst-class:: classref-constant

**SLATE_GRAY** = ``Color(0.4392157, 0.5019608, 0.5647059, 1)`` :ref:`🔗<class_Color_constant_SLATE_GRAY>`

Серый шифер.

.. _class_Color_constant_SNOW:

.. rst-class:: classref-constant

**SNOW** = ``Color(1, 0.98039216, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_SNOW>`

Цвет снега.

.. _class_Color_constant_SPRING_GREEN:

.. rst-class:: classref-constant

**SPRING_GREEN** = ``Color(0, 1, 0.49803922, 1)`` :ref:`🔗<class_Color_constant_SPRING_GREEN>`

Зелёная весна.

.. _class_Color_constant_STEEL_BLUE:

.. rst-class:: classref-constant

**STEEL_BLUE** = ``Color(0.27450982, 0.50980395, 0.7058824, 1)`` :ref:`🔗<class_Color_constant_STEEL_BLUE>`

Голубовато-стальной.

.. _class_Color_constant_TAN:

.. rst-class:: classref-constant

**TAN** = ``Color(0.8235294, 0.7058824, 0.54901963, 1)`` :ref:`🔗<class_Color_constant_TAN>`

Цвет загара.

.. _class_Color_constant_TEAL:

.. rst-class:: classref-constant

**TEAL** = ``Color(0, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_TEAL>`

Цвет тила.

.. _class_Color_constant_THISTLE:

.. rst-class:: classref-constant

**THISTLE** = ``Color(0.84705883, 0.7490196, 0.84705883, 1)`` :ref:`🔗<class_Color_constant_THISTLE>`

Цвет чертополоха.

.. _class_Color_constant_TOMATO:

.. rst-class:: classref-constant

**TOMATO** = ``Color(1, 0.3882353, 0.2784314, 1)`` :ref:`🔗<class_Color_constant_TOMATO>`

Цвет томатов.

.. _class_Color_constant_TRANSPARENT:

.. rst-class:: classref-constant

**TRANSPARENT** = ``Color(1, 1, 1, 0)`` :ref:`🔗<class_Color_constant_TRANSPARENT>`

Прозрачный цвет (белый с нулевой альфа-каналом).

.. _class_Color_constant_TURQUOISE:

.. rst-class:: classref-constant

**TURQUOISE** = ``Color(0.2509804, 0.8784314, 0.8156863, 1)`` :ref:`🔗<class_Color_constant_TURQUOISE>`

Бирюзовый цвет.

.. _class_Color_constant_VIOLET:

.. rst-class:: classref-constant

**VIOLET** = ``Color(0.93333334, 0.50980395, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_VIOLET>`

Фиолетовый цвет.

.. _class_Color_constant_WEB_GRAY:

.. rst-class:: classref-constant

**WEB_GRAY** = ``Color(0.5019608, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_WEB_GRAY>`

Серый.

.. _class_Color_constant_WEB_GREEN:

.. rst-class:: classref-constant

**WEB_GREEN** = ``Color(0, 0.5019608, 0, 1)`` :ref:`🔗<class_Color_constant_WEB_GREEN>`

Зеленый.

.. _class_Color_constant_WEB_MAROON:

.. rst-class:: classref-constant

**WEB_MAROON** = ``Color(0.5019608, 0, 0, 1)`` :ref:`🔗<class_Color_constant_WEB_MAROON>`

Бордовый.

.. _class_Color_constant_WEB_PURPLE:

.. rst-class:: classref-constant

**WEB_PURPLE** = ``Color(0.5019608, 0, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_WEB_PURPLE>`

Пурпурный.

.. _class_Color_constant_WHEAT:

.. rst-class:: classref-constant

**WHEAT** = ``Color(0.9607843, 0.87058824, 0.7019608, 1)`` :ref:`🔗<class_Color_constant_WHEAT>`

Цвет пшеницы.

.. _class_Color_constant_WHITE:

.. rst-class:: classref-constant

**WHITE** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Color_constant_WHITE>`

Белый цвет.

.. _class_Color_constant_WHITE_SMOKE:

.. rst-class:: classref-constant

**WHITE_SMOKE** = ``Color(0.9607843, 0.9607843, 0.9607843, 1)`` :ref:`🔗<class_Color_constant_WHITE_SMOKE>`

Дымчатый.

.. _class_Color_constant_YELLOW:

.. rst-class:: classref-constant

**YELLOW** = ``Color(1, 1, 0, 1)`` :ref:`🔗<class_Color_constant_YELLOW>`

Желтый цвет.

.. _class_Color_constant_YELLOW_GREEN:

.. rst-class:: classref-constant

**YELLOW_GREEN** = ``Color(0.6039216, 0.8039216, 0.19607843, 1)`` :ref:`🔗<class_Color_constant_YELLOW_GREEN>`

Желто-зеленый.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Color_property_a:

.. rst-class:: classref-property

:ref:`float<class_float>` **a** = ``1.0`` :ref:`🔗<class_Color_property_a>`

Альфа-канал цвета обычно находится в диапазоне от 0 до 1. Значение 0 означает, что цвет полностью прозрачен. Значение 1 означает, что цвет полностью непрозрачен.

\ **Примечание:** Альфа-канал всегда хранится с линейным кодированием, независимо от кодирования других цветовых каналов. Методы :ref:`linear_to_srgb()<class_Color_method_linear_to_srgb>` и :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` не влияют на альфа-канал.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_a8:

.. rst-class:: classref-property

:ref:`int<class_int>` **a8** = ``255`` :ref:`🔗<class_Color_property_a8>`

Оболочка для :ref:`a<class_Color_property_a>`, которая использует диапазон от 0 до 255 вместо 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_b:

.. rst-class:: classref-property

:ref:`float<class_float>` **b** = ``0.0`` :ref:`🔗<class_Color_property_b>`

Синяя составляющая цвета, обычно в диапазоне от 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_b8:

.. rst-class:: classref-property

:ref:`int<class_int>` **b8** = ``0`` :ref:`🔗<class_Color_property_b8>`

Оболочка для :ref:`b<class_Color_property_b>`, которая использует диапазон от 0 до 255 вместо 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_g:

.. rst-class:: classref-property

:ref:`float<class_float>` **g** = ``0.0`` :ref:`🔗<class_Color_property_g>`

Зеленый компонент цвета, обычно в диапазоне от 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_g8:

.. rst-class:: classref-property

:ref:`int<class_int>` **g8** = ``0`` :ref:`🔗<class_Color_property_g8>`

Оболочка для :ref:`g<class_Color_property_g>`, которая использует диапазон от 0 до 255 вместо 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_h:

.. rst-class:: classref-property

:ref:`float<class_float>` **h** = ``0.0`` :ref:`🔗<class_Color_property_h>`

Оттенок HSV этого цвета в диапазоне от 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_h:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_h** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_h>`

Оттенок OKHSL этого цвета в диапазоне от 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_l:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_l** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_l>`

Яркость OKHSL этого цвета в диапазоне от 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_s:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_s** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_s>`

Насыщенность OKHSL этого цвета в диапазоне от 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_r:

.. rst-class:: classref-property

:ref:`float<class_float>` **r** = ``0.0`` :ref:`🔗<class_Color_property_r>`

Красный компонент цвета, обычно в диапазоне от 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_r8:

.. rst-class:: classref-property

:ref:`int<class_int>` **r8** = ``0`` :ref:`🔗<class_Color_property_r8>`

Оболочка для :ref:`r<class_Color_property_r>`, которая использует диапазон от 0 до 255 вместо 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_s:

.. rst-class:: classref-property

:ref:`float<class_float>` **s** = ``0.0`` :ref:`🔗<class_Color_property_s>`

Насыщенность HSV этого цвета в диапазоне от 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_v:

.. rst-class:: classref-property

:ref:`float<class_float>` **v** = ``0.0`` :ref:`🔗<class_Color_property_v>`

Значение HSV (яркость) данного цвета в диапазоне от 0 до 1.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_Color_constructor_Color:

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ ) :ref:`🔗<class_Color_constructor_Color>`

Создает **Color** по умолчанию из непрозрачного черного. Это то же самое, что и :ref:`BLACK<class_Color_constant_BLACK>`.

\ **Примечание:** В C# это создает **Color** со всеми его компонентами, установленными на ``0.0`` (прозрачный черный).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ from\: :ref:`Color<class_Color>`, alpha\: :ref:`float<class_float>`\ )

Создает **Color** из существующего цвета, при этом :ref:`a<class_Color_property_a>` устанавливается на заданное значение ``alpha``.


.. tabs::

 .. code-tab:: gdscript

    var red = Color(Color.RED, 0.2) # 20% непрозрачного красного цвета.

 .. code-tab:: csharp

    var red = new Color(Colors.Red, 0.2f); // 20% непрозрачного красного цвета.



.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ from\: :ref:`Color<class_Color>`\ )

Создает **Color** как копию заданного **Color**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ code\: :ref:`String<class_String>`\ )

Создает **Color** либо из кода цвета HTML, либо из стандартизированного имени цвета. Поддерживаемые имена цветов совпадают с константами.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ code\: :ref:`String<class_String>`, alpha\: :ref:`float<class_float>`\ )

Создает **Color** либо из кода цвета HTML, либо из стандартизированного имени цвета с ``alpha`` в диапазоне от 0,0 до 1,0. Поддерживаемые имена цветов совпадают с константами.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ r\: :ref:`float<class_float>`, g\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`\ )

Создает **Color** из значений RGB, обычно в диапазоне от 0,0 до 1,0. :ref:`a<class_Color_property_a>` устанавливается в значение 1,0.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(0.2, 1.0, 0.7) # Аналогично `Color.from_rgba8(51, 255, 178, 255)`

 .. code-tab:: csharp

    var color = new Color(0.2f, 1.0f, 0.7f); // Аналогично `Color.from_rgba8(51, 255, 178, 255)`



.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ r\: :ref:`float<class_float>`, g\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, a\: :ref:`float<class_float>`\ )

Создает **Color** из значений RGBA, обычно в диапазоне от 0,0 до 1,0.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(0.2, 1.0, 0.7, 0.8) # Аналогично `Color.from_rgba8(51, 255, 178, 204)`

 .. code-tab:: csharp

    var color = new Color(0.2f, 1.0f, 0.7f, 0.8f); // Аналогично `Color.from_rgba8(51, 255, 178, 204)`



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Color_method_blend:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **blend**\ (\ over\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_Color_method_blend>`

Возвращает новый цвет, полученный в результате наложения этого цвета на заданный цвет. В программе рисования вы можете представить его как цвет ``over``, нарисованный поверх этого цвета (включая альфу).


.. tabs::

 .. code-tab:: gdscript

    var bg = Color(0.0, 1.0, 0.0, 0.5) # Зеленый с альфа 50%
    var fg = Color(1.0, 0.0, 0.0, 0.5) # Красный с альфой 50%
    var blended_color = bg.blend(fg) # Коричневый с альфа 75%

 .. code-tab:: csharp

    var bg = new Color(0.0f, 1.0f, 0.0f, 0.5f); // Зеленый с альфа 50%
    var fg = new Color(1.0f, 0.0f, 0.0f, 0.5f); // Красный с альфой 50%
    Color blendedColor = bg.Blend(fg); // Коричневый с альфа 75%



.. rst-class:: classref-item-separator

----

.. _class_Color_method_clamp:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **clamp**\ (\ min\: :ref:`Color<class_Color>` = Color(0, 0, 0, 0), max\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) |const| :ref:`🔗<class_Color_method_clamp>`

Возвращает новый цвет со всеми компонентами, зажатыми между компонентами ``min`` и ``max``, путем запуска :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_darkened:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **darkened**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_darkened>`

Возвращает новый цвет, полученный в результате затемнения этого цвета на указанное ``amount`` (соотношение от 0,0 до 1,0). См. также :ref:`lightened()<class_Color_method_lightened>`.


.. tabs::

 .. code-tab:: gdscript

    var green = Color(0.0, 1.0, 0.0)
    var darkgreen = green.darkened(0.2) # на 20% темнее обычного зеленого

 .. code-tab:: csharp

    var green = new Color(0.0f, 1.0f, 0.0f);
    Color darkgreen = green.Darkened(0.2f); // на 20% темнее обычного зеленого



.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_hsv:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_hsv**\ (\ h\: :ref:`float<class_float>`, s\: :ref:`float<class_float>`, v\: :ref:`float<class_float>`, alpha\: :ref:`float<class_float>` = 1.0\ ) |static| :ref:`🔗<class_Color_method_from_hsv>`

Создает цвет из `профиля HSV <https://en.wikipedia.org/wiki/HSL_and_HSV>`__. Оттенок (``h``), насыщенность (``s``) и значение (``v``) обычно находятся в диапазоне от 0,0 до 1,0.


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

Создает цвет из `OK HSL-профиля <https://bottosson.github.io/posts/colorpicker/>`__. Оттенок (``h``), насыщенность (``s``) и яркость (``l``) обычно находятся в диапазоне от 0,0 до 1,0.


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

Возвращает **Color**, составленный из красного (``r8``), зеленого (``g8``), синего (``b8``) и, необязательно, альфа (``a8``) целочисленных каналов, каждый из которых делится на ``255.0`` для получения окончательного значения.

::

    var red = Color.from_rgba8(255, 0, 0)             # Тоже что и Color(1, 0, 0).
    var dark_blue = Color.from_rgba8(0, 0, 51)        # Тоже что и Color(0, 0, 0.2).
    var my_color = Color.from_rgba8(306, 255, 0, 102) # Тоже что и Color(1.2, 1, 0, 0.4).

\ **Примечание:** Из-за более низкой точности :ref:`from_rgba8()<class_Color_method_from_rgba8>` по сравнению со стандартным конструктором **Color**, цвет, созданный с помощью :ref:`from_rgba8()<class_Color_method_from_rgba8>`, как правило, не будет равен тому же цвету, созданному с помощью стандартного конструктора **Color**. Используйте :ref:`is_equal_approx()<class_Color_method_is_equal_approx>` для сравнений, чтобы избежать проблем с ошибкой точности с плавающей точкой.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_rgbe9995:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_rgbe9995**\ (\ rgbe\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_from_rgbe9995>`

Декодирует **Color** из целого числа формата RGBE9995. См. :ref:`Image.FORMAT_RGBE9995<class_Image_constant_FORMAT_RGBE9995>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_string:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_string**\ (\ str\: :ref:`String<class_String>`, default\: :ref:`Color<class_Color>`\ ) |static| :ref:`🔗<class_Color_method_from_string>`

Создает **Color** из заданной строки, которая может быть либо кодом цвета HTML, либо именованным цветом (без учета регистра). Возвращает ``default``, если цвет не может быть выведен из строки.

Если вы хотите создать цвет из String в константном выражении, используйте вместо этого эквивалентный конструктор (т. е. ``Color("color string")``).

.. rst-class:: classref-item-separator

----

.. _class_Color_method_get_luminance:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_luminance**\ (\ ) |const| :ref:`🔗<class_Color_method_get_luminance>`

Возвращает интенсивность цвета в виде значения от 0,0 до 1,0 (включительно). Это полезно при определении светлого или темного цвета. Цвета с яркостью меньше 0,5 обычно считаются темными.

\ **Примечание:** Метод :ref:`get_luminance()<class_Color_method_get_luminance>` использует линейное кодирование для возврата точного значения относительной яркости. Если цвет использует нелинейное кодирование sRGB по умолчанию, сначала используйте :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` для преобразования его в линейное кодирование.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_hex:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **hex**\ (\ hex\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_hex>`

Возвращает **Color**, связанный с предоставленным целым числом ``hex`` в 32-битном формате RGBA (8 бит на канал). Этот метод является обратным :ref:`to_rgba32()<class_Color_method_to_rgba32>`.

В GDScript и C# :ref:`int<class_int>` лучше всего визуализировать с помощью шестнадцатеричной записи (префикс ``"0x"``, что делает его ``"0xRRGGBBAA"``).


.. tabs::

 .. code-tab:: gdscript

    var red = Color.hex(0xff0000ff)
    var dark_cyan = Color.hex(0x008b8bff)
    var my_color = Color.hex(0xbbefd2a4)

 .. code-tab:: csharp

    var red = new Color(0xff0000ff);
    var dark_cyan = new Color(0x008b8bff);
    var my_color = new Color(0xbbefd2a4);



Если вы хотите использовать шестнадцатеричную запись в константном выражении, используйте вместо этого эквивалентный конструктор (т. е. ``Color(0xRRGGBBAA)``).

.. rst-class:: classref-item-separator

----

.. _class_Color_method_hex64:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **hex64**\ (\ hex\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_hex64>`

Возвращает **Color**, связанный с предоставленным целым числом ``hex`` в 64-битном формате RGBA (16 бит на канал). Этот метод является обратным :ref:`to_rgba64()<class_Color_method_to_rgba64>`.

В GDScript и C# :ref:`int<class_int>` лучше всего визуализировать с помощью шестнадцатеричной записи (префикс ``"0x"``, что делает его ``"0xRRRRGGGGBBBBAAAA"``).

.. rst-class:: classref-item-separator

----

.. _class_Color_method_html:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **html**\ (\ rgba\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_Color_method_html>`

Возвращает новый цвет из ``rgba``, шестнадцатеричной строки цвета HTML. ``rgba`` не чувствителен к регистру и может иметь префикс в виде знака решетки (``#``).

\ ``rgba`` должен быть допустимой трехзначной или шестизначной шестнадцатеричной строкой цвета и может содержать значение альфа-канала. Если ``rgba`` не содержит значение альфа-канала, применяется значение альфа-канала 1.0. Если ``rgba`` недопустим, возвращает пустой цвет.


.. tabs::

 .. code-tab:: gdscript

    var blue = Color.html("#0000ff") # синий — это Color(0.0, 0.0, 1.0, 1.0)
    var green = Color.html("#0F0")   # зеленый — это Color(0.0, 1.0, 0.0, 1.0)
    var col = Color.html("663399cc") # col — это Color(0.4, 0.2, 0.6, 0.8)

 .. code-tab:: csharp

    var blue = Color.FromHtml("#0000ff"); // синий — это Color(0.0, 0.0, 1.0, 1.0)
    var green = Color.FromHtml("#0F0");   // зеленый — это Color(0.0, 1.0, 0.0, 1.0)
    var col = Color.FromHtml("663399cc"); // col — это Color(0.4, 0.2, 0.6, 0.8)



.. rst-class:: classref-item-separator

----

.. _class_Color_method_html_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **html_is_valid**\ (\ color\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_Color_method_html_is_valid>`

Возвращает ``true``, если ``color`` является допустимой шестнадцатеричной строкой цвета HTML. Строка должна быть шестнадцатеричным значением (без учета регистра) из 3, 4, 6 или 8 цифр и может иметь префикс в виде знака решетки (``#``). Этот метод идентичен :ref:`String.is_valid_html_color()<class_String_method_is_valid_html_color>`.


.. tabs::

 .. code-tab:: gdscript

    Color.html_is_valid("#55aaFF")   # Возвращает true
    Color.html_is_valid("#55AAFF20") # Возвращает true
    Color.html_is_valid("55AAFF")    # Возвращает true
    Color.html_is_valid("#F2C")      # Возвращает true

    Color.html_is_valid("#AABBC")    # Возвращает false
    Color.html_is_valid("#55aaFF5")  # Возвращает false

 .. code-tab:: csharp

    Color.HtmlIsValid("#55AAFF");   // Возвращает true
    Color.HtmlIsValid("#55AAFF20"); // Возвращает true
    Color.HtmlIsValid("55AAFF");    // Возвращает true
    Color.HtmlIsValid("#F2C");      // Возвращает true

    Color.HtmlIsValid("#AABBC");    // Возвращает false
    Color.HtmlIsValid("#55aaFF5");  // Возвращает false



.. rst-class:: classref-item-separator

----

.. _class_Color_method_inverted:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **inverted**\ (\ ) |const| :ref:`🔗<class_Color_method_inverted>`

Возвращает цвет с инвертированными компонентами :ref:`r<class_Color_property_r>`, :ref:`g<class_Color_property_g>` и :ref:`b<class_Color_property_b>`. (``(1 - r, 1 - g, 1 - b, a)``).


.. tabs::

 .. code-tab:: gdscript

    var black = Color.WHITE.inverted()
    var color = Color(0.3, 0.4, 0.9)
    var inverted_color = color.inverted() # Эквивалентно `Color(0.7, 0.6, 0.1)`

 .. code-tab:: csharp

    var black = Colors.White.Inverted();
    var color = new Color(0.3f, 0.4f, 0.9f);
    Color invertedColor = color.Inverted(); // Эквивалентно `new Color(0.7f, 0.6f, 0.1f)`



.. rst-class:: classref-item-separator

----

.. _class_Color_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ to\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_Color_method_is_equal_approx>`

Возвращает ``true``, если этот цвет и ``to`` приблизительно равны, путем запуска :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_lerp:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **lerp**\ (\ to\: :ref:`Color<class_Color>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_lerp>`

Возвращает линейную интерполяцию между компонентами этого цвета и компонентами ``to``. Коэффициент интерполяции ``weight`` должен быть между 0,0 и 1,0 (включительно). См. также :ref:`@GlobalScope.lerp()<class_@GlobalScope_method_lerp>`.


.. tabs::

 .. code-tab:: gdscript

    var red = Color(1.0, 0.0, 0.0)
    var aqua = Color(0.0, 1.0, 0.8)

    red.lerp(aqua, 0.2) # Вернет Color(0.8, 0.2, 0.16)
    red.lerp(aqua, 0.5) # Вернет Color(0.5, 0.5, 0.4)
    red.lerp(aqua, 1.0) # Вернет Color(0.0, 1.0, 0.8)

 .. code-tab:: csharp

    var red = new Color(1.0f, 0.0f, 0.0f);
    var aqua = new Color(0.0f, 1.0f, 0.8f);

    red.Lerp(aqua, 0.2f); // Вернет Color(0.8f, 0.2f, 0.16f)
    red.Lerp(aqua, 0.5f); // Вернет Color(0.5f, 0.5f, 0.4f)
    red.Lerp(aqua, 1.0f); // Вернет Color(0.0f, 1.0f, 0.8f)



.. rst-class:: classref-item-separator

----

.. _class_Color_method_lightened:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **lightened**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_lightened>`

Возвращает новый цвет, полученный в результате осветления этого цвета на указанное ``amount``, которое должно быть отношением от 0,0 до 1,0. См. также :ref:`darkened()<class_Color_method_darkened>`.


.. tabs::

 .. code-tab:: gdscript

    var green = Color(0.0, 1.0, 0.0)
    var light_green = green.lightened(0.2) # На 20% светлее обычного зеленого

 .. code-tab:: csharp

    var green = new Color(0.0f, 1.0f, 0.0f);
    Color lightGreen = green.Lightened(0.2f); // На 20% светлее обычного зеленого



.. rst-class:: classref-item-separator

----

.. _class_Color_method_linear_to_srgb:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **linear_to_srgb**\ (\ ) |const| :ref:`🔗<class_Color_method_linear_to_srgb>`

Возвращает копию цвета, закодированного с использованием `нелинейной функции преобразования sRGB <https://en.wikipedia.org/wiki/SRGB>`__. Этот метод требует, чтобы исходный цвет использовал линейное кодирование. См. также :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>`, который выполняет обратную операцию.

\ **Примечание:** Альфа-канал цвета (:ref:`a<class_Color_property_a>`) не затрагивается. Альфа-канал всегда хранится с линейным кодированием, независимо от цветового пространства других цветовых каналов.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_srgb_to_linear:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **srgb_to_linear**\ (\ ) |const| :ref:`🔗<class_Color_method_srgb_to_linear>`

Возвращает копию цвета, использующую линейное кодирование. Для этого метода требуется, чтобы исходный цвет был закодирован с использованием `нелинейной функции преобразования sRGB <https://en.wikipedia.org/wiki/SRGB>`__. См. также :ref:`linear_to_srgb()<class_Color_method_linear_to_srgb>`, который выполняет обратную операцию.

\ **Примечание:** Альфа-канал цвета (:ref:`a<class_Color_property_a>`) не затрагивается. Альфа-канал всегда хранится с линейным кодированием, независимо от цветового пространства других цветовых каналов.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_abgr32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_abgr32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_abgr32>`

Возвращает цвет, преобразованный в 32-битное целое число в формате ABGR (каждый компонент — 8 бит). ABGR — это обратная версия формата RGBA по умолчанию.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_abgr32()) # Вернет 4281565439

 .. code-tab:: csharp

    var color = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(color.ToAbgr32()); // Вернет 4281565439



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_abgr64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_abgr64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_abgr64>`

Возвращает цвет, преобразованный в 64-битное целое число в формате ABGR (каждый компонент — 16 бит). ABGR — это обратная версия формата RGBA по умолчанию.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_abgr64()) # Вернет -225178692812801

 .. code-tab:: csharp

    var color = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(color.ToAbgr64()); // Вернет -225178692812801



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_argb32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_argb32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_argb32>`

Возвращает цвет, преобразованный в 32-битное целое число в формате ARGB (каждый компонент — 8 бит). ARGB более совместим с DirectX.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_argb32()) # Вернет 4294934323

 .. code-tab:: csharp

    var color = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(color.ToArgb32()); // Вернет 4294934323



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_argb64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_argb64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_argb64>`

Возвращает цвет, преобразованный в 64-битное целое число в формате ARGB (каждый компонент — 16 бит). ARGB более совместим с DirectX.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_argb64()) # Вернет -2147470541

 .. code-tab:: csharp

    var color = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(color.ToArgb64()); // Вернет -2147470541



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_html:

.. rst-class:: classref-method

:ref:`String<class_String>` **to_html**\ (\ with_alpha\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Color_method_to_html>`

Возвращает цвет, преобразованный в шестнадцатеричный цвет HTML :ref:`String<class_String>` в формате RGBA, без префикса решетки (``#``). 

Установка ``with_alpha`` в ``false`` исключает альфа из шестнадцатеричной строки, используя формат RGB вместо формата RGBA.


.. tabs::

 .. code-tab:: gdscript

    var white = Color(1, 1, 1, 0.5)
    var with_alpha = white.to_html() # Вернет "ffffff7f"
    var without_alpha = white.to_html(false) # Вернет "ffffff"

 .. code-tab:: csharp

    var white = new Color(1, 1, 1, 0.5f);
    string withAlpha = white.ToHtml(); // Вернет "ffffff7f"
    string withoutAlpha = white.ToHtml(false); // Вернет "ffffff"



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_rgba32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_rgba32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_rgba32>`

Возвращает цвет, преобразованный в 32-битное целое число в формате RGBA (каждый компонент — 8 бит). RGBA — формат Godot по умолчанию. Этот метод является обратным :ref:`hex()<class_Color_method_hex>`.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_rgba32()) # Вернет 4286526463

 .. code-tab:: csharp

    var color = new Color(1, 0.5f, 0.2f);
    GD.Print(color.ToRgba32()); // Вернет 4286526463



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_rgba64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_rgba64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_rgba64>`

Возвращает цвет, преобразованный в 64-битное целое число в формате RGBA (каждый компонент — 16 бит). RGBA — формат Godot по умолчанию. Этот метод является обратным :ref:`hex64()<class_Color_method_hex64>`.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_rgba64()) # Вернет -140736629309441

 .. code-tab:: csharp

    var color = new Color(1, 0.5f, 0.2f);
    GD.Print(color.ToRgba64()); // Вернет -140736629309441



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Color_operator_neq_Color:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_neq_Color>`

Возвращает ``true``, если цвета не совсем равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Color_method_is_equal_approx>` вместо этого, что более надежно.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_mul_Color>`

Умножает каждый компонент **Color** на компоненты заданного **Color**.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Color_operator_mul_float>`

Умножает каждый компонент **Color** на заданное :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_mul_int>`

Умножает каждый компонент **Color** на заданное :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_sum_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator +**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_sum_Color>`

Складывает каждый компонент **Color** с компонентами указанного **Color**.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_dif_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator -**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_dif_Color>`

Вычитает каждый компонент **Color** из компонентов заданного **Color**.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_div_Color>`

Делит каждый компонент **Color** на компоненты заданного **Color**.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_float:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Color_operator_div_float>`

Делит каждый компонент **Color** на заданное ``float - число с плавающей точкой``.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_int:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_div_int>`

Делит каждый компонент **Color** на заданное :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_eq_Color:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_eq_Color>`

Возвращает ``true``, если цвета точно равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Color_method_is_equal_approx>` вместо этого, что более надежно.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_idx_int>`

Доступ к компонентам цвета осуществляется с помощью их индекса. ``[0]`` эквивалентно :ref:`r<class_Color_property_r>`, ``[1]`` эквивалентно :ref:`g<class_Color_property_g>`, ``[2]`` эквивалентно :ref:`b<class_Color_property_b>`, а ``[3]`` эквивалентно :ref:`a<class_Color_property_a>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_unplus:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator unary+**\ (\ ) :ref:`🔗<class_Color_operator_unplus>`

Возвращает то же значение, как если бы ``+`` не было. Унарный ``+`` ничего не делает, но иногда он может сделать ваш код более читаемым.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_unminus:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator unary-**\ (\ ) :ref:`🔗<class_Color_operator_unminus>`

Инвертирует заданный цвет. Это эквивалентно ``Color.WHITE - c`` или ``Color(1 - c.r, 1 - c.g, 1 - c.b, 1 - c.a)``. В отличие от :ref:`inverted()<class_Color_method_inverted>`, компонент :ref:`a<class_Color_property_a>` также инвертируется.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
