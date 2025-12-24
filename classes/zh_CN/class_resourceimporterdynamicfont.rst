:github_url: hide

.. _class_ResourceImporterDynamicFont:

ResourceImporterDynamicFont
===========================

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

导入 TTF、TTC、OTF、OTC、WOFF、WOFF2 字体文件，用于能够适配任何大小的字体渲染。

.. rst-class:: classref-introduction-group

描述
----

与位图字体不同，动态字体可以被调整为任意大小，并且看起来仍然清晰。动态字体还可以选择支持 MSDF 字体渲染，从而允许运行时缩放更改，且没有重新光栅化成本。

虽然 WOFF（尤其是 WOFF2）往往会产生较小的文件大小，但不存在普遍“更好”的字体格式。在大多数情况下，建议使用字体开发人员网站上提供的字体格式。

另请参见 :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>` 和 :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- `动态字体——使用字体 <../tutorials/ui/gui_using_fonts.html#dynamic-fonts>`__

.. rst-class:: classref-reftable-group

属性
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
   | :ref:`int<class_int>`               | :ref:`hinting<class_ResourceImporterDynamicFont_property_hinting>`                                                       | ``1``     |
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

属性说明
--------

.. _class_ResourceImporterDynamicFont_property_allow_system_fallback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_system_fallback** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_allow_system_fallback>`

为 ``true`` 时，如果在该动态字体中找不到字形，则自动使用系统字体作为后备。这使得支持 CJK 字符或表情符号更加简单，因为你不需要在项目中包含 CJK/表情符号字体。另见 :ref:`fallbacks<class_ResourceImporterDynamicFont_property_fallbacks>`\ 。

\ **注意：**\ 系统字体的外观因平台而异。仅 Windows、macOS、Linux、Android 和 iOS 支持加载系统字体。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_antialiasing:

.. rst-class:: classref-property

:ref:`int<class_int>` **antialiasing** = ``1`` :ref:`🔗<class_ResourceImporterDynamicFont_property_antialiasing>`

要使用的字体抗锯齿方法。

\ **禁用：**\ 最适合像素艺术字体，如果字体文件创建良好并且字体以其预期大小的整数倍使用，则你不\ *必*\ 更改默认的\ **灰度**\ 抗锯齿。如果像素艺术字体在其预期大小下外观不佳，请尝试将 :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>` 设置为 **Disabled**\ 。

\ **灰度：**\ 使用灰度抗锯齿。这是 macOS、Android 和 iOS 上的操作系统使用的方法。

\ **LCD 子像素：**\ 使用子像素模式的抗锯齿，使 LCD 显示器上的字体更加清晰。这是 Windows 和大多数 Linux 发行版上的操作系统使用的方法。缺点是这可能会在边缘产生“边缘”，尤其是在不使用标准 RGB 子像素的显示技术上（例如 OLED 显示器）。LCD 子像素布局由 :ref:`ProjectSettings.gui/theme/lcd_subpixel_layout<class_ProjectSettings_property_gui/theme/lcd_subpixel_layout>` 全局控制，这也允许回退到灰度抗锯齿。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_compress>`

如果为 ``true``\ ，则会对得到的字体使用无损压缩。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_embedded_bitmaps** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps>`

如果为 ``true``\ ，则会禁用内嵌字体位图的加载（仅包含位图的字体以及彩色字体会禁用该属性）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterDynamicFont_property_fallbacks>`

如果在该动态字体中找不到字形，则要使用的字体后备列表。首先尝试位于数组开头的字体，最后尝试不支持字形语言和脚本的后备字体（请参阅 :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>` 和 :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`\ ）。另见 :ref:`allow_system_fallback<class_ResourceImporterDynamicFont_property_allow_system_fallback>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_force_autohinter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_autohinter** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_force_autohinter>`

如果为 ``true``\ ，则使用 `FreeType <https://freetype.org/>`__ 的自动提示器强制生成字体的提示数据。这将使 :ref:`hinting<class_ResourceImporterDynamicFont_property_hinting>` 对不包含提示数据的字体有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_generate_mipmaps>`

如果为 ``true``\ ，则该字体将生成 mipmap。这样可以防止文本在 :ref:`Control<class_Control>` 被按比例缩小或从远距离查看 :ref:`Label3D<class_Label3D>` 时看起来有颗粒感（如果 :ref:`Label3D.texture_filter<class_Label3D_property_texture_filter>` 被设置为显示 mipmap 的模式）。

启用 :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>` 会增加字体生成时间和内存使用量。请只在你确实需要时才启用此设置。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_hinting:

.. rst-class:: classref-property

:ref:`int<class_int>` **hinting** = ``1`` :ref:`🔗<class_ResourceImporterDynamicFont_property_hinting>`

要使用的提示模式。这控制在光栅化字体时应如何积极地将字形边缘吸附到像素。根据个人喜好，你可能更喜欢使用一种提示模式而不是另一种。除 **None** 之外的提示模式仅在字体包含提示数据时才有效（请参阅 :ref:`force_autohinter<class_ResourceImporterDynamicFont_property_force_autohinter>`\ ）。

\ **None：**\ 最平滑的外观，这会使字体在小尺寸下看起来模糊。

\ **Light：**\ 通过仅将字形边缘吸附到 Y 轴上的像素来获得清晰的结果。

\ **Full：**\ 通过将字形边缘吸附到 X 轴和 Y 轴上的像素获得最清晰的结果。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_keep_rounding_remainders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_rounding_remainders** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_keep_rounding_remainders>`

如果设置为 ``true``\ ，则将字形与像素边界对齐时会累积舍入余数，确保字形的分布更加均匀。如果启用了次像素定位则该设置无效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_language_support:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **language_support** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_language_support>`

覆盖该字体支持的语言列表。如果留空，则由字体元数据提供。通常无需更改该设置。另见 :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_modulate_color_glyphs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **modulate_color_glyphs** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_modulate_color_glyphs>`

如果设为 ``true``\ ，则绘制彩色字形时会应用颜色调制，否则只会对灰度字形应用。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_msdf_pixel_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_pixel_range** = ``8`` :ref:`🔗<class_ResourceImporterDynamicFont_property_msdf_pixel_range>`

最小和最大可表示的有符号距离之间的形状周围的范围宽度。如果使用字体轮廓，\ :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>` 必须至少设置为最大字体轮廓大小的\ *两倍*\ 。\ :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>` 的默认值为 ``8``\ ，允许大小最大到 ``4`` 的轮廓看起来正确。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_msdf_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_size** = ``48`` :ref:`🔗<class_ResourceImporterDynamicFont_property_msdf_size>`

用于生成 MSDF 纹理的源字体大小。较高的值允许更高的精度，但渲染速度较慢并且需要更多内存。只有当注意到字形渲染中明显缺乏精度时，才增加该属性的值。仅在 :ref:`multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>` 为 ``true`` 时有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multichannel_signed_distance_field** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>`

如果设置为 ``true``\ ，字体将使用多通道带符号距离场（MSDF），任何尺寸都能够进行清晰的渲染。由于这种方法不需要在每次字体大小更改时都对字体进行光栅化，因此可以实时调整字体大小，不会造成任何性能损失。对于按比例缩小的 :ref:`Control<class_Control>`\ （或从远距离查看的 :ref:`Label3D<class_Label3D>`\ ），文本也不会看起来有颗粒感。

MSDF 字体渲染可以与 :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>` 结合使用，从而进一步提高缩小时的字体渲染质量。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_opentype_features:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **opentype_features** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_opentype_features>`

要为这个字体启用、禁用或设值的 OpenType 特性。可以用来启用字体所提供的可选特性，例如合字和备选字形。不同字体所支持的 OpenType 特性列表各有不同。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_oversampling:

.. rst-class:: classref-property

:ref:`float<class_float>` **oversampling** = ``0.0`` :ref:`🔗<class_ResourceImporterDynamicFont_property_oversampling>`

如果设为正数，则会覆盖使用该字体的视口的过采样系数。见 :ref:`Viewport.oversampling<class_Viewport_property_oversampling>`\ 。该值不会覆盖 ``draw_*`` 方法的 ``oversampling`` 参数。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_preload:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **preload** = ``[]`` :ref:`🔗<class_ResourceImporterDynamicFont_property_preload>`

要预渲染的字形范围。这可以避免在游戏过程中需要渲染新角色时出现卡顿，特别是在启用 :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>` 的情况下。使用预加载的缺点是初始项目加载时间会增加，内存使用量也会增加。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_script_support:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **script_support** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_script_support>`

覆盖该字体支持的语言脚本列表。如果留空，则由字体元数据提供。通常无需更改该设置。另见 :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_subpixel_positioning:

.. rst-class:: classref-property

:ref:`int<class_int>` **subpixel_positioning** = ``4`` :ref:`🔗<class_ResourceImporterDynamicFont_property_subpixel_positioning>`

子像素定位可改善字体渲染外观，尤其是在较小的字体大小下。缺点是初始渲染字体需要更多时间，这可能会导致游戏过程中出现卡顿，特别是在使用大字体时。对于具有像素艺术外观的字体，应将其设置为 **Disabled**\ 。

\ **Disabled：**\ 无子像素定位。质量最低，渲染最快。

\ **Auto：**\ 在小字体大小下使用子像素定位（所选质量根据字体大小而变化）。大字体不会使用子像素定位。这是性能和质量之间的良好权衡。

\ **One Half of a Pixel：**\ 无论字体大小如何，始终执行中间子像素定位。质量高，渲染速度慢。

\ **One Quarter of a Pixel：**\ 无论字体大小如何，始终执行精确的子像素定位。质量最高，渲染最慢。

\ **Auto (Except Pixel Fonts)：**\ 像素风字体（字形轮廓中仅包含水平线或垂直线）使用 **Disabled**\ ，其他字体使用 **Auto**\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
