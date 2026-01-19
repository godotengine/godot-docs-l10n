:github_url: hide

.. _class_ResourceImporterTexture:

ResourceImporterTexture
=======================

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

导入图像以用于 2D 或 3D 渲染。

.. rst-class:: classref-introduction-group

描述
----

该导入器导入 :ref:`CompressedTexture2D<class_CompressedTexture2D>` 资源。如果你需要以更方便的方式处理脚本中的图像，请改用 :ref:`ResourceImporterImage<class_ResourceImporterImage>`\ 。另见 :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`导入图像 <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/channel_pack<class_ResourceImporterTexture_property_compress/channel_pack>`                                     | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/hdr_compression<class_ResourceImporterTexture_property_compress/hdr_compression>`                               | ``1``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`compress/high_quality<class_ResourceImporterTexture_property_compress/high_quality>`                                     | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`   | :ref:`compress/lossy_quality<class_ResourceImporterTexture_property_compress/lossy_quality>`                                   | ``0.7``   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>`                                                     | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/normal_map<class_ResourceImporterTexture_property_compress/normal_map>`                                         | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`   | :ref:`compress/rdo_quality_loss<class_ResourceImporterTexture_property_compress/rdo_quality_loss>`                             | ``0.0``   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/uastc_level<class_ResourceImporterTexture_property_compress/uastc_level>`                                       | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`detect_3d/compress_to<class_ResourceImporterTexture_property_detect_3d/compress_to>`                                     | ``1``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`editor/convert_colors_with_editor_theme<class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme>` | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`editor/scale_with_editor_scale<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`                   | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`mipmaps/generate<class_ResourceImporterTexture_property_mipmaps/generate>`                                               | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`mipmaps/limit<class_ResourceImporterTexture_property_mipmaps/limit>`                                                     | ``-1``    |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/channel_remap/alpha<class_ResourceImporterTexture_property_process/channel_remap/alpha>`                         | ``3``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/channel_remap/blue<class_ResourceImporterTexture_property_process/channel_remap/blue>`                           | ``2``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/channel_remap/green<class_ResourceImporterTexture_property_process/channel_remap/green>`                         | ``1``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/channel_remap/red<class_ResourceImporterTexture_property_process/channel_remap/red>`                             | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/fix_alpha_border<class_ResourceImporterTexture_property_process/fix_alpha_border>`                               | ``true``  |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>`                                         | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/hdr_clamp_exposure<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>`                           | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/normal_map_invert_y<class_ResourceImporterTexture_property_process/normal_map_invert_y>`                         | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/premult_alpha<class_ResourceImporterTexture_property_process/premult_alpha>`                                     | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/size_limit<class_ResourceImporterTexture_property_process/size_limit>`                                           | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`roughness/mode<class_ResourceImporterTexture_property_roughness/mode>`                                                   | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`roughness/src_normal<class_ResourceImporterTexture_property_roughness/src_normal>`                                       | ``""``    |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`   | :ref:`svg/scale<class_ResourceImporterTexture_property_svg/scale>`                                                             | ``1.0``   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ResourceImporterTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/channel_pack>`

Controls how color channels should be used in the imported texture.

\ **sRGB Friendly:** Prevents the R and RG color formats from being used, as they do not support nonlinear sRGB encoding.

\ **Optimized:** Allows the RG color format to be used if the texture does not use the blue channel. This reduces memory usage if the texture's blue channel can be discarded (all pixels must have a blue value of ``0``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_compress/hdr_compression>`

控制如何对 HDR 图像执行 VRAM 压缩。

\ **禁用：**\ 永远不要对 HDR 纹理使用 VRAM 压缩，无论它们是否透明。相反，该纹理会被转换为 RGBE9995（每通道 9 位 + 5 位指数 = 每像素 32 位），与半浮点或单精度浮点图像格式相比，会减少内存使用量。

\ **仅不透明：**\ 仅对不透明 HDR 纹理使用 VRAM 压缩。这是由于 HDR 格式的限制，因为没有支持 VRAM 压缩且同时支持透明度的 HDR 格式。

\ **始终：**\ 强制 VRAM 压缩，即使对于具有 Alpha 通道的 HDR 纹理也是如此。为此，在导入时将丢弃 Alpha 通道。

\ **注意：**\ 仅对 Radiance HDR（\ ``.hdr``\ ）和 OpenEXR（\ ``.exr``\ ）图像有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_compress/high_quality>`

如果为 ``true``\ ，则在桌面平台上使用 BPTC 压缩，在移动平台上使用 ASTC 压缩。使用 BPTC 时，BC7 被用于 SDR 纹理，BC6H 被用于 HDR 纹理。

如果为 ``false``\ ，则在桌面平台上使用速度更快但质量较低的 S3TC 压缩，在移动/Web 平台上使用 ETC2。使用 S3TC 时，DXT1 (BC1) 被用于不透明纹理，DXT5 (BC3) 被用于透明或法线贴图（RGTC）纹理。

BPTC 和 ASTC 支持 HDR 纹理的 VRAM 压缩，但 S3TC 和 ETC2 不支持（请参阅 :ref:`compress/hdr_compression<class_ResourceImporterTexture_property_compress/hdr_compression>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/lossy_quality** = ``0.7`` :ref:`🔗<class_ResourceImporterTexture_property_compress/lossy_quality>`

使用\ **有损**\ 压缩模式时使用的质量。值越高，质量越好，但文件大小越大。有损质量不会影响导入纹理的内存使用情况，只会影响它在磁盘上的文件大小。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/mode>`

要使用的压缩模式。每种压缩模式都提供不同的权衡：

\ **无损：**\ 原始质量、高内存占用、高磁盘占用、导入速度快。

\ **有损：**\ 质量降低、高内存占用、低磁盘占用、导入速度快。

\ **VRAM 压缩：**\ 质量降低、低内存占用、低磁盘占用、导入速度最慢。仅适用于 3D 场景中的纹理，不适用于 2D 元素。

\ **VRAM 未压缩：**\ 原始质量、高内存占用、最高磁盘占用、导入速度最快。

\ **Basis Universal：**\ 质量降低、低内存占用、最低磁盘占用、导入速度慢。仅适用于 3D 场景中的纹理，不适用于 2D 元素。

有关更多详细信息，请参阅手册中的 `压缩模式 <../tutorials/assets_pipeline/importing_images.html#compress-mode>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/normal_map:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/normal_map** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/normal_map>`

当使用纹理作为法线贴图时，仅需要红色和绿色通道。鉴于常规纹理压缩算法会产生在法线贴图中看起来不太好的伪像，因此 RGTC 压缩格式最适合该数据。 强制该选项启用将使 Godot 以 RGTC 压缩形式导入图像。默认情况下，它被设置为“检测”。这意味着，如果纹理被检测到用作法线贴图，它将被更改为“启用”并自动重新导入。

请注意，RGTC 压缩会影响生成的法线贴图图像。你必须调整使用法线贴图的蓝色通道的自定义着色器才能考虑到这一点。内置材质着色器已经忽略法线贴图中的蓝色通道（无论实际法线贴图的内容如何）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/rdo_quality_loss:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/rdo_quality_loss** = ``0.0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/rdo_quality_loss>`

如果大于等于 ``0.01``\ ，则会启用率-失真优化（Rate-Distortion Optimization、RDO）来降低文件大小。值越高文件大小越小，但质量也越低。

\ **注意：**\ 启用 RDO 会显著增加编码时间，在图像较大时尤为明显。

如果想要进一步降低文件大小，请参阅 :ref:`ProjectSettings.rendering/textures/basis_universal/rdo_dict_size<class_ProjectSettings_property_rendering/textures/basis_universal/rdo_dict_size>` 和 :ref:`ProjectSettings.rendering/textures/basis_universal/zstd_supercompression_level<class_ProjectSettings_property_rendering/textures/basis_universal/zstd_supercompression_level>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/uastc_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/uastc_level** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/uastc_level>`

UASTC 编码级别。值越高质量越好，但编码耗时更长。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_detect_3d/compress_to:

.. rst-class:: classref-property

:ref:`int<class_int>` **detect_3d/compress_to** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_detect_3d/compress_to>`

这会更改检测到纹理在 3D 中使用时使用的 :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>` 选项。

仅当检测到纹理正在 3D 中使用时，更改该导入选项才会生效。将其更改为\ **禁用**\ ，然后重新导入不会更改纹理上的已有压缩模式（如果被检测到在 3D 中使用），但选择 **VRAM 压缩**\ 或 **Basis Universal** 却会。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor/convert_colors_with_editor_theme** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme>`

如果为 ``true``\ ，则转换导入图像的颜色以匹配 :ref:`EditorSettings.interface/theme/icon_and_font_color<class_EditorSettings_property_interface/theme/icon_and_font_color>`\ 。这假设该图像使用与 :doc:`Godot 自己的编辑器图标调色板 <../engine_details/editor/creating_icons>`\ 完全相同的颜色，源文件是为深色编辑器主题设计的。应该为编辑器插件图标和自定义类图标启用该功能，否则应保持禁用状态。

\ **注意：**\ 仅适用于 SVG 图像。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_editor/scale_with_editor_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor/scale_with_editor_scale** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`

如果为 ``true``\ ，则缩放导入的图像以匹配 :ref:`EditorSettings.interface/editor/custom_display_scale<class_EditorSettings_property_interface/editor/custom_display_scale>`\ 。应该为编辑器插件图标和自定义类图标启用该功能，否则应保持禁用状态。

\ **注意：**\ 仅适用于 SVG 图像。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_mipmaps/generate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mipmaps/generate** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_mipmaps/generate>`

如果为 ``true``\ ，则在导入时生成较小版本的纹理。例如，64×64 纹理将生成 6 个多级渐远纹理（32×32、16×16、8×8、4×4、2×2、1×1）。这样做有几个好处：

- 纹理在远处（在 3D 中）或由于 :ref:`Camera2D<class_Camera2D>` 缩放或 :ref:`CanvasItem<class_CanvasItem>` 缩放（在 2D 中）而缩小时不会变得具有颗粒感。

- 如果纹理显示在远处，性能将会提高，因为对原始纹理的较小版本进行采样速度更快并且需要更少的内存带宽。

多级渐远纹理的缺点是它们会增加大约 33% 的内存占用。

建议在 3D 中启用多级渐远纹理。但是，在 2D 中，仅当你的项目明显受益于启用多级渐远纹理时才应启用该功能。如果相机从不大幅缩小，启用多级渐远纹理不会有任何好处，但内存占用会增加。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_mipmaps/limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps/limit** = ``-1`` :ref:`🔗<class_ResourceImporterTexture_property_mipmaps/limit>`

未实现。目前，更改后没有效果。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/alpha:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/alpha** = ``3`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/alpha>`

指定输出图像 Alpha 通道的数据源。

\ **Red：**\ 使用源图像中红色通道的值。

\ **Green：**\ 使用源图像中绿色通道的值。

\ **Blue：**\ 使用源图像中蓝色通道的值。

\ **Alpha：**\ 使用源图像中 Alpha 通道的值。

\ **Red Inverted：**\ 使用源图像中红色通道反转后的值（\ ``1.0 - R``\ ）。

\ **Green Inverted：**\ 使用源图像中绿色通道反转后的值（\ ``1.0 - G``\ ）。

\ **Blue Inverted：**\ 使用源图像中蓝色通道反转后的值（\ ``1.0 - B``\ ）。

\ **Alpha Inverted：**\ 使用源图像中 Alpha 通道反转后的值（\ ``1.0 - A``\ ）。

\ **Unused：**\ 将颜色通道的值设为默认值（Alpha 通道为 ``1.0``\ ，红绿蓝通道为 ``0.0``\ ）。

\ **Zero：**\ 将颜色通道的值设为 ``0.0``\ 。

\ **One：**\ 将颜色通道的值设为 ``1.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/blue:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/blue** = ``2`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/blue>`

指定输出图像蓝色通道的数据源。

\ **Red：**\ 使用源图像中红色通道的值。

\ **Green：**\ 使用源图像中绿色通道的值。

\ **Blue：**\ 使用源图像中蓝色通道的值。

\ **Alpha：**\ 使用源图像中 Alpha 通道的值。

\ **Red Inverted：**\ 使用源图像中红色通道反转后的值（\ ``1.0 - R``\ ）。

\ **Green Inverted：**\ 使用源图像中绿色通道反转后的值（\ ``1.0 - G``\ ）。

\ **Blue Inverted：**\ 使用源图像中蓝色通道反转后的值（\ ``1.0 - B``\ ）。

\ **Alpha Inverted：**\ 使用源图像中 Alpha 通道反转后的值（\ ``1.0 - A``\ ）。

\ **Unused：**\ 将颜色通道的值设为默认值（Alpha 通道为 ``1.0``\ ，红绿蓝通道为 ``0.0``\ ）。

\ **Zero：**\ 将颜色通道的值设为 ``0.0``\ 。

\ **One：**\ 将颜色通道的值设为 ``1.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/green:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/green** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/green>`

指定输出图像绿色通道的数据源。

\ **Red：**\ 使用源图像中红色通道的值。

\ **Green：**\ 使用源图像中绿色通道的值。

\ **Blue：**\ 使用源图像中蓝色通道的值。

\ **Alpha：**\ 使用源图像中 Alpha 通道的值。

\ **Red Inverted：**\ 使用源图像中红色通道反转后的值（\ ``1.0 - R``\ ）。

\ **Green Inverted：**\ 使用源图像中绿色通道反转后的值（\ ``1.0 - G``\ ）。

\ **Blue Inverted：**\ 使用源图像中蓝色通道反转后的值（\ ``1.0 - B``\ ）。

\ **Alpha Inverted：**\ 使用源图像中 Alpha 通道反转后的值（\ ``1.0 - A``\ ）。

\ **Unused：**\ 将颜色通道的值设为默认值（Alpha 通道为 ``1.0``\ ，红绿蓝通道为 ``0.0``\ ）。

\ **Zero：**\ 将颜色通道的值设为 ``0.0``\ 。

\ **One：**\ 将颜色通道的值设为 ``1.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/red:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/red** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/red>`

指定输出图像红色通道的数据源。

\ **Red：**\ 使用源图像中红色通道的值。

\ **Green：**\ 使用源图像中绿色通道的值。

\ **Blue：**\ 使用源图像中蓝色通道的值。

\ **Alpha：**\ 使用源图像中 Alpha 通道的值。

\ **Red Inverted：**\ 使用源图像中红色通道反转后的值（\ ``1.0 - R``\ ）。

\ **Green Inverted：**\ 使用源图像中绿色通道反转后的值（\ ``1.0 - G``\ ）。

\ **Blue Inverted：**\ 使用源图像中蓝色通道反转后的值（\ ``1.0 - B``\ ）。

\ **Alpha Inverted：**\ 使用源图像中 Alpha 通道反转后的值（\ ``1.0 - A``\ ）。

\ **Unused：**\ 将颜色通道的值设为默认值（Alpha 通道为 ``1.0``\ ，红绿蓝通道为 ``0.0``\ ）。

\ **Zero：**\ 将颜色通道的值设为 ``0.0``\ 。

\ **One：**\ 将颜色通道的值设为 ``1.0``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/fix_alpha_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/fix_alpha_border** = ``true`` :ref:`🔗<class_ResourceImporterTexture_property_process/fix_alpha_border>`

如果为 ``true``\ ，则将相同周围颜色的像素置于从透明区域到不透明区域的过渡中。对于使用双线性过滤显示的纹理，这有助于减轻从图像编辑器导出图像时的轮廓效果。

建议启用该功能（默认情况下），除非这会导致特定图像出现问题。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/hdr_as_srgb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/hdr_as_srgb** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/hdr_as_srgb>`

Some HDR images you can find online may be broken and contain data that is encoded using the nonlinear sRGB transfer function (instead of using linear encoding). It is advised not to use those files. If you absolutely have to, enabling :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>` will make them look correct.

\ **Warning:** Enabling :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>` on well-formatted HDR images will cause the resulting image to look too dark, so leave this on ``false`` if unsure.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/hdr_clamp_exposure:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/hdr_clamp_exposure** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>`

如果为 ``true``\ ，则使用智能钳制公式钳制导入的高动态范围图像中的曝光（而不引入\ *可见的*\ 裁剪）。

你在网上可以找到的一些 HDR 全景图像可能包含非常明亮的像素，因为这些图像取自现实生活来源，没有任何裁剪。

虽然这些 HDR 全景图像准确反映现实生活，但这可能会导致 Godot 生成的辐射率贴图在用作背景天空时包含闪光。这可以在材质反射中看到（即使在极端情况下的粗糙材质上）。启用 :ref:`process/hdr_clamp_exposure<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>` 可以解决该问题。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/normal_map_invert_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/normal_map_invert_y** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/normal_map_invert_y>`

**已弃用：** The same result can be achieved by setting :ref:`process/channel_remap/green<class_ResourceImporterTexture_property_process/channel_remap/green>` to ``Green Inverted``.

如果为 ``true``\ ，则通过反转其绿色通道将法线贴图从 Y-（DirectX 风格）转换为 Y+（OpenGL 风格）。这是 Godot 所期望的法线贴图约定。

有关法线贴图（包括流行引擎的坐标顺序表）的更多信息，可以在\ `这里 <http://wiki.polycount.com/wiki/Normal_Map_Technical_Details>`__\ 找到。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/premult_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/premult_alpha** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/premult_alpha>`

使用 :ref:`process/fix_alpha_border<class_ResourceImporterTexture_property_process/fix_alpha_border>` 修复黑色边框的另一种方法是使用预乘 Alpha。通过启用该选项，纹理将被转换为该格式。预乘 Alpha 纹理需要特定材质才能正确显示：

- 在 2D 中，需要创建并配置 :ref:`CanvasItemMaterial<class_CanvasItemMaterial>`\ ，以便在使用该纹理的 :ref:`CanvasItem<class_CanvasItem>` 上使用 :ref:`CanvasItemMaterial.BLEND_MODE_PREMULT_ALPHA<class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA>` 混合模式。在自定义 ``@canvas_item`` 着色器中应使用 ``render_mode blend_premul_alpha;``\ 。

- 在 3D 中，需要创建并配置 :ref:`BaseMaterial3D<class_BaseMaterial3D>`\ ，以便在使用该纹理的材质上使用 :ref:`BaseMaterial3D.BLEND_MODE_PREMULT_ALPHA<class_BaseMaterial3D_constant_BLEND_MODE_PREMULT_ALPHA>` 混合模式。在自定义 ``spatial`` 着色器中应使用 ``render_mode blend_premul_alpha;``\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/size_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/size_limit** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_process/size_limit>`

如果设为大于 ``0`` 的值，则导入时会将纹理的大小限制为小于等于此处指定的值。如果不是正方形纹理，则大小限制影响的是长边，短边会保持纵横比缩放。调整大小时使用三次插值。

可用于在不影响源图像的前提下减少内存占用，也可用于避免纹理在移动/Web 平台上不显示的问题（因为这些平台通常无法显示大于 4096×4096 的纹理）。

\ **注意：**\ 由于技术原因，即便设置为 ``0``\ ，导入的大小也会受到以下大小的限制。根据 :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>` 的不同，导入时如果必要，会对纹理进行缩小采样：

- **Lossy：**\ 宽度或高度限制到 16383 像素，以长边为准；

- **Basis Universal：**\ 宽度或高度限制到 16384 像素，以长边为准；

- **All other modes：**\ 宽度或高度限制到 32768 像素，以长边为准。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_roughness/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **roughness/mode** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_roughness/mode>`

将该纹理视为粗糙度贴图的颜色通道。仅当 :ref:`roughness/src_normal<class_ResourceImporterTexture_property_roughness/src_normal>` 不为空时才有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_roughness/src_normal:

.. rst-class:: classref-property

:ref:`String<class_String>` **roughness/src_normal** = ``""`` :ref:`🔗<class_ResourceImporterTexture_property_roughness/src_normal>`

纹理的路径被视为导入时粗糙度过滤的法线贴图。指定该项有助于稍微减少 3D 中的镜面锯齿。

导入时的粗糙度过滤仅被用于 3D 渲染，不适用于 2D。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_svg/scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **svg/scale** = ``1.0`` :ref:`🔗<class_ResourceImporterTexture_property_svg/scale>`

SVG 应渲染的比例，\ ``1.0`` 是原始设计尺寸。值越高，图像越大。请注意，与字体过采样不同，这会影响 SVG 在 2D 中渲染的大小。另见 :ref:`editor/scale_with_editor_scale<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`\ 。

\ **注意：**\ 仅适用于 SVG 图像。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
