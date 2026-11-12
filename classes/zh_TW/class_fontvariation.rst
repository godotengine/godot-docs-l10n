:github_url: hide

.. _class_FontVariation:

FontVariation
=============

**繼承：** :ref:`Font<class_Font>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

字形的變體，提供額外的設定。

.. rst-class:: classref-introduction-group

說明
----

提供 OpenType 變體，模擬的粗體/斜體，以及 OpenType 特性和額外間距等額外的字型設定。

要使用模擬的粗體變體：


.. tabs::

 .. code-tab:: gdscript

    var fv = FontVariation.new()
    fv.base_font = load("res://BarlowCondensed-Regular.ttf")
    fv.variation_embolden = 1.2
    $Label.add_theme_font_override("font", fv)
    $Label.add_theme_font_size_override("font_size", 64)

 .. code-tab:: csharp

    var fv = new FontVariation();
    fv.SetBaseFont(ResourceLoader.Load<FontFile>("res://BarlowCondensed-Regular.ttf"));
    fv.SetVariationEmbolden(1.2);
    GetNode("Label").AddThemeFontOverride("font", fv);
    GetNode("Label").AddThemeFontSizeOverride("font_size", 64);



要設定多個變體軸的座標：

::

    var fv = FontVariation.new();
    var ts = TextServerManager.get_primary_interface()
    fv.base_font = load("res://BarlowCondensed-Regular.ttf")
    fv.variation_opentype = { ts.name_to_tag("wght"): 900, ts.name_to_tag("custom_hght"): 900 }

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Font<class_Font>`                         | :ref:`base_font<class_FontVariation_property_base_font>`                         |                                   |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`                       | :ref:`baseline_offset<class_FontVariation_property_baseline_offset>`             | ``0.0``                           |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Dictionary<class_Dictionary>`             | :ref:`opentype_features<class_FontVariation_property_opentype_features>`         | ``{}``                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`palette_custom_colors<class_FontVariation_property_palette_custom_colors>` | ``PackedColorArray()``            |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`palette_index<class_FontVariation_property_palette_index>`                 | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`spacing_bottom<class_FontVariation_property_spacing_bottom>`               | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`spacing_glyph<class_FontVariation_property_spacing_glyph>`                 | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`spacing_space<class_FontVariation_property_spacing_space>`                 | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`spacing_top<class_FontVariation_property_spacing_top>`                     | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`                       | :ref:`variation_embolden<class_FontVariation_property_variation_embolden>`       | ``0.0``                           |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                           | :ref:`variation_face_index<class_FontVariation_property_variation_face_index>`   | ``0``                             |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Dictionary<class_Dictionary>`             | :ref:`variation_opentype<class_FontVariation_property_variation_opentype>`       | ``{}``                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>`           | :ref:`variation_transform<class_FontVariation_property_variation_transform>`     | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +-------------------------------------------------+----------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_spacing<class_FontVariation_method_set_spacing>`\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ ) |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_FontVariation_property_base_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **base_font** :ref:`🔗<class_FontVariation_property_base_font>`

.. rst-class:: classref-property-setget

- |void| **set_base_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_base_font**\ (\ )

用於建立變體的基礎字形。如果未設定，則使用預設的 :ref:`Theme<class_Theme>` 字形。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_baseline_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **baseline_offset** = ``0.0`` :ref:`🔗<class_FontVariation_property_baseline_offset>`

.. rst-class:: classref-property-setget

- |void| **set_baseline_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_baseline_offset**\ (\ )

額外的基線偏移（作為字型高度的一部分）。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_opentype_features:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **opentype_features** = ``{}`` :ref:`🔗<class_FontVariation_property_opentype_features>`

.. rst-class:: classref-property-setget

- |void| **set_opentype_features**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_opentype_features**\ (\ )

一組 OpenType 功能標籤。更多資訊：\ `OpenType 功能標籤 <https://docs.microsoft.com/en-us/typography/opentype/spec/featuretags>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_palette_custom_colors:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **palette_custom_colors** = ``PackedColorArray()`` :ref:`🔗<class_FontVariation_property_palette_custom_colors>`

.. rst-class:: classref-property-setget

- |void| **set_palette_custom_colors**\ (\ value\: :ref:`PackedColorArray<class_PackedColorArray>`\ )
- :ref:`PackedColorArray<class_PackedColorArray>` **get_palette_custom_colors**\ (\ )

用於覆蓋預定義調色板的顏色陣列。在特定位置使用 ``Color(0, 0, 0, 0)`` 以保留預定義調色板中的原有顏色。



.. classref_note::

    The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_palette_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **palette_index** = ``0`` :ref:`🔗<class_FontVariation_property_palette_index>`

.. rst-class:: classref-property-setget

- |void| **set_palette_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_palette_index**\ (\ )

一個調色板索引。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_bottom** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

行底部的額外間距，單位為圖元。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_glyph:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_glyph** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_glyph>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

圖形字形之間的額外間距。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_space:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_space** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_space>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

空格字形的額外寬度。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_top** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_top>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

行頂部的額外間距，單位為圖元。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_embolden:

.. rst-class:: classref-property

:ref:`float<class_float>` **variation_embolden** = ``0.0`` :ref:`🔗<class_FontVariation_property_variation_embolden>`

.. rst-class:: classref-property-setget

- |void| **set_variation_embolden**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_variation_embolden**\ (\ )

如果不等於零，則加粗字形輪廓。負值會減小輪廓厚度。

\ **注意：**\ 加粗字形可能有自相交的輪廓，這將阻止 MSDF 字形和 :ref:`TextMesh<class_TextMesh>` 正常工作。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_face_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **variation_face_index** = ``0`` :ref:`🔗<class_FontVariation_property_variation_face_index>`

.. rst-class:: classref-property-setget

- |void| **set_variation_face_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_variation_face_index**\ (\ )

在 TrueType / OpenType 集合檔中的活動字形索引。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_opentype:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **variation_opentype** = ``{}`` :ref:`🔗<class_FontVariation_property_variation_opentype>`

.. rst-class:: classref-property-setget

- |void| **set_variation_opentype**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_variation_opentype**\ (\ )

字型 OpenType 變體座標。詳見：\ `OpenType 變體標籤 <https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxisreg>`__\ 。

\ **注意：**\ 這個 :ref:`Dictionary<class_Dictionary>` 使用 OpenType 標籤作為鍵。變體軸既可以用標籤來標識（\ :ref:`int<class_int>`\ ，例如 ``0x77678674``\ ），也可以用名稱來標識（\ :ref:`String<class_String>`\ ，例如 ``wght``\ ）。有些軸可以通過多個名稱來存取。例如，\ ``wght`` 和 ``weight`` 參照的是同一個軸。而標籤則是唯一的。要在名稱和標籤之間轉換，請使用 :ref:`TextServer.name_to_tag()<class_TextServer_method_name_to_tag>` 和 :ref:`TextServer.tag_to_name()<class_TextServer_method_tag_to_name>`\ 。

\ **注意：**\ 要取得字型的可用變體軸，請使用 :ref:`Font.get_supported_variation_list()<class_Font_method_get_supported_variation_list>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **variation_transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_FontVariation_property_variation_transform>`

.. rst-class:: classref-property-setget

- |void| **set_variation_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_variation_transform**\ (\ )

套用於字形輪廓的 2D 變換，可用於傾斜、翻轉和旋轉字形。

例如，要通過傾斜來類比斜體字形，請套用以下變換 ``Transform2D(1.0, slant, 0.0, 1.0, 0.0, 0.0)``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_FontVariation_method_set_spacing:

.. rst-class:: classref-method

|void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_FontVariation_method_set_spacing>`

將 ``spacing`` 的間距設定為 ``value``\ ，單位為像素（與字型大小無關）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
