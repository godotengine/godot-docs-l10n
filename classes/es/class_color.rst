:github_url: hide

.. _class_Color:

Color
=====

Un color representado en formato RGBA.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un color representado en formato RGBA mediante un componente rojo (:ref:`r<class_Color_property_r>`), verde (:ref:`g<class_Color_property_g>`), azul (:ref:`b<class_Color_property_b>`) y alfa (:ref:`a<class_Color_property_a>`). Cada componente es un valor de punto flotante de 32 bits, usualmente en el rango de ``0.0`` a ``1.0``. Algunas propiedades (como :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>`) pueden soportar valores mayores a ``1.0``, para colores sobreexpuestos o HDR (Rango Dinámico Alto).

Los colores pueden crearse de varias maneras: mediante los diversos constructores de **Color**, mediante métodos estáticos como :ref:`from_hsv()<class_Color_method_from_hsv>`, y usando un nombre del conjunto de colores estandarizados basados en los `nombres de colores X11 <https://en.wikipedia.org/wiki/X11_color_names>`__, con la adición de :ref:`TRANSPARENT<class_Color_constant_TRANSPARENT>`.

\ `Hoja de referencia de constantes de color <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/color_constants.png>`__\ 

Aunque **Color** puede usarse para almacenar valores de cualquier codificación, se espera que las propiedades rojo (:ref:`r<class_Color_property_r>`), verde (:ref:`g<class_Color_property_g>`) y azul (:ref:`b<class_Color_property_b>`) de **Color** estén codificadas por Godot usando la `función de transferencia sRGB no lineal <https://en.wikipedia.org/wiki/SRGB#Transfer_function_(%22gamma%22)>`__, a menos que se indique lo contrario. Esta codificación de color es utilizada por muchas herramientas tradicionales de arte y web, lo que facilita la coincidencia de colores entre Godot y estas herramientas. Godot utiliza las primarias de color `Rec. ITU-R BT.709 <https://en.wikipedia.org/wiki/Rec._709>`__, que son utilizadas por el estándar sRGB.

Todas las simulaciones físicas, como los cálculos de iluminación, y las transformaciones colorimétricas, como :ref:`get_luminance()<class_Color_method_get_luminance>`, deben realizarse sobre valores codificados linealmente para producir resultados correctos. Al realizar estos cálculos, convierte **Color** a y desde la codificación lineal usando :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` y :ref:`linear_to_srgb()<class_Color_method_linear_to_srgb>`.

\ **Nota:** En un contexto booleano, un Color evaluará a ``false`` si es igual a ``Color(0, 0, 0, 1)`` (negro opaco). De lo contrario, un Color siempre evaluará a ``true``.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Pintura en 2D con GD <https://godotengine.org/asset-library/asset/2768>`__

- `Demo de Interpolación de Tweens <https://godotengine.org/asset-library/asset/2733>`__

- `Demo de Arrastrar y Soltar con la interfaz gráfica de usuario <https://godotengine.org/asset-library/asset/2767>`__

.. rst-class:: classref-reftable-group

Propiedades
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

Constructores
--------------------------

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

Métodos
--------------

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

Operadores
--------------------

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

Constantes
--------------------

.. _class_Color_constant_ALICE_BLUE:

.. rst-class:: classref-constant

**ALICE_BLUE** = ``Color(0.9411765, 0.972549, 1, 1)`` :ref:`🔗<class_Color_constant_ALICE_BLUE>`

Color azul Alice.

.. _class_Color_constant_ANTIQUE_WHITE:

.. rst-class:: classref-constant

**ANTIQUE_WHITE** = ``Color(0.98039216, 0.92156863, 0.84313726, 1)`` :ref:`🔗<class_Color_constant_ANTIQUE_WHITE>`

Color blanco antiguo.

.. _class_Color_constant_AQUA:

.. rst-class:: classref-constant

**AQUA** = ``Color(0, 1, 1, 1)`` :ref:`🔗<class_Color_constant_AQUA>`

Color agua.

.. _class_Color_constant_AQUAMARINE:

.. rst-class:: classref-constant

**AQUAMARINE** = ``Color(0.49803922, 1, 0.83137256, 1)`` :ref:`🔗<class_Color_constant_AQUAMARINE>`

Color aguamarina.

.. _class_Color_constant_AZURE:

.. rst-class:: classref-constant

**AZURE** = ``Color(0.9411765, 1, 1, 1)`` :ref:`🔗<class_Color_constant_AZURE>`

Color Azure.

.. _class_Color_constant_BEIGE:

.. rst-class:: classref-constant

**BEIGE** = ``Color(0.9607843, 0.9607843, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_BEIGE>`

Color beige.

.. _class_Color_constant_BISQUE:

.. rst-class:: classref-constant

**BISQUE** = ``Color(1, 0.89411765, 0.76862746, 1)`` :ref:`🔗<class_Color_constant_BISQUE>`

Color bisque.

.. _class_Color_constant_BLACK:

.. rst-class:: classref-constant

**BLACK** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Color_constant_BLACK>`

Color negro. En GDScript, este es el valor predeterminado de cualquier color.

.. _class_Color_constant_BLANCHED_ALMOND:

.. rst-class:: classref-constant

**BLANCHED_ALMOND** = ``Color(1, 0.92156863, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_BLANCHED_ALMOND>`

Color almendra blanqueada.

.. _class_Color_constant_BLUE:

.. rst-class:: classref-constant

**BLUE** = ``Color(0, 0, 1, 1)`` :ref:`🔗<class_Color_constant_BLUE>`

Color azul.

.. _class_Color_constant_BLUE_VIOLET:

.. rst-class:: classref-constant

**BLUE_VIOLET** = ``Color(0.5411765, 0.16862746, 0.8862745, 1)`` :ref:`🔗<class_Color_constant_BLUE_VIOLET>`

Color azul violeta.

.. _class_Color_constant_BROWN:

.. rst-class:: classref-constant

**BROWN** = ``Color(0.64705884, 0.16470589, 0.16470589, 1)`` :ref:`🔗<class_Color_constant_BROWN>`

Color marrón.

.. _class_Color_constant_BURLYWOOD:

.. rst-class:: classref-constant

**BURLYWOOD** = ``Color(0.87058824, 0.72156864, 0.5294118, 1)`` :ref:`🔗<class_Color_constant_BURLYWOOD>`

Color madera fuerte.

.. _class_Color_constant_CADET_BLUE:

.. rst-class:: classref-constant

**CADET_BLUE** = ``Color(0.37254903, 0.61960787, 0.627451, 1)`` :ref:`🔗<class_Color_constant_CADET_BLUE>`

Color azul cadete.

.. _class_Color_constant_CHARTREUSE:

.. rst-class:: classref-constant

**CHARTREUSE** = ``Color(0.49803922, 1, 0, 1)`` :ref:`🔗<class_Color_constant_CHARTREUSE>`

Color cartujo.

.. _class_Color_constant_CHOCOLATE:

.. rst-class:: classref-constant

**CHOCOLATE** = ``Color(0.8235294, 0.4117647, 0.11764706, 1)`` :ref:`🔗<class_Color_constant_CHOCOLATE>`

Color chocolate.

.. _class_Color_constant_CORAL:

.. rst-class:: classref-constant

**CORAL** = ``Color(1, 0.49803922, 0.3137255, 1)`` :ref:`🔗<class_Color_constant_CORAL>`

Color coral.

.. _class_Color_constant_CORNFLOWER_BLUE:

.. rst-class:: classref-constant

**CORNFLOWER_BLUE** = ``Color(0.39215687, 0.58431375, 0.92941177, 1)`` :ref:`🔗<class_Color_constant_CORNFLOWER_BLUE>`

Color azul aciano.

.. _class_Color_constant_CORNSILK:

.. rst-class:: classref-constant

**CORNSILK** = ``Color(1, 0.972549, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_CORNSILK>`

Color seda de maíz.

.. _class_Color_constant_CRIMSON:

.. rst-class:: classref-constant

**CRIMSON** = ``Color(0.8627451, 0.078431375, 0.23529412, 1)`` :ref:`🔗<class_Color_constant_CRIMSON>`

Color carmesí.

.. _class_Color_constant_CYAN:

.. rst-class:: classref-constant

**CYAN** = ``Color(0, 1, 1, 1)`` :ref:`🔗<class_Color_constant_CYAN>`

Color cian.

.. _class_Color_constant_DARK_BLUE:

.. rst-class:: classref-constant

**DARK_BLUE** = ``Color(0, 0, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_BLUE>`

Color azul oscuro.

.. _class_Color_constant_DARK_CYAN:

.. rst-class:: classref-constant

**DARK_CYAN** = ``Color(0, 0.54509807, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_CYAN>`

Color cian oscuro.

.. _class_Color_constant_DARK_GOLDENROD:

.. rst-class:: classref-constant

**DARK_GOLDENROD** = ``Color(0.72156864, 0.5254902, 0.043137256, 1)`` :ref:`🔗<class_Color_constant_DARK_GOLDENROD>`

Color de vara dorada oscura.

.. _class_Color_constant_DARK_GRAY:

.. rst-class:: classref-constant

**DARK_GRAY** = ``Color(0.6627451, 0.6627451, 0.6627451, 1)`` :ref:`🔗<class_Color_constant_DARK_GRAY>`

Color gris oscuro.

.. _class_Color_constant_DARK_GREEN:

.. rst-class:: classref-constant

**DARK_GREEN** = ``Color(0, 0.39215687, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_GREEN>`

Color verde oscuro.

.. _class_Color_constant_DARK_KHAKI:

.. rst-class:: classref-constant

**DARK_KHAKI** = ``Color(0.7411765, 0.7176471, 0.41960785, 1)`` :ref:`🔗<class_Color_constant_DARK_KHAKI>`

Color caqui oscuro.

.. _class_Color_constant_DARK_MAGENTA:

.. rst-class:: classref-constant

**DARK_MAGENTA** = ``Color(0.54509807, 0, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_MAGENTA>`

Color magenta oscuro.

.. _class_Color_constant_DARK_OLIVE_GREEN:

.. rst-class:: classref-constant

**DARK_OLIVE_GREEN** = ``Color(0.33333334, 0.41960785, 0.18431373, 1)`` :ref:`🔗<class_Color_constant_DARK_OLIVE_GREEN>`

Color verde oliva oscuro.

.. _class_Color_constant_DARK_ORANGE:

.. rst-class:: classref-constant

**DARK_ORANGE** = ``Color(1, 0.54901963, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_ORANGE>`

Color naranja oscuro.

.. _class_Color_constant_DARK_ORCHID:

.. rst-class:: classref-constant

**DARK_ORCHID** = ``Color(0.6, 0.19607843, 0.8, 1)`` :ref:`🔗<class_Color_constant_DARK_ORCHID>`

Color de orquídea oscura.

.. _class_Color_constant_DARK_RED:

.. rst-class:: classref-constant

**DARK_RED** = ``Color(0.54509807, 0, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_RED>`

Color rojo oscuro.

.. _class_Color_constant_DARK_SALMON:

.. rst-class:: classref-constant

**DARK_SALMON** = ``Color(0.9137255, 0.5882353, 0.47843137, 1)`` :ref:`🔗<class_Color_constant_DARK_SALMON>`

Color salmón oscuro.

.. _class_Color_constant_DARK_SEA_GREEN:

.. rst-class:: classref-constant

**DARK_SEA_GREEN** = ``Color(0.56078434, 0.7372549, 0.56078434, 1)`` :ref:`🔗<class_Color_constant_DARK_SEA_GREEN>`

Color verde mar oscuro.

.. _class_Color_constant_DARK_SLATE_BLUE:

.. rst-class:: classref-constant

**DARK_SLATE_BLUE** = ``Color(0.28235295, 0.23921569, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_SLATE_BLUE>`

Color azul pizarra oscuro.

.. _class_Color_constant_DARK_SLATE_GRAY:

.. rst-class:: classref-constant

**DARK_SLATE_GRAY** = ``Color(0.18431373, 0.30980393, 0.30980393, 1)`` :ref:`🔗<class_Color_constant_DARK_SLATE_GRAY>`

Color gris pizarra oscuro.

.. _class_Color_constant_DARK_TURQUOISE:

.. rst-class:: classref-constant

**DARK_TURQUOISE** = ``Color(0, 0.80784315, 0.81960785, 1)`` :ref:`🔗<class_Color_constant_DARK_TURQUOISE>`

Color turquesa oscuro.

.. _class_Color_constant_DARK_VIOLET:

.. rst-class:: classref-constant

**DARK_VIOLET** = ``Color(0.5803922, 0, 0.827451, 1)`` :ref:`🔗<class_Color_constant_DARK_VIOLET>`

Color violeta oscuro.

.. _class_Color_constant_DEEP_PINK:

.. rst-class:: classref-constant

**DEEP_PINK** = ``Color(1, 0.078431375, 0.5764706, 1)`` :ref:`🔗<class_Color_constant_DEEP_PINK>`

Color rosa intenso.

.. _class_Color_constant_DEEP_SKY_BLUE:

.. rst-class:: classref-constant

**DEEP_SKY_BLUE** = ``Color(0, 0.7490196, 1, 1)`` :ref:`🔗<class_Color_constant_DEEP_SKY_BLUE>`

Color azul cielo profundo.

.. _class_Color_constant_DIM_GRAY:

.. rst-class:: classref-constant

**DIM_GRAY** = ``Color(0.4117647, 0.4117647, 0.4117647, 1)`` :ref:`🔗<class_Color_constant_DIM_GRAY>`

Color gris oscuro.

.. _class_Color_constant_DODGER_BLUE:

.. rst-class:: classref-constant

**DODGER_BLUE** = ``Color(0.11764706, 0.5647059, 1, 1)`` :ref:`🔗<class_Color_constant_DODGER_BLUE>`

Color azul de los Dodgers.

.. _class_Color_constant_FIREBRICK:

.. rst-class:: classref-constant

**FIREBRICK** = ``Color(0.69803923, 0.13333334, 0.13333334, 1)`` :ref:`🔗<class_Color_constant_FIREBRICK>`

Color de ladrillo de fuego.

.. _class_Color_constant_FLORAL_WHITE:

.. rst-class:: classref-constant

**FLORAL_WHITE** = ``Color(1, 0.98039216, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_FLORAL_WHITE>`

Color blanco floral.

.. _class_Color_constant_FOREST_GREEN:

.. rst-class:: classref-constant

**FOREST_GREEN** = ``Color(0.13333334, 0.54509807, 0.13333334, 1)`` :ref:`🔗<class_Color_constant_FOREST_GREEN>`

Color verde del bosque.

.. _class_Color_constant_FUCHSIA:

.. rst-class:: classref-constant

**FUCHSIA** = ``Color(1, 0, 1, 1)`` :ref:`🔗<class_Color_constant_FUCHSIA>`

Color fucsia.

.. _class_Color_constant_GAINSBORO:

.. rst-class:: classref-constant

**GAINSBORO** = ``Color(0.8627451, 0.8627451, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_GAINSBORO>`

Color Gainsboro.

.. _class_Color_constant_GHOST_WHITE:

.. rst-class:: classref-constant

**GHOST_WHITE** = ``Color(0.972549, 0.972549, 1, 1)`` :ref:`🔗<class_Color_constant_GHOST_WHITE>`

Color blanco fantasma.

.. _class_Color_constant_GOLD:

.. rst-class:: classref-constant

**GOLD** = ``Color(1, 0.84313726, 0, 1)`` :ref:`🔗<class_Color_constant_GOLD>`

Color oro.

.. _class_Color_constant_GOLDENROD:

.. rst-class:: classref-constant

**GOLDENROD** = ``Color(0.85490197, 0.64705884, 0.1254902, 1)`` :ref:`🔗<class_Color_constant_GOLDENROD>`

Color de la vara de oro.

.. _class_Color_constant_GRAY:

.. rst-class:: classref-constant

**GRAY** = ``Color(0.74509805, 0.74509805, 0.74509805, 1)`` :ref:`🔗<class_Color_constant_GRAY>`

Color gris.

.. _class_Color_constant_GREEN:

.. rst-class:: classref-constant

**GREEN** = ``Color(0, 1, 0, 1)`` :ref:`🔗<class_Color_constant_GREEN>`

Color verde.

.. _class_Color_constant_GREEN_YELLOW:

.. rst-class:: classref-constant

**GREEN_YELLOW** = ``Color(0.6784314, 1, 0.18431373, 1)`` :ref:`🔗<class_Color_constant_GREEN_YELLOW>`

Color amarillo verde.

.. _class_Color_constant_HONEYDEW:

.. rst-class:: classref-constant

**HONEYDEW** = ``Color(0.9411765, 1, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_HONEYDEW>`

Color melón.

.. _class_Color_constant_HOT_PINK:

.. rst-class:: classref-constant

**HOT_PINK** = ``Color(1, 0.4117647, 0.7058824, 1)`` :ref:`🔗<class_Color_constant_HOT_PINK>`

Color rosa vivo.

.. _class_Color_constant_INDIAN_RED:

.. rst-class:: classref-constant

**INDIAN_RED** = ``Color(0.8039216, 0.36078432, 0.36078432, 1)`` :ref:`🔗<class_Color_constant_INDIAN_RED>`

Color rojo indio.

.. _class_Color_constant_INDIGO:

.. rst-class:: classref-constant

**INDIGO** = ``Color(0.29411766, 0, 0.50980395, 1)`` :ref:`🔗<class_Color_constant_INDIGO>`

Color índigo.

.. _class_Color_constant_IVORY:

.. rst-class:: classref-constant

**IVORY** = ``Color(1, 1, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_IVORY>`

Color marfil.

.. _class_Color_constant_KHAKI:

.. rst-class:: classref-constant

**KHAKI** = ``Color(0.9411765, 0.9019608, 0.54901963, 1)`` :ref:`🔗<class_Color_constant_KHAKI>`

Color caqui.

.. _class_Color_constant_LAVENDER:

.. rst-class:: classref-constant

**LAVENDER** = ``Color(0.9019608, 0.9019608, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_LAVENDER>`

Color lavanda.

.. _class_Color_constant_LAVENDER_BLUSH:

.. rst-class:: classref-constant

**LAVENDER_BLUSH** = ``Color(1, 0.9411765, 0.9607843, 1)`` :ref:`🔗<class_Color_constant_LAVENDER_BLUSH>`

Color de rubor lavanda.

.. _class_Color_constant_LAWN_GREEN:

.. rst-class:: classref-constant

**LAWN_GREEN** = ``Color(0.4862745, 0.9882353, 0, 1)`` :ref:`🔗<class_Color_constant_LAWN_GREEN>`

Color verde césped.

.. _class_Color_constant_LEMON_CHIFFON:

.. rst-class:: classref-constant

**LEMON_CHIFFON** = ``Color(1, 0.98039216, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_LEMON_CHIFFON>`

Color chifón limón.

.. _class_Color_constant_LIGHT_BLUE:

.. rst-class:: classref-constant

**LIGHT_BLUE** = ``Color(0.6784314, 0.84705883, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_LIGHT_BLUE>`

Color azul claro.

.. _class_Color_constant_LIGHT_CORAL:

.. rst-class:: classref-constant

**LIGHT_CORAL** = ``Color(0.9411765, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_LIGHT_CORAL>`

Color coral claro.

.. _class_Color_constant_LIGHT_CYAN:

.. rst-class:: classref-constant

**LIGHT_CYAN** = ``Color(0.8784314, 1, 1, 1)`` :ref:`🔗<class_Color_constant_LIGHT_CYAN>`

Color cian claro.

.. _class_Color_constant_LIGHT_GOLDENROD:

.. rst-class:: classref-constant

**LIGHT_GOLDENROD** = ``Color(0.98039216, 0.98039216, 0.8235294, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GOLDENROD>`

Color de vara de oro claro.

.. _class_Color_constant_LIGHT_GRAY:

.. rst-class:: classref-constant

**LIGHT_GRAY** = ``Color(0.827451, 0.827451, 0.827451, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GRAY>`

Color gris claro.

.. _class_Color_constant_LIGHT_GREEN:

.. rst-class:: classref-constant

**LIGHT_GREEN** = ``Color(0.5647059, 0.93333334, 0.5647059, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GREEN>`

Color verde claro.

.. _class_Color_constant_LIGHT_PINK:

.. rst-class:: classref-constant

**LIGHT_PINK** = ``Color(1, 0.7137255, 0.75686276, 1)`` :ref:`🔗<class_Color_constant_LIGHT_PINK>`

Color rosa claro.

.. _class_Color_constant_LIGHT_SALMON:

.. rst-class:: classref-constant

**LIGHT_SALMON** = ``Color(1, 0.627451, 0.47843137, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SALMON>`

Color salmón claro.

.. _class_Color_constant_LIGHT_SEA_GREEN:

.. rst-class:: classref-constant

**LIGHT_SEA_GREEN** = ``Color(0.1254902, 0.69803923, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SEA_GREEN>`

Color verde mar claro.

.. _class_Color_constant_LIGHT_SKY_BLUE:

.. rst-class:: classref-constant

**LIGHT_SKY_BLUE** = ``Color(0.5294118, 0.80784315, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SKY_BLUE>`

Color azul celeste.

.. _class_Color_constant_LIGHT_SLATE_GRAY:

.. rst-class:: classref-constant

**LIGHT_SLATE_GRAY** = ``Color(0.46666667, 0.53333336, 0.6, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SLATE_GRAY>`

Color gris pizarra claro.

.. _class_Color_constant_LIGHT_STEEL_BLUE:

.. rst-class:: classref-constant

**LIGHT_STEEL_BLUE** = ``Color(0.6901961, 0.76862746, 0.87058824, 1)`` :ref:`🔗<class_Color_constant_LIGHT_STEEL_BLUE>`

Color azul acero claro.

.. _class_Color_constant_LIGHT_YELLOW:

.. rst-class:: classref-constant

**LIGHT_YELLOW** = ``Color(1, 1, 0.8784314, 1)`` :ref:`🔗<class_Color_constant_LIGHT_YELLOW>`

Color amarillo claro.

.. _class_Color_constant_LIME:

.. rst-class:: classref-constant

**LIME** = ``Color(0, 1, 0, 1)`` :ref:`🔗<class_Color_constant_LIME>`

Color lima.

.. _class_Color_constant_LIME_GREEN:

.. rst-class:: classref-constant

**LIME_GREEN** = ``Color(0.19607843, 0.8039216, 0.19607843, 1)`` :ref:`🔗<class_Color_constant_LIME_GREEN>`

Color verde lima.

.. _class_Color_constant_LINEN:

.. rst-class:: classref-constant

**LINEN** = ``Color(0.98039216, 0.9411765, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_LINEN>`

Color lino.

.. _class_Color_constant_MAGENTA:

.. rst-class:: classref-constant

**MAGENTA** = ``Color(1, 0, 1, 1)`` :ref:`🔗<class_Color_constant_MAGENTA>`

Color magenta.

.. _class_Color_constant_MAROON:

.. rst-class:: classref-constant

**MAROON** = ``Color(0.6901961, 0.1882353, 0.3764706, 1)`` :ref:`🔗<class_Color_constant_MAROON>`

Color granate.

.. _class_Color_constant_MEDIUM_AQUAMARINE:

.. rst-class:: classref-constant

**MEDIUM_AQUAMARINE** = ``Color(0.4, 0.8039216, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_AQUAMARINE>`

Color aguamarina medio.

.. _class_Color_constant_MEDIUM_BLUE:

.. rst-class:: classref-constant

**MEDIUM_BLUE** = ``Color(0, 0, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_BLUE>`

Color azul medio.

.. _class_Color_constant_MEDIUM_ORCHID:

.. rst-class:: classref-constant

**MEDIUM_ORCHID** = ``Color(0.7294118, 0.33333334, 0.827451, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_ORCHID>`

Color de orquídea medio.

.. _class_Color_constant_MEDIUM_PURPLE:

.. rst-class:: classref-constant

**MEDIUM_PURPLE** = ``Color(0.5764706, 0.4392157, 0.85882354, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_PURPLE>`

Color púrpura medio.

.. _class_Color_constant_MEDIUM_SEA_GREEN:

.. rst-class:: classref-constant

**MEDIUM_SEA_GREEN** = ``Color(0.23529412, 0.7019608, 0.44313726, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SEA_GREEN>`

Color verde marino medio.

.. _class_Color_constant_MEDIUM_SLATE_BLUE:

.. rst-class:: classref-constant

**MEDIUM_SLATE_BLUE** = ``Color(0.48235294, 0.40784314, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SLATE_BLUE>`

Color azul pizarra medio.

.. _class_Color_constant_MEDIUM_SPRING_GREEN:

.. rst-class:: classref-constant

**MEDIUM_SPRING_GREEN** = ``Color(0, 0.98039216, 0.6039216, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SPRING_GREEN>`

Color verde primaveral medio.

.. _class_Color_constant_MEDIUM_TURQUOISE:

.. rst-class:: classref-constant

**MEDIUM_TURQUOISE** = ``Color(0.28235295, 0.81960785, 0.8, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_TURQUOISE>`

Color turquesa medio.

.. _class_Color_constant_MEDIUM_VIOLET_RED:

.. rst-class:: classref-constant

**MEDIUM_VIOLET_RED** = ``Color(0.78039217, 0.08235294, 0.52156866, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_VIOLET_RED>`

Color rojo violáceo medio.

.. _class_Color_constant_MIDNIGHT_BLUE:

.. rst-class:: classref-constant

**MIDNIGHT_BLUE** = ``Color(0.09803922, 0.09803922, 0.4392157, 1)`` :ref:`🔗<class_Color_constant_MIDNIGHT_BLUE>`

Color azul medianoche.

.. _class_Color_constant_MINT_CREAM:

.. rst-class:: classref-constant

**MINT_CREAM** = ``Color(0.9607843, 1, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_MINT_CREAM>`

Color crema de menta.

.. _class_Color_constant_MISTY_ROSE:

.. rst-class:: classref-constant

**MISTY_ROSE** = ``Color(1, 0.89411765, 0.88235295, 1)`` :ref:`🔗<class_Color_constant_MISTY_ROSE>`

Color rosa niebla.

.. _class_Color_constant_MOCCASIN:

.. rst-class:: classref-constant

**MOCCASIN** = ``Color(1, 0.89411765, 0.70980394, 1)`` :ref:`🔗<class_Color_constant_MOCCASIN>`

Color mocasín.

.. _class_Color_constant_NAVAJO_WHITE:

.. rst-class:: classref-constant

**NAVAJO_WHITE** = ``Color(1, 0.87058824, 0.6784314, 1)`` :ref:`🔗<class_Color_constant_NAVAJO_WHITE>`

Color blanco navajo.

.. _class_Color_constant_NAVY_BLUE:

.. rst-class:: classref-constant

**NAVY_BLUE** = ``Color(0, 0, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_NAVY_BLUE>`

Color azul marino.

.. _class_Color_constant_OLD_LACE:

.. rst-class:: classref-constant

**OLD_LACE** = ``Color(0.99215686, 0.9607843, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_OLD_LACE>`

Color de encaje antiguo.

.. _class_Color_constant_OLIVE:

.. rst-class:: classref-constant

**OLIVE** = ``Color(0.5019608, 0.5019608, 0, 1)`` :ref:`🔗<class_Color_constant_OLIVE>`

Color oliva.

.. _class_Color_constant_OLIVE_DRAB:

.. rst-class:: classref-constant

**OLIVE_DRAB** = ``Color(0.41960785, 0.5568628, 0.13725491, 1)`` :ref:`🔗<class_Color_constant_OLIVE_DRAB>`

Color aceituna monótono.

.. _class_Color_constant_ORANGE:

.. rst-class:: classref-constant

**ORANGE** = ``Color(1, 0.64705884, 0, 1)`` :ref:`🔗<class_Color_constant_ORANGE>`

Color naranja.

.. _class_Color_constant_ORANGE_RED:

.. rst-class:: classref-constant

**ORANGE_RED** = ``Color(1, 0.27058825, 0, 1)`` :ref:`🔗<class_Color_constant_ORANGE_RED>`

Color rojo anaranjado.

.. _class_Color_constant_ORCHID:

.. rst-class:: classref-constant

**ORCHID** = ``Color(0.85490197, 0.4392157, 0.8392157, 1)`` :ref:`🔗<class_Color_constant_ORCHID>`

Color orquídea.

.. _class_Color_constant_PALE_GOLDENROD:

.. rst-class:: classref-constant

**PALE_GOLDENROD** = ``Color(0.93333334, 0.9098039, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_PALE_GOLDENROD>`

Color de vara de oro pálido.

.. _class_Color_constant_PALE_GREEN:

.. rst-class:: classref-constant

**PALE_GREEN** = ``Color(0.59607846, 0.9843137, 0.59607846, 1)`` :ref:`🔗<class_Color_constant_PALE_GREEN>`

Color verde pálido.

.. _class_Color_constant_PALE_TURQUOISE:

.. rst-class:: classref-constant

**PALE_TURQUOISE** = ``Color(0.6862745, 0.93333334, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_PALE_TURQUOISE>`

Color turquesa pálido.

.. _class_Color_constant_PALE_VIOLET_RED:

.. rst-class:: classref-constant

**PALE_VIOLET_RED** = ``Color(0.85882354, 0.4392157, 0.5764706, 1)`` :ref:`🔗<class_Color_constant_PALE_VIOLET_RED>`

Color rojo violeta pálido.

.. _class_Color_constant_PAPAYA_WHIP:

.. rst-class:: classref-constant

**PAPAYA_WHIP** = ``Color(1, 0.9372549, 0.8352941, 1)`` :ref:`🔗<class_Color_constant_PAPAYA_WHIP>`

Color del látigo de papaya.

.. _class_Color_constant_PEACH_PUFF:

.. rst-class:: classref-constant

**PEACH_PUFF** = ``Color(1, 0.85490197, 0.7254902, 1)`` :ref:`🔗<class_Color_constant_PEACH_PUFF>`

Color melocotón.

.. _class_Color_constant_PERU:

.. rst-class:: classref-constant

**PERU** = ``Color(0.8039216, 0.52156866, 0.24705882, 1)`` :ref:`🔗<class_Color_constant_PERU>`

Color Perú.

.. _class_Color_constant_PINK:

.. rst-class:: classref-constant

**PINK** = ``Color(1, 0.7529412, 0.79607844, 1)`` :ref:`🔗<class_Color_constant_PINK>`

Color rosa.

.. _class_Color_constant_PLUM:

.. rst-class:: classref-constant

**PLUM** = ``Color(0.8666667, 0.627451, 0.8666667, 1)`` :ref:`🔗<class_Color_constant_PLUM>`

Color ciruela.

.. _class_Color_constant_POWDER_BLUE:

.. rst-class:: classref-constant

**POWDER_BLUE** = ``Color(0.6901961, 0.8784314, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_POWDER_BLUE>`

Color azul de polvo.

.. _class_Color_constant_PURPLE:

.. rst-class:: classref-constant

**PURPLE** = ``Color(0.627451, 0.1254902, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_PURPLE>`

Color púrpura.

.. _class_Color_constant_REBECCA_PURPLE:

.. rst-class:: classref-constant

**REBECCA_PURPLE** = ``Color(0.4, 0.2, 0.6, 1)`` :ref:`🔗<class_Color_constant_REBECCA_PURPLE>`

Color púrpura de Rebecca.

.. _class_Color_constant_RED:

.. rst-class:: classref-constant

**RED** = ``Color(1, 0, 0, 1)`` :ref:`🔗<class_Color_constant_RED>`

Color rojo.

.. _class_Color_constant_ROSY_BROWN:

.. rst-class:: classref-constant

**ROSY_BROWN** = ``Color(0.7372549, 0.56078434, 0.56078434, 1)`` :ref:`🔗<class_Color_constant_ROSY_BROWN>`

Color marrón rosado.

.. _class_Color_constant_ROYAL_BLUE:

.. rst-class:: classref-constant

**ROYAL_BLUE** = ``Color(0.25490198, 0.4117647, 0.88235295, 1)`` :ref:`🔗<class_Color_constant_ROYAL_BLUE>`

Color azul real.

.. _class_Color_constant_SADDLE_BROWN:

.. rst-class:: classref-constant

**SADDLE_BROWN** = ``Color(0.54509807, 0.27058825, 0.07450981, 1)`` :ref:`🔗<class_Color_constant_SADDLE_BROWN>`

Color marrón silla de montar.

.. _class_Color_constant_SALMON:

.. rst-class:: classref-constant

**SALMON** = ``Color(0.98039216, 0.5019608, 0.44705883, 1)`` :ref:`🔗<class_Color_constant_SALMON>`

Color salmón.

.. _class_Color_constant_SANDY_BROWN:

.. rst-class:: classref-constant

**SANDY_BROWN** = ``Color(0.95686275, 0.6431373, 0.3764706, 1)`` :ref:`🔗<class_Color_constant_SANDY_BROWN>`

Color marrón arenoso.

.. _class_Color_constant_SEA_GREEN:

.. rst-class:: classref-constant

**SEA_GREEN** = ``Color(0.18039216, 0.54509807, 0.34117648, 1)`` :ref:`🔗<class_Color_constant_SEA_GREEN>`

Color verde mar.

.. _class_Color_constant_SEASHELL:

.. rst-class:: classref-constant

**SEASHELL** = ``Color(1, 0.9607843, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_SEASHELL>`

Color de la concha marina.

.. _class_Color_constant_SIENNA:

.. rst-class:: classref-constant

**SIENNA** = ``Color(0.627451, 0.32156864, 0.1764706, 1)`` :ref:`🔗<class_Color_constant_SIENNA>`

Color siena.

.. _class_Color_constant_SILVER:

.. rst-class:: classref-constant

**SILVER** = ``Color(0.7529412, 0.7529412, 0.7529412, 1)`` :ref:`🔗<class_Color_constant_SILVER>`

Color plata.

.. _class_Color_constant_SKY_BLUE:

.. rst-class:: classref-constant

**SKY_BLUE** = ``Color(0.5294118, 0.80784315, 0.92156863, 1)`` :ref:`🔗<class_Color_constant_SKY_BLUE>`

Color azul cielo.

.. _class_Color_constant_SLATE_BLUE:

.. rst-class:: classref-constant

**SLATE_BLUE** = ``Color(0.41568628, 0.3529412, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_SLATE_BLUE>`

Color azul pizarra.

.. _class_Color_constant_SLATE_GRAY:

.. rst-class:: classref-constant

**SLATE_GRAY** = ``Color(0.4392157, 0.5019608, 0.5647059, 1)`` :ref:`🔗<class_Color_constant_SLATE_GRAY>`

Color gris pizarra.

.. _class_Color_constant_SNOW:

.. rst-class:: classref-constant

**SNOW** = ``Color(1, 0.98039216, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_SNOW>`

Color nieve.

.. _class_Color_constant_SPRING_GREEN:

.. rst-class:: classref-constant

**SPRING_GREEN** = ``Color(0, 1, 0.49803922, 1)`` :ref:`🔗<class_Color_constant_SPRING_GREEN>`

Color verde primaveral.

.. _class_Color_constant_STEEL_BLUE:

.. rst-class:: classref-constant

**STEEL_BLUE** = ``Color(0.27450982, 0.50980395, 0.7058824, 1)`` :ref:`🔗<class_Color_constant_STEEL_BLUE>`

Color azul acero.

.. _class_Color_constant_TAN:

.. rst-class:: classref-constant

**TAN** = ``Color(0.8235294, 0.7058824, 0.54901963, 1)`` :ref:`🔗<class_Color_constant_TAN>`

Color bronceado.

.. _class_Color_constant_TEAL:

.. rst-class:: classref-constant

**TEAL** = ``Color(0, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_TEAL>`

Color verde azulado.

.. _class_Color_constant_THISTLE:

.. rst-class:: classref-constant

**THISTLE** = ``Color(0.84705883, 0.7490196, 0.84705883, 1)`` :ref:`🔗<class_Color_constant_THISTLE>`

Color cardo.

.. _class_Color_constant_TOMATO:

.. rst-class:: classref-constant

**TOMATO** = ``Color(1, 0.3882353, 0.2784314, 1)`` :ref:`🔗<class_Color_constant_TOMATO>`

Color tomate.

.. _class_Color_constant_TRANSPARENT:

.. rst-class:: classref-constant

**TRANSPARENT** = ``Color(1, 1, 1, 0)`` :ref:`🔗<class_Color_constant_TRANSPARENT>`

Color transparente (blanco con alfa cero).

.. _class_Color_constant_TURQUOISE:

.. rst-class:: classref-constant

**TURQUOISE** = ``Color(0.2509804, 0.8784314, 0.8156863, 1)`` :ref:`🔗<class_Color_constant_TURQUOISE>`

Color turquesa.

.. _class_Color_constant_VIOLET:

.. rst-class:: classref-constant

**VIOLET** = ``Color(0.93333334, 0.50980395, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_VIOLET>`

Color violeta.

.. _class_Color_constant_WEB_GRAY:

.. rst-class:: classref-constant

**WEB_GRAY** = ``Color(0.5019608, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_WEB_GRAY>`

Color gris web.

.. _class_Color_constant_WEB_GREEN:

.. rst-class:: classref-constant

**WEB_GREEN** = ``Color(0, 0.5019608, 0, 1)`` :ref:`🔗<class_Color_constant_WEB_GREEN>`

Color verde web.

.. _class_Color_constant_WEB_MAROON:

.. rst-class:: classref-constant

**WEB_MAROON** = ``Color(0.5019608, 0, 0, 1)`` :ref:`🔗<class_Color_constant_WEB_MAROON>`

Color granate web.

.. _class_Color_constant_WEB_PURPLE:

.. rst-class:: classref-constant

**WEB_PURPLE** = ``Color(0.5019608, 0, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_WEB_PURPLE>`

Color púrpura web.

.. _class_Color_constant_WHEAT:

.. rst-class:: classref-constant

**WHEAT** = ``Color(0.9607843, 0.87058824, 0.7019608, 1)`` :ref:`🔗<class_Color_constant_WHEAT>`

Color trigo.

.. _class_Color_constant_WHITE:

.. rst-class:: classref-constant

**WHITE** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Color_constant_WHITE>`

Color blanco.

.. _class_Color_constant_WHITE_SMOKE:

.. rst-class:: classref-constant

**WHITE_SMOKE** = ``Color(0.9607843, 0.9607843, 0.9607843, 1)`` :ref:`🔗<class_Color_constant_WHITE_SMOKE>`

Color humo blanco.

.. _class_Color_constant_YELLOW:

.. rst-class:: classref-constant

**YELLOW** = ``Color(1, 1, 0, 1)`` :ref:`🔗<class_Color_constant_YELLOW>`

Color amarillo.

.. _class_Color_constant_YELLOW_GREEN:

.. rst-class:: classref-constant

**YELLOW_GREEN** = ``Color(0.6039216, 0.8039216, 0.19607843, 1)`` :ref:`🔗<class_Color_constant_YELLOW_GREEN>`

Color verde amarillo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Color_property_a:

.. rst-class:: classref-property

:ref:`float<class_float>` **a** = ``1.0`` :ref:`🔗<class_Color_property_a>`

The color's alpha component, typically on the range of 0 to 1. A value of 0 means that the color is fully transparent. A value of 1 means that the color is fully opaque.

\ **Note:** The alpha channel is always stored with linear encoding, regardless of the encoding of the other color channels. The :ref:`linear_to_srgb()<class_Color_method_linear_to_srgb>` and :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` methods do not affect the alpha channel.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_a8:

.. rst-class:: classref-property

:ref:`int<class_int>` **a8** = ``255`` :ref:`🔗<class_Color_property_a8>`

Wrapper for :ref:`a<class_Color_property_a>` that uses the range 0 to 255, instead of 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_b:

.. rst-class:: classref-property

:ref:`float<class_float>` **b** = ``0.0`` :ref:`🔗<class_Color_property_b>`

El componente azul del color, típicamente en el rango de 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_b8:

.. rst-class:: classref-property

:ref:`int<class_int>` **b8** = ``0`` :ref:`🔗<class_Color_property_b8>`

Wrapper for :ref:`b<class_Color_property_b>` that uses the range 0 to 255, instead of 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_g:

.. rst-class:: classref-property

:ref:`float<class_float>` **g** = ``0.0`` :ref:`🔗<class_Color_property_g>`

El componente verde del color, típicamente en el rango de 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_g8:

.. rst-class:: classref-property

:ref:`int<class_int>` **g8** = ``0`` :ref:`🔗<class_Color_property_g8>`

Wrapper for :ref:`g<class_Color_property_g>` that uses the range 0 to 255, instead of 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_h:

.. rst-class:: classref-property

:ref:`float<class_float>` **h** = ``0.0`` :ref:`🔗<class_Color_property_h>`

El tono del HSV de este color, en el rango de 0 a 1..

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_h:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_h** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_h>`

El tono OKHSL de este color, en el rango de 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_l:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_l** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_l>`

La luminosidad OKHSL de este color, en el rango de 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_s:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_s** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_s>`

La saturación OKHSL de este color, en el rango de 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_r:

.. rst-class:: classref-property

:ref:`float<class_float>` **r** = ``0.0`` :ref:`🔗<class_Color_property_r>`

El componente rojo del color, típicamente en el rango de 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_r8:

.. rst-class:: classref-property

:ref:`int<class_int>` **r8** = ``0`` :ref:`🔗<class_Color_property_r8>`

Wrapper for :ref:`r<class_Color_property_r>` that uses the range 0 to 255, instead of 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_s:

.. rst-class:: classref-property

:ref:`float<class_float>` **s** = ``0.0`` :ref:`🔗<class_Color_property_s>`

La saturación del HSV de este color, en el rango de 0 a 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_v:

.. rst-class:: classref-property

:ref:`float<class_float>` **v** = ``0.0`` :ref:`🔗<class_Color_property_v>`

El valor HSV (brillo) de este color, en el rango de 0 a 1.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_Color_constructor_Color:

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ ) :ref:`🔗<class_Color_constructor_Color>`

Construye un **Color** por defecto a partir de negro opaco. Es lo mismo que :ref:`BLACK<class_Color_constant_BLACK>`.

\ **Nota:** En C#, esto construye un **Color** con todos sus componentes establecidos a ``0.0`` (negro transparente).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ from\: :ref:`Color<class_Color>`, alpha\: :ref:`float<class_float>`\ )

Construye un **Color** a partir del color existente, con :ref:`a<class_Color_property_a>` establecido al valor ``alpha`` dado.


.. tabs::

 .. code-tab:: gdscript

    var red = Color(Color.RED, 0.2) # Rojo opaco al 20%.

 .. code-tab:: csharp

    var red = new Color(Colors.Red, 0.2f); // Rojo opaco al 20%.



.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ from\: :ref:`Color<class_Color>`\ )

Construye un **Color** como una copia del **Color** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ code\: :ref:`String<class_String>`\ )

Construye un **Color** ya sea desde un código de color HTML o desde un nombre de color estandarizado. Los nombres de color soportados son los mismos que las constantes.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ code\: :ref:`String<class_String>`, alpha\: :ref:`float<class_float>`\ )

Construye un **Color** ya sea desde un código de color HTML o desde un nombre de color estandarizado, con ``alpha`` en el rango de 0.0 a 1.0. Los nombres de color soportados son los mismos que las constantes.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ r\: :ref:`float<class_float>`, g\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`\ )

Constructs a **Color** from RGB values, typically between 0.0 and 1.0. :ref:`a<class_Color_property_a>` is set to 1.0.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(0.2, 1.0, 0.7) # Similar to `Color.from_rgba8(51, 255, 178, 255)`

 .. code-tab:: csharp

    var color = new Color(0.2f, 1.0f, 0.7f); // Similar to `Color.Color8(51, 255, 178, 255)`



.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ r\: :ref:`float<class_float>`, g\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, a\: :ref:`float<class_float>`\ )

Constructs a **Color** from RGBA values, typically between 0.0 and 1.0.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(0.2, 1.0, 0.7, 0.8) # Similar to `Color.from_rgba8(51, 255, 178, 204)`

 .. code-tab:: csharp

    var color = new Color(0.2f, 1.0f, 0.7f, 0.8f); // Similar to `Color.Color8(51, 255, 178, 255, 204)`



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Color_method_blend:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **blend**\ (\ over\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_Color_method_blend>`

Devuelve un nuevo color resultante de superponer este color sobre el color dado. En un programa de pintura, puedes imaginarlo como el color ``over`` pintado sobre este color (incluyendo el alfa).


.. tabs::

 .. code-tab:: gdscript

    var bg = Color(0.0, 1.0, 0.0, 0.5) # Verde con alfa del 50%
    var fg = Color(1.0, 0.0, 0.0, 0.5) # Rojo con alfa del 50%
    var blended_color = bg.blend(fg) # Marrón con alfa del 75%

 .. code-tab:: csharp

    var bg = new Color(0.0f, 1.0f, 0.0f, 0.5f); // Verde con alfa del 50%
    var fg = new Color(1.0f, 0.0f, 0.0f, 0.5f); // Rojo con alfa del 50%
    Color blendedColor = bg.Blend(fg); // Marrón con alfa del 75%



.. rst-class:: classref-item-separator

----

.. _class_Color_method_clamp:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **clamp**\ (\ min\: :ref:`Color<class_Color>` = Color(0, 0, 0, 0), max\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) |const| :ref:`🔗<class_Color_method_clamp>`

Devuelve un nuevo color con todos los componentes sujetos entre los componentes de ``min`` y ``max``, ejecutando :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` en cada componente.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_darkened:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **darkened**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_darkened>`

Devuelve un nuevo color resultante de oscurecer este color según la ``amount`` especificada (relación de 0.0 a 1.0). Véase también :ref:`lightened()<class_Color_method_lightened>`.


.. tabs::

 .. code-tab:: gdscript

    var green = Color(0.0, 1.0, 0.0)
    var darkgreen = green.darkened(0.2) # 20% más oscuro que el verde normal

 .. code-tab:: csharp

    var green = new Color(0.0f, 1.0f, 0.0f);
    Color darkgreen = green.Darkened(0.2f); // 20% más oscuro que el verde normal



.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_hsv:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_hsv**\ (\ h\: :ref:`float<class_float>`, s\: :ref:`float<class_float>`, v\: :ref:`float<class_float>`, alpha\: :ref:`float<class_float>` = 1.0\ ) |static| :ref:`🔗<class_Color_method_from_hsv>`

Construye un color a partir de un `perfil HSV <https://en.wikipedia.org/wiki/HSL_and_HSV>`__. El tono (``h``), la saturación (``s``) y el valor (``v``) están normalmente entre 0.0 y 1.0.


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

Construye un color a partir de un `perfil OK HSL <https://bottosson.github.io/posts/colorpicker/>`__. El tono (``h``), la saturación (``s``) y la luminosidad (``l``) están normalmente entre 0.0 y 1.0.


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

Returns a **Color** constructed from red (``r8``), green (``g8``), blue (``b8``), and optionally alpha (``a8``) integer channels, each divided by ``255.0`` for their final value.

::

    var red = Color.from_rgba8(255, 0, 0)             # Same as Color(1, 0, 0).
    var dark_blue = Color.from_rgba8(0, 0, 51)        # Same as Color(0, 0, 0.2).
    var my_color = Color.from_rgba8(306, 255, 0, 102) # Same as Color(1.2, 1, 0, 0.4).

\ **Note:** Due to the lower precision of :ref:`from_rgba8()<class_Color_method_from_rgba8>` compared to the standard **Color** constructor, a color created with :ref:`from_rgba8()<class_Color_method_from_rgba8>` will generally not be equal to the same color created with the standard **Color** constructor. Use :ref:`is_equal_approx()<class_Color_method_is_equal_approx>` for comparisons to avoid issues with floating-point precision error.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_rgbe9995:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_rgbe9995**\ (\ rgbe\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_from_rgbe9995>`

Decodifica un **Color** desde un entero con formato RGBE9995. Véase :ref:`Image.FORMAT_RGBE9995<class_Image_constant_FORMAT_RGBE9995>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_string:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_string**\ (\ str\: :ref:`String<class_String>`, default\: :ref:`Color<class_Color>`\ ) |static| :ref:`🔗<class_Color_method_from_string>`

Crea un **Color** a partir de la string dada, que puede ser un código de color HTML o un color con nombre (insensible a mayúsculas y minúsculas). Devuelve ``default`` si no se puede inferir el color de la string.

Si quieres crear un color desde una String en una expresión constante, usa el constructor equivalente en su lugar (ej. ``Color("color string")``).

.. rst-class:: classref-item-separator

----

.. _class_Color_method_get_luminance:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_luminance**\ (\ ) |const| :ref:`🔗<class_Color_method_get_luminance>`

Returns the light intensity of the color, as a value between 0.0 and 1.0 (inclusive). This is useful when determining light or dark color. Colors with a luminance smaller than 0.5 can be generally considered dark.

\ **Note:** :ref:`get_luminance()<class_Color_method_get_luminance>` relies on the color using linear encoding to return an accurate relative luminance value. If the color uses the default nonlinear sRGB encoding, use :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` to convert it to linear encoding first.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_hex:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **hex**\ (\ hex\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_hex>`

Devuelve el **Color** asociado con el entero ``hex`` proporcionado en formato RGBA de 32 bits (8 bits por canal). Este método es el inverso de :ref:`to_rgba32()<class_Color_method_to_rgba32>`.

En GDScript y C#, el :ref:`int<class_int>` se visualiza mejor con notación hexadecimal (``"0x"`` prefijo, haciéndolo ``"0xRRGGBBAA"``).


.. tabs::

 .. code-tab:: gdscript

    var red = Color.hex(0xff0000ff)
    var dark_cyan = Color.hex(0x008b8bff)
    var my_color = Color.hex(0xbbefd2a4)

 .. code-tab:: csharp

    var red = new Color(0xff0000ff);
    var dark_cyan = new Color(0x008b8bff);
    var my_color = new Color(0xbbefd2a4);



Si quieres usar la notación hexadecimal en una expresión constante, usa el constructor equivalente en su lugar (ej. ``Color(0xRRGGBBAA)``).

.. rst-class:: classref-item-separator

----

.. _class_Color_method_hex64:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **hex64**\ (\ hex\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_hex64>`

Devuelve el **Color** asociado con el entero ``hex`` proporcionado en formato RGBA de 64 bits (16 bits por canal). Este método es el inverso de :ref:`to_rgba64()<class_Color_method_to_rgba64>`.

En GDScript y C#, el :ref:`int<class_int>` se visualiza mejor con la notación hexadecimal (``"0x"`` prefijo, haciéndolo ``"0xRRRRGGGGBBBBAAAA"``).

.. rst-class:: classref-item-separator

----

.. _class_Color_method_html:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **html**\ (\ rgba\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_Color_method_html>`

Devuelve un nuevo color de ``rgba``, una string de color hexadecimal HTML. ``rgba`` no distingue entre mayúsculas y minúsculas, y puede tener el prefijo de un signo hash (``#``).

\ ``rgba`` debe ser una string de color hexadecimal válida de tres o seis dígitos, y puede contener un valor de canal alfa. Si ``rgba`` no contiene un valor de canal alfa, se aplica un valor de canal alfa de 1.0. Si ``rgba`` no es válido, devuelve un color vacío.


.. tabs::

 .. code-tab:: gdscript

    var azul = Color.html("#0000ff") # azul es Color(0.0, 0.0, 1.0, 1.0)
    var verde = Color.html("#0F0")   # verde es Color(0.0, 1.0, 0.0, 1.0)
    var col = Color.html("663399cc") # col es Color(0.4, 0.2, 0.6, 0.8)

 .. code-tab:: csharp

    var azul = Color.FromHtml("#0000ff"); // azul es Color(0.0, 0.0, 1.0, 1.0)
    var verde = Color.FromHtml("#0F0");   // verde es Color(0.0, 1.0, 0.0, 1.0)
    var col = Color.FromHtml("663399cc"); // col es Color(0.4, 0.2, 0.6, 0.8)



.. rst-class:: classref-item-separator

----

.. _class_Color_method_html_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **html_is_valid**\ (\ color\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_Color_method_html_is_valid>`

Devuelve ``true`` si ``color`` es una string hexadecimal HTML válida.La string debe ser un valor hexadecimal (insensible a mayúsculas y minúsculas) de 3, 4, 6 u 8 dígitos, y puede tener el prefijo de un signo hash (``#``).Este método es idéntico a :ref:`String.is_valid_html_color()<class_String_method_is_valid_html_color>`.


.. tabs::

 .. code-tab:: gdscript

    Color.html_is_valid("#55aaFF")   # Devuelve true
    Color.html_is_valid("#55AAFF20") # Devuelve true
    Color.html_is_valid("55AAFF")    # Devuelve true
    Color.html_is_valid("#F2C")      # Devuelve true

    Color.html_is_valid("#AABBC")    # Devuelve false
    Color.html_is_valid("#55aaFF5")  # Devuelve false

 .. code-tab:: csharp

    Color.HtmlIsValid("#55AAFF");   // Devuelve true
    Color.HtmlIsValid("#55AAFF20"); // Devuelve true
    Color.HtmlIsValid("55AAFF");    // Devuelve true
    Color.HtmlIsValid("#F2C");      // Devuelve true

    Color.HtmlIsValid("#AABBC");    // Devuelve false
    Color.HtmlIsValid("#55aaFF5");  // Devuelve false



.. rst-class:: classref-item-separator

----

.. _class_Color_method_inverted:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **inverted**\ (\ ) |const| :ref:`🔗<class_Color_method_inverted>`

Devuelve el color con sus componentes :ref:`r<class_Color_property_r>`, :ref:`g<class_Color_property_g>` y :ref:`b<class_Color_property_b>` invertidos (``(1 - r, 1 - g, 1 - b, a)``).


.. tabs::

 .. code-tab:: gdscript

    var black = Color.WHITE.inverted()
    var color = Color(0.3, 0.4, 0.9)
    var inverted_color = color.inverted() # Equivalente a `Color(0.7, 0.6, 0.1)`

 .. code-tab:: csharp

    var black = Colors.White.Inverted();
    var color = new Color(0.3f, 0.4f, 0.9f);
    Color invertedColor = color.Inverted(); // Equivalente a `new Color(0.7f, 0.6f, 0.1f)`



.. rst-class:: classref-item-separator

----

.. _class_Color_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ to\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_Color_method_is_equal_approx>`

Returns ``true`` if this color and ``to`` are approximately equal, by running :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` on each component.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_lerp:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **lerp**\ (\ to\: :ref:`Color<class_Color>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_lerp>`

Devuelve la interpolación lineal entre los componentes de este color y los componentes de ``to``. El factor de interpolación ``weight`` debe estar entre 0.0 y 1.0 (inclusivo). Véase también :ref:`@GlobalScope.lerp()<class_@GlobalScope_method_lerp>`.


.. tabs::

 .. code-tab:: gdscript

    var rojo = Color(1.0, 0.0, 0.0)
    var aqua = Color(0.0, 1.0, 0.8)

    rojo.lerp(aqua, 0.2) # Devuelve Color(0.8, 0.2, 0.16)
    rojo.lerp(aqua, 0.5) # Devuelve Color(0.5, 0.5, 0.4)
    rojo.lerp(aqua, 1.0) # Devuelve Color(0.0, 1.0, 0.8)

 .. code-tab:: csharp

    var rojo = new Color(1.0f, 0.0f, 0.0f);
    var aqua = new Color(0.0f, 1.0f, 0.8f);

    rojo.Lerp(aqua, 0.2f); // Devuelve Color(0.8f, 0.2f, 0.16f)
    rojo.Lerp(aqua, 0.5f); // Devuelve Color(0.5f, 0.5f, 0.4f)
    rojo.Lerp(aqua, 1.0f); // Devuelve Color(0.0f, 1.0f, 0.8f)



.. rst-class:: classref-item-separator

----

.. _class_Color_method_lightened:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **lightened**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_lightened>`

Devuelve un nuevo color resultante de hacer este color más claro según la ``amount`` especificada, que debería ser una relación de 0.0 a 1.0. Véase también :ref:`darkened()<class_Color_method_darkened>`.


.. tabs::

 .. code-tab:: gdscript

    var verde = Color(0.0, 1.0, 0.0)
    var light_green = verde.lightened(0.2) # 20% más claro que el verde normal

 .. code-tab:: csharp

    var verde = new Color(0.0f, 1.0f, 0.0f);
    Color verdeClaro = verde.Lightened(0.2f); // 20% más claro que el verde normal



.. rst-class:: classref-item-separator

----

.. _class_Color_method_linear_to_srgb:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **linear_to_srgb**\ (\ ) |const| :ref:`🔗<class_Color_method_linear_to_srgb>`

Returns a copy of the color that is encoded using the `nonlinear sRGB transfer function <https://en.wikipedia.org/wiki/SRGB>`__. This method requires the original color to use linear encoding. See also :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` which performs the opposite operation.

\ **Note:** The color's alpha channel (:ref:`a<class_Color_property_a>`) is not affected. The alpha channel is always stored with linear encoding, regardless of the color space of the other color channels.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_srgb_to_linear:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **srgb_to_linear**\ (\ ) |const| :ref:`🔗<class_Color_method_srgb_to_linear>`

Returns a copy of the color that uses linear encoding. This method requires the original color to be encoded using the `nonlinear sRGB transfer function <https://en.wikipedia.org/wiki/SRGB>`__. See also :ref:`linear_to_srgb()<class_Color_method_linear_to_srgb>` which performs the opposite operation.

\ **Note:** The color's alpha channel (:ref:`a<class_Color_property_a>`) is not affected. The alpha channel is always stored with linear encoding, regardless of the color space of the other color channels.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_abgr32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_abgr32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_abgr32>`

Devuelve el color convertido a un entero de 32 bits en formato ABGR (cada componente ocupa 8 bits). ABGR es la versión invertida del formato RGBA por defecto.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_abgr32()) # Imprime 4281565439

 .. code-tab:: csharp

    var color = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(color.ToAbgr32()); // Imprime 4281565439



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_abgr64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_abgr64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_abgr64>`

Devuelve el color convertido a un entero de 64 bits en formato ABGR (cada componente ocupa 16 bits). ABGR es la versión invertida del formato RGBA por defecto.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_abgr64()) # Imprime -225178692812801

 .. code-tab:: csharp

    var color = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(color.ToAbgr64()); // Imprime -225178692812801



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_argb32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_argb32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_argb32>`

Devuelve el color convertido a un entero de 32 bits en formato ARGB (cada componente ocupa 8 bits). ARGB es más compatible con DirectX.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_argb32()) # Imprime 4294934323

 .. code-tab:: csharp

    var color = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(color.ToArgb32()); // Imprime 4294934323



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_argb64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_argb64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_argb64>`

Devuelve el color convertido a un entero de 64 bits en formato ARGB (cada componente ocupa 16 bits). ARGB es más compatible con DirectX.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_argb64()) # Imprime -2147470541

 .. code-tab:: csharp

    var color = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(color.ToArgb64()); // Imprime -2147470541



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_html:

.. rst-class:: classref-method

:ref:`String<class_String>` **to_html**\ (\ with_alpha\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Color_method_to_html>`

Devuelve el color convertido a una :ref:`String<class_String>` de color hexadecimal HTML en formato RGBA, sin el prefijo hash (``#``).

Si estableces ``with_alpha`` a ``false``, se excluye el alfa de la string hexadecimal, usando el formato RGB en lugar del formato RGBA.


.. tabs::

 .. code-tab:: gdscript

    var white = Color(1, 1, 1, 0.5)
    var with_alpha = white.to_html() # Devuelve "ffffff7f"
    var without_alpha = white.to_html(false) # Devuelve "ffffff"

 .. code-tab:: csharp

    var white = new Color(1, 1, 1, 0.5f);
    string withAlpha = white.ToHtml(); // Devuelve "ffffff7f"
    string withoutAlpha = white.ToHtml(false); // Devuelve "ffffff"



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_rgba32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_rgba32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_rgba32>`

Devuelve el color convertido a un entero de 32 bits en formato RGBA (cada componente tiene 8 bits). RGBA es el formato por defecto de Godot. Este método es el inverso de :ref:`hex()<class_Color_method_hex>`.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_rgba32()) # Imprime 4286526463

 .. code-tab:: csharp

    var color = new Color(1, 0.5f, 0.2f);
    GD.Print(color.ToRgba32()); // Imprime 4286526463



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_rgba64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_rgba64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_rgba64>`

Returns the color converted to a 64-bit integer in RGBA format (each component is 16 bits). RGBA is Godot's default format. This method is the inverse of :ref:`hex64()<class_Color_method_hex64>`.


.. tabs::

 .. code-tab:: gdscript

    var color = Color(1, 0.5, 0.2)
    print(color.to_rgba64()) # Prints -140736629309441

 .. code-tab:: csharp

    var color = new Color(1, 0.5f, 0.2f);
    GD.Print(color.ToRgba64()); // Prints -140736629309441



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_Color_operator_neq_Color:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_neq_Color>`

Returns ``true`` if the colors are not exactly equal.

\ **Note:** Due to floating-point precision errors, consider using :ref:`is_equal_approx()<class_Color_method_is_equal_approx>` instead, which is more reliable.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_mul_Color>`

Multiplica cada componente del **Color** por los componentes del **Color** dado.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Color_operator_mul_float>`

Multiplica cada componente del **Color** por el :ref:`float<class_float>` dado.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_mul_int>`

Multiplica cada componente de **Color** por el :ref:`int<class_int>` dado.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_sum_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator +**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_sum_Color>`

Suma cada componente del **Color** con los componentes del **Color** dado.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_dif_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator -**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_dif_Color>`

Resta cada componente del **Color** por los componentes del **Color** dado.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_div_Color>`

Divide cada componente del **Color** por los componentes del **Color** dado.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_float:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Color_operator_div_float>`

Divide cada componente del **Color** por el :ref:`float<class_float>` dado.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_int:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_div_int>`

Divide cada componente de **Color** por el :ref:`int<class_int>` dado.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_eq_Color:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_eq_Color>`

Returns ``true`` if the colors are exactly equal.

\ **Note:** Due to floating-point precision errors, consider using :ref:`is_equal_approx()<class_Color_method_is_equal_approx>` instead, which is more reliable.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_idx_int>`

Accede a los componentes de color usando su índice. ``[0]`` es equivalente a :ref:`r<class_Color_property_r>`, ``[1]`` es equivalente a :ref:`g<class_Color_property_g>`, ``[2]`` es equivalente a :ref:`b<class_Color_property_b>`, y ``[3]`` es equivalente a :ref:`a<class_Color_property_a>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_unplus:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator unary+**\ (\ ) :ref:`🔗<class_Color_operator_unplus>`

Devuelve el mismo valor como si el ``+`` no estuviera ahí. El ``+`` unario no hace nada, pero a veces puede hacer que tu código sea más legible.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_unminus:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator unary-**\ (\ ) :ref:`🔗<class_Color_operator_unminus>`

Invierte el color dado. Esto es equivalente a ``Color.WHITE - c`` o a ``Color(1 - c.r, 1 - c.g, 1 - c.b, 1 - c.a)``. A diferencia de :ref:`inverted()<class_Color_method_inverted>`, el componente :ref:`a<class_Color_property_a>` también se invierte.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
