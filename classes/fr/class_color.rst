:github_url: hide

.. _class_Color:

Color
=====

Une couleur représentée au format RGBA (Red Green Blue Alpha, ou Rouge Vert Bleu Alpha en français).

.. rst-class:: classref-introduction-group

Description
-----------

A color represented in RGBA format by a red (:ref:`r<class_Color_property_r>`), green (:ref:`g<class_Color_property_g>`), blue (:ref:`b<class_Color_property_b>`), and alpha (:ref:`a<class_Color_property_a>`) component. Each component is a 32-bit floating-point value, usually ranging from ``0.0`` to ``1.0``. Some properties (such as :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>`) may support values greater than ``1.0``, for overbright or HDR (High Dynamic Range) colors.

Colors can be created in a number of ways: By the various **Color** constructors, by static methods such as :ref:`from_hsv()<class_Color_method_from_hsv>`, and by using a name from the set of standardized colors based on `X11 color names <https://en.wikipedia.org/wiki/X11_color_names>`__ with the addition of :ref:`TRANSPARENT<class_Color_constant_TRANSPARENT>`.

\ `Color constants cheatsheet <https://raw.githubusercontent.com/godotengine/godot-docs/master/img/color_constants.png>`__\ 

Although **Color** may be used to store values of any encoding, the red (:ref:`r<class_Color_property_r>`), green (:ref:`g<class_Color_property_g>`), and blue (:ref:`b<class_Color_property_b>`) properties of **Color** are expected by Godot to be encoded using the `nonlinear sRGB transfer function <https://en.wikipedia.org/wiki/SRGB#Transfer_function_(%22gamma%22)>`__ unless otherwise stated. This color encoding is used by many traditional art and web tools, making it easy to match colors between Godot and these tools. Godot uses `Rec. ITU-R BT.709 <https://en.wikipedia.org/wiki/Rec._709>`__ color primaries, which are used by the sRGB standard.

All physical simulation, such as lighting calculations, and colorimetry transformations, such as :ref:`get_luminance()<class_Color_method_get_luminance>`, must be performed on linearly encoded values to produce correct results. When performing these calculations, convert **Color** to and from linear encoding using :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` and :ref:`linear_to_srgb()<class_Color_method_linear_to_srgb>`.

\ **Note:** In a boolean context, a Color will evaluate to ``false`` if it is equal to ``Color(0, 0, 0, 1)`` (opaque black). Otherwise, a Color will always evaluate to ``true``.

\ **Note:** In C#, color constants are defined in the ``Colors`` static class instead of ``Color``. Additionally, named colors use ``PascalCase`` syntax instead of ``UPPER_SNAKE_CASE``. For example, ``Color.ALICE_BLUE`` in GDScript is ``Colors.AliceBlue`` in C#.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir :ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo 2D « GD Paint » <https://godotengine.org/asset-library/asset/2768>`__

- `Démo d'interpolation tween <https://godotengine.org/asset-library/asset/2733>`__

- `Démo de glisser-déplacer dans une interface graphique <https://godotengine.org/asset-library/asset/2767>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Constructeurs
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

Méthodes
----------------

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

Opérateurs
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

Couleur bleu Alice.

.. _class_Color_constant_ANTIQUE_WHITE:

.. rst-class:: classref-constant

**ANTIQUE_WHITE** = ``Color(0.98039216, 0.92156863, 0.84313726, 1)`` :ref:`🔗<class_Color_constant_ANTIQUE_WHITE>`

Couleur blanc antique.

.. _class_Color_constant_AQUA:

.. rst-class:: classref-constant

**AQUA** = ``Color(0, 1, 1, 1)`` :ref:`🔗<class_Color_constant_AQUA>`

Couleur aqua.

.. _class_Color_constant_AQUAMARINE:

.. rst-class:: classref-constant

**AQUAMARINE** = ``Color(0.49803922, 1, 0.83137256, 1)`` :ref:`🔗<class_Color_constant_AQUAMARINE>`

Couleur aigue-marine.

.. _class_Color_constant_AZURE:

.. rst-class:: classref-constant

**AZURE** = ``Color(0.9411765, 1, 1, 1)`` :ref:`🔗<class_Color_constant_AZURE>`

Couleur azur.

.. _class_Color_constant_BEIGE:

.. rst-class:: classref-constant

**BEIGE** = ``Color(0.9607843, 0.9607843, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_BEIGE>`

Couleur beige.

.. _class_Color_constant_BISQUE:

.. rst-class:: classref-constant

**BISQUE** = ``Color(1, 0.89411765, 0.76862746, 1)`` :ref:`🔗<class_Color_constant_BISQUE>`

Couleur bisque.

.. _class_Color_constant_BLACK:

.. rst-class:: classref-constant

**BLACK** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Color_constant_BLACK>`

Couleur noire. Dans GDScript, c'est la valeur par défaut de chaque couleur.

.. _class_Color_constant_BLANCHED_ALMOND:

.. rst-class:: classref-constant

**BLANCHED_ALMOND** = ``Color(1, 0.92156863, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_BLANCHED_ALMOND>`

Couleur amande blanchie.

.. _class_Color_constant_BLUE:

.. rst-class:: classref-constant

**BLUE** = ``Color(0, 0, 1, 1)`` :ref:`🔗<class_Color_constant_BLUE>`

Couleur bleue.

.. _class_Color_constant_BLUE_VIOLET:

.. rst-class:: classref-constant

**BLUE_VIOLET** = ``Color(0.5411765, 0.16862746, 0.8862745, 1)`` :ref:`🔗<class_Color_constant_BLUE_VIOLET>`

Couleur bleu violet.

.. _class_Color_constant_BROWN:

.. rst-class:: classref-constant

**BROWN** = ``Color(0.64705884, 0.16470589, 0.16470589, 1)`` :ref:`🔗<class_Color_constant_BROWN>`

Couleur marron.

.. _class_Color_constant_BURLYWOOD:

.. rst-class:: classref-constant

**BURLYWOOD** = ``Color(0.87058824, 0.72156864, 0.5294118, 1)`` :ref:`🔗<class_Color_constant_BURLYWOOD>`

Couleur bois dur.

.. _class_Color_constant_CADET_BLUE:

.. rst-class:: classref-constant

**CADET_BLUE** = ``Color(0.37254903, 0.61960787, 0.627451, 1)`` :ref:`🔗<class_Color_constant_CADET_BLUE>`

Couleur bleu cadet.

.. _class_Color_constant_CHARTREUSE:

.. rst-class:: classref-constant

**CHARTREUSE** = ``Color(0.49803922, 1, 0, 1)`` :ref:`🔗<class_Color_constant_CHARTREUSE>`

Couleur chartreuse.

.. _class_Color_constant_CHOCOLATE:

.. rst-class:: classref-constant

**CHOCOLATE** = ``Color(0.8235294, 0.4117647, 0.11764706, 1)`` :ref:`🔗<class_Color_constant_CHOCOLATE>`

Couleur chocolat.

.. _class_Color_constant_CORAL:

.. rst-class:: classref-constant

**CORAL** = ``Color(1, 0.49803922, 0.3137255, 1)`` :ref:`🔗<class_Color_constant_CORAL>`

Couleur corail.

.. _class_Color_constant_CORNFLOWER_BLUE:

.. rst-class:: classref-constant

**CORNFLOWER_BLUE** = ``Color(0.39215687, 0.58431375, 0.92941177, 1)`` :ref:`🔗<class_Color_constant_CORNFLOWER_BLUE>`

Couleur bleu bleuet.

.. _class_Color_constant_CORNSILK:

.. rst-class:: classref-constant

**CORNSILK** = ``Color(1, 0.972549, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_CORNSILK>`

Couleur de la soie de maïs.

.. _class_Color_constant_CRIMSON:

.. rst-class:: classref-constant

**CRIMSON** = ``Color(0.8627451, 0.078431375, 0.23529412, 1)`` :ref:`🔗<class_Color_constant_CRIMSON>`

Couleur cramoisie.

.. _class_Color_constant_CYAN:

.. rst-class:: classref-constant

**CYAN** = ``Color(0, 1, 1, 1)`` :ref:`🔗<class_Color_constant_CYAN>`

Couleur cyan.

.. _class_Color_constant_DARK_BLUE:

.. rst-class:: classref-constant

**DARK_BLUE** = ``Color(0, 0, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_BLUE>`

Couleur bleu foncé.

.. _class_Color_constant_DARK_CYAN:

.. rst-class:: classref-constant

**DARK_CYAN** = ``Color(0, 0.54509807, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_CYAN>`

Couleur cyan foncé.

.. _class_Color_constant_DARK_GOLDENROD:

.. rst-class:: classref-constant

**DARK_GOLDENROD** = ``Color(0.72156864, 0.5254902, 0.043137256, 1)`` :ref:`🔗<class_Color_constant_DARK_GOLDENROD>`

Couleur verge d'or foncé.

.. _class_Color_constant_DARK_GRAY:

.. rst-class:: classref-constant

**DARK_GRAY** = ``Color(0.6627451, 0.6627451, 0.6627451, 1)`` :ref:`🔗<class_Color_constant_DARK_GRAY>`

Couleur gris foncé.

.. _class_Color_constant_DARK_GREEN:

.. rst-class:: classref-constant

**DARK_GREEN** = ``Color(0, 0.39215687, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_GREEN>`

Couleur vert foncé.

.. _class_Color_constant_DARK_KHAKI:

.. rst-class:: classref-constant

**DARK_KHAKI** = ``Color(0.7411765, 0.7176471, 0.41960785, 1)`` :ref:`🔗<class_Color_constant_DARK_KHAKI>`

Couleur kaki foncé.

.. _class_Color_constant_DARK_MAGENTA:

.. rst-class:: classref-constant

**DARK_MAGENTA** = ``Color(0.54509807, 0, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_MAGENTA>`

Couleur magenta foncé.

.. _class_Color_constant_DARK_OLIVE_GREEN:

.. rst-class:: classref-constant

**DARK_OLIVE_GREEN** = ``Color(0.33333334, 0.41960785, 0.18431373, 1)`` :ref:`🔗<class_Color_constant_DARK_OLIVE_GREEN>`

Couleur vert olive foncé.

.. _class_Color_constant_DARK_ORANGE:

.. rst-class:: classref-constant

**DARK_ORANGE** = ``Color(1, 0.54901963, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_ORANGE>`

Couleur orange foncé.

.. _class_Color_constant_DARK_ORCHID:

.. rst-class:: classref-constant

**DARK_ORCHID** = ``Color(0.6, 0.19607843, 0.8, 1)`` :ref:`🔗<class_Color_constant_DARK_ORCHID>`

Couleur orchidée foncée.

.. _class_Color_constant_DARK_RED:

.. rst-class:: classref-constant

**DARK_RED** = ``Color(0.54509807, 0, 0, 1)`` :ref:`🔗<class_Color_constant_DARK_RED>`

Couleur rouge foncé.

.. _class_Color_constant_DARK_SALMON:

.. rst-class:: classref-constant

**DARK_SALMON** = ``Color(0.9137255, 0.5882353, 0.47843137, 1)`` :ref:`🔗<class_Color_constant_DARK_SALMON>`

Couleur saumon foncé.

.. _class_Color_constant_DARK_SEA_GREEN:

.. rst-class:: classref-constant

**DARK_SEA_GREEN** = ``Color(0.56078434, 0.7372549, 0.56078434, 1)`` :ref:`🔗<class_Color_constant_DARK_SEA_GREEN>`

Couleur vert mer foncé.

.. _class_Color_constant_DARK_SLATE_BLUE:

.. rst-class:: classref-constant

**DARK_SLATE_BLUE** = ``Color(0.28235295, 0.23921569, 0.54509807, 1)`` :ref:`🔗<class_Color_constant_DARK_SLATE_BLUE>`

Couleur bleu ardoise foncé.

.. _class_Color_constant_DARK_SLATE_GRAY:

.. rst-class:: classref-constant

**DARK_SLATE_GRAY** = ``Color(0.18431373, 0.30980393, 0.30980393, 1)`` :ref:`🔗<class_Color_constant_DARK_SLATE_GRAY>`

Couleur gris ardoise foncé.

.. _class_Color_constant_DARK_TURQUOISE:

.. rst-class:: classref-constant

**DARK_TURQUOISE** = ``Color(0, 0.80784315, 0.81960785, 1)`` :ref:`🔗<class_Color_constant_DARK_TURQUOISE>`

Couleur turquoise foncé.

.. _class_Color_constant_DARK_VIOLET:

.. rst-class:: classref-constant

**DARK_VIOLET** = ``Color(0.5803922, 0, 0.827451, 1)`` :ref:`🔗<class_Color_constant_DARK_VIOLET>`

Couleur violet foncé.

.. _class_Color_constant_DEEP_PINK:

.. rst-class:: classref-constant

**DEEP_PINK** = ``Color(1, 0.078431375, 0.5764706, 1)`` :ref:`🔗<class_Color_constant_DEEP_PINK>`

Couleur rose foncé.

.. _class_Color_constant_DEEP_SKY_BLUE:

.. rst-class:: classref-constant

**DEEP_SKY_BLUE** = ``Color(0, 0.7490196, 1, 1)`` :ref:`🔗<class_Color_constant_DEEP_SKY_BLUE>`

Couleur bleu ciel profond.

.. _class_Color_constant_DIM_GRAY:

.. rst-class:: classref-constant

**DIM_GRAY** = ``Color(0.4117647, 0.4117647, 0.4117647, 1)`` :ref:`🔗<class_Color_constant_DIM_GRAY>`

Couleur gris pâle.

.. _class_Color_constant_DODGER_BLUE:

.. rst-class:: classref-constant

**DODGER_BLUE** = ``Color(0.11764706, 0.5647059, 1, 1)`` :ref:`🔗<class_Color_constant_DODGER_BLUE>`

Couleur bleue Dodger.

.. _class_Color_constant_FIREBRICK:

.. rst-class:: classref-constant

**FIREBRICK** = ``Color(0.69803923, 0.13333334, 0.13333334, 1)`` :ref:`🔗<class_Color_constant_FIREBRICK>`

Couleur de brique feu.

.. _class_Color_constant_FLORAL_WHITE:

.. rst-class:: classref-constant

**FLORAL_WHITE** = ``Color(1, 0.98039216, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_FLORAL_WHITE>`

Couleur blanche florale.

.. _class_Color_constant_FOREST_GREEN:

.. rst-class:: classref-constant

**FOREST_GREEN** = ``Color(0.13333334, 0.54509807, 0.13333334, 1)`` :ref:`🔗<class_Color_constant_FOREST_GREEN>`

Couleur vert forêt.

.. _class_Color_constant_FUCHSIA:

.. rst-class:: classref-constant

**FUCHSIA** = ``Color(1, 0, 1, 1)`` :ref:`🔗<class_Color_constant_FUCHSIA>`

Couleur fuchsia.

.. _class_Color_constant_GAINSBORO:

.. rst-class:: classref-constant

**GAINSBORO** = ``Color(0.8627451, 0.8627451, 0.8627451, 1)`` :ref:`🔗<class_Color_constant_GAINSBORO>`

Couleur Gainsboro.

.. _class_Color_constant_GHOST_WHITE:

.. rst-class:: classref-constant

**GHOST_WHITE** = ``Color(0.972549, 0.972549, 1, 1)`` :ref:`🔗<class_Color_constant_GHOST_WHITE>`

Couleur blanc fantôme.

.. _class_Color_constant_GOLD:

.. rst-class:: classref-constant

**GOLD** = ``Color(1, 0.84313726, 0, 1)`` :ref:`🔗<class_Color_constant_GOLD>`

Couleur or.

.. _class_Color_constant_GOLDENROD:

.. rst-class:: classref-constant

**GOLDENROD** = ``Color(0.85490197, 0.64705884, 0.1254902, 1)`` :ref:`🔗<class_Color_constant_GOLDENROD>`

Couleur verge d'or.

.. _class_Color_constant_GRAY:

.. rst-class:: classref-constant

**GRAY** = ``Color(0.74509805, 0.74509805, 0.74509805, 1)`` :ref:`🔗<class_Color_constant_GRAY>`

Couleur grise.

.. _class_Color_constant_GREEN:

.. rst-class:: classref-constant

**GREEN** = ``Color(0, 1, 0, 1)`` :ref:`🔗<class_Color_constant_GREEN>`

Couleur verte.

.. _class_Color_constant_GREEN_YELLOW:

.. rst-class:: classref-constant

**GREEN_YELLOW** = ``Color(0.6784314, 1, 0.18431373, 1)`` :ref:`🔗<class_Color_constant_GREEN_YELLOW>`

Couleur jaune verte.

.. _class_Color_constant_HONEYDEW:

.. rst-class:: classref-constant

**HONEYDEW** = ``Color(0.9411765, 1, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_HONEYDEW>`

Couleur miel.

.. _class_Color_constant_HOT_PINK:

.. rst-class:: classref-constant

**HOT_PINK** = ``Color(1, 0.4117647, 0.7058824, 1)`` :ref:`🔗<class_Color_constant_HOT_PINK>`

Couleur rose vif.

.. _class_Color_constant_INDIAN_RED:

.. rst-class:: classref-constant

**INDIAN_RED** = ``Color(0.8039216, 0.36078432, 0.36078432, 1)`` :ref:`🔗<class_Color_constant_INDIAN_RED>`

Couleur rouge indienne.

.. _class_Color_constant_INDIGO:

.. rst-class:: classref-constant

**INDIGO** = ``Color(0.29411766, 0, 0.50980395, 1)`` :ref:`🔗<class_Color_constant_INDIGO>`

Couleur indigo.

.. _class_Color_constant_IVORY:

.. rst-class:: classref-constant

**IVORY** = ``Color(1, 1, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_IVORY>`

Couleur ivoire.

.. _class_Color_constant_KHAKI:

.. rst-class:: classref-constant

**KHAKI** = ``Color(0.9411765, 0.9019608, 0.54901963, 1)`` :ref:`🔗<class_Color_constant_KHAKI>`

Couleur kaki.

.. _class_Color_constant_LAVENDER:

.. rst-class:: classref-constant

**LAVENDER** = ``Color(0.9019608, 0.9019608, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_LAVENDER>`

Couleur lavande.

.. _class_Color_constant_LAVENDER_BLUSH:

.. rst-class:: classref-constant

**LAVENDER_BLUSH** = ``Color(1, 0.9411765, 0.9607843, 1)`` :ref:`🔗<class_Color_constant_LAVENDER_BLUSH>`

Couleur blush lavande.

.. _class_Color_constant_LAWN_GREEN:

.. rst-class:: classref-constant

**LAWN_GREEN** = ``Color(0.4862745, 0.9882353, 0, 1)`` :ref:`🔗<class_Color_constant_LAWN_GREEN>`

Couleur vert pelouse.

.. _class_Color_constant_LEMON_CHIFFON:

.. rst-class:: classref-constant

**LEMON_CHIFFON** = ``Color(1, 0.98039216, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_LEMON_CHIFFON>`

Couleur mousseline citron.

.. _class_Color_constant_LIGHT_BLUE:

.. rst-class:: classref-constant

**LIGHT_BLUE** = ``Color(0.6784314, 0.84705883, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_LIGHT_BLUE>`

Couleur bleu clair.

.. _class_Color_constant_LIGHT_CORAL:

.. rst-class:: classref-constant

**LIGHT_CORAL** = ``Color(0.9411765, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_LIGHT_CORAL>`

Couleur corail clair.

.. _class_Color_constant_LIGHT_CYAN:

.. rst-class:: classref-constant

**LIGHT_CYAN** = ``Color(0.8784314, 1, 1, 1)`` :ref:`🔗<class_Color_constant_LIGHT_CYAN>`

Couleur cyan clair.

.. _class_Color_constant_LIGHT_GOLDENROD:

.. rst-class:: classref-constant

**LIGHT_GOLDENROD** = ``Color(0.98039216, 0.98039216, 0.8235294, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GOLDENROD>`

Couleur verge d'or clair.

.. _class_Color_constant_LIGHT_GRAY:

.. rst-class:: classref-constant

**LIGHT_GRAY** = ``Color(0.827451, 0.827451, 0.827451, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GRAY>`

Couleur gris clair.

.. _class_Color_constant_LIGHT_GREEN:

.. rst-class:: classref-constant

**LIGHT_GREEN** = ``Color(0.5647059, 0.93333334, 0.5647059, 1)`` :ref:`🔗<class_Color_constant_LIGHT_GREEN>`

Couleur vert clair.

.. _class_Color_constant_LIGHT_PINK:

.. rst-class:: classref-constant

**LIGHT_PINK** = ``Color(1, 0.7137255, 0.75686276, 1)`` :ref:`🔗<class_Color_constant_LIGHT_PINK>`

Couleur rose clair.

.. _class_Color_constant_LIGHT_SALMON:

.. rst-class:: classref-constant

**LIGHT_SALMON** = ``Color(1, 0.627451, 0.47843137, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SALMON>`

Couleur saumon clair.

.. _class_Color_constant_LIGHT_SEA_GREEN:

.. rst-class:: classref-constant

**LIGHT_SEA_GREEN** = ``Color(0.1254902, 0.69803923, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SEA_GREEN>`

Couleur vert mer clair.

.. _class_Color_constant_LIGHT_SKY_BLUE:

.. rst-class:: classref-constant

**LIGHT_SKY_BLUE** = ``Color(0.5294118, 0.80784315, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SKY_BLUE>`

Couleur bleu ciel clair.

.. _class_Color_constant_LIGHT_SLATE_GRAY:

.. rst-class:: classref-constant

**LIGHT_SLATE_GRAY** = ``Color(0.46666667, 0.53333336, 0.6, 1)`` :ref:`🔗<class_Color_constant_LIGHT_SLATE_GRAY>`

Couleur gris ardoise clair.

.. _class_Color_constant_LIGHT_STEEL_BLUE:

.. rst-class:: classref-constant

**LIGHT_STEEL_BLUE** = ``Color(0.6901961, 0.76862746, 0.87058824, 1)`` :ref:`🔗<class_Color_constant_LIGHT_STEEL_BLUE>`

Couleur bleu acier clair.

.. _class_Color_constant_LIGHT_YELLOW:

.. rst-class:: classref-constant

**LIGHT_YELLOW** = ``Color(1, 1, 0.8784314, 1)`` :ref:`🔗<class_Color_constant_LIGHT_YELLOW>`

Couleur jaune clair.

.. _class_Color_constant_LIME:

.. rst-class:: classref-constant

**LIME** = ``Color(0, 1, 0, 1)`` :ref:`🔗<class_Color_constant_LIME>`

Couleur citron vert.

.. _class_Color_constant_LIME_GREEN:

.. rst-class:: classref-constant

**LIME_GREEN** = ``Color(0.19607843, 0.8039216, 0.19607843, 1)`` :ref:`🔗<class_Color_constant_LIME_GREEN>`

Couleur vert citron.

.. _class_Color_constant_LINEN:

.. rst-class:: classref-constant

**LINEN** = ``Color(0.98039216, 0.9411765, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_LINEN>`

Couleur lin.

.. _class_Color_constant_MAGENTA:

.. rst-class:: classref-constant

**MAGENTA** = ``Color(1, 0, 1, 1)`` :ref:`🔗<class_Color_constant_MAGENTA>`

Couleur magenta.

.. _class_Color_constant_MAROON:

.. rst-class:: classref-constant

**MAROON** = ``Color(0.6901961, 0.1882353, 0.3764706, 1)`` :ref:`🔗<class_Color_constant_MAROON>`

Couleur marron.

.. _class_Color_constant_MEDIUM_AQUAMARINE:

.. rst-class:: classref-constant

**MEDIUM_AQUAMARINE** = ``Color(0.4, 0.8039216, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_AQUAMARINE>`

Couleur bleu-marine moyenne.

.. _class_Color_constant_MEDIUM_BLUE:

.. rst-class:: classref-constant

**MEDIUM_BLUE** = ``Color(0, 0, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_BLUE>`

Couleur bleu moyen.

.. _class_Color_constant_MEDIUM_ORCHID:

.. rst-class:: classref-constant

**MEDIUM_ORCHID** = ``Color(0.7294118, 0.33333334, 0.827451, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_ORCHID>`

Couleur orchidée moyenne.

.. _class_Color_constant_MEDIUM_PURPLE:

.. rst-class:: classref-constant

**MEDIUM_PURPLE** = ``Color(0.5764706, 0.4392157, 0.85882354, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_PURPLE>`

Couleur violette moyenne.

.. _class_Color_constant_MEDIUM_SEA_GREEN:

.. rst-class:: classref-constant

**MEDIUM_SEA_GREEN** = ``Color(0.23529412, 0.7019608, 0.44313726, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SEA_GREEN>`

Couleur vert mer moyen.

.. _class_Color_constant_MEDIUM_SLATE_BLUE:

.. rst-class:: classref-constant

**MEDIUM_SLATE_BLUE** = ``Color(0.48235294, 0.40784314, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SLATE_BLUE>`

Couleur bleu ardoise moyen.

.. _class_Color_constant_MEDIUM_SPRING_GREEN:

.. rst-class:: classref-constant

**MEDIUM_SPRING_GREEN** = ``Color(0, 0.98039216, 0.6039216, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_SPRING_GREEN>`

Couleur vert printemps moyen.

.. _class_Color_constant_MEDIUM_TURQUOISE:

.. rst-class:: classref-constant

**MEDIUM_TURQUOISE** = ``Color(0.28235295, 0.81960785, 0.8, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_TURQUOISE>`

Couleur turquoise moyenne.

.. _class_Color_constant_MEDIUM_VIOLET_RED:

.. rst-class:: classref-constant

**MEDIUM_VIOLET_RED** = ``Color(0.78039217, 0.08235294, 0.52156866, 1)`` :ref:`🔗<class_Color_constant_MEDIUM_VIOLET_RED>`

Couleur rouge violet moyen.

.. _class_Color_constant_MIDNIGHT_BLUE:

.. rst-class:: classref-constant

**MIDNIGHT_BLUE** = ``Color(0.09803922, 0.09803922, 0.4392157, 1)`` :ref:`🔗<class_Color_constant_MIDNIGHT_BLUE>`

Couleur bleu nuit.

.. _class_Color_constant_MINT_CREAM:

.. rst-class:: classref-constant

**MINT_CREAM** = ``Color(0.9607843, 1, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_MINT_CREAM>`

Couleur crème menthe.

.. _class_Color_constant_MISTY_ROSE:

.. rst-class:: classref-constant

**MISTY_ROSE** = ``Color(1, 0.89411765, 0.88235295, 1)`` :ref:`🔗<class_Color_constant_MISTY_ROSE>`

Couleur rose brumeuse.

.. _class_Color_constant_MOCCASIN:

.. rst-class:: classref-constant

**MOCCASIN** = ``Color(1, 0.89411765, 0.70980394, 1)`` :ref:`🔗<class_Color_constant_MOCCASIN>`

Couleur mocassin.

.. _class_Color_constant_NAVAJO_WHITE:

.. rst-class:: classref-constant

**NAVAJO_WHITE** = ``Color(1, 0.87058824, 0.6784314, 1)`` :ref:`🔗<class_Color_constant_NAVAJO_WHITE>`

Couleur blanche Navajo.

.. _class_Color_constant_NAVY_BLUE:

.. rst-class:: classref-constant

**NAVY_BLUE** = ``Color(0, 0, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_NAVY_BLUE>`

Couleur bleu marine.

.. _class_Color_constant_OLD_LACE:

.. rst-class:: classref-constant

**OLD_LACE** = ``Color(0.99215686, 0.9607843, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_OLD_LACE>`

Couleur vieille dentelle.

.. _class_Color_constant_OLIVE:

.. rst-class:: classref-constant

**OLIVE** = ``Color(0.5019608, 0.5019608, 0, 1)`` :ref:`🔗<class_Color_constant_OLIVE>`

Couleur olive.

.. _class_Color_constant_OLIVE_DRAB:

.. rst-class:: classref-constant

**OLIVE_DRAB** = ``Color(0.41960785, 0.5568628, 0.13725491, 1)`` :ref:`🔗<class_Color_constant_OLIVE_DRAB>`

Couleur olive terne.

.. _class_Color_constant_ORANGE:

.. rst-class:: classref-constant

**ORANGE** = ``Color(1, 0.64705884, 0, 1)`` :ref:`🔗<class_Color_constant_ORANGE>`

Couleur orange.

.. _class_Color_constant_ORANGE_RED:

.. rst-class:: classref-constant

**ORANGE_RED** = ``Color(1, 0.27058825, 0, 1)`` :ref:`🔗<class_Color_constant_ORANGE_RED>`

Couleur rouge orangé.

.. _class_Color_constant_ORCHID:

.. rst-class:: classref-constant

**ORCHID** = ``Color(0.85490197, 0.4392157, 0.8392157, 1)`` :ref:`🔗<class_Color_constant_ORCHID>`

Couleur d’orchidée.

.. _class_Color_constant_PALE_GOLDENROD:

.. rst-class:: classref-constant

**PALE_GOLDENROD** = ``Color(0.93333334, 0.9098039, 0.6666667, 1)`` :ref:`🔗<class_Color_constant_PALE_GOLDENROD>`

Couleur verge d'or pâle.

.. _class_Color_constant_PALE_GREEN:

.. rst-class:: classref-constant

**PALE_GREEN** = ``Color(0.59607846, 0.9843137, 0.59607846, 1)`` :ref:`🔗<class_Color_constant_PALE_GREEN>`

Couleur vert pâle.

.. _class_Color_constant_PALE_TURQUOISE:

.. rst-class:: classref-constant

**PALE_TURQUOISE** = ``Color(0.6862745, 0.93333334, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_PALE_TURQUOISE>`

Couleur turquoise pâle.

.. _class_Color_constant_PALE_VIOLET_RED:

.. rst-class:: classref-constant

**PALE_VIOLET_RED** = ``Color(0.85882354, 0.4392157, 0.5764706, 1)`` :ref:`🔗<class_Color_constant_PALE_VIOLET_RED>`

Couleur rouge violet pâle.

.. _class_Color_constant_PAPAYA_WHIP:

.. rst-class:: classref-constant

**PAPAYA_WHIP** = ``Color(1, 0.9372549, 0.8352941, 1)`` :ref:`🔗<class_Color_constant_PAPAYA_WHIP>`

Couleur de fouet de papaye.

.. _class_Color_constant_PEACH_PUFF:

.. rst-class:: classref-constant

**PEACH_PUFF** = ``Color(1, 0.85490197, 0.7254902, 1)`` :ref:`🔗<class_Color_constant_PEACH_PUFF>`

Couleur pêche bouffie.

.. _class_Color_constant_PERU:

.. rst-class:: classref-constant

**PERU** = ``Color(0.8039216, 0.52156866, 0.24705882, 1)`` :ref:`🔗<class_Color_constant_PERU>`

Couleur du Pérou.

.. _class_Color_constant_PINK:

.. rst-class:: classref-constant

**PINK** = ``Color(1, 0.7529412, 0.79607844, 1)`` :ref:`🔗<class_Color_constant_PINK>`

Couleur rose.

.. _class_Color_constant_PLUM:

.. rst-class:: classref-constant

**PLUM** = ``Color(0.8666667, 0.627451, 0.8666667, 1)`` :ref:`🔗<class_Color_constant_PLUM>`

Couleur prune.

.. _class_Color_constant_POWDER_BLUE:

.. rst-class:: classref-constant

**POWDER_BLUE** = ``Color(0.6901961, 0.8784314, 0.9019608, 1)`` :ref:`🔗<class_Color_constant_POWDER_BLUE>`

Couleur bleu poudre.

.. _class_Color_constant_PURPLE:

.. rst-class:: classref-constant

**PURPLE** = ``Color(0.627451, 0.1254902, 0.9411765, 1)`` :ref:`🔗<class_Color_constant_PURPLE>`

Couleur violette.

.. _class_Color_constant_REBECCA_PURPLE:

.. rst-class:: classref-constant

**REBECCA_PURPLE** = ``Color(0.4, 0.2, 0.6, 1)`` :ref:`🔗<class_Color_constant_REBECCA_PURPLE>`

Couleur violette Rebecca.

.. _class_Color_constant_RED:

.. rst-class:: classref-constant

**RED** = ``Color(1, 0, 0, 1)`` :ref:`🔗<class_Color_constant_RED>`

Couleur rouge.

.. _class_Color_constant_ROSY_BROWN:

.. rst-class:: classref-constant

**ROSY_BROWN** = ``Color(0.7372549, 0.56078434, 0.56078434, 1)`` :ref:`🔗<class_Color_constant_ROSY_BROWN>`

Couleur brun rosé.

.. _class_Color_constant_ROYAL_BLUE:

.. rst-class:: classref-constant

**ROYAL_BLUE** = ``Color(0.25490198, 0.4117647, 0.88235295, 1)`` :ref:`🔗<class_Color_constant_ROYAL_BLUE>`

Couleur bleu royal.

.. _class_Color_constant_SADDLE_BROWN:

.. rst-class:: classref-constant

**SADDLE_BROWN** = ``Color(0.54509807, 0.27058825, 0.07450981, 1)`` :ref:`🔗<class_Color_constant_SADDLE_BROWN>`

Couleur marron selle.

.. _class_Color_constant_SALMON:

.. rst-class:: classref-constant

**SALMON** = ``Color(0.98039216, 0.5019608, 0.44705883, 1)`` :ref:`🔗<class_Color_constant_SALMON>`

Couleur saumon.

.. _class_Color_constant_SANDY_BROWN:

.. rst-class:: classref-constant

**SANDY_BROWN** = ``Color(0.95686275, 0.6431373, 0.3764706, 1)`` :ref:`🔗<class_Color_constant_SANDY_BROWN>`

Couleur brun sable.

.. _class_Color_constant_SEA_GREEN:

.. rst-class:: classref-constant

**SEA_GREEN** = ``Color(0.18039216, 0.54509807, 0.34117648, 1)`` :ref:`🔗<class_Color_constant_SEA_GREEN>`

Couleur vert mer.

.. _class_Color_constant_SEASHELL:

.. rst-class:: classref-constant

**SEASHELL** = ``Color(1, 0.9607843, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_SEASHELL>`

Couleur coquillage.

.. _class_Color_constant_SIENNA:

.. rst-class:: classref-constant

**SIENNA** = ``Color(0.627451, 0.32156864, 0.1764706, 1)`` :ref:`🔗<class_Color_constant_SIENNA>`

Couleur Sienne.

.. _class_Color_constant_SILVER:

.. rst-class:: classref-constant

**SILVER** = ``Color(0.7529412, 0.7529412, 0.7529412, 1)`` :ref:`🔗<class_Color_constant_SILVER>`

Couleur argent.

.. _class_Color_constant_SKY_BLUE:

.. rst-class:: classref-constant

**SKY_BLUE** = ``Color(0.5294118, 0.80784315, 0.92156863, 1)`` :ref:`🔗<class_Color_constant_SKY_BLUE>`

Couleur bleu ciel.

.. _class_Color_constant_SLATE_BLUE:

.. rst-class:: classref-constant

**SLATE_BLUE** = ``Color(0.41568628, 0.3529412, 0.8039216, 1)`` :ref:`🔗<class_Color_constant_SLATE_BLUE>`

Couleur bleu ardoise.

.. _class_Color_constant_SLATE_GRAY:

.. rst-class:: classref-constant

**SLATE_GRAY** = ``Color(0.4392157, 0.5019608, 0.5647059, 1)`` :ref:`🔗<class_Color_constant_SLATE_GRAY>`

Couleur gris ardoise.

.. _class_Color_constant_SNOW:

.. rst-class:: classref-constant

**SNOW** = ``Color(1, 0.98039216, 0.98039216, 1)`` :ref:`🔗<class_Color_constant_SNOW>`

Couleur neige.

.. _class_Color_constant_SPRING_GREEN:

.. rst-class:: classref-constant

**SPRING_GREEN** = ``Color(0, 1, 0.49803922, 1)`` :ref:`🔗<class_Color_constant_SPRING_GREEN>`

Couleur vert printanier.

.. _class_Color_constant_STEEL_BLUE:

.. rst-class:: classref-constant

**STEEL_BLUE** = ``Color(0.27450982, 0.50980395, 0.7058824, 1)`` :ref:`🔗<class_Color_constant_STEEL_BLUE>`

Couleur bleu acier.

.. _class_Color_constant_TAN:

.. rst-class:: classref-constant

**TAN** = ``Color(0.8235294, 0.7058824, 0.54901963, 1)`` :ref:`🔗<class_Color_constant_TAN>`

Couleur fauve.

.. _class_Color_constant_TEAL:

.. rst-class:: classref-constant

**TEAL** = ``Color(0, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_TEAL>`

Couleur sarcelle.

.. _class_Color_constant_THISTLE:

.. rst-class:: classref-constant

**THISTLE** = ``Color(0.84705883, 0.7490196, 0.84705883, 1)`` :ref:`🔗<class_Color_constant_THISTLE>`

Couleur chardon.

.. _class_Color_constant_TOMATO:

.. rst-class:: classref-constant

**TOMATO** = ``Color(1, 0.3882353, 0.2784314, 1)`` :ref:`🔗<class_Color_constant_TOMATO>`

Couleur tomate.

.. _class_Color_constant_TRANSPARENT:

.. rst-class:: classref-constant

**TRANSPARENT** = ``Color(1, 1, 1, 0)`` :ref:`🔗<class_Color_constant_TRANSPARENT>`

Couleur transparente (blanc avec alpha nul).

.. _class_Color_constant_TURQUOISE:

.. rst-class:: classref-constant

**TURQUOISE** = ``Color(0.2509804, 0.8784314, 0.8156863, 1)`` :ref:`🔗<class_Color_constant_TURQUOISE>`

Couleur turquoise.

.. _class_Color_constant_VIOLET:

.. rst-class:: classref-constant

**VIOLET** = ``Color(0.93333334, 0.50980395, 0.93333334, 1)`` :ref:`🔗<class_Color_constant_VIOLET>`

Couleur violette.

.. _class_Color_constant_WEB_GRAY:

.. rst-class:: classref-constant

**WEB_GRAY** = ``Color(0.5019608, 0.5019608, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_WEB_GRAY>`

Couleur gris Web.

.. _class_Color_constant_WEB_GREEN:

.. rst-class:: classref-constant

**WEB_GREEN** = ``Color(0, 0.5019608, 0, 1)`` :ref:`🔗<class_Color_constant_WEB_GREEN>`

Couleur vert Web.

.. _class_Color_constant_WEB_MAROON:

.. rst-class:: classref-constant

**WEB_MAROON** = ``Color(0.5019608, 0, 0, 1)`` :ref:`🔗<class_Color_constant_WEB_MAROON>`

Couleur marron Web.

.. _class_Color_constant_WEB_PURPLE:

.. rst-class:: classref-constant

**WEB_PURPLE** = ``Color(0.5019608, 0, 0.5019608, 1)`` :ref:`🔗<class_Color_constant_WEB_PURPLE>`

Couleur violet Web.

.. _class_Color_constant_WHEAT:

.. rst-class:: classref-constant

**WHEAT** = ``Color(0.9607843, 0.87058824, 0.7019608, 1)`` :ref:`🔗<class_Color_constant_WHEAT>`

Couleur blé.

.. _class_Color_constant_WHITE:

.. rst-class:: classref-constant

**WHITE** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Color_constant_WHITE>`

Couleur blanche.

.. _class_Color_constant_WHITE_SMOKE:

.. rst-class:: classref-constant

**WHITE_SMOKE** = ``Color(0.9607843, 0.9607843, 0.9607843, 1)`` :ref:`🔗<class_Color_constant_WHITE_SMOKE>`

Couleur fumée blanche.

.. _class_Color_constant_YELLOW:

.. rst-class:: classref-constant

**YELLOW** = ``Color(1, 1, 0, 1)`` :ref:`🔗<class_Color_constant_YELLOW>`

Couleur jaune.

.. _class_Color_constant_YELLOW_GREEN:

.. rst-class:: classref-constant

**YELLOW_GREEN** = ``Color(0.6039216, 0.8039216, 0.19607843, 1)`` :ref:`🔗<class_Color_constant_YELLOW_GREEN>`

Couleur vert jaune.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

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

Wrapper pour le :ref:`a<class_Color_property_a>` qui utilise l'intervalle de 0 à 255 plutôt que de 0 à 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_b:

.. rst-class:: classref-property

:ref:`float<class_float>` **b** = ``0.0`` :ref:`🔗<class_Color_property_b>`

Le composant bleu de la couleur, généralement de 0 à 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_b8:

.. rst-class:: classref-property

:ref:`int<class_int>` **b8** = ``0`` :ref:`🔗<class_Color_property_b8>`

Wrapper pour le :ref:`b<class_Color_property_b>` qui utilise l'intervalle de 0 à 255 plutôt que de 0 à 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_g:

.. rst-class:: classref-property

:ref:`float<class_float>` **g** = ``0.0`` :ref:`🔗<class_Color_property_g>`

Le composant vert de la couleur, généralement de 0 à 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_g8:

.. rst-class:: classref-property

:ref:`int<class_int>` **g8** = ``0`` :ref:`🔗<class_Color_property_g8>`

Wrapper pour le :ref:`g<class_Color_property_g>` qui utilise l'intervalle de 0 à 255 plutôt que de 0 à 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_h:

.. rst-class:: classref-property

:ref:`float<class_float>` **h** = ``0.0`` :ref:`🔗<class_Color_property_h>`

La teinte TSV de cette couleur, dans l'intervalle de 0 à 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_h:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_h** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_h>`

La teinte OKHSL de cette couleur, dans l'intervalle de 0 à 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_l:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_l** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_l>`

La luminosité OKHSL de cette couleur, dans l'intervalle de 0 à 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_ok_hsl_s:

.. rst-class:: classref-property

:ref:`float<class_float>` **ok_hsl_s** = ``0.0`` :ref:`🔗<class_Color_property_ok_hsl_s>`

La saturation OKHSL de cette couleur, dans l'intervalle de 0 à 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_r:

.. rst-class:: classref-property

:ref:`float<class_float>` **r** = ``0.0`` :ref:`🔗<class_Color_property_r>`

Le composant rouge de la couleur, généralement de 0 à 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_r8:

.. rst-class:: classref-property

:ref:`int<class_int>` **r8** = ``0`` :ref:`🔗<class_Color_property_r8>`

Wrapper pour le :ref:`r<class_Color_property_r>` qui utilise l'intervalle de 0 à 255 plutôt que de 0 à 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_s:

.. rst-class:: classref-property

:ref:`float<class_float>` **s** = ``0.0`` :ref:`🔗<class_Color_property_s>`

La saturation TSV de cette couleur, dans l'intervalle de 0 à 1.

.. rst-class:: classref-item-separator

----

.. _class_Color_property_v:

.. rst-class:: classref-property

:ref:`float<class_float>` **v** = ``0.0`` :ref:`🔗<class_Color_property_v>`

La valeur TSV (luminosité) de cette couleur, dans l'intervalle de 0 à 1.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Color_constructor_Color:

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ ) :ref:`🔗<class_Color_constructor_Color>`

Construit une **Color** par défaut depuis un noir opaque. Identique à :ref:`BLACK<class_Color_constant_BLACK>`.

\ **Note :** En C#, cela construit une **Color** avec toutes ses composantes définies à ``0.0`` (noir transparent).

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ from\: :ref:`Color<class_Color>`, alpha\: :ref:`float<class_float>`\ )

Construit une **Color** depuis une couleur existante avec :ref:`a<class_Color_property_a>` défini à la valeur d'``alpha`` donnée.


.. tabs::

 .. code-tab:: gdscript

    var rouge = Color(Color.RED, 0.2) # Rouge 20% opaque.

 .. code-tab:: csharp

    var rouge = new Color(Colors.Red, 0.2f); // Rouge 20% opaque.



.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ from\: :ref:`Color<class_Color>`\ )

Construit une **Color** comme copie d'une **Color** donnée.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ code\: :ref:`String<class_String>`\ )

Construit une **Color** soit depuis un code de couleur HTML, soit depuis un nom standardisé de couleur. Les noms de couleur supportés sont les mêmes que les constantes.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ code\: :ref:`String<class_String>`, alpha\: :ref:`float<class_float>`\ )

Construit une **Color** soit depuis un code de couleur HTML, soit depuis un nom standardisé de couleur, avec un ``alpha`` entre 0.0 et 1.0. Les noms de couleur supportés sont les mêmes que les constantes.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ r\: :ref:`float<class_float>`, g\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`\ )

Construit une **Color** depuis des valeurs Rouge Vertes Bleues, typiquement entre 0.0 et 1.0. :ref:`a<class_Color_property_a>` est défini à 1.0


.. tabs::

 .. code-tab:: gdscript

    var couleur = Color(0.2, 1.0, 0.7) # Similaire à `Color8(51, 255, 178, 255)`

 .. code-tab:: csharp

    var couleur = Color(0.2f, 1.0f, 0.7f) ; # Similaire à `Color.Color8(51, 255, 178, 255)`



.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Color<class_Color>` **Color**\ (\ r\: :ref:`float<class_float>`, g\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, a\: :ref:`float<class_float>`\ )

Construit une **Color** depuis des valeurs Rouge Vert Bleu Alpha, typiquement entre 0.0 et 1.0.


.. tabs::

 .. code-tab:: gdscript

    var couleur = Color(0.2, 1.0, 0.7, 0.8) # Similaire à `Color.from_rgba8(51, 255, 178, 204)`

 .. code-tab:: csharp

    var couleur = Color(0.2f, 1.0f, 0.7f, 0.8f); // Similaire à `Color.Color8(51, 255, 178, 204)`



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Color_method_blend:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **blend**\ (\ over\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_Color_method_blend>`

Renvoie une nouvelle couleur résultant de la superposition de cette couleur sur la couleur donnée. Dans un logiciel de peinture, vous pouvez imaginer cela comme la couleur ``over`` peinte sur cette couleur (y compris l'alpha).


.. tabs::

 .. code-tab:: gdscript

    var couleur_derriere = Color(0.0, 1.0, 0.0, 0.5) # Vert avec un alpha de 50%
    var couleur_devant = Color(1.0, 0.0, 0.0, 0.5) # Rouge avec un alpha de 50%
    var couleur_melangee = couleur_derriere .blend(couleur_devant) # Brun avec un alpha de 75%

 .. code-tab:: csharp

    var couleurDerriere = new Color(0.0f, 1.0f, 0.0f, 0.5f); // Vert avec un alpha de 50%
    var couleurDevant = new Color(1.0f, 0.0f, 0.0f, 0.5f); // Rouge avec un alpha de 50%
    Color couleurMelangee = couleurDerriere.Blend(couleurDevant); // Brun avec un alpha de 75%



.. rst-class:: classref-item-separator

----

.. _class_Color_method_clamp:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **clamp**\ (\ min\: :ref:`Color<class_Color>` = Color(0, 0, 0, 0), max\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) |const| :ref:`🔗<class_Color_method_clamp>`

Renvoie une nouvelle couleur avec toutes les composantes bornées entre les composantes de ``min`` et ``max``, en exécutant :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_darkened:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **darkened**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_darkened>`

Renvoie une nouvelle couleur résultant du fait de rendre cette couleur plus foncée par la quantité ``amount`` spécifiée (ratio de 0.0 à 1.0). Voir aussi :ref:`lightened()<class_Color_method_lightened>`.


.. tabs::

 .. code-tab:: gdscript

    var vert = Couleur(0.0, 1.0, 0.0)
    var vertfonce= vert.darkened(0.2) # 20% plus foncé que le vert habituel

 .. code-tab:: csharp

    var vert = new Color(0.0f, 1.0f, 0.0f);
    Color vertfonce = vert.Darkened(0,2f); // 20% plus foncé que le vert habituel



.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_hsv:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_hsv**\ (\ h\: :ref:`float<class_float>`, s\: :ref:`float<class_float>`, v\: :ref:`float<class_float>`, alpha\: :ref:`float<class_float>` = 1.0\ ) |static| :ref:`🔗<class_Color_method_from_hsv>`

Construit une couleur depuis un `profil TSV (Hue Saturation Value, litt. Teinte Saturation Valeur) <https://fr.m.wikipedia.org/wiki/Teinte_saturation_lumi%C3%A8re>`__. La teinte (``h``), la saturation (``s``) et la valeur (``v``) sont typiquement entre 0.0 et 1.0.


.. tabs::

 .. code-tab:: gdscript

    var couleur = Color.from_hsv(0.58, 0.5, 0.79, 0.8)

 .. code-tab:: csharp

    var couleur = Color.FromHsv(0.58f, 0.5f, 0.79f, 0.8f);



.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_ok_hsl:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_ok_hsl**\ (\ h\: :ref:`float<class_float>`, s\: :ref:`float<class_float>`, l\: :ref:`float<class_float>`, alpha\: :ref:`float<class_float>` = 1.0\ ) |static| :ref:`🔗<class_Color_method_from_ok_hsl>`

Construit une couleur depuis un `profil OK TSL <https://bottosson.github.io/posts/colorpicker/>`__. La teinte (``h``), la saturation (``s``) et la lumière (``l``) sont typiquement entre 0.0 et 1.0.


.. tabs::

 .. code-tab:: gdscript

    var couleur = Color.from_ok_hsl(0.58, 0.5, 0.79, 0.8)

 .. code-tab:: csharp

    var couleur = Color.FromOkHsl(0.58f, 0.5f, 0.79f, 0.8f);



.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_rgba8:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_rgba8**\ (\ r8\: :ref:`int<class_int>`, g8\: :ref:`int<class_int>`, b8\: :ref:`int<class_int>`, a8\: :ref:`int<class_int>` = 255\ ) |static| :ref:`🔗<class_Color_method_from_rgba8>`

Renvoie une **Color** construite à partir de canaux entiers de rouge (``r8``), de vert (``g8``), de bleu (``b8``) et éventuellement de transparence (ou alpha : ``a8``), chacun divisé par ``255.0`` pour obtenir sa valeur finale.

::

    var rouge = Color.from_rgba8(255, 0, 0)             # Identique à Color(1, 0, 0).
    var bleu_fonce = Color.from_rgba8(0, 0, 51)        # Identique à Color(0, 0, 0.2).
    var ma_couleur = Color.from_rgba8(306, 255, 0, 102) # Identique à Color(1.2, 1, 0, 0.4).

\ **Note :** En raison de la précision inférieure de :ref:`from_rgba8()<class_Color_method_from_rgba8>` par rapport au constructeur **Color** standard, une couleur créée avec :ref:`from_rgba8()<class_Color_method_from_rgba8>` ne sera généralement pas égale à la même couleur créée avec le constructeur **Color** standard. Utilisez :ref:`is_equal_approx()<class_Color_method_is_equal_approx>` pour les comparaisons afin d'éviter les problèmes d'erreur de précision de virgule flottante.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_rgbe9995:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_rgbe9995**\ (\ rgbe\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_from_rgbe9995>`

Décode une **Color** depuis un format RGBE9995 entier. Voir :ref:`Image.FORMAT_RGBE9995<class_Image_constant_FORMAT_RGBE9995>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_from_string:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **from_string**\ (\ str\: :ref:`String<class_String>`, default\: :ref:`Color<class_Color>`\ ) |static| :ref:`🔗<class_Color_method_from_string>`

Crée un **Color** depuis la chaîne donnée, qui peut être soit un code de couleur HTML ou une couleur nommée (insensible à la casse). Renvoie ``default`` si la couleur ne peut pas être déduite de la chaîne.

Si vous voulez créer une couleur depuis une chaîne dans une expression constante, utilisez plutôt le constructeur équivalent (c.-à-d. ``Color("chaîne de la couleur")``).

.. rst-class:: classref-item-separator

----

.. _class_Color_method_get_luminance:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_luminance**\ (\ ) |const| :ref:`🔗<class_Color_method_get_luminance>`

Renvoie l'intensité lumineuse de la couleur, en tant que valeur entre 0.0 et 1.0 (inclusive). Ceci est utile pour déterminer si la couleur est claire ou foncée. Les couleurs avec une luminance inférieure à 0,5 peuvent généralement être considérées comme foncées.

\ **Note :** :ref:`get_luminance()<class_Color_method_get_luminance>` s'appuie sur le fait que la couleur utilise un encodage linéaire pour renvoyer une valeur de luminosité relative exacte. Si la couleur utilise l'encodage sRGB non-linéaire par défaut, utilisez :ref:`srgb_to_linear()<class_Color_method_srgb_to_linear>` pour la convertir en encodage linéaire d'abord.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_hex:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **hex**\ (\ hex\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_hex>`

Renvoie la **Color** associée à l'entier ``hex`` fourni en format RGBA 32 bits (8 bits par canal). Cette méthode est l'inverse de :ref:`to_rgba32()<class_Color_method_to_rgba32>`.

En GDScript et C#, la meilleure façon de visualiser l':ref:`int<class_int>` est avec la notation hexadécimale (``"0x"``, ce qui fait ``"0xRRGGBBAA"``).


.. tabs::

 .. code-tab:: gdscript

    var rouge = Color.hex(0xff0000ff)
    var cyan_fonce = Color.hex(0x008b8bff)
    var ma_couleur = Color.hex(0xbbefd2a4)

 .. code-tab:: csharp

    var rouge = new Color(0xff0000ff);
    var cyan_fonce = new Color(0x008b8bff);
    var ma_couleur = new Color(0xbbefd2a4);



Si vous voulez utiliser la notation hexadécimale dans une expression constante, utilisez plutôt le constructeur équivalent (c.-à-d. ``Color(0xRRGGBBAA)``).

.. rst-class:: classref-item-separator

----

.. _class_Color_method_hex64:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **hex64**\ (\ hex\: :ref:`int<class_int>`\ ) |static| :ref:`🔗<class_Color_method_hex64>`

Renvoie la **Color** associée avec l’entier ``hex`` en format 64 bits RGBA spécifié (16 bits par canal). Cette méthode est l’inverse de :ref:`to_rgba64()<class_Color_method_to_rgba64>`.

En GDScript et en C#, l’entier :ref:`int<class_int>` est mieux visualisé avec la notation hexadécimale (préfixe ``"0x"``, ce qui donne ``"0xRRRRGGGGBBBBAAAA"``).

.. rst-class:: classref-item-separator

----

.. _class_Color_method_html:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **html**\ (\ rgba\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_Color_method_html>`

Renvoie une nouvelle couleur depuis ``rgba``, une chaîne de couleur hexadécimale HTML. ``rgba`` n'est pas sensible à la casse et peut être préfixée par un signe de croisillon (``#``).

\ ``rgba`` doit être une chaîne de couleur hexadécimale à trois ou six chiffres valide, et peut contenir une valeur de canal alpha. Si ``rgba`` ne contient pas de valeur de canal alpha, une valeur de canal alpha de 1,0 est appliquée. Si ``rgba`` est invalide, renvoie une couleur vide.


.. tabs::

 .. code-tab:: gdscript

    var bleu = Color.html("#0000ff") # bleu vaut Color(0.0, 0.0, 1.0, 1.0)
    var vert = Color.html("#0F0") # vert vaut Color(0.0, 1.0, 0.0, 1.0)
    var col = Color.html("663399cc") # col vaut Color(0.4, 0.2, 0.6, 0.8)

 .. code-tab:: csharp

    var bleu = Color.FromHtml("#0000ff"); // bleu vaut Color(0.0, 0.0, 1.0, 1.0)
    var vert = Color.FromHtml("#0F0"); // vert vaut Color(0.0, 1.0, 0.0, 1.0)
    var col = Couleur.FromHtml("663399cc"); // col vaut Color(0.4, 0.2, 0.6, 0.8)



.. rst-class:: classref-item-separator

----

.. _class_Color_method_html_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **html_is_valid**\ (\ color\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_Color_method_html_is_valid>`

Renvoie ``true`` si ``color`` est une chaîne de couleur hexadécimale HTML valide. La chaîne doit être une valeur hexadécimale (insensible à la casse) de 3, 4, 6 ou 8 chiffres, et peut être préfixée par un signe de croisillon (``#``). Cette méthode est identique à :ref:`String.is_valid_html_color()<class_String_method_is_valid_html_color>`.


.. tabs::

 .. code-tab:: gdscript

    Color.html_is_valid("#55aaFF")   # Renvoie true
    Color.html_is_valid("#55AAFF20") # Renvoie true
    Color.html_is_valid("55AAFF")    # Renvoie true
    Color.html_is_valid("#F2C")      # Renvoie true

    Color.html_is_valid("#AABBC")    # Renvoie false
    Color.html_is_valid("#55aaFF5")  # Renvoie false

 .. code-tab:: csharp

    Color.HtmlIsValid("#55AAFF");   // Renvoie true
    Color.HtmlIsValid("#55AAFF20"); // Renvoie true
    Color.HtmlIsValid("55AAFF");    // Renvoie true
    Color.HtmlIsValid("#F2C");      // Renvoie true

    Color.HtmlIsValid("#AABBC");    // Renvoie false
    Color.HtmlIsValid("#55aaFF5");  // Renvoie false



.. rst-class:: classref-item-separator

----

.. _class_Color_method_inverted:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **inverted**\ (\ ) |const| :ref:`🔗<class_Color_method_inverted>`

Renvoie la couleur avec ses composantes :ref:`r<class_Color_property_r>`, :ref:`g<class_Color_property_g>` et :ref:`b<class_Color_property_b>` inversées (``(1 - r, 1 - g, 1 - b, a)``).


.. tabs::

 .. code-tab:: gdscript

    var noir = Color.WHITE.inverted()
    var couleur = Color(0.3, 0.4, 0.9)
    var couleur_inversee = couleur.inverted() # Équivalent à `Color(0.7, 0.6, 0.1)`

 .. code-tab:: csharp

    var noir = Colors.White.Inverted();
    var couleur = new Color(0.3f, 0.4f, 0.9f);
    Color couleurInversee = couleur.Inverted(); // Équivalent à `new Color(0.7f, 0.6f, 0.1f)`



.. rst-class:: classref-item-separator

----

.. _class_Color_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ to\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_Color_method_is_equal_approx>`

Renvoie ``true`` si cette couleur et ``to`` sont approximativement égales, en exécutant :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Color_method_lerp:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **lerp**\ (\ to\: :ref:`Color<class_Color>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_lerp>`

Renvoie l'interpolation linéaire entre les composantes de cette couleur et les composantes de ``to``. Le facteur d'interpolation ``weight`` devrait être compris entre 0,0 et 1,0 (inclusifs). Voir aussi :ref:`@GlobalScope.lerp()<class_@GlobalScope_method_lerp>`.


.. tabs::

 .. code-tab:: gdscript

    var rouge = Color(1.0, 0.0, 0.0)
    var bleu_vert = Color(0.0, 1.0, 0.8)

    rouge.lerp(bleu_vert, 0.2) # Renvoie Color(0.8, 0.2, 0.16)
    rouge.lerp(bleu_vert, 0.5) # Renvoie Color(0.5, 0.5, 0.4)
    rouge.lerp(bleu_vert, 1.0) # Renvoie Color(0.0, 1.0, 0.8)

 .. code-tab:: csharp

    var rouge = new Color(1.0f, 0.0f, 0.0f);
    var bleuVert = new Color(0.0f, 1.0f, 0.8f);

    rouge.Lerp(bleuVert, 0.2f); // Renvoie Color(0.8f, 0.2f, 0.16f)
    rouge.Lerp(bleuVert, 0.5f); // Renvoie Color(0.5f, 0.5f, 0.4f)
    rouge.Lerp(bleuVert, 1.0f); // Renvoie Color(0.0f, 1.0f, 0.8f)



.. rst-class:: classref-item-separator

----

.. _class_Color_method_lightened:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **lightened**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Color_method_lightened>`

Renvoie une nouvelle couleur résultant du fait de rendre cette couleur plus claire par la quantité ``amount`` spécifiée (ratio de 0.0 à 1.0). Voir aussi :ref:`darkened()<class_Color_method_darkened>`.


.. tabs::

 .. code-tab:: gdscript

    var vert = Couleur(0.0, 1.0, 0.0)
    var vert_clair = vert.lightened(0.2) # 20% plus clair que le vert habituel

 .. code-tab:: csharp

    var vert = new Color(0.0f, 1.0f, 0.0f);
    Color vertClair= vert.Lightened(0,2f); // 20% plus clair que le vert habituel



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

Renvoie la couleur convertie en entier 32 bits en format ABGR (chaque composante est sur 8 bits). ABGR est la version inversée du format RGBA par défaut.


.. tabs::

 .. code-tab:: gdscript

    var couleur = Color(1, 0.5, 0.2)
    print(couleur.to_abgr32()) # Affiche 4281565439

 .. code-tab:: csharp

    var couleur = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(couleur.ToAbgr32()); // Affiche 4281565439



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_abgr64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_abgr64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_abgr64>`

Renvoie la couleur convertie en entier 64 bits en format ABGR (chaque composante est sur 16 bits). ABGR est la version inversée du format RGBA par défaut.


.. tabs::

 .. code-tab:: gdscript

    var couleur = Color(1, 0.5, 0.2)
    print(couleur.to_abgr64()) # Affiche -225178692812801

 .. code-tab:: csharp

    var couleur = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(couleur.ToAbgr64()); // Affiche -225178692812801



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_argb32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_argb32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_argb32>`

Renvoie la couleur convertie en entier 32 bits en format ABGR (chaque composante est sur 8 bits). ABGR est plus compatible avec DirectX.


.. tabs::

 .. code-tab:: gdscript

    var couleur = Color(1, 0.5, 0.2)
    print(couleur.to_argb32()) # Affiche 4294934323

 .. code-tab:: csharp

    var couleur = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(couleur.ToArgb32()); // Affiche 4294934323



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_argb64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_argb64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_argb64>`

Renvoie la couleur convertie en entier 64 bits en format ABGR (chaque composante est sur 16 bits). ABGR est plus compatible avec DirectX.


.. tabs::

 .. code-tab:: gdscript

    var couleur = Color(1, 0.5, 0.2)
    print(couleur.to_argb64()) # Affiche -2147470541

 .. code-tab:: csharp

    var couleur = new Color(1.0f, 0.5f, 0.2f);
    GD.Print(couleur.ToArgb64()); // Affiche -2147470541



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_html:

.. rst-class:: classref-method

:ref:`String<class_String>` **to_html**\ (\ with_alpha\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Color_method_to_html>`

Renvoie la couleur convertie en une :ref:`String<class_String>` de couleur hexadécimale HTML en format RGBA, sans le préfixe croisillon (``#``).

Définir ``with_alpha`` à ``false`` exclut l’alpha de la chaîne hexadécimale, en utilisant un format RGB, au lieu de RGBA.


.. tabs::

 .. code-tab:: gdscript

    var blanc = Color(1, 1, 1, 0,5)
    var avec_alpha = blanc.to_html() # Renvoie "ffff7f"
    var sans_alpha = blanc.to_html(false) # Renvoie "ffffff"

 .. code-tab:: csharp

    var blanc = new Color(1, 1, 1, 0,5f);
    string avecAlpha = blanc.ToHtml(); // Renvoie "ffff7f"
    string sansAlpha = blanc.ToHtml(false); // Renvoie "ffffff"



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_rgba32:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_rgba32**\ (\ ) |const| :ref:`🔗<class_Color_method_to_rgba32>`

Renvoie la couleur convertie en un entier de 32 bits au format RGBA (chaque composante est sur 8 bits). RGBA est le format par défaut de Godot. Cette méthode est l'inverse de :ref:`hex()<class_Color_method_hex>`.


.. tabs::

 .. code-tab:: gdscript

    var couleur = Color(1, 0,5, 0,2)
    print(couleur.to_rgba32()) # Affiche 4286526463

 .. code-tab:: csharp

    var couleur = new Color(1, 0,5f, 0,2f);
    GD.Print(couleur.ToRgba32()); // Affiche 4286526463



.. rst-class:: classref-item-separator

----

.. _class_Color_method_to_rgba64:

.. rst-class:: classref-method

:ref:`int<class_int>` **to_rgba64**\ (\ ) |const| :ref:`🔗<class_Color_method_to_rgba64>`

Renvoie la couleur convertie en un entier de 64 bits au format RGBA (chaque composante est sur 16 bits). RGBA est le format par défaut de Godot. Cette méthode est l'inverse de :ref:`hex64()<class_Color_method_hex64>`.


.. tabs::

 .. code-tab:: gdscript

    var couleur = Color(1, 0,5, 0,2)
    print(couleur.to_rgba64()) # Affiche -140736629309441

 .. code-tab:: csharp

    var couleur = new Color(1, 0,5f, 0,2f);
    GD.Print(couleur.ToRgba64()); // Affiche -140736629309441



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Color_operator_neq_Color:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_neq_Color>`

Renvoie ``true`` si les couleurs ne sont pas exactement égales.

\ **Note :** À cause des erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Color_method_is_equal_approx>` à la place, qui est plus fiable.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_mul_Color>`

Multiplie chaque composante de la couleur **Color** par les composantes de la couleur **Color** donnée.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Color_operator_mul_float>`

Multiplie chaque composante de la couleur **Color** par le flottant :ref:`float<class_float>` donné.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_mul_int>`

Multiplie chaque composante de la couleur **Color** par l'entier :ref:`int<class_int>` donné.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_sum_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator +**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_sum_Color>`

Ajoute chaque composante de cette **Color** avec les composantes de la **Color** donnée.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_dif_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator -**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_dif_Color>`

Soustrait chaque composante de cette **Color** par les composantes de la **Color** donnée.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_div_Color>`

Divise chaque composante de cette **Color** par les composantes de la **Color** donnée.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_float:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Color_operator_div_float>`

Divise chaque composante de la **Color** par le flottant :ref:`float<class_float>` donné.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_div_int:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_div_int>`

Divise chaque composante de la **Color** par l'entier :ref:`int<class_int>` donné.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_eq_Color:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Color_operator_eq_Color>`

Renvoie ``true`` si les couleurs sont exactement égales.

\ **Note :** À cause des erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Color_method_is_equal_approx>` à la place, qui est plus fiable.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Color_operator_idx_int>`

Accède aux composantes de la couleur en utilisant leur index. ``[0]`` est équivalent à :ref:`r<class_Color_property_r>`, ``[1]`` est équivalent à :ref:`g<class_Color_property_g>`, ``[2]`` est équivalent à :ref:`b<class_Color_property_b>`, et ``[3]`` est équivalent à :ref:`a<class_Color_property_a>`.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_unplus:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator unary+**\ (\ ) :ref:`🔗<class_Color_operator_unplus>`

Renvoie la même valeur comme si ``+`` n'était pas là. Le ``+`` unaire ne fait rien, mais peut parfois rendre votre code plus lisible.

.. rst-class:: classref-item-separator

----

.. _class_Color_operator_unminus:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator unary-**\ (\ ) :ref:`🔗<class_Color_operator_unminus>`

Inverse la couleur donnée. Ceci est équivalent à ``Color.WHITE - c`` ou ``Color(1 - c.r, 1 - c.g, 1 - c.b, 1 - c.a)``. Contrairement a :ref:`inverted()<class_Color_method_inverted>`, la composante :ref:`a<class_Color_property_a>` est aussi inversée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
