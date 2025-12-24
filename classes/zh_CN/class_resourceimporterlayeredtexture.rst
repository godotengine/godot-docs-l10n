:github_url: hide

.. _class_ResourceImporterLayeredTexture:

ResourceImporterLayeredTexture
==============================

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

导入 3 维纹理（\ :ref:`Texture3D<class_Texture3D>`\ ）、\ :ref:`Texture2DArray<class_Texture2DArray>`\ 、\ :ref:`Cubemap<class_Cubemap>` 或 :ref:`CubemapArray<class_CubemapArray>`\ 。

.. rst-class:: classref-introduction-group

描述
----

这会导入一个三维纹理，然后可以在自定义着色器中将其用作 :ref:`FogMaterial<class_FogMaterial>` 密度图或 :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`\ 。另请参见 :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` 和 :ref:`ResourceImporterTextureAtlas<class_ResourceImporterTextureAtlas>`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`导入图像 <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/channel_pack<class_ResourceImporterLayeredTexture_property_compress/channel_pack>`         | ``0``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/hdr_compression<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`   | ``1``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`compress/high_quality<class_ResourceImporterLayeredTexture_property_compress/high_quality>`         | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`compress/lossy_quality<class_ResourceImporterLayeredTexture_property_compress/lossy_quality>`       | ``0.7``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/mode<class_ResourceImporterLayeredTexture_property_compress/mode>`                         | ``1``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`compress/rdo_quality_loss<class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss>` | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/uastc_level<class_ResourceImporterLayeredTexture_property_compress/uastc_level>`           | ``0``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`mipmaps/generate<class_ResourceImporterLayeredTexture_property_mipmaps/generate>`                   | ``true``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`mipmaps/limit<class_ResourceImporterLayeredTexture_property_mipmaps/limit>`                         | ``-1``    |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`slices/arrangement<class_ResourceImporterLayeredTexture_property_slices/arrangement>`               | ``1``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ResourceImporterLayeredTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/channel_pack>`

控制在导入的纹理中应如何使用颜色通道。

\ **sRGB 友好：**\ 阻止使用 RG 颜色格式，因为它不支持 sRGB 颜色。

\ **优化：**\ 如果纹理不使用蓝色通道，则允许使用 RG 颜色格式。如果可以丢弃纹理的蓝色通道（所有像素的蓝色值必须为 ``0``\ ），则可以减少内存使用量。

\ **法线贴图（RG 通道）：**\ 这会强制使用 RG 颜色格式导入纹理中的所有图层，仅保留红色和绿色通道。RGTC（红绿纹理压缩）压缩能够更好地保留细节，同时使用与标准 RGBA VRAM 压缩纹理相同的内存量。这仅对具有 VRAM 压缩或 Basis Universal 压缩模式的纹理有影响。该模式仅适用于分层纹理（\ :ref:`Cubemap<class_Cubemap>`\ 、\ :ref:`CubemapArray<class_CubemapArray>`\ 、\ :ref:`Texture2DArray<class_Texture2DArray>` 和 :ref:`Texture3D<class_Texture3D>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`

控制如何对 HDR 图像执行 VRAM 压缩。

\ **禁用：**\ 永远不要对 HDR 纹理使用 VRAM 压缩，无论它们是否透明。相反，该纹理会被转换为 RGBE9995（每通道 9 位 + 5 位指数 = 每像素 32 位），与半浮点或单精度浮点图像格式相比，会减少内存使用量。

\ **仅不透明：**\ 仅对不透明 HDR 纹理使用 VRAM 压缩。这是由于 HDR 格式的限制，因为没有支持 VRAM 压缩且同时支持透明度的 HDR 格式。

\ **始终：**\ 强制 VRAM 压缩，即使对于具有 Alpha 通道的 HDR 纹理也是如此。为此，在导入时将丢弃 Alpha 通道。

\ **注意：**\ 仅对 Radiance HDR（\ ``.hdr``\ ）和 OpenEXR（\ ``.exr``\ ）图像有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/high_quality>`

如果为 ``true``\ ，则在桌面平台上使用 BPTC 压缩，在移动平台上使用 ASTC 压缩。使用 BPTC 时，BC7 被用于 SDR 纹理，BC6H 被用于 HDR 纹理。

如果为 ``false``\ ，则在桌面平台上使用速度更快但质量较低的 S3TC 压缩，在移动/Web 平台上使用 ETC2。使用 S3TC 时，DXT1 (BC1) 被用于不透明纹理，DXT5 (BC3) 被用于透明或法线贴图（RGTC）纹理。

BPTC 和 ASTC 支持 HDR 纹理的 VRAM 压缩，但 S3TC 和 ETC2 不支持（请参阅 :ref:`compress/hdr_compression<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/lossy_quality** = ``0.7`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/lossy_quality>`

使用\ **有损**\ 压缩模式时使用的质量。值越高，质量越好，但文件大小越大。有损质量不会影响导入纹理的内存使用情况，只会影响它在磁盘上的文件大小。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/mode>`

要使用的压缩模式。每种压缩模式都提供不同的权衡：

\ **无损：**\ 原始质量、高内存占用、高磁盘占用、导入速度快。

\ **有损：**\ 质量降低、高内存占用、低磁盘占用、导入速度快。

\ **VRAM 压缩：**\ 质量降低、低内存占用、低磁盘占用、导入速度最慢。仅适用于 3D 场景中的纹理，不适用于 2D 元素。

\ **VRAM 未压缩：**\ 原始质量、高内存占用、最高磁盘占用、导入速度最快。

\ **Basis Universal：**\ 质量降低、低内存占用、最低磁盘占用、导入速度慢。仅适用于 3D 场景中的纹理，不适用于 2D 元素。

有关更多详细信息，请参阅手册中的 `压缩模式 <../tutorials/assets_pipeline/importing_images.html#compress-mode>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/rdo_quality_loss** = ``0.0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss>`

如果大于等于 ``0.01``\ ，则会启用率-失真优化（Rate-Distortion Optimization、RDO）来降低文件大小。值越高文件大小越小，但质量也越低。

\ **注意：**\ 启用 RDO 会显著增加编码时间，在图像较大时尤为明显。

如果想要进一步降低文件大小，请参阅 :ref:`ProjectSettings.rendering/textures/basis_universal/rdo_dict_size<class_ProjectSettings_property_rendering/textures/basis_universal/rdo_dict_size>` 和 :ref:`ProjectSettings.rendering/textures/basis_universal/zstd_supercompression_level<class_ProjectSettings_property_rendering/textures/basis_universal/zstd_supercompression_level>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/uastc_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/uastc_level** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/uastc_level>`

UASTC 编码级别。值越高质量越好，但编码耗时更长。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_mipmaps/generate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mipmaps/generate** = ``true`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_mipmaps/generate>`

如果为 ``true``\ ，则在导入时生成较小版本的纹理。例如，64×64 纹理将生成 6 个多级渐远纹理（32×32、16×16、8×8、4×4、2×2、1×1）。这样做有几个好处：

- 纹理在远处（3D 中）或由于 :ref:`Camera2D<class_Camera2D>` 缩放或 :ref:`CanvasItem<class_CanvasItem>` 缩放（2D 中）而缩小时不会变得具有颗粒感。

- 如果纹理显示在远处，性能将会提高，因为对原始纹理的较小版本进行采样速度更快并且需要更少的内存带宽。

多级渐远纹理的缺点是它们使内存占用增加大约 33%（对于 :ref:`Texture2DArray<class_Texture2DArray>`\ 、\ :ref:`Cubemap<class_Cubemap>` 和 :ref:`CubemapArray<class_CubemapArray>`\ ）或 14%（对于 :ref:`Texture3D<class_Texture3D>`\ ）。

建议在 3D 中启用多级渐远纹理。但是，在 2D 中，仅当你的项目明显受益于启用多级渐远纹理 时才应启用该功能。如果相机从不大幅缩小，启用多级渐远纹理不会有任何好处，但内存占用会增加。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_mipmaps/limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps/limit** = ``-1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_mipmaps/limit>`

未实现。目前，更改后没有效果。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_slices/arrangement:

.. rst-class:: classref-property

:ref:`int<class_int>` **slices/arrangement** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_slices/arrangement>`

控制立方体贴图纹理的内部布局方式。使用高分辨率立方体贴图时，与 **1×6** 和 **6×1** 相比，\ **2×3** and **3×2** 不太容易超出硬件纹理大小限制。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
