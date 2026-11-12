:github_url: hide

.. _class_ResourceImporterStreamedTexture:

ResourceImporterStreamedTexture
===============================

**实验性：** This class may be changed or removed in future versions.

**继承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Imports an image as a streaming-capable texture for dynamic mipmap loading.

.. rst-class:: classref-introduction-group

描述
----

This importer creates :ref:`StreamedTexture2D<class_StreamedTexture2D>` resources that support dynamic mipmap streaming. When texture streaming is enabled in the Project Settings (:ref:`ProjectSettings.rendering/textures/streaming/enabled<class_ProjectSettings_property_rendering/textures/streaming/enabled>`), these textures can have their mipmap levels dynamically loaded and unloaded based on usage, significantly reducing VRAM consumption for projects with many large textures.

The streaming system monitors which textures are visible in each frame and loads appropriate mipmap levels accordingly. Textures that are far from the camera or not currently visible have their higher-resolution mipmap levels unloaded, while textures being displayed up close are loaded at higher resolutions.

For textures that don't need streaming support, use :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` instead.

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/channel_pack<class_ResourceImporterStreamedTexture_property_compress/channel_pack>`           | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/hdr_compression<class_ResourceImporterStreamedTexture_property_compress/hdr_compression>`     | ``1``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`compress/high_quality<class_ResourceImporterStreamedTexture_property_compress/high_quality>`           | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/normal_map<class_ResourceImporterStreamedTexture_property_compress/normal_map>`               | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`roughness/mode<class_ResourceImporterStreamedTexture_property_roughness/mode>`                         | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`roughness/src_normal<class_ResourceImporterStreamedTexture_property_roughness/src_normal>`             | ``""``    |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`streaming/max_lod_override<class_ResourceImporterStreamedTexture_property_streaming/max_lod_override>` | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`streaming/min_lod_override<class_ResourceImporterStreamedTexture_property_streaming/min_lod_override>` | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_ResourceImporterStreamedTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/channel_pack>`

控制在导入的纹理中应如何使用颜色通道。

\ **sRGB 友好：**\ 阻止使用 R 和 RG 颜色格式，因为它们不支持非线性 sRGB 编码。

\ **优化：**\ 如果纹理不使用蓝色通道，则允许使用 RG 颜色格式。如果可以丢弃纹理的蓝色通道（所有像素的蓝色值必须为 ``0``\ ），则可以减少内存占用。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/hdr_compression>`

控制如何对 HDR 图像执行 VRAM 压缩。

\ **禁用：**\ 永远不要对 HDR 纹理使用 VRAM 压缩，无论它们是否透明。相反，该纹理会被转换为 RGBE9995（每通道 9 位 + 5 位指数 = 每像素 32 位），与半浮点或单精度浮点图像格式相比，会减少内存使用量。

\ **仅不透明：**\ 仅对不透明 HDR 纹理使用 VRAM 压缩。这是由于 HDR 格式的限制，因为没有支持 VRAM 压缩且同时支持透明度的 HDR 格式。

\ **始终：**\ 强制 VRAM 压缩，即使对于具有 Alpha 通道的 HDR 纹理也是如此。为此，在导入时将丢弃 Alpha 通道。

\ **注意：**\ 仅对 Radiance HDR（\ ``.hdr``\ ）和 OpenEXR（\ ``.exr``\ ）图像有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/high_quality>`

如果为 ``true``\ ，则在桌面平台上使用 BPTC 压缩，在移动平台上使用 ASTC 压缩。使用 BPTC 时，BC7 被用于 SDR 纹理，BC6H 被用于 HDR 纹理。

如果为 ``false``\ ，则在桌面平台上使用速度更快但质量较低的 S3TC 压缩，在移动/Web 平台上使用 ETC2。使用 S3TC 时，DXT1 (BC1) 被用于不透明纹理，DXT5 (BC3) 被用于透明或法线贴图（RGTC）纹理。

BPTC 和 ASTC 支持 HDR 纹理的 VRAM 压缩，但 S3TC 和 ETC2 不支持（请参阅 :ref:`compress/hdr_compression<class_ResourceImporterStreamedTexture_property_compress/hdr_compression>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_compress/normal_map:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/normal_map** = ``0`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/normal_map>`

When using a texture as normal map, only the red and green channels are required. Given regular texture compression algorithms produce artifacts that don't look that nice in normal maps, the RGTC compression format is the best fit for this data. Forcing this option to Enable will make Godot import the image as RGTC compressed. By default, it's set to Detect. This means that if the texture is ever detected to be used as a normal map, it will be changed to Enable and reimported automatically.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_roughness/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **roughness/mode** = ``0`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_roughness/mode>`

The color channel to consider as a roughness map in this texture. Only effective if Roughness > Src Normal is not empty.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_roughness/src_normal:

.. rst-class:: classref-property

:ref:`String<class_String>` **roughness/src_normal** = ``""`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_roughness/src_normal>`

The path to the texture to consider as a normal map for roughness filtering on import. Specifying this can help decrease specular aliasing slightly in 3D.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_streaming/max_lod_override:

.. rst-class:: classref-property

:ref:`int<class_int>` **streaming/max_lod_override** = ``0`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_streaming/max_lod_override>`

The maximum LOD (mipmap level) that can be loaded for this texture. Lower values allow higher resolution. A value of ``0`` uses the global setting from :ref:`ProjectSettings.rendering/textures/streaming/max_lod<class_ProjectSettings_property_rendering/textures/streaming/max_lod>`. Values ``1`` to ``14`` correspond to LOD levels ``0`` to ``13``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_streaming/min_lod_override:

.. rst-class:: classref-property

:ref:`int<class_int>` **streaming/min_lod_override** = ``0`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_streaming/min_lod_override>`

The minimum LOD (mipmap level) the texture starts at when loaded. Higher values result in lower initial resolution. A value of ``0`` uses the global setting from :ref:`ProjectSettings.rendering/textures/streaming/min_lod<class_ProjectSettings_property_rendering/textures/streaming/min_lod>`. Values ``1`` to ``14`` correspond to LOD levels ``0`` to ``13``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
