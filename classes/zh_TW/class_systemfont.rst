:github_url: hide

.. _class_SystemFont:

SystemFont
==========

**繼承：** :ref:`Font<class_Font>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

從系統字形載入的字形。如果未在宿主作業系統上實作，則退回到預設主題字形。

.. rst-class:: classref-introduction-group

說明
----

**SystemFont** loads a font from a system font with the first matching name from :ref:`font_names<class_SystemFont_property_font_names>`.

It will attempt to match font style, but it's not guaranteed.

The returned font might be part of a font collection or be a variable font with OpenType "weight", "width" and/or "italic" features set.

You can create :ref:`FontVariation<class_FontVariation>` of the system font for precise control over its features.

\ **Note:** This class is implemented on iOS, Linux, macOS and Windows, on other platforms it will fallback to default theme font.

.. rst-class:: classref-reftable-group

屬性
----

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

屬性說明
--------

.. _class_SystemFont_property_allow_system_fallback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_system_fallback** = ``true`` :ref:`🔗<class_SystemFont_property_allow_system_fallback>`

.. rst-class:: classref-property-setget

- |void| **set_allow_system_fallback**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_system_fallback**\ (\ )

如果設定為 ``true``\ ，則可以自動將系統字形作為退回使用。

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_antialiasing:

.. rst-class:: classref-property

:ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>` **antialiasing** = ``1`` :ref:`🔗<class_SystemFont_property_antialiasing>`

.. rst-class:: classref-property-setget

- |void| **set_antialiasing**\ (\ value\: :ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>`\ )
- :ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>` **get_antialiasing**\ (\ )

字形抗鋸齒模式。

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

如果設定為 ``true``\ ，則優先使用斜體（italic）或偽斜體（oblique）。

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_names:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **font_names** = ``PackedStringArray()`` :ref:`🔗<class_SystemFont_property_font_names>`

.. rst-class:: classref-property-setget

- |void| **set_font_names**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_font_names**\ (\ )

要搜索的字形家族名稱陣列，會使用第一個與之配對的字形。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_stretch:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_stretch** = ``100`` :ref:`🔗<class_SystemFont_property_font_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_font_stretch**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_stretch**\ (\ )

字形優先使用的拉伸量，相對於正常寬度。介於 ``50%`` 和 ``200%`` 之間的百分比。

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_weight:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_weight** = ``400`` :ref:`🔗<class_SystemFont_property_font_weight>`

.. rst-class:: classref-property-setget

- |void| **set_font_weight**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_weight**\ (\ )

字形優先使用的字重（粗度）。在 ``100...999`` 範圍內的值，正常字重為 ``400``\ ，粗體字重為 ``700``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_force_autohinter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_autohinter** = ``false`` :ref:`🔗<class_SystemFont_property_force_autohinter>`

.. rst-class:: classref-property-setget

- |void| **set_force_autohinter**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_force_autohinter**\ (\ )

如果設定為 ``true``\ ，則支援自動微調，優先於字形內建微調。

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``false`` :ref:`🔗<class_SystemFont_property_generate_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_generate_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_generate_mipmaps**\ (\ )

如果設定為 ``true``\ ，則為字形紋理生成 mipmap。

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_hinting:

.. rst-class:: classref-property

:ref:`Hinting<enum_TextServer_Hinting>` **hinting** = ``1`` :ref:`🔗<class_SystemFont_property_hinting>`

.. rst-class:: classref-property-setget

- |void| **set_hinting**\ (\ value\: :ref:`Hinting<enum_TextServer_Hinting>`\ )
- :ref:`Hinting<enum_TextServer_Hinting>` **get_hinting**\ (\ )

字形微調模式。

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

最小和最大可表示的有符號距離之間的形狀周圍的範圍寬度。如果使用字形輪廓，\ :ref:`msdf_pixel_range<class_SystemFont_property_msdf_pixel_range>` 必須至少設定為最大字形輪廓大小的\ *兩倍*\ 。\ :ref:`msdf_pixel_range<class_SystemFont_property_msdf_pixel_range>` 的預設值為 ``16``\ ，允許大小最大到 ``8`` 的輪廓看起來正確。

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_msdf_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_size** = ``48`` :ref:`🔗<class_SystemFont_property_msdf_size>`

.. rst-class:: classref-property-setget

- |void| **set_msdf_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_msdf_size**\ (\ )

用於生成 MSDF 紋理的源字形大小。較高的值允許更高的精度，但算繪速度較慢並且需要更多記憶體。只有當注意到字形算繪中明顯缺乏精度時，才增加該屬性的值。

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_multichannel_signed_distance_field:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multichannel_signed_distance_field** = ``false`` :ref:`🔗<class_SystemFont_property_multichannel_signed_distance_field>`

.. rst-class:: classref-property-setget

- |void| **set_multichannel_signed_distance_field**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_multichannel_signed_distance_field**\ (\ )

如果設定為 ``true``\ ，則所有大小的字形都將使用從動態字形向量資料生成的單個多通道帶符號距離場算繪。

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

字形字形的次圖元定位模式。次圖元定位為較小的字形提供了更清晰的文字和更好的字偶距，但會犧牲記憶體佔用和字形柵格化速度。使用 :ref:`TextServer.SUBPIXEL_POSITIONING_AUTO<class_TextServer_constant_SUBPIXEL_POSITIONING_AUTO>` 可以根據字形大小自動啟用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
