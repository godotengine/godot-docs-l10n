:github_url: hide

.. _class_FontVariation:

FontVariation
=============

**继承：** :ref:`Font<class_Font>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

字体的变体，提供额外的设置。

.. rst-class:: classref-introduction-group

描述
----

提供 OpenType 变体，模拟的粗体/斜体，以及 OpenType 特性和额外间距等额外的字体设置。

要使用模拟的粗体变体：


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



要设置多个变体轴的坐标：

::

    var fv = FontVariation.new();
    var ts = TextServerManager.get_primary_interface()
    fv.base_font = load("res://BarlowCondensed-Regular.ttf")
    fv.variation_opentype = { ts.name_to_tag("wght"): 900, ts.name_to_tag("custom_hght"): 900 }

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Font<class_Font>`               | :ref:`base_font<class_FontVariation_property_base_font>`                       |                                   |
   +---------------------------------------+--------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`baseline_offset<class_FontVariation_property_baseline_offset>`           | ``0.0``                           |
   +---------------------------------------+--------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`opentype_features<class_FontVariation_property_opentype_features>`       | ``{}``                            |
   +---------------------------------------+--------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`spacing_bottom<class_FontVariation_property_spacing_bottom>`             | ``0``                             |
   +---------------------------------------+--------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`spacing_glyph<class_FontVariation_property_spacing_glyph>`               | ``0``                             |
   +---------------------------------------+--------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`spacing_space<class_FontVariation_property_spacing_space>`               | ``0``                             |
   +---------------------------------------+--------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`spacing_top<class_FontVariation_property_spacing_top>`                   | ``0``                             |
   +---------------------------------------+--------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`float<class_float>`             | :ref:`variation_embolden<class_FontVariation_property_variation_embolden>`     | ``0.0``                           |
   +---------------------------------------+--------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`variation_face_index<class_FontVariation_property_variation_face_index>` | ``0``                             |
   +---------------------------------------+--------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`variation_opentype<class_FontVariation_property_variation_opentype>`     | ``{}``                            |
   +---------------------------------------+--------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`variation_transform<class_FontVariation_property_variation_transform>`   | ``Transform2D(1, 0, 0, 1, 0, 0)`` |
   +---------------------------------------+--------------------------------------------------------------------------------+-----------------------------------+

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

属性说明
--------

.. _class_FontVariation_property_base_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **base_font** :ref:`🔗<class_FontVariation_property_base_font>`

.. rst-class:: classref-property-setget

- |void| **set_base_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_base_font**\ (\ )

用于创建变体的基础字体。如果未设置，则使用默认的 :ref:`Theme<class_Theme>` 字体。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_baseline_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **baseline_offset** = ``0.0`` :ref:`🔗<class_FontVariation_property_baseline_offset>`

.. rst-class:: classref-property-setget

- |void| **set_baseline_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_baseline_offset**\ (\ )

额外的基线偏移（作为字体高度的一部分）。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_opentype_features:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **opentype_features** = ``{}`` :ref:`🔗<class_FontVariation_property_opentype_features>`

.. rst-class:: classref-property-setget

- |void| **set_opentype_features**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_opentype_features**\ (\ )

一组 OpenType 功能标签。更多信息：\ `OpenType 功能标签 <https://docs.microsoft.com/en-us/typography/opentype/spec/featuretags>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_bottom** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

行底部的额外间距，单位为像素。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_glyph:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_glyph** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_glyph>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

图形字形之间的额外间距。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_space:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_space** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_space>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

空格字形的额外宽度。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_spacing_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **spacing_top** = ``0`` :ref:`🔗<class_FontVariation_property_spacing_top>`

.. rst-class:: classref-property-setget

- |void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spacing**\ (\ )

行顶部的额外间距，单位为像素。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_embolden:

.. rst-class:: classref-property

:ref:`float<class_float>` **variation_embolden** = ``0.0`` :ref:`🔗<class_FontVariation_property_variation_embolden>`

.. rst-class:: classref-property-setget

- |void| **set_variation_embolden**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_variation_embolden**\ (\ )

如果不等于零，则加粗字体轮廓。负值会减小轮廓厚度。

\ **注意：**\ 加粗字体可能有自相交的轮廓，这将阻止 MSDF 字体和 :ref:`TextMesh<class_TextMesh>` 正常工作。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_face_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **variation_face_index** = ``0`` :ref:`🔗<class_FontVariation_property_variation_face_index>`

.. rst-class:: classref-property-setget

- |void| **set_variation_face_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_variation_face_index**\ (\ )

在 TrueType / OpenType 集合文件中的活动字体索引。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_opentype:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **variation_opentype** = ``{}`` :ref:`🔗<class_FontVariation_property_variation_opentype>`

.. rst-class:: classref-property-setget

- |void| **set_variation_opentype**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_variation_opentype**\ (\ )

字体 OpenType 变体坐标。详见：\ `OpenType 变体标签 <https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxisreg>`__\ 。

\ **注意：**\ 这个 :ref:`Dictionary<class_Dictionary>` 使用 OpenType 标签作为键。变体轴既可以用标签来标识（\ :ref:`int<class_int>`\ ，例如 ``0x77678674``\ ），也可以用名称来标识（\ :ref:`String<class_String>`\ ，例如 ``wght``\ ）。有些轴可以通过多个名称来访问。例如，\ ``wght`` 和 ``weight`` 引用的是同一个轴。而标签则是唯一的。要在名称和标签之间转换，请使用 :ref:`TextServer.name_to_tag()<class_TextServer_method_name_to_tag>` 和 :ref:`TextServer.tag_to_name()<class_TextServer_method_tag_to_name>`\ 。

\ **注意：**\ 要获取字体的可用变体轴，请使用 :ref:`Font.get_supported_variation_list()<class_Font_method_get_supported_variation_list>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FontVariation_property_variation_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **variation_transform** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_FontVariation_property_variation_transform>`

.. rst-class:: classref-property-setget

- |void| **set_variation_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_variation_transform**\ (\ )

应用于字体轮廓的 2D 变换，可用于倾斜、翻转和旋转字形。

例如，要通过倾斜来模拟斜体字体，请应用以下变换 ``Transform2D(1.0, slant, 0.0, 1.0, 0.0, 0.0)``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_FontVariation_method_set_spacing:

.. rst-class:: classref-method

|void| **set_spacing**\ (\ spacing\: :ref:`SpacingType<enum_TextServer_SpacingType>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_FontVariation_method_set_spacing>`

将 ``spacing`` 的间距设置为 ``value``\ ，单位为像素（与字体大小无关）。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
