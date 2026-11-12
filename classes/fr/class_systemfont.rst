:github_url: hide

.. _class_SystemFont:

SystemFont
==========

**Hérite de :** :ref:`Font<class_Font>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A font loaded from a system font. Falls back to a default theme font if not implemented on the host OS.

.. rst-class:: classref-introduction-group

Description
-----------

**SystemFont** loads a font from a system font with the first matching name from :ref:`font_names<class_SystemFont_property_font_names>`.

It will attempt to match font style, but it's not guaranteed.

The returned font might be part of a font collection or be a variable font with OpenType "weight", "width" and/or "italic" features set.

You can create :ref:`FontVariation<class_FontVariation>` of the system font for precise control over its features.

\ **Note:** This class is implemented on iOS, Linux, macOS and Windows, on other platforms it will fallback to default theme font.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Descriptions des propriétés
------------------------------------------------------

.. _class_SystemFont_property_allow_system_fallback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_system_fallback** = ``true`` :ref:`🔗<class_SystemFont_property_allow_system_fallback>`

.. rst-class:: classref-property-setget

- |void| **set_allow_system_fallback**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_system_fallback**\ (\ )

If set to ``true``, system fonts can be automatically used as fallbacks.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_antialiasing:

.. rst-class:: classref-property

:ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>` **antialiasing** = ``1`` :ref:`🔗<class_SystemFont_property_antialiasing>`

.. rst-class:: classref-property-setget

- |void| **set_antialiasing**\ (\ value\: :ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>`\ )
- :ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>` **get_antialiasing**\ (\ )

Mode d'anticrénelage de la police.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_disable_embedded_bitmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_embedded_bitmaps** = ``true`` :ref:`🔗<class_SystemFont_property_disable_embedded_bitmaps>`

.. rst-class:: classref-property-setget

- |void| **set_disable_embedded_bitmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_disable_embedded_bitmaps**\ (\ )

If set to ``true``, embedded font bitmap loading is disabled (bitmap-only and color fonts ignore this property).

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_italic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **font_italic** = ``false`` :ref:`🔗<class_SystemFont_property_font_italic>`

.. rst-class:: classref-property-setget

- |void| **set_font_italic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_font_italic**\ (\ )

Si définit à ``true``, les polices en italique ou oblique sont préférées.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_names:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **font_names** = ``PackedStringArray()`` :ref:`🔗<class_SystemFont_property_font_names>`

.. rst-class:: classref-property-setget

- |void| **set_font_names**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_font_names**\ (\ )

Tableau de noms de familles de polices à chercher, la première police correspondante est utilisée.



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_stretch:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_stretch** = ``100`` :ref:`🔗<class_SystemFont_property_font_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_font_stretch**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_stretch**\ (\ )

Valeur préférée de l'étirement de la police, comparée une largeur normale. Une valeur de pourcentage entre ``50%`` et ``200%``.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_weight:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_weight** = ``400`` :ref:`🔗<class_SystemFont_property_font_weight>`

.. rst-class:: classref-property-setget

- |void| **set_font_weight**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_weight**\ (\ )

Preferred weight (boldness) of the font. A value in the ``100...999`` range, normal font weight is ``400``, bold font weight is ``700``.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_force_autohinter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_autohinter** = ``false`` :ref:`🔗<class_SystemFont_property_force_autohinter>`

.. rst-class:: classref-property-setget

- |void| **set_force_autohinter**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_force_autohinter**\ (\ )

If set to ``true``, auto-hinting is supported and preferred over font built-in hinting.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``false`` :ref:`🔗<class_SystemFont_property_generate_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_generate_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_generate_mipmaps**\ (\ )

If set to ``true``, generate mipmaps for the font textures.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_hinting:

.. rst-class:: classref-property

:ref:`Hinting<enum_TextServer_Hinting>` **hinting** = ``1`` :ref:`🔗<class_SystemFont_property_hinting>`

.. rst-class:: classref-property-setget

- |void| **set_hinting**\ (\ value\: :ref:`Hinting<enum_TextServer_Hinting>`\ )
- :ref:`Hinting<enum_TextServer_Hinting>` **get_hinting**\ (\ )

Mode d'hinting de police.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_keep_rounding_remainders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_rounding_remainders** = ``true`` :ref:`🔗<class_SystemFont_property_keep_rounding_remainders>`

.. rst-class:: classref-property-setget

- |void| **set_keep_rounding_remainders**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_keep_rounding_remainders**\ (\ )

If set to ``true``, when aligning glyphs to the pixel boundaries rounding remainders are accumulated to ensure more uniform glyph distribution. This setting has no effect if subpixel positioning is enabled.

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

If set to ``true``, glyphs of all sizes are rendered using single multichannel signed distance field generated from the dynamic font vector data.

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

Font glyph subpixel positioning mode. Subpixel positioning provides shaper text and better kerning for smaller font sizes, at the cost of memory usage and font rasterization speed. Use :ref:`TextServer.SUBPIXEL_POSITIONING_AUTO<class_TextServer_constant_SUBPIXEL_POSITIONING_AUTO>` to automatically enable it based on the font size.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
