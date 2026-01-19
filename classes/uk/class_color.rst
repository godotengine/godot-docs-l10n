:github_url: hide

.. _class_Color:

Color
=====

Колір представлений у форматі RGBA.

.. rst-class:: classref-introduction-group

Опис
--------

Колір, представлений у форматі RGBA червоним (:ref:`r<class_Color_property_r>`), зеленим (:ref:`g<class_Color_property_g>`), синім (:ref:`b<class_Color_property_b>`) та альфа-компонентом (:ref:`a<class_Color_property_a>`). Кожен компонент є 32-бітним значенням з плаваючою комою, зазвичай у діапазоні від ``0.0`` до ``1.0``. Деякі властивості (такі як :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>`) можуть підтримувати значення більше, ніж ``1.0``, для надто яскравих або HDR (розширений динамічний діапазон) кольорів.

Кольори можна створювати кількома способами: за допомогою різних конструкторів **Color**, статичних методів, таких як :ref:`from_hsv()<class_Color_method_from_hsv>`, та використовуючи назву з набору стандартизованих кольорів на основі `назв кольорів X11 <https://en.wikipedia.org/wiki/X11_color_names>`__ з додаванням ``константи TRANSPARENT``.

 `Шпаргалка з колірних констант <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/color_constants.png>`__\ 

Хоча **Color** може використовуватися для зберігання значень будь-якого кодування, Godot очікує, що властивості червоного (:ref:`r<class_Color_property_r>`), зеленого (:ref:`g<class_Color_property_g>`) та синього (:ref:`b<class_Color_property_b>`) кольору **Color** будуть закодовані за допомогою `нелінійної передавальної функції sRGB <https://en.wikipedia.org/wiki/SRGB#Transfer_function_(%22gamma%22)>`__, якщо не зазначено інше. Це колірне кодування використовується багатьма традиційними художніми та веб-інструментами, що спрощує зіставлення кольорів між Godot та цими інструментами. Godot використовує основні кольори `Rec. ITU-R BT.709 <https://en.wikipedia.org/wiki/Rec._709>`__, які використовуються стандартом sRGB.

 Усі фізичні симуляції, такі як розрахунки освітлення та колориметричні перетворення, такі як :ref:`get_luminance()<class_Color_method_get_luminance>`, повинні виконуватися на лінійно закодованих значеннях для отримання правильних результатів. Під час виконання цих обчислень конвертуйте **Color** в лінійне кодування та з лінійного за допомогою :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` та ``метод linear_to_srgb``.

\ **Примітка:** У логічному контексті Color буде оцінюватися як ``false``, якщо він дорівнює ``Color(0, 0, 0, 1)`` (непрозорий чорний). В іншому випадку Color завжди буде оцінюватися як ``true``.

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `2D GD Демонстрація фарби <https://godotengine.org/asset-library/asset/2768>`__

- `Демонстрація інтерполяції Tween <https://godotengine.org/asset-library/asset/2733>`__

- `КОМПЛЕКС Драготи і падіння демо <https://godotengine.org/asset-library/asset/2767>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Конструктори
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

Методи
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

Оператори
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

Константи
------------------

.. _class_Color_constant_ALICE_BLUE:

.. rst-class:: classref-constant

**ALICE_BLUE** = ``Color(0.9411765, 0.972549, 1, 1)`` :ref:`🔗<class_Color_constant_ALICE_BLUE>`

Аліса синій колір.

.. _class_Color_constant_ANTIQUE_WHITE:

.. rst-class:: classref-constant

**ANTIQUE_WHITE** = ``Color(0.98039216, 0.92156863, 0.84313726, 1)`` :ref:`🔗<class_Color_constant_ANTIQUE_WHITE>`

Антикварний білий колір.

.. _class_Color_constant_AQUA:

.. rst-class:: classref-constant

**AQUA** = ``Color(0, 1, 1, 1)`` :ref:`🔗<class_Color_constant_AQUA>`

Аква колір.

.. _class_Color_constant_AQUAMARINE:

.. rst-class:: classref-constant

**AQUAMARINE** = ``Color(0.49803922, 1, 0.83137256, 1)`` :ref:`🔗<class_Color_constant_AQUAMARINE>`

Аквамариновий колір.

.. _class_Color_constant_AZURE:

.. rst-class:: classref-constant

**AZURE** = ``Color(0.9411765, 1, 1, 1)`` :ref:`🔗<class_Color_constant_AZURE>`

Колір Azure.

.. _class_Color_constant_BEIGE:

.. rst-class:: classref-constant

**BEIGE** = ``Color(0.9607843, 0.9607843, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_BEIGE>`

Колір бежевий.

.. _class_Color_constant_BISQUE:

.. rst-class:: classref-constant

**BISQUE** = ``Color(1, 0.89411765, 0.76862746, 1)`` :ref:`🔗<class_Color_constant_BISQUE>`

Бісковий колір.

.. _class_Color_constant_BLACK:

.. rst-class:: classref-constant

**BLACK** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Color_constant_BLACK>`

Чорний колір. У GDScript це значення за замовчуванням будь-якого кольору.

.. _class_Color_constant_BLANCHED_ALMOND:

.. rst-class:: classref-constant

**BLANCHED_ALMOND** = ``Color(1, 0.92156863, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_BLANCHED_ALMOND>`

Бланцеві мигдальний колір.

.. _class_Color_constant_BLUE:

.. rst-class:: classref-constant

**BLUE** = ``Color(0, 0, 1, 1)`` :ref:`🔗<class_Color_constant_BLUE>`

Синій колір.

.. _class_Color_constant_BLUE_VIOLET:

.. rst-class:: classref-constant

**BLUE_VIOLET** = ``Color(0.5411765, 0.16862746, 0.8862745, 1)`` :ref:`🔗<class_Color_constant_BLUE_VIOLET>`

Синій фіолетовий колір.

.. _class_Color_constant_BROWN:

.. rst-class:: classref-constant

**BROWN** = ``Color(0.64705884, 0.16470589, 0.16470589, 1)`` :ref:`🔗<class_Color_constant_BROWN>`

Коричневий колір.

.. _class_Color_constant_BURLYWOOD:

.. rst-class:: classref-constant

**BURLYWOOD** = ``Color(0.87058824, 0.72156864, 0.5294118, 1)`` :ref:`🔗<class_Color_constant_BURLYWOOD>`

Колір бордюру.

.. _class_Color_constant_CADET_BLUE:

.. rst-class:: classref-constant

**CADET_BLUE** = ``Color(0.37254903, 0.61960787, 0.627451, 1)`` :ref:`🔗<class_Color_constant_CADET_BLUE>`

Cadet синій колір.

.. _class_Color_constant_CHARTREUSE:

.. rst-class:: classref-constant

**CHARTREUSE** = ``Color(0.49803922, 1, 0, 1)`` :ref:`🔗<class_Color_constant_CHARTREUSE>`

Графік використання кольору.

.. _class_Color_constant_CHOCOLATE:

.. rst-class:: classref-constant

**CHOCOLATE** = ``Color(0.8235294, 0.4117647, 0.11764706, 1)`` :ref:`🔗<class_Color_constant_CHOCOLATE>`

Шоколадний колір.

.. _class_Color_constant_CORAL:

.. rst-class:: classref-constant

**CORAL** = ``Color(1, 0.49803922, 0.3137255, 1)`` :ref:`🔗<class_Color_constant_CORAL>`

Кораловий колір.

.. _class_Color_constant_CORNFLOWER_BLUE:

.. rst-class:: classref-constant

**CORNFLOWER_BLUE** = ``Color(0.39215687, 0.58431375, 0.92941177, 1)`` :ref:`🔗<class_Color_constant_CORNFLOWER_BLUE>`

Кукурудза синій колір.

.. _class_Color_constant_CORNSILK:

.. rst-class:: classref-constant

**CORNSILK** = ``Color(1, 0.972549, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_CORNSILK>`

Колір кукурудзи.

.. _class_Color_constant_CRIMSON:

.. rst-class:: classref-constant

**CRIMSON** = ``Color(0.8627451, 0.078431375, 0.23529412, 1)`` :ref:`🔗<class_Color_constant_CRIMSON>`

Колір малина.

.. _class_Color_constant_CYAN:

.. rst-class:: classref-constant

**CYAN** = ``Color(0, 1, 1, 1)`` :ref:`🔗<class_Color_constant_CYAN>`

Колір ян.

.. _class_Color_constant_DARK_BLUE:

.. rst-class:: classref-constant

**DARK_BLUE** = ``Color(0, 0, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_BLUE>`

Темно-синій колір.

.. _class_Color_constant_DARK_CYAN:

.. rst-class:: classref-constant

**DARK_CYAN** = ``Color(0, 0.54509807, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_CYAN>`

Темно-ясенний колір.

.. _class_Color_constant_DARK_GOLDENROD:

.. rst-class:: classref-constant

**DARK_GOLDENROD** = ``Color(0.72156864, 0.5254902, 0.043137256, 1)`` :ref:`🔗<class_Color_constant_DARK_GOLDENROD>`

Темно-золотий колір.

.. _class_Color_constant_DARK_GRAY:

.. rst-class:: classref-constant

**DARK_GRAY** = ``Color(0.6627451, 0.6627451, 0.6627451, 1)`` :ref:`🔗<class_Color_constant_DARK_GRAY>`

Темний сірий колір.

.. _class_Color_constant_DARK_GREEN:

.. rst-class:: classref-constant

**DARK_GREEN** = ``Color(0, 0.39215687, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_GREEN>`

Темно-зелений колір.

.. _class_Color_constant_DARK_KHAKI:

.. rst-class:: classref-constant

**DARK_KHAKI** = ``Color(0.7411765, 0.7176471, 0.41960785, 1)`` :ref:`🔗<class_Color_constant_DARK_KHAKI>`

Темний хакі колір.

.. _class_Color_constant_DARK_MAGENTA:

.. rst-class:: classref-constant

**DARK_MAGENTA** = ``Color(0.54509807, 0, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_MAGENTA>`

Темний колір magenta.

.. _class_Color_constant_DARK_OLIVE_GREEN:

.. rst-class:: classref-constant

**DARK_OLIVE_GREEN** = ``Color(0.33333334, 0.41960785, 0.18431373, 1)`` :ref:`🔗<class_Color_constant_DARK_OLIVE_GREEN>`

Темний оливковий зелений колір.

.. _class_Color_constant_DARK_ORANGE:

.. rst-class:: classref-constant

**DARK_ORANGE** = ``Color(1, 0.54901963, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_ORANGE>`

Темно-помаранчевий колір.

.. _class_Color_constant_DARK_ORCHID:

.. rst-class:: classref-constant

**DARK_ORCHID** = ``Color(0.6, 0.19607843, 0.8, 1)`` :ref:`🔗<class_Color_constant_DARK_ORCHID>`

Темний колір орхідеї.

.. _class_Color_constant_DARK_RED:

.. rst-class:: classref-constant

**DARK_RED** = ``Color(0.54509807, 0, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_RED>`

Темно-червоного кольору.

.. _class_Color_constant_DARK_SALMON:

.. rst-class:: classref-constant

**DARK_SALMON** = ``Color(0.9137255, 0.5882353, 0.47843137, 1)`` :ref:`🔗<class_Color_constant_DARK_SALMON>`

Темний колір лосося.

.. _class_Color_constant_DARK_SEA_GREEN:

.. rst-class:: classref-constant

**DARK_SEA_GREEN** = ``Color(0.56078434, 0.7372549, 0.56078434, 1)`` :ref:`🔗<class_Color_constant_DARK_SEA_GREEN>`

Темно-морський зелений колір.

.. _class_Color_constant_DARK_SLATE_BLUE:

.. rst-class:: classref-constant

**DARK_SLATE_BLUE** = ``Color(0.28235295, 0.23921569, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_SLATE_BLUE>`

Темний шифер синій колір.

.. _class_Color_constant_DARK_SLATE_GRAY:

.. rst-class:: classref-constant

**DARK_SLATE_GRAY** = ``Color(0.18431373, 0.30980393, 0.30980393, 1)`` :ref:`🔗<class_Color_constant_DARK_SLATE_GRAY>`

Темний шифер сірий колір.

.. _class_Color_constant_DARK_TURQUOISE:

.. rst-class:: classref-constant

**DARK_TURQUOISE** = ``Color(0, 0.80784315, 0.81960785, 1)`` :ref:`🔗<class_Color_constant_DARK_TURQUOISE>`

Темно-бірюзовий колір.

.. _class_Color_constant_DARK_VIOLET:

.. rst-class:: classref-constant

**DARK_VIOLET** = ``Color(0.5803922, 0, 0.827451, 1)`` :ref:`🔗<class_Color_constant_DARK_VIOLET>`

Темний фіолетовий колір.

.. _class_Color_constant_DEEP_PINK:

.. rst-class:: classref-constant

**DEEP_PINK** = ``Color(1, 0.078431375, 0.5764706, 1)`` :ref:`🔗<class_Color_constant_DEEP_PINK>`

Глибокий рожевий колір.

.. _class_Color_constant_DEEP_SKY_BLUE:

.. rst-class:: classref-constant

**DEEP_SKY_BLUE** = ``Color(0, 0.7490196, 1, 1)`` :ref:`🔗<class_Color_constant_DEEP_SKY_BLUE>`

Глибоке небо синій колір.

.. _class_Color_constant_DIM_GRAY:

.. rst-class:: classref-constant

**DIM_GRAY** = ``Color(0.4117647, 0.4117647, 0.4117647, 1)`` :ref:`🔗<class_Color_constant_DIM_GRAY>`

Дім сірий колір.

.. _class_Color_constant_DODGER_BLUE:

.. rst-class:: classref-constant

**DODGER_BLUE** = ``Color(0.11764706, 0.5647059, 1, 1)`` :ref:`🔗<class_Color_constant_DODGER_BLUE>`

Доджер синій колір.

.. _class_Color_constant_FIREBRICK:

.. rst-class:: classref-constant

**FIREBRICK** = ``Color(0.69803923, 0.13333334, 0.13333334, 1)`` :ref:`🔗<class_Color_constant_FIREBRICK>`

Вогнетривкий колір.

.. _class_Color_constant_FLORAL_WHITE:

.. rst-class:: classref-constant

**FLORAL_WHITE** = ``Color(1, 0.98039216, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_FLORAL_WHITE>`

Квітковий білий колір.

.. _class_Color_constant_FOREST_GREEN:

.. rst-class:: classref-constant

**FOREST_GREEN** = ``Color(0.13333334, 0.54509807, 0.13333334, 1)`` :ref:`🔗<class_Color_constant_FOREST_GREEN>`

Ліс зелений колір.

.. _class_Color_constant_FUCHSIA:

.. rst-class:: classref-constant

**FUCHSIA** = ``Color(1, 0, 1, 1)`` :ref:`🔗<class_Color_constant_FUCHSIA>`

Fuchsia колір.

.. _class_Color_constant_GAINSBORO:

.. rst-class:: classref-constant

**GAINSBORO** = ``Color(0.8627451, 0.8627451, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_GAINSBORO>`

Гайнсборо колір.

.. _class_Color_constant_GHOST_WHITE:

.. rst-class:: classref-constant

**GHOST_WHITE** = ``Color(0.972549, 0.972549, 1, 1)`` :ref:`🔗<class_Color_constant_GHOST_WHITE>`

Привид білого кольору.

.. _class_Color_constant_GOLD:

.. rst-class:: classref-constant

**GOLD** = ``Color(1, 0.84313726, 0, 1)`` :ref:`🔗<class_Color_constant_GOLD>`

Колір золота.

.. _class_Color_constant_GOLDENROD:

.. rst-class:: classref-constant

**GOLDENROD** = ``Color(0.85490197, 0.64705884, 0.1254902, 1)`` :ref:`🔗<class_Color_constant_GOLDENROD>`

Золотий колір.

.. _class_Color_constant_GRAY:

.. rst-class:: classref-constant

**GRAY** = ``Color(0.74509805, 0.74509805, 0.74509805, 1)`` :ref:`🔗<class_Color_constant_GRAY>`

Сірий колір.

.. _class_Color_constant_GREEN:

.. rst-class:: classref-constant

**GREEN** = ``Color(0, 1, 0, 1)`` :ref:`🔗<class_Color_constant_GREEN>`

Зелений колір.

.. _class_Color_constant_GREEN_YELLOW:

.. rst-class:: classref-constant

**GREEN_YELLOW** = ``Color(0.6784314, 1, 0.18431373, 1)`` :ref:`🔗<class_Color_constant_GREEN_YELLOW>`

Зелений жовтий колір.

.. _class_Color_constant_HONEYDEW:

.. rst-class:: classref-constant

**HONEYDEW** = ``Color(0.9411765, 1, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_HONEYDEW>`

Колір медуха.

.. _class_Color_constant_HOT_PINK:

.. rst-class:: classref-constant

**HOT_PINK** = ``Color(1, 0.4117647, 0.7058824, 1)`` :ref:`🔗<class_Color_constant_HOT_PINK>`

Гарячий рожевий колір.

.. _class_Color_constant_INDIAN_RED:

.. rst-class:: classref-constant

**INDIAN_RED** = ``Color(0.8039216, 0.36078432, 0.36078432, 1)`` :ref:`🔗<class_Color_constant_INDIAN_RED>`

Індійський червоний колір.

.. _class_Color_constant_INDIGO:

.. rst-class:: classref-constant

**INDIGO** = ``Color(0.29411766, 0, 0.50980395, 1)`` :ref:`🔗<class_Color_constant_INDIGO>`

Колір Індіго.

.. _class_Color_constant_IVORY:

.. rst-class:: classref-constant

**IVORY** = ``Color(1, 1, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_IVORY>`

Яворий колір.

.. _class_Color_constant_KHAKI:

.. rst-class:: classref-constant

**KHAKI** = ``Color(0.9411765, 0.9019608, 0.54901963, 1)`` :ref:`🔗<class_Color_constant_KHAKI>`

Колір хакі.

.. _class_Color_constant_LAVENDER:

.. rst-class:: classref-constant

**LAVENDER** = ``Color(0.9019608, 0.9019608, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_LAVENDER>`

Колір лаванди.

.. _class_Color_constant_LAVENDER_BLUSH:

.. rst-class:: classref-constant

**LAVENDER_BLUSH** = ``Color(1, 0.9411765, 0.9607843, 1)`` :ref:`🔗<class_Color_constant_LAVENDER_BLUSH>`

Лаванда рум'яна колір.

.. _class_Color_constant_LAWN_GREEN:

.. rst-class:: classref-constant

**LAWN_GREEN** = ``Color(0.4862745, 0.9882353, 0, 1)`` :ref:`🔗<class_Color_constant_LAWN_GREEN>`

Зелений колір.

.. _class_Color_constant_LEMON_CHIFFON:

.. rst-class:: classref-constant

**LEMON_CHIFFON** = ``Color(1, 0.98039216, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_LEMON_CHIFFON>`

Лимонний шифон колір.

.. _class_Color_constant_LIGHT_BLUE:

.. rst-class:: classref-constant

**LIGHT_BLUE** = ``Color(0.6784314, 0.84705883, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_LIGHT_BLUE>`

Світло-синій колір.

.. _class_Color_constant_LIGHT_CORAL:

.. rst-class:: classref-constant

**LIGHT_CORAL** = ``Color(0.9411765, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_LIGHT_CORAL>`

Світло кораловий колір.

.. _class_Color_constant_LIGHT_CYAN:

.. rst-class:: classref-constant

**LIGHT_CYAN** = ``Color(0.8784314, 1, 1, 1)`` :ref:`🔗<class_Color_constant_LIGHT_CYAN>`

Світло ян колір.

.. _class_Color_constant_LIGHT_GOLDENROD:

.. rst-class:: classref-constant

**LIGHT_GOLDENROD** = ``Color(0.98039216, 0.98039216, 0.8235294, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GOLDENROD>`

Світло-золотий колір.

.. _class_Color_constant_LIGHT_GRAY:

.. rst-class:: classref-constant

**LIGHT_GRAY** = ``Color(0.827451, 0.827451, 0.827451, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GRAY>`

Світло сірий колір.

.. _class_Color_constant_LIGHT_GREEN:

.. rst-class:: classref-constant

**LIGHT_GREEN** = ``Color(0.5647059, 0.93333334, 0.5647059, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GREEN>`

Світло-зелений колір.

.. _class_Color_constant_LIGHT_PINK:

.. rst-class:: classref-constant

**LIGHT_PINK** = ``Color(1, 0.7137255, 0.75686276, 1)`` :ref:`🔗<class_Color_constant_LIGHT_PINK>`

Світло-рожевий колір.

.. _class_Color_constant_LIGHT_SALMON:

.. rst-class:: classref-constant

**LIGHT_SALMON** = ``Color(1, 0.627451, 0.47843137, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SALMON>`

Колір лосося.

.. _class_Color_constant_LIGHT_SEA_GREEN:

.. rst-class:: classref-constant

**LIGHT_SEA_GREEN** = ``Color(0.1254902, 0.69803923, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SEA_GREEN>`

Світло морський зелений колір.

.. _class_Color_constant_LIGHT_SKY_BLUE:

.. rst-class:: classref-constant

**LIGHT_SKY_BLUE** = ``Color(0.5294118, 0.80784315, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SKY_BLUE>`

Світло небо синій колір.

.. _class_Color_constant_LIGHT_SLATE_GRAY:

.. rst-class:: classref-constant

**LIGHT_SLATE_GRAY** = ``Color(0.46666667, 0.53333336, 0.6, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SLATE_GRAY>`

Світло шифер сірого кольору.

.. _class_Color_constant_LIGHT_STEEL_BLUE:

.. rst-class:: classref-constant

**LIGHT_STEEL_BLUE** = ``Color(0.6901961, 0.76862746, 0.87058824, 1)`` :ref:`🔗<class_Color_constant_LIGHT_STEEL_BLUE>`

Світло сталь синій колір.

.. _class_Color_constant_LIGHT_YELLOW:

.. rst-class:: classref-constant

**LIGHT_YELLOW** = ``Color(1, 1, 0.8784314, 1)`` :ref:`🔗<class_Color_constant_LIGHT_YELLOW>`

Світло-жовтий колір.

.. _class_Color_constant_LIME:

.. rst-class:: classref-constant

**LIME** = ``Color(0, 1, 0, 1)`` :ref:`🔗<class_Color_constant_LIME>`

Колір ліму.

.. _class_Color_constant_LIME_GREEN:

.. rst-class:: classref-constant

**LIME_GREEN** = ``Color(0.19607843, 0.8039216, 0.19607843, 1)`` :ref:`🔗<class_Color_constant_LIME_GREEN>`

Лімовий зелений колір.

.. _class_Color_constant_LINEN:

.. rst-class:: classref-constant

**LINEN** = ``Color(0.98039216, 0.9411765, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_LINEN>`

Колір білизни.

.. _class_Color_constant_MAGENTA:

.. rst-class:: classref-constant

**MAGENTA** = ``Color(1, 0, 1, 1)`` :ref:`🔗<class_Color_constant_MAGENTA>`

Колір магента.

.. _class_Color_constant_MAROON:

.. rst-class:: classref-constant

**MAROON** = ``Color(0.6901961, 0.1882353, 0.3764706, 1)`` :ref:`🔗<class_Color_constant_MAROON>`

Марунський колір.

.. _class_Color_constant_MEDIUM_AQUAMARINE:

.. rst-class:: classref-constant

**MEDIUM_AQUAMARINE** = ``Color(0.4, 0.8039216, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_AQUAMARINE>`

Середній аквамариновий колір.

.. _class_Color_constant_MEDIUM_BLUE:

.. rst-class:: classref-constant

**MEDIUM_BLUE** = ``Color(0, 0, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_BLUE>`

Середній синій колір.

.. _class_Color_constant_MEDIUM_ORCHID:

.. rst-class:: classref-constant

**MEDIUM_ORCHID** = ``Color(0.7294118, 0.33333334, 0.827451, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_ORCHID>`

Середній колір орхідеї.

.. _class_Color_constant_MEDIUM_PURPLE:

.. rst-class:: classref-constant

**MEDIUM_PURPLE** = ``Color(0.5764706, 0.4392157, 0.85882354, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_PURPLE>`

Середній фіолетовий колір.

.. _class_Color_constant_MEDIUM_SEA_GREEN:

.. rst-class:: classref-constant

**MEDIUM_SEA_GREEN** = ``Color(0.23529412, 0.7019608, 0.44313726, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SEA_GREEN>`

Середній морський зелений колір.

.. _class_Color_constant_MEDIUM_SLATE_BLUE:

.. rst-class:: classref-constant

**MEDIUM_SLATE_BLUE** = ``Color(0.48235294, 0.40784314, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SLATE_BLUE>`

Середній шифер синій колір.

.. _class_Color_constant_MEDIUM_SPRING_GREEN:

.. rst-class:: classref-constant

**MEDIUM_SPRING_GREEN** = ``Color(0, 0.98039216, 0.6039216, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SPRING_GREEN>`

Середній весняний зелений колір.

.. _class_Color_constant_MEDIUM_TURQUOISE:

.. rst-class:: classref-constant

**MEDIUM_TURQUOISE** = ``Color(0.28235295, 0.81960785, 0.8, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_TURQUOISE>`

Середній бірюзовий колір.

.. _class_Color_constant_MEDIUM_VIOLET_RED:

.. rst-class:: classref-constant

**MEDIUM_VIOLET_RED** = ``Color(0.78039217, 0.08235294, 0.52156866, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_VIOLET_RED>`

Середній фіолетовий червоний колір.

.. _class_Color_constant_MIDNIGHT_BLUE:

.. rst-class:: classref-constant

**MIDNIGHT_BLUE** = ``Color(0.09803922, 0.09803922, 0.4392157, 1)`` :ref:`🔗<class_Color_constant_MIDNIGHT_BLUE>`

Нічний синій колір.

.. _class_Color_constant_MINT_CREAM:

.. rst-class:: classref-constant

**MINT_CREAM** = ``Color(0.9607843, 1, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_MINT_CREAM>`

М'ятний кремовий колір.

.. _class_Color_constant_MISTY_ROSE:

.. rst-class:: classref-constant

**MISTY_ROSE** = ``Color(1, 0.89411765, 0.88235295, 1)`` :ref:`🔗<class_Color_constant_MISTY_ROSE>`

Шикарний колір троянди.

.. _class_Color_constant_MOCCASIN:

.. rst-class:: classref-constant

**MOCCASIN** = ``Color(1, 0.89411765, 0.70980394, 1)`` :ref:`🔗<class_Color_constant_MOCCASIN>`

Колір мокасини.

.. _class_Color_constant_NAVAJO_WHITE:

.. rst-class:: classref-constant

**NAVAJO_WHITE** = ``Color(1, 0.87058824, 0.6784314, 1)`` :ref:`🔗<class_Color_constant_NAVAJO_WHITE>`

Навахо білий колір.

.. _class_Color_constant_NAVY_BLUE:

.. rst-class:: classref-constant

**NAVY_BLUE** = ``Color(0, 0, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_NAVY_BLUE>`

Темно-синій колір.

.. _class_Color_constant_OLD_LACE:

.. rst-class:: classref-constant

**OLD_LACE** = ``Color(0.99215686, 0.9607843, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_OLD_LACE>`

Старий мереживний колір.

.. _class_Color_constant_OLIVE:

.. rst-class:: classref-constant

**OLIVE** = ``Color(0.5019608, 0.5019608, 0, 1)`` :ref:`🔗<class_Color_constant_OLIVE>`

Оливковий колір.

.. _class_Color_constant_OLIVE_DRAB:

.. rst-class:: classref-constant

**OLIVE_DRAB** = ``Color(0.41960785, 0.5568628, 0.13725491, 1)`` :ref:`🔗<class_Color_constant_OLIVE_DRAB>`

Оливковий краб колір.

.. _class_Color_constant_ORANGE:

.. rst-class:: classref-constant

**ORANGE** = ``Color(1, 0.64705884, 0, 1)`` :ref:`🔗<class_Color_constant_ORANGE>`

Помаранчевий колір.

.. _class_Color_constant_ORANGE_RED:

.. rst-class:: classref-constant

**ORANGE_RED** = ``Color(1, 0.27058825, 0, 1)`` :ref:`🔗<class_Color_constant_ORANGE_RED>`

Помаранчевий червоний колір.

.. _class_Color_constant_ORCHID:

.. rst-class:: classref-constant

**ORCHID** = ``Color(0.85490197, 0.4392157, 0.8392157, 1)`` :ref:`🔗<class_Color_constant_ORCHID>`

Орхіде колір.

.. _class_Color_constant_PALE_GOLDENROD:

.. rst-class:: classref-constant

**PALE_GOLDENROD** = ``Color(0.93333334, 0.9098039, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_PALE_GOLDENROD>`

Блакитний золотистий колір.

.. _class_Color_constant_PALE_GREEN:

.. rst-class:: classref-constant

**PALE_GREEN** = ``Color(0.59607846, 0.9843137, 0.59607846, 1)`` :ref:`🔗<class_Color_constant_PALE_GREEN>`

Бліда зелений колір.

.. _class_Color_constant_PALE_TURQUOISE:

.. rst-class:: classref-constant

**PALE_TURQUOISE** = ``Color(0.6862745, 0.93333334, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_PALE_TURQUOISE>`

Бліда бірюзового кольору.

.. _class_Color_constant_PALE_VIOLET_RED:

.. rst-class:: classref-constant

**PALE_VIOLET_RED** = ``Color(0.85882354, 0.4392157, 0.5764706, 1)`` :ref:`🔗<class_Color_constant_PALE_VIOLET_RED>`

Пальто фіолетовий червоний колір.

.. _class_Color_constant_PAPAYA_WHIP:

.. rst-class:: classref-constant

**PAPAYA_WHIP** = ``Color(1, 0.9372549, 0.8352941, 1)`` :ref:`🔗<class_Color_constant_PAPAYA_WHIP>`

Папая віск колір.

.. _class_Color_constant_PEACH_PUFF:

.. rst-class:: classref-constant

**PEACH_PUFF** = ``Color(1, 0.85490197, 0.7254902, 1)`` :ref:`🔗<class_Color_constant_PEACH_PUFF>`

Персик листовий колір.

.. _class_Color_constant_PERU:

.. rst-class:: classref-constant

**PERU** = ``Color(0.8039216, 0.52156866, 0.24705882, 1)`` :ref:`🔗<class_Color_constant_PERU>`

Перу колір.

.. _class_Color_constant_PINK:

.. rst-class:: classref-constant

**PINK** = ``Color(1, 0.7529412, 0.79607844, 1)`` :ref:`🔗<class_Color_constant_PINK>`

Рожевий колір.

.. _class_Color_constant_PLUM:

.. rst-class:: classref-constant

**PLUM** = ``Color(0.8666667, 0.627451, 0.8666667, 1)`` :ref:`🔗<class_Color_constant_PLUM>`

Колір сливу.

.. _class_Color_constant_POWDER_BLUE:

.. rst-class:: classref-constant

**POWDER_BLUE** = ``Color(0.6901961, 0.8784314, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_POWDER_BLUE>`

Порошок синій колір.

.. _class_Color_constant_PURPLE:

.. rst-class:: classref-constant

**PURPLE** = ``Color(0.627451, 0.1254902, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_PURPLE>`

Фіолетовий колір.

.. _class_Color_constant_REBECCA_PURPLE:

.. rst-class:: classref-constant

**REBECCA_PURPLE** = ``Color(0.4, 0.2, 0.6, 1)`` :ref:`🔗<class_Color_constant_REBECCA_PURPLE>`

Ребекка фіолетовий колір.

.. _class_Color_constant_RED:

.. rst-class:: classref-constant

**RED** = ``Color(1, 0, 0, 1)`` :ref:`🔗<class_Color_constant_RED>`

Червоний колір.

.. _class_Color_constant_ROSY_BROWN:

.. rst-class:: classref-constant

**ROSY_BROWN** = ``Color(0.7372549, 0.56078434, 0.56078434, 1)`` :ref:`🔗<class_Color_constant_ROSY_BROWN>`

Росий коричневий колір.

.. _class_Color_constant_ROYAL_BLUE:

.. rst-class:: classref-constant

**ROYAL_BLUE** = ``Color(0.25490198, 0.4117647, 0.88235295, 1)`` :ref:`🔗<class_Color_constant_ROYAL_BLUE>`

Королівський синій колір.

.. _class_Color_constant_SADDLE_BROWN:

.. rst-class:: classref-constant

**SADDLE_BROWN** = ``Color(0.54509807, 0.27058825, 0.07450981, 1)`` :ref:`🔗<class_Color_constant_SADDLE_BROWN>`

Свічка коричневий колір.

.. _class_Color_constant_SALMON:

.. rst-class:: classref-constant

**SALMON** = ``Color(0.98039216, 0.5019608, 0.44705883, 1)`` :ref:`🔗<class_Color_constant_SALMON>`

Колір лосини.

.. _class_Color_constant_SANDY_BROWN:

.. rst-class:: classref-constant

**SANDY_BROWN** = ``Color(0.95686275, 0.6431373, 0.3764706, 1)`` :ref:`🔗<class_Color_constant_SANDY_BROWN>`

Сандалий коричневий колір.

.. _class_Color_constant_SEA_GREEN:

.. rst-class:: classref-constant

**SEA_GREEN** = ``Color(0.18039216, 0.54509807, 0.34117648, 1)`` :ref:`🔗<class_Color_constant_SEA_GREEN>`

Морський зелений колір.

.. _class_Color_constant_SEASHELL:

.. rst-class:: classref-constant

**SEASHELL** = ``Color(1, 0.9607843, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_SEASHELL>`

Колір шкаралупи.

.. _class_Color_constant_SIENNA:

.. rst-class:: classref-constant

**SIENNA** = ``Color(0.627451, 0.32156864, 0.1764706, 1)`` :ref:`🔗<class_Color_constant_SIENNA>`

Сієнна колір.

.. _class_Color_constant_SILVER:

.. rst-class:: classref-constant

**SILVER** = ``Color(0.7529412, 0.7529412, 0.7529412, 1)`` :ref:`🔗<class_Color_constant_SILVER>`

Срібний колір.

.. _class_Color_constant_SKY_BLUE:

.. rst-class:: classref-constant

**SKY_BLUE** = ``Color(0.5294118, 0.80784315, 0.92156863, 1)`` :ref:`🔗<class_Color_constant_SKY_BLUE>`

Небо синій колір.

.. _class_Color_constant_SLATE_BLUE:

.. rst-class:: classref-constant

**SLATE_BLUE** = ``Color(0.41568628, 0.3529412, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_SLATE_BLUE>`

Slate синій колір.

.. _class_Color_constant_SLATE_GRAY:

.. rst-class:: classref-constant

**SLATE_GRAY** = ``Color(0.4392157, 0.5019608, 0.5647059, 1)`` :ref:`🔗<class_Color_constant_SLATE_GRAY>`

Колір сланцево-сірий.

.. _class_Color_constant_SNOW:

.. rst-class:: classref-constant

**SNOW** = ``Color(1, 0.98039216, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_SNOW>`

Колір снігу.

.. _class_Color_constant_SPRING_GREEN:

.. rst-class:: classref-constant

**SPRING_GREEN** = ``Color(0, 1, 0.49803922, 1)`` :ref:`🔗<class_Color_constant_SPRING_GREEN>`

Весняний зелений колір.

.. _class_Color_constant_STEEL_BLUE:

.. rst-class:: classref-constant

**STEEL_BLUE** = ``Color(0.27450982, 0.50980395, 0.7058824, 1)`` :ref:`🔗<class_Color_constant_STEEL_BLUE>`

Сталь синій колір.

.. _class_Color_constant_TAN:

.. rst-class:: classref-constant

**TAN** = ``Color(0.8235294, 0.7058824, 0.54901963, 1)`` :ref:`🔗<class_Color_constant_TAN>`

Колір засмаги.

.. _class_Color_constant_TEAL:

.. rst-class:: classref-constant

**TEAL** = ``Color(0, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_TEAL>`

Колір телятини.

.. _class_Color_constant_THISTLE:

.. rst-class:: classref-constant

**THISTLE** = ``Color(0.84705883, 0.7490196, 0.84705883, 1)`` :ref:`🔗<class_Color_constant_THISTLE>`

Колір будяка.

.. _class_Color_constant_TOMATO:

.. rst-class:: classref-constant

**TOMATO** = ``Color(1, 0.3882353, 0.2784314, 1)`` :ref:`🔗<class_Color_constant_TOMATO>`

Колір томата.

.. _class_Color_constant_TRANSPARENT:

.. rst-class:: classref-constant

**TRANSPARENT** = ``Color(1, 1, 1, 0)`` :ref:`🔗<class_Color_constant_TRANSPARENT>`

Прозорий колір (білий з нульовою альфа).

.. _class_Color_constant_TURQUOISE:

.. rst-class:: classref-constant

**TURQUOISE** = ``Color(0.2509804, 0.8784314, 0.8156863, 1)`` :ref:`🔗<class_Color_constant_TURQUOISE>`

Бірюзовий колір.

.. _class_Color_constant_VIOLET:

.. rst-class:: classref-constant

**VIOLET** = ``Color(0.93333334, 0.50980395, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_VIOLET>`

Колір фіолетовий.

.. _class_Color_constant_WEB_GRAY:

.. rst-class:: classref-constant

**WEB_GRAY** = ``Color(0.5019608, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_WEB_GRAY>`

Веб сірий колір.

.. _class_Color_constant_WEB_GREEN:

.. rst-class:: classref-constant

**WEB_GREEN** = ``Color(0, 0.5019608, 0, 1)`` :ref:`🔗<class_Color_constant_WEB_GREEN>`

Веб-зелений колір.

.. _class_Color_constant_WEB_MAROON:

.. rst-class:: classref-constant

**WEB_MAROON** = ``Color(0.5019608, 0, 0, 1)`` :ref:`🔗<class_Color_constant_WEB_MAROON>`

Веб-дизайн.

.. _class_Color_constant_WEB_PURPLE:

.. rst-class:: classref-constant

**WEB_PURPLE** = ``Color(0.5019608, 0, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_WEB_PURPLE>`

Веб фіолетовий колір.

.. _class_Color_constant_WHEAT:

.. rst-class:: classref-constant

**WHEAT** = ``Color(0.9607843, 0.87058824, 0.7019608, 1)`` :ref:`🔗<class_Color_constant_WHEAT>`

Колір пшениці.

.. _class_Color_constant_WHITE:

.. rst-class:: classref-constant

**WHITE** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Color_constant_WHITE>`

Білий колір.

.. _class_Color_constant_WHITE_SMOKE:

.. rst-class:: classref-constant

**WHITE_SMOKE** = ``Color(0.9607843, 0.9607843, 0.9607843, 1)`` :ref:`🔗<class_Color_constant_WHITE_SMOKE>`

Колір білого диму.

.. _class_Color_constant_YELLOW:

.. rst-class:: classref-constant

**YELLOW** = ``Color(1, 1, 0, 1)`` :ref:`🔗<class_Color_constant_YELLOW>`

Жовтий колір.

.. _class_Color_constant_YELLOW_GREEN:

.. rst-class:: classref-constant

**YELLOW_GREEN** = ``Color(0.6039216, 0.8039216, 0.19607843, 1)`` :ref:`🔗<class_Color_constant_YELLOW_GREEN>`

Жовтий зелений колір.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Color_property_a:

.. rst-class:: classref-property

:ref:`float<class_float>` **a** = ``1.0`` :ref:`🔗<class_Color_property_a>`

Альфа-компонент кольору, зазвичай у діапазоні від 0 до 1. Значення 0 означає, що колір повністю прозорий. Значення 1 означає, що колір повністю непрозорий.

\ **Примітка:** Альфа-канал завжди зберігається з лінійним кодуванням, незалежно від кодування інших колірних каналів. Методи :ref:`linear_to_srgb()<class_Color_method_linear_to_srgb>` та :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` не впливають на альфа-канал.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_a8:

.. rst-class:: classref-property

:ref:`int<class_int>` **a8** = ``255`` :ref:`🔗<class_Color_property_a8>`

Обгортувач для :ref:`a<class_Color_property_a>`, який використовує діапазон 0 до 255, замість 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_b:

.. rst-class:: classref-property

:ref:`float<class_float>` **b** = ``0.0`` :ref:`🔗<class_Color_property_b>`

Синій компонент кольору, як правило, на діапазоні 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_b8:

.. rst-class:: classref-property

:ref:`int<class_int>` **b8** = ``0`` :ref:`🔗<class_Color_property_b8>`

Обгортувач для :ref:`b<class_Color_property_b>`, який використовує діапазон 0 до 255, замість 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_g:

.. rst-class:: classref-property

:ref:`float<class_float>` **g** = ``0.0`` :ref:`🔗<class_Color_property_g>`

Зелений компонент кольору, як правило, на діапазоні 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_g8:

.. rst-class:: classref-property

:ref:`int<class_int>` **g8** = ``0`` :ref:`🔗<class_Color_property_g8>`

Обгортувач для :ref:`g<class_Color_property_g>`, який використовує діапазон 0 до 255, замість 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_h:

.. rst-class:: classref-property

:ref:`float<class_float>` **h** = ``0.0`` :ref:`🔗<class_Color_property_h>`

HSV відтінку цього кольору, на діапазоні 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_h:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_h** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_h>`

Відтінок цього кольору за шкалою OKHSL у діапазоні від 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_l:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_l** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_l>`

Яскравість цього кольору за шкалою OKHSL у діапазоні від 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_s:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_s** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_s>`

Насиченість OKHSL цього кольору в діапазоні від 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_r:

.. rst-class:: classref-property

:ref:`float<class_float>` **r** = ``0.0`` :ref:`🔗<class_Color_property_r>`

Червоний компонент кольору, як правило, на діапазоні 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_r8:

.. rst-class:: classref-property

:ref:`int<class_int>` **r8** = ``0`` :ref:`🔗<class_Color_property_r8>`

Обгортувач для :ref:`r<class_Color_property_r>`, який використовує діапазон 0 до 255, замість 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_s:

.. rst-class:: classref-property

:ref:`float<class_float>` **s** = ``0.0`` :ref:`🔗<class_Color_property_s>`

Насичення HSV цього кольору, на діапазоні 0 до 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_v:

.. rst-class:: classref-property

:ref:`float<class_float>` **v** = ``0.0`` :ref:`🔗<class_Color_property_v>`

HSV значення (яскравість) цього кольору, на діапазоні 0 до 1.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_Color_constructor_Color:

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ ) :ref:`🔗<class_Color_constructor_Color>`

Створює стандартний **Color** із непрозорого чорного. Це те саме, що :ref:`BLACK<class_Color_constant_BLACK>`.

\ **Примітка:** у C# це створює **Color** з усіма його компонентами, встановленими на ``0.0`` (прозорий чорний).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ from\: :ref:`Color<class_Color>`, alpha\: :ref:`float<class_float>`\ )

Створює **Color** з існуючого кольору, де :ref:`a<class_Color_property_a>` встановлений на задане значення ``alpha``.


.. tabs::

 .. code-tab:: gdscript

    var red = Color(Color.RED, 0.2) # 20% непрозорий червоний.

 .. code-tab:: csharp

    var red = new Color(Colors.Red, 0.2f); // 20% непрозорий червоний.



.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ from\: :ref:`Color<class_Color>`\ )

Constructs a **Color** як копія даної **Color**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ code\: :ref:`String<class_String>`\ )

Constructs a **Color** або з HTML-коду або з стандартизованого імені кольору. Підтримувані імена кольорів такі ж, як константи.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ code\: :ref:`String<class_String>`, alpha\: :ref:`float<class_float>`\ )

Constructs a **Color** або з HTML-коду або з стандартизованого імені кольору, з ``alpha`` на діапазоні 0.0 до 1.0. Підтримувані імена кольорів такі ж, як константи.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ r\: :ref:`float<class_float>`, g\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`\ )

Створює **Color** зі значень RGB, зазвичай між 0.0 та 1.0. ``член a`` встановлюється на 1.0.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(0.2, 1.0, 0.7) # Similar to `Color.from_rgba8(51, 255, 178, 255)`

 .. code-tab:: csharp

    var color = new Color(0.2f, 1.0f, 0.7f); // Similar to `Color.Color8(51, 255, 178, 255)`



.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ r\: :ref:`float<class_float>`, g\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, a\: :ref:`float<class_float>`\ )

Створює **Color** зі значень RGBA, зазвичай між 0.0 та 1.0.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(0.2, 1.0, 0.7, 0.8) # Similar to `Color.from_rgba8(51, 255, 178, 204)`

 .. code-tab:: csharp

    var color = new Color(0.2f, 1.0f, 0.7f, 0.8f); // Similar to `Color.Color8(51, 255, 178, 255, 204)`



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Color_method_blend:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **blend**\ (\ over\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_Color_method_blend>`

Повертає новий колір, отриманий у результаті накладання цього кольору на заданий колір. У програмі для малювання ви можете уявити його як колір ``over``, намальований поверх цього кольору (включно з альфа).


.. tabs::

 .. code-tab:: gdscript

    var bg = Color(0.0, 1.0, 0.0, 0.5) # Зелений з альфа 50%
    var fg = Color(1.0, 0.0, 0.0, 0.5) # Червоний з альфа 50%
    var blended_color = bg.blend(fg) # Бурий з альфа 75%

 .. code-tab:: csharp

    var bg = new Color(0. 0f, 1.0f, 0.0f, 0.0f, 0.5f); // Зелений з альфою 50%
    var fg = new Color(1.0f, 0.0f, 0.0f, 0.0f, 0.5f); // Червоний з альфою 50%
    Color blendedColor = bg.Blend(fg); // Браун з альфою 75%



.. rst-class:: classref-item-separator

----

.. _class_Color_method_clamp:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **clamp**\ (\ min\: :ref:`Color<class_Color>` = Color(0, 0, 0, 0), max\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) |const| :ref:`🔗<class_Color_method_clamp>`

Повертає новий колір з усіма компонентами, зафіксованими між компонентами ``min`` і ``max``, запустивши :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` на кожному компоненті.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_darkened:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **darkened**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_darkened>`

Повертає новий колір, темніший на ``amount`` (число від 0.0 до 1.0). Дивитись також :ref:`lightened()<class_Color_method_lightened>`.


.. tabs::

 .. code-tab:: gdscript

    var green = Color(0.0, 1.0, 0.0)
    var darkgreen = green.darkened(0.2) # на 20% темніше за звичайний зелений

 .. code-tab:: csharp

    var green = new Color(0.0f, 1.0f, 0.0f);
    Color darkgreen = green.Darkened(0.2f); // на 20% темніше за звичайний зелений



.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_hsv:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_hsv**\ (\ h\: :ref:`float<class_float>`, s\: :ref:`float<class_float>`, v\: :ref:`float<class_float>`, alpha\: :ref:`float<class_float>` = 1.0\ ) |static| :ref:`🔗<class_Color_method_from_hsv>`

Конструктори кольору з `HSV профілю <https://en.wikipedia.org/wiki/HSL_and_HSV>`__. Хей (``h``), насиченість (``s``), а значення (``v``) зазвичай між 0.0 і 1.0.


.. tabs::

 .. code-tab:: gdscript

    var color = Color.from_hsv(0.58, 0.5, 0.79, 0.8)

 .. code-tab:: csharp

    var color = Color.З FromHsv(0.58f, 0.5f, 0.79f, 0.8f);



.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_ok_hsl:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_ok_hsl**\ (\ h\: :ref:`float<class_float>`, s\: :ref:`float<class_float>`, l\: :ref:`float<class_float>`, alpha\: :ref:`float<class_float>` = 1.0\ ) |static| :ref:`🔗<class_Color_method_from_ok_hsl>`

`OK HSL profile <https://bottosson.github.io/posts/colorpicker/>`__. Хвиля (``h``), насиченість (``s``), і легкість (``l``) зазвичай між 0.0 і 1.0.


.. tabs::

 .. code-tab:: gdscript

    var color = Color.from_ok_hsl(0.58, 0.5, 0.79, 0.8)

 .. code-tab:: csharp

    var color = Color.З FromOkHsl(0.58f, 0.5f, 0.79f, 0.8f);



.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_rgba8:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_rgba8**\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) |static| :ref:`🔗<class_Color_method_from_rgba8>`

Повертає **Color**, побудований з червоного (``r8``), зеленого (``g8``), синього (``b8``) та додатково альфа (``a8``) цілочисельних каналів, кожен з яких ділиться на ``255.0`` для кінцевого значення.

::

    var red = Color.from_rgba8(255, 0, 0) # Те саме, що Color(1, 0, 0).
    var dark_blue = Color.from_rgba8(0, 0, 51) # Те саме, що Color(0, 0, 0.2).
    var my_color = Color.from_rgba8(306, 255, 0, 102) # Те саме, що Color(1.2, 1, 0, 0.4).

\ **Примітка:** Через меншу точність :ref:`from_rgba8()<class_Color_method_from_rgba8>` порівняно зі стандартним конструктором **Color**, колір, створений за допомогою :ref:`from_rgba8()<class_Color_method_from_rgba8>`, зазвичай не дорівнюватиме кольору, створеному за допомогою стандартного конструктора **Color**. Використовуйте :ref:`is_equal_approx()<class_Color_method_is_equal_approx>` для порівнянь, щоб уникнути проблем з похибкою точності обчислень з плаваючою комою.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_rgbe9995:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_rgbe9995**\ (\ rgbe\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_from_rgbe9995>`

Decodes a **Color** з цілого формату RGBE9995. Див. :ref:`Image. FORMAT_RGBE9995<class_Image_constant_ FORMAT_RGBE9995>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_string:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_string**\ (\ str\: :ref:`String<class_String>`, default\: :ref:`Color<class_Color>`\ ) |static| :ref:`🔗<class_Color_method_from_string>`

Створює **Color** з заданого рядка, який може бути як HTML-кодом кольору, так і названим кольором (встановлює чутливість). Повернення ``default`` якщо колір не може бути вказаний з рядка.

Якщо ви хочете створити колір з String в постійному виразі, скористайтеся еквівалентним конструктором замість (тобто ``Color("color string")``).

.. rst-class:: classref-item-separator

----

.. _class_Color_method_get_luminance:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_luminance**\ (\ ) |const| :ref:`🔗<class_Color_method_get_luminance>`

Повертає інтенсивність світла кольору як значення від 0,0 до 1,0 (включно). Це корисно для визначення світлого чи темного кольору. Кольори з яскравістю менше 0,5 зазвичай можна вважати темними.

\ **Примітка:** :ref:`get_luminance()<class_Color_method_get_luminance>` спирається на колір, використовуючи лінійне кодування, щоб повернути точне значення відносної яскравості. Якщо колір використовує нелінійне кодування sRGB за замовчуванням, спочатку використовуйте :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>`, щоб перетворити його на лінійне кодування.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_hex:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **hex**\ (\ hex\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_hex>`

Повертає **Color**, пов'язаний з наданим ``каблук`` цілим в форматі 32-bit RGBA (8 біт на канал). Цей метод є інверсом :ref:`to_rgba32()<class_Color_method_to_rgba32>`.

У GDScript і C#, :ref:`int<class_int>` краще візуалізувати з шістнадцятковим позначенням (``"0x"`` префікс, що робить його ``"0xRGBBAA""``.


.. tabs::

 .. code-tab:: gdscript

    var червоний = Color.hex(0xff0000ff)
    var dark_cyan = Color.hex(0x008b8b8bff)
    var my_color = Color.hex(0xbbefd2a4)

 .. code-tab:: csharp

    var red = new color(0xff0000ff);
    var dark_cyan = new color(0x008b8b8bff);
    var my_color = new color(0xbbefd2a4);



Якщо ви хочете використовувати позначення шестигранної форми в постійному виразі, скористайтеся еквівалентним конструктором замість (тобто ``Color(0xRRGGBBAA)``).

.. rst-class:: classref-item-separator

----

.. _class_Color_method_hex64:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **hex64**\ (\ hex\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_hex64>`

Повертає **Color**, пов'язаний з наданим ``каблук`` цілим в форматі 64-bit RGBA (16 біт на канал). Цей метод є інверсом :ref:`to_rgba64()<class_Color_method_to_rgba64>`.

У GDScript і C#, :ref:`int<class_int>` краще візуалізувати з Hexadecimal позначення (``"0x"`` префікс, що робить його ``"0xRRRRGGGBBBBAAAA""``.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_html:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **html**\ (\ rgba\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_Color_method_html>`

I\ ``Повертає новий колір з [param rgba], HTML hexadecimal string. [param rgba] є нечутливим, і може бути префіксований знаком хешу ([code]#``).

\ ``rgba`` повинен бути дійсний три-цифровий або шести гранний шестигранний колірний ряд, і може містити значення альфа каналу. Якщо ``rgba`` не містить альфа-каналу значення, альфа-канал значення 1,0 застосовується. Якщо ``rgba`` недійсний, повертає порожній колір.


.. tabs::

 .. code-tab:: gdscript

    var blue = Color.html("#0000ff") # синій колір(0.0, 0.0, 1.0, 1.0)
    var green = Color.html("#0F0") # зелена колір(0.0, 1.0, 0.0, 1.0)
    var col = Color.html("663399cc") # col — це колір(0.4, 0.2, 0.6, 0.8)

 .. code-tab:: csharp

    var blue = Color.З FromHtml("#0000ff"); // синій колір(0.0, 0.0, 1.0, 1.0)
    var green = Color.З FromHtml("#0F0"); // зелений колір (0.0, 1.0, 0.0, 1.0)
    var col = Color.З FromHtml("663399cc"); // col — це колір(0.4, 0.2, 0.6, 0.8)



.. rst-class:: classref-item-separator

----

.. _class_Color_method_html_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **html_is_valid**\ (\ color\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_Color_method_html_is_valid>`

``true`` if ``color`` є дійсним HTML шістнадцятковим кольором рядка. Підсумок повинен бути шестигранним значенням (власно-нечутливим) або 3, 4, 6 або 8 цифр, і може бути префіксований знаком хешу (``#``). Цей метод ідентичний :ref:`String.is_valid_html_color()<class_String_method_is_valid_html_color>`.


.. tabs::

 .. code-tab:: gdscript

    Color.html_is_valid("#55aaFF") # Повертає true
    Color.html_is_valid("#55AAFF20") # Повертає true
    Color.html_is_valid("55AAFF) # Повертає true
    Color.html_is_valid("#F2C") # Повертає true

    Color.html_is_valid("#AABBC") # Повернення false
    Color.html_is_valid("#55aaFF5") # Повернення false

 .. code-tab:: csharp

    Color.HtmlIsValid("#55AAFF"); // Повертає true
    Color.HtmlIsValid("#55AAFF20"); // Повернення
    Color.HtmlIsValid("55AAFF"); // Повертає true
    Color.HtmlIsValid("#F2C"); // Повернення

    Color.HtmlIsValid("#AABBC"); // Повернення false
    Color.HtmlIsValid("#55aaFF5"); // Повернення false



.. rst-class:: classref-item-separator

----

.. _class_Color_method_inverted:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **inverted**\ (\ ) |const| :ref:`🔗<class_Color_method_inverted>`

Повертає колір з його :ref:`р<class_Color_property_р>`, :ref:`r<class_Color_property_r>`, і :ref:`g<class_Color_property_g>` компоненти інвертовані (``(1 - р, 1 - б, а)``).


.. tabs::

 .. code-tab:: gdscript

    var black = Color.WHITE.inverted()
    car color = Color(0.3, 0,4, 0,9)
    var inverted_color = color.inverted() # Еквівалент до `Color(0.7, 0,6, 0,1)`

 .. code-tab:: csharp

    var black = Colors.White.Inverted();
    var color = new Color(0.3f, 0.4f, 0.9f);
    Color invertedColor = color.Inverted(); // Еквівалент до `new Color(0.7f, 0.6f, 0.1f)`



.. rst-class:: classref-item-separator

----

.. _class_Color_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ to\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_Color_method_is_equal_approx>`

Повертає ``true``, якщо цей колір і ``to`` є приблизно рівні, запустивши :ref:`@GlobalScope.is_equal_about()<class_@GlobalScope_method_is_equal_about>` на кожному компоненті.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_lerp:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **lerp**\ (\ to\: :ref:`Color<class_Color>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_lerp>`

Повертає лінійне міжпокриття між компонентами цього кольору та компонентами ``to``. Інтерполяційний фактор ``weight`` повинен бути між 0.0 і 1.0 (включно). Дивитися також :ref:`@GlobalScope.lerp()<class_@GlobalScope_method_lerp>`.


.. tabs::

 .. code-tab:: gdscript

    var red = Color(1.0, 0.0, 0.0)
    var aqua = Color(0.0, 1.0, 0.8)

    red.lerp(aqua, 0.2) # Повертає колір(0.8, 0.2, 0.16)
    red.lerp(aqua, 0.5) # Повертає колір(0.5, 0.5, 0,4)
    red.lerp(aqua, 1.0) # Повертає Колір(0.0, 1.0, 0.8)

 .. code-tab:: csharp

    var red = new Color(1.0f, 0.0f, 0.0f);
    var aqua = new Color(Color, 1.0f, 0.8f);

    red.Lerp(aqua, 0.2f); // Повертає колір(0.8f, 0.2f, 0.16f)
    red.Lerp(aqua, 0.5f); // Повертає колір(0.5f, 0.5f, 0.4f)
    red.Lerp(aqua, 1.0f); // Повертає колір(0.0f, 1.0f, 0.8f)



.. rst-class:: classref-item-separator

----

.. _class_Color_method_lightened:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **lightened**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_lightened>`

Повертає новий колір, світліший на ``amount`` (число від 0.0 до 1.0). Дивитись також :ref:`darkened()<class_Color_method_darkened>`.


.. tabs::

 .. code-tab:: gdscript

    var green = Color(0.0, 1.0, 0.0)
    var light_green = green.lightened(0.2) # на 20% світліше, ніж звичайний зелений

 .. code-tab:: csharp

    var green = new Color(0.0f, 1.0f, 0.0f);
    Color lightGreen = green.Lightened(0.2f); // на 20% світліше, ніж звичайний зелений



.. rst-class:: classref-item-separator

----

.. _class_Color_method_linear_to_srgb:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **linear_to_srgb**\ (\ ) |const| :ref:`🔗<class_Color_method_linear_to_srgb>`

Повертає копію кольору, закодованого за допомогою `нелінійної передавальної функції sRGB <https://en.wikipedia.org/wiki/SRGB>`__. Цей метод вимагає, щоб оригінальний колір використовував лінійне кодування. Див. також :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>`, який виконує протилежну операцію.

\ **Примітка:** Альфа-канал кольору (:ref:`a<class_Color_property_a>`) не змінюється. Альфа-канал завжди зберігається з лінійним кодуванням, незалежно від колірного простору інших колірних каналів.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_srgb_to_linear:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **srgb_to_linear**\ (\ ) |const| :ref:`🔗<class_Color_method_srgb_to_linear>`

Повертає копію кольору, яка використовує лінійне кодування. Цей метод вимагає, щоб оригінальний колір був закодований за допомогою `нелінійної передавальної функції sRGB <https://en.wikipedia.org/wiki/SRGB>`__. Див. також :ref:`linear_to_srgb()<class_Color_method_linear_to_srgb>`, який виконує протилежну операцію.

\ **Примітка:** Альфа-канал кольору (:ref:`a<class_Color_property_a>`) не змінюється. Альфа-канал завжди зберігається з лінійним кодуванням, незалежно від колірного простору інших колірних каналів.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_abgr32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_abgr32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_abgr32>`

Повертає колір, перетворений на 32-бітне ціле в форматі ABGR (учитель компонента 8 біт). ABGR - версія формату RGBA.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0,5, 0,2)
    print(color.to_abgr32() # Друки 4281565439

 .. code-tab:: csharp

    var Color = new color (1.0f, 0.5f, 0.2f);
    GD.Print(color.ToAbgr32()); // Друк 4281565439



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_abgr64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_abgr64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_abgr64>`

Повертає колір, який перетворюється на 64-бітне ціле в форматі ABGR (у складі 16 біт). ABGR - версія формату RGBA.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0,5, 0,2)
    print(color.to_abgr64()) # Друки -225178692812801

 .. code-tab:: csharp

    var color = new Color (1.0f, 0.5f, 0.2f);
    GD.Print(color.ToAbgr64()); // Друки -225178692812801



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_argb32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_argb32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_argb32>`

Повертає колір, перетворений на 32-бітне ціле в форматі ARGB (учитель компонента 8 біт). ARGB сумісний з DirectX.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0,5, 0,2)
    print(color.to_argb32()) # Друки 4294934323

 .. code-tab:: csharp

    var color = new Color (1.0f, 0.5f, 0.2f);
    GD.Print(color.ToArgb32()); // Друк 4294934323



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_argb64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_argb64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_argb64>`

Повертає колір, перетворений на число 64-біт у форматі ARGB (у складі 16 біт). ARGB сумісний з DirectX.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0,5, 0,2)
    print(color.to_argb64()) # Друки -2147470541

 .. code-tab:: csharp

    var color = new Color (1.0f, 0.5f, 0.2f);
    GD.Print(color.ToArgb64()); // Друки -2147470541



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_html:

.. rst-class:: classref-method

:ref:`String<class_String>` **to_html**\ (\ with_alpha\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Color_method_to_html>`

Повертає колір, перетворений на HTML шістнадцятковий колір :ref:`String<class_String>` в форматі RGBA, без хешу (``#``) префікс.

Встановлення ``with_alpha`` to ``false``, виключає альфа з шістнадцяткового рядка, використовуючи формат RGB замість формату RGBA


.. tabs::

 .. code-tab:: gdscript

    var white = Колір(1, 1, 0.5)
    var whit_alpha = white.to_html() # Повернення ffffff7f"
    var without_alpha = white.to_html(false) # Повертає "ffffffffff"

 .. code-tab:: csharp

    var white = new Color(1, 1, 0.5f);
    string withAlpha = white.ToHtml(); // Повертає "ffffff7f"
    string whitoutAlpha = white.ToHtml(false); // Повертає "ffffffffff"



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_rgba32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_rgba32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_rgba32>`

Повертає колір, перетворений у 32-бітне ціле число у форматі RGBA (кожна складова - 8 біт). RGBA є форматом за замовчуванням у Godot. Цей метод є оберненим до :ref:`hex()<class_Color_method_hex>`.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_rgba32()) # Виводить 4286526463

 .. code-tab:: csharp

    var color = new Color(1, 0.5f, 0.2f);
    GD.Print(color.ToRgba32()); // Виводить 4286526463



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_rgba64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_rgba64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_rgba64>`

Повертає колір, перетворений у 64-бітне ціле число у форматі RGBA (кожна складова - 16 біт). RGBA є форматом за замовчуванням у Godot. Цей метод є оберненим до :ref:`hex64()<class_Color_method_hex64>`.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_rgba64()) # Вивід -140736629309441

 .. code-tab:: csharp

    var color = new Color(1, 0.5f, 0.2f);
    GD.Print(color.ToRgba64()); // Вивід -140736629309441



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Color_operator_neq_Color:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_neq_Color>`

Повертає ``true``, якщо кольори не зовсім однакові.

\ **Примітка:** Через помилки точності чисел з плаваючою комою, розгляньте можливість використання :ref:`is_equal_approx()<class_Color_method_is_equal_approx>`, що є надійнішим.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_mul_Color>`

Багатофункціональні компоненти даної **Color**.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Color_operator_mul_float>`

Багатопосадки кожного компонента **Color** заданої :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_mul_int>`

Багатопосадки кожного компонента **Color** заданої :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_sum_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator +**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_sum_Color>`

Додавання кожного компонента **Color** з компонентами даної **Color**.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_dif_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator -**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_dif_Color>`

Відзначає кожен компонент **Color** компонентами даної **Color**.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_div_Color>`

Розділяє кожен компонент **Color** компонентами даної **Color**.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_float:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Color_operator_div_float>`

Дивиди кожний компонент **Color** за умови :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_int:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_div_int>`

Дивиди кожний компонент **Color** за умови :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_eq_Color:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_eq_Color>`

Повертає ``true``, якщо кольори абсолютно однакові.

\ **Примітка:** Через помилки точності чисел з плаваючою комою, розгляньте можливість використання :ref:`is_equal_approx()<class_Color_method_is_equal_approx>` замість цього, що є надійнішим..

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_idx_int>`

Отримуйте доступ до компонентів кольору, використовуючи їхній індекс. ``[0]`` еквівалентно :ref:`r<class_Color_property_r>`, ``[1]`` еквівалентно :ref:`g<class_Color_property_g>`, ``[2]`` еквівалентно :ref:`b<class_Color_property_b>`, а ``[3]`` еквівалентний :ref:`a<class_Color_property_a>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_unplus:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator unary+**\ (\ ) :ref:`🔗<class_Color_operator_unplus>`

Повертає однакову вартість, якщо ``+`` не було. `` +`` нічого не робить, але іноді це може зробити ваш код більш читабельним.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_unminus:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator unary-**\ (\ ) :ref:`🔗<class_Color_operator_unminus>`

Перетворює заданий колір. Це еквівалент ``Color.WHITE - c`` або ``Color(1 - c.r, 1 - c.g, 1 - c.b, 1 - c.a)``. На відміну від :ref:`inverted()<class_Color_method_inverted>`, компонент :ref:`a<class_Color_property_a>` інвертується.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
