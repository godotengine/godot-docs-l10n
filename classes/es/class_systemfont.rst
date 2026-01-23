:github_url: hide

.. _class_SystemFont:

SystemFont
==========

**Hereda:** :ref:`Font<class_Font>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una fuente cargada desde una fuente del sistema. Recurre a una fuente de tema por defecto si no está implementada en el SO anfitrión.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**SystemFont** loads a font from a system font with the first matching name from :ref:`font_names<class_SystemFont_property_font_names>`.

It will attempt to match font style, but it's not guaranteed.

The returned font might be part of a font collection or be a variable font with OpenType "weight", "width" and/or "italic" features set.

You can create :ref:`FontVariation<class_FontVariation>` of the system font for precise control over its features.

\ **Note:** This class is implemented on iOS, Linux, macOS and Windows, on other platforms it will fallback to default theme font.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`allow_system_fallback<class_SystemFont_property_allow_system_fallback>`                           | ``true``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>`       | :ref:`antialiasing<class_SystemFont_property_antialiasing>`                                             | ``1``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`disable_embedded_bitmaps<class_SystemFont_property_disable_embedded_bitmaps>`                     | ``true``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`font_italic<class_SystemFont_property_font_italic>`                                               | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`               | :ref:`font_names<class_SystemFont_property_font_names>`                                                 | ``PackedStringArray()`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`font_stretch<class_SystemFont_property_font_stretch>`                                             | ``100``                 |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`font_weight<class_SystemFont_property_font_weight>`                                               | ``400``                 |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`force_autohinter<class_SystemFont_property_force_autohinter>`                                     | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`generate_mipmaps<class_SystemFont_property_generate_mipmaps>`                                     | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Hinting<enum_TextServer_Hinting>`                         | :ref:`hinting<class_SystemFont_property_hinting>`                                                       | ``1``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`keep_rounding_remainders<class_SystemFont_property_keep_rounding_remainders>`                     | ``true``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`modulate_color_glyphs<class_SystemFont_property_modulate_color_glyphs>`                           | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`msdf_pixel_range<class_SystemFont_property_msdf_pixel_range>`                                     | ``16``                  |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`msdf_size<class_SystemFont_property_msdf_size>`                                                   | ``48``                  |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`multichannel_signed_distance_field<class_SystemFont_property_multichannel_signed_distance_field>` | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                                       | :ref:`oversampling<class_SystemFont_property_oversampling>`                                             | ``0.0``                 |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`SubpixelPositioning<enum_TextServer_SubpixelPositioning>` | :ref:`subpixel_positioning<class_SystemFont_property_subpixel_positioning>`                             | ``1``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SystemFont_property_allow_system_fallback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_system_fallback** = ``true`` :ref:`🔗<class_SystemFont_property_allow_system_fallback>`

.. rst-class:: classref-property-setget

- |void| **set_allow_system_fallback**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_system_fallback**\ (\ )

Si se establece en ``true``, las fuentes del sistema se pueden utilizar automáticamente como alternativas.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_antialiasing:

.. rst-class:: classref-property

:ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>` **antialiasing** = ``1`` :ref:`🔗<class_SystemFont_property_antialiasing>`

.. rst-class:: classref-property-setget

- |void| **set_antialiasing**\ (\ value\: :ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>`\ )
- :ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>` **get_antialiasing**\ (\ )

Modo de antialiasing de la fuente.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_disable_embedded_bitmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_embedded_bitmaps** = ``true`` :ref:`🔗<class_SystemFont_property_disable_embedded_bitmaps>`

.. rst-class:: classref-property-setget

- |void| **set_disable_embedded_bitmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_disable_embedded_bitmaps**\ (\ )

Si se establece en ``true``, la carga de mapas de bits de fuentes incrustados se desactiva (las fuentes solo de mapa de bits y de color ignoran esta propiedad).

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_italic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **font_italic** = ``false`` :ref:`🔗<class_SystemFont_property_font_italic>`

.. rst-class:: classref-property-setget

- |void| **set_font_italic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_font_italic**\ (\ )

Si se establece en ``true``, se prefiere la fuente cursiva u oblicua.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_names:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **font_names** = ``PackedStringArray()`` :ref:`🔗<class_SystemFont_property_font_names>`

.. rst-class:: classref-property-setget

- |void| **set_font_names**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_font_names**\ (\ )

Array de nombres de familias de fuentes a buscar, se utiliza la primera fuente encontrada que coincida.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_stretch:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_stretch** = ``100`` :ref:`🔗<class_SystemFont_property_font_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_font_stretch**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_stretch**\ (\ )

Cantidad de estiramiento de la fuente preferida, en comparación con un ancho normal. Un valor porcentual entre ``50%`` y ``200%``.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_weight:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_weight** = ``400`` :ref:`🔗<class_SystemFont_property_font_weight>`

.. rst-class:: classref-property-setget

- |void| **set_font_weight**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_weight**\ (\ )

Peso (grosor) preferido de la fuente. Un valor en el rango ``100...999``, el peso normal de la fuente es ``400``, el peso de la fuente en negrita es ``700``.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_force_autohinter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_autohinter** = ``false`` :ref:`🔗<class_SystemFont_property_force_autohinter>`

.. rst-class:: classref-property-setget

- |void| **set_force_autohinter**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_force_autohinter**\ (\ )

Si se establece como ``true``, se admite y prefiere el hinting automático sobre el hinting incorporado de la fuente.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``false`` :ref:`🔗<class_SystemFont_property_generate_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_generate_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_generate_mipmaps**\ (\ )

Si se establece en ``true``, se generan mipmaps para las texturas de la fuente.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_hinting:

.. rst-class:: classref-property

:ref:`Hinting<enum_TextServer_Hinting>` **hinting** = ``1`` :ref:`🔗<class_SystemFont_property_hinting>`

.. rst-class:: classref-property-setget

- |void| **set_hinting**\ (\ value\: :ref:`Hinting<enum_TextServer_Hinting>`\ )
- :ref:`Hinting<enum_TextServer_Hinting>` **get_hinting**\ (\ )

Modo de sugerencia de fuente.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_keep_rounding_remainders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_rounding_remainders** = ``true`` :ref:`🔗<class_SystemFont_property_keep_rounding_remainders>`

.. rst-class:: classref-property-setget

- |void| **set_keep_rounding_remainders**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_keep_rounding_remainders**\ (\ )

Si se establece en ``true``, al alinear los glifos a los límites de los píxeles, los restos de redondeo se acumulan para asegurar una distribución de glifos más uniforme. Este ajuste no tiene efecto si el posicionamiento subpíxel está habilitado.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_modulate_color_glyphs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **modulate_color_glyphs** = ``false`` :ref:`🔗<class_SystemFont_property_modulate_color_glyphs>`

.. rst-class:: classref-property-setget

- |void| **set_modulate_color_glyphs**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_modulate_color_glyphs**\ (\ )

If set to ``true``, color modulation is applied when drawing colored glyphs, otherwise it's applied to the monochrome glyphs only.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_msdf_pixel_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_pixel_range** = ``16`` :ref:`🔗<class_SystemFont_property_msdf_pixel_range>`

.. rst-class:: classref-property-setget

- |void| **set_msdf_pixel_range**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_msdf_pixel_range**\ (\ )

The width of the range around the shape between the minimum and maximum representable signed distance. If using font outlines, :ref:`msdf_pixel_range<class_SystemFont_property_msdf_pixel_range>` must be set to at least *twice* the size of the largest font outline. The default :ref:`msdf_pixel_range<class_SystemFont_property_msdf_pixel_range>` value of ``16`` allows outline sizes up to ``8`` to look correct.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_msdf_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_size** = ``48`` :ref:`🔗<class_SystemFont_property_msdf_size>`

.. rst-class:: classref-property-setget

- |void| **set_msdf_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_msdf_size**\ (\ )

Source font size used to generate MSDF textures. Higher values allow for more precision, but are slower to render and require more memory. Only increase this value if you notice a visible lack of precision in glyph rendering.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_multichannel_signed_distance_field:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multichannel_signed_distance_field** = ``false`` :ref:`🔗<class_SystemFont_property_multichannel_signed_distance_field>`

.. rst-class:: classref-property-setget

- |void| **set_multichannel_signed_distance_field**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_multichannel_signed_distance_field**\ (\ )

Si se establece en ``true``, los glifos de todos los tamaños se renderizan utilizando un único campo de distancia con signo multicanal generado a partir de los datos vectoriales de la fuente dinámica.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_oversampling:

.. rst-class:: classref-property

:ref:`float<class_float>` **oversampling** = ``0.0`` :ref:`🔗<class_SystemFont_property_oversampling>`

.. rst-class:: classref-property-setget

- |void| **set_oversampling**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_oversampling**\ (\ )

If set to a positive value, overrides the oversampling factor of the viewport this font is used in. See :ref:`Viewport.oversampling<class_Viewport_property_oversampling>`. This value doesn't override the ``oversampling`` parameter of ``draw_*`` methods.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_subpixel_positioning:

.. rst-class:: classref-property

:ref:`SubpixelPositioning<enum_TextServer_SubpixelPositioning>` **subpixel_positioning** = ``1`` :ref:`🔗<class_SystemFont_property_subpixel_positioning>`

.. rst-class:: classref-property-setget

- |void| **set_subpixel_positioning**\ (\ value\: :ref:`SubpixelPositioning<enum_TextServer_SubpixelPositioning>`\ )
- :ref:`SubpixelPositioning<enum_TextServer_SubpixelPositioning>` **get_subpixel_positioning**\ (\ )

Modo de posicionamiento de subpíxeles de los glifos de la fuente. El posicionamiento de subpíxeles proporciona un texto más nítido y un mejor kerning para tamaños de fuente más pequeños, a costa del uso de memoria y la velocidad de rasterización de la fuente. Utiliza :ref:`TextServer.SUBPIXEL_POSITIONING_AUTO<class_TextServer_constant_SUBPIXEL_POSITIONING_AUTO>` para activarlo automáticamente según el tamaño de la fuente.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
