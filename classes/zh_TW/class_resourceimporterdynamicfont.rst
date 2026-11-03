:github_url: hide

.. _class_ResourceImporterDynamicFont:

ResourceImporterDynamicFont
===========================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

匯入 TTF、TTC、OTF、OTC、WOFF 或 WOFF2 字型檔案，用於適應任何大小的字形渲染。

.. rst-class:: classref-introduction-group

說明
----

與點陣字形不同，動態字形可以調整為任意大小並且看起來仍然清晰。動態字形還可以選擇支援MSDF 字形渲染，這允許運作時比例更改而無需重新光柵化成本。

雖然 WOFF（尤其是 WOFF2）往往會產生較小的檔案大小，但不存在普遍「更好」的字形格式。在大多數情況下，建議使用字形開發人員網站上提供的字形格式。

另請參閱 :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>` 和 :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- `動態字形——使用字形 <../tutorials/ui/gui_using_fonts.html#dynamic-fonts>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`allow_system_fallback<class_ResourceImporterDynamicFont_property_allow_system_fallback>`                           | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`antialiasing<class_ResourceImporterDynamicFont_property_antialiasing>`                                             | ``1``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`compress<class_ResourceImporterDynamicFont_property_compress>`                                                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`disable_embedded_bitmaps<class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps>`                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`           | :ref:`fallbacks<class_ResourceImporterDynamicFont_property_fallbacks>`                                                   | ``[]``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`force_autohinter<class_ResourceImporterDynamicFont_property_force_autohinter>`                                     | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>`                                     | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`hinting<class_ResourceImporterDynamicFont_property_hinting>`                                                       | ``3``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`keep_rounding_remainders<class_ResourceImporterDynamicFont_property_keep_rounding_remainders>`                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>`                                     | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`modulate_color_glyphs<class_ResourceImporterDynamicFont_property_modulate_color_glyphs>`                           | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>`                                     | ``8``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`msdf_size<class_ResourceImporterDynamicFont_property_msdf_size>`                                                   | ``48``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>` | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`opentype_features<class_ResourceImporterDynamicFont_property_opentype_features>`                                   | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`oversampling<class_ResourceImporterDynamicFont_property_oversampling>`                                             | ``0.0``   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`           | :ref:`preload<class_ResourceImporterDynamicFont_property_preload>`                                                       | ``[]``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`                                         | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>`                             | ``4``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ResourceImporterDynamicFont_property_allow_system_fallback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_system_fallback** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_allow_system_fallback>`

如果\ ``true``\ ，如果在此動態字形中找不到字形，則自動使用系統字形作為後備。這使得支援CJK 字元或表情符號更加簡單，因為您不需要在專案中包含 CJK/emoji 字形。另請參閱\ :ref:`fallbacks<class_ResourceImporterDynamicFont_property_fallbacks>`\ 。

\ **注意：** 系統字形的外觀會因平台而異。僅 Windows、macOS、Linux、Android 和 iOS 支援載入系統字形。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_antialiasing:

.. rst-class:: classref-property

:ref:`int<class_int>` **antialiasing** = ``1`` :ref:`🔗<class_ResourceImporterDynamicFont_property_antialiasing>`

要使用的字型反鋸齒方法。

\ **停用：**\ 最適合像素藝術字形，儘管如果字形檔案良好的話，您沒\ *有*\ 更改預設\ **灰度**\ 的反鋸齒效果-建立並且字形以其預期大小的整數倍使用。如果像素藝術字形在其預期大小下外觀不佳，請嘗試將 :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>` 設定為 **Disabled**\ 。

\ **灰階：**\ 使用灰階反鋸齒。這是 macOS、Android 和 iOS 上的作業系統所使用的方法。

\ **LCD 子像素：** 使用子像素模式的反鋸齒功能使 LCD 顯示器上的字形更加清晰。這是 Windows 和大多數 Linux 發行版上的作業系統所使用的方法。缺點是這可能會在邊緣引入“邊緣”，尤其是在不使用標準 RGB 子像素的顯示技術（例如 OLED 顯示器）上。 LCD 子像素佈局由 :ref:`ProjectSettings.gui/theme/lcd_subpixel_layout<class_ProjectSettings_property_gui/theme/lcd_subpixel_layout>` 全域控制，這也允許退回到灰階反鋸齒。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_compress>`

如果為 ``true``\ ，則對二進位資源使用無失真壓縮。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_embedded_bitmaps** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps>`

如果為 ``true``\ ，則會停用內嵌字型點陣圖的載入（僅包含點陣圖的字型以及彩色字型會停用該屬性）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterDynamicFont_property_fallbacks>`

如果在此動態字形中找不到字形，則要使用的字形後備列表。首先嘗試陣列開頭的字形，但不支援該字形的後備字形最後嘗試語言和腳本（請參閱\ :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>` 和\ :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`\ ）。另請參閱\ :ref:`allow_system_fallback<class_ResourceImporterDynamicFont_property_allow_system_fallback>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_force_autohinter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_autohinter** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_force_autohinter>`

如果 ``true``\ ，則使用 `FreeType <https://freetype.org/>`__ 的自動提示器強制產生字型的提示資料。這將使\ :ref:`hinting<class_ResourceImporterDynamicFont_property_hinting>`\ 對不包含提示資料的字形有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_generate_mipmaps>`

如果為 ``true``\ ，則該字型將生成 mipmap。這樣可以防止文字在 :ref:`Control<class_Control>` 被按比例縮小或從遠距離查看 :ref:`Label3D<class_Label3D>` 時看起來有顆粒感（如果 :ref:`Label3D.texture_filter<class_Label3D_property_texture_filter>` 被設定為顯示 mipmap 的模式）。

啟用 :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>` 會增加字型生成時間和記憶體使用量。請只在你確實需要時才啟用此設定。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_hinting:

.. rst-class:: classref-property

:ref:`int<class_int>` **hinting** = ``3`` :ref:`🔗<class_ResourceImporterDynamicFont_property_hinting>`

要使用的提示模式。這決定了在光柵化字型時，字形邊緣應該以多大的力度去“吸附”對齊到像素點上。根據個人偏好，你可能會更喜歡某一種提示模式。除了 **無（None）** 以外的提示模式，只有在字型本身包含提示資料時才有效（參見 :ref:`force_autohinter<class_ResourceImporterDynamicFont_property_force_autohinter>`\ ）。

\ **無（None）：** 外觀最平滑，但可能會導致字型在小字號下看起來有些模糊。

\ **輕微（Light）：** 僅在 Y 軸（垂直方向）上將字形邊緣吸附到像素點，呈現銳利的效果。

\ **正常（Normal）：** 在 X 軸和 Y 軸（水平和垂直方向）上都將字形邊緣吸附到像素點，呈現最銳利的效果。

\ **輕微（像素字型除外）：** 對於像素風格的字型（每個字形的輪廓僅包含水平和垂直的直線），此選項為 **停用**\ ；對於其他字型，則使用 **輕微** 模式。

\ **正常（像素字型除外）：** 對於像素風格的字型（每個字形的輪廓僅包含水平和垂直的直線），此選項為 **停用**\ ；對於其他字型，則使用 **正常** 模式。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_keep_rounding_remainders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_rounding_remainders** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_keep_rounding_remainders>`

如果設定為 ``true``\ ，則將字形與像素邊界對齊時會累積捨入余數，確保字形的分布更加均勻。如果啟用了次像素定位則該設定無效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_language_support:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **language_support** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_language_support>`

覆蓋此字形支援的語言列表。如果留空，則由字形元資料提供。通常不需要更改它。另請參閱 :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`\ 。 ，“，“ “，“錯誤的”，””，”，””

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_modulate_color_glyphs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **modulate_color_glyphs** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_modulate_color_glyphs>`

如果設為 ``true``\ ，則繪製彩色字形時會應用顏色調制，否則只會對灰度字形應用。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_msdf_pixel_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_pixel_range** = ``8`` :ref:`🔗<class_ResourceImporterDynamicFont_property_msdf_pixel_range>`

最小和最大可表示的有符號距離之間的形狀周圍的範圍寬度。如果使用字形輪廓，\ :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>` 必須至少設定為最大字形輪廓大小的\ *兩倍*\ 。\ :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>` 的預設值為 ``16``\ ，允許大小最大到 ``8`` 的輪廓看起來正確。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_msdf_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_size** = ``48`` :ref:`🔗<class_ResourceImporterDynamicFont_property_msdf_size>`

用於生成 MSDF 紋理的源字型大小。較高的值允許更高的精度，但渲染速度較慢並且需要更多記憶體。只有當注意到字形渲染中明顯缺乏精度時，才增加該屬性的值。僅在 :ref:`multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>` 為 ``true`` 時有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multichannel_signed_distance_field** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>`

如果設定為 ``true``\ ，字型將使用多通道帶符號距離場（MSDF），任何尺寸都能夠進行清晰的渲染。由於這種方法不需要在每次字型大小更改時都對字型進行光柵化，因此可以即時調整字型大小，不會造成任何效能損失。對於按比例縮小的 :ref:`Control<class_Control>`\ （或從遠距離查看的 :ref:`Label3D<class_Label3D>`\ ），文字也不會看起來有顆粒感。

MSDF 字型渲染可以與 :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>` 結合使用，從而進一步提高縮小時的字型渲染品質。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_opentype_features:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **opentype_features** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_opentype_features>`

OpenType 功能可啟用、停用此字型或設定此字型的值。這可用於啟用字型提供的選用功能，例如連字或替代字形。支援的列表OpenType 功能因每種字形而異。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_oversampling:

.. rst-class:: classref-property

:ref:`float<class_float>` **oversampling** = ``0.0`` :ref:`🔗<class_ResourceImporterDynamicFont_property_oversampling>`

如果設為正數，則會覆蓋使用該字型的視埠的過取樣係數。見 :ref:`Viewport.oversampling<class_Viewport_property_oversampling>`\ 。該值不會覆蓋 ``draw_*`` 方法的 ``oversampling`` 參數。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_preload:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **preload** = ``[]`` :ref:`🔗<class_ResourceImporterDynamicFont_property_preload>`

要預先渲染的字形範圍。這可以避免在遊戲過程中需要渲染新角色時出現卡頓，特別是在啟用\ :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>` 的情況下。使用預先載入的缺點是初始專案載入時間會增加，記憶體使用量也會增加。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_script_support:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **script_support** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_script_support>`

覆寫此字形支援的語言腳本列表。如果留空，則由字形元資料提供。通常不需要更改它。另請參閱\ :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_subpixel_positioning:

.. rst-class:: classref-property

:ref:`int<class_int>` **subpixel_positioning** = ``4`` :ref:`🔗<class_ResourceImporterDynamicFont_property_subpixel_positioning>`

亞像素定位可以改善字型的渲染外觀，尤其是在字號較小的時候。缺點是它會增加字型初次渲染所需的時間，這可能會在遊戲中導致卡頓，特別是當它被用於大字號字型時。對於具有像素畫風格的字型，此選項應設定為 **停用（Disabled）**\ 。

\ **停用（Disabled）：** 不使用亞像素定位。品質最低，但渲染速度最快。

\ **自動（Auto）：** 僅在小字號時使用亞像素定位（具體採用的品質會根據字號大小而變化）。大字號字型將不會使用亞像素定位。這是在效能和畫質之間一個很好的折中方案。

\ **二分之一像素（One Half of a Pixel）：** 無論字號大小，始終執行中等精度的亞像素定位。品質較高，渲染較慢。

\ **四分之一像素（One Quarter of a Pixel）：** 無論字號大小，始終執行高精度的亞像素定位。品質最高，渲染最慢。

\ **自動（像素字型除外）（Auto (Except Pixel Fonts)）：** 對於像素風格的字型（每個字形的輪廓僅包含水平和垂直的直線），使用 **停用**\ ；對於其他字型，則使用 **自動**\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
