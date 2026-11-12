:github_url: hide

.. _class_ResourceImporterLayeredTexture:

ResourceImporterLayeredTexture
==============================

**Hérite de :** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importe une texture en 3 dimensions (:ref:`Texture3D<class_Texture3D>`), un :ref:`Texture2DArray<class_Texture2DArray>`, une :ref:`Cubemap<class_Cubemap>` ou un :ref:`CubemapArray<class_CubemapArray>`.

.. rst-class:: classref-introduction-group

Description
-----------

Cela importe une texture en 3 dimensions, qui peut ensuite être utilisée dans des shaders personnalisés, comme une density map d'un :ref:`FogMaterial<class_FogMaterial>` ou comme un :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`. Voir aussi :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` et :ref:`ResourceImporterTextureAtlas<class_ResourceImporterTextureAtlas>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Importer des images <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/channel_pack<class_ResourceImporterLayeredTexture_property_compress/channel_pack>`           | ``0``     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/hdr_compression<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`     | ``1``     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`compress/high_quality<class_ResourceImporterLayeredTexture_property_compress/high_quality>`           | ``false`` |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/high_quality_mode<class_ResourceImporterLayeredTexture_property_compress/high_quality_mode>` | ``0``     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`compress/lossy_quality<class_ResourceImporterLayeredTexture_property_compress/lossy_quality>`         | ``0.7``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/mode<class_ResourceImporterLayeredTexture_property_compress/mode>`                           | ``1``     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`compress/rdo_quality_loss<class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss>`   | ``0.0``   |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/uastc_level<class_ResourceImporterLayeredTexture_property_compress/uastc_level>`             | ``0``     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`mipmaps/generate<class_ResourceImporterLayeredTexture_property_mipmaps/generate>`                     | ``true``  |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`mipmaps/limit<class_ResourceImporterLayeredTexture_property_mipmaps/limit>`                           | ``-1``    |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`slices/arrangement<class_ResourceImporterLayeredTexture_property_slices/arrangement>`                 | ``1``     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ResourceImporterLayeredTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/channel_pack>`

Controls how color channels should be used in the imported texture.

\ **sRGB Friendly:**, prevents the R and RG color formats from being used, as they do not support nonlinear sRGB encoding.

\ **Optimized:**, allows the RG color format to be used if the texture does not use the blue channel. This reduces memory usage if the texture's blue channel can be discarded (all pixels must have a blue value of ``0``).

\ **Normal Map (RG Channels):** This forces all layers from the texture to be imported with the RG color format, with only the red and green channels preserved. RGTC (Red-Green Texture Compression) compression is able to preserve its detail much better, while using the same amount of memory as a standard RGBA VRAM-compressed texture. This only has an effect on textures with the VRAM Compressed or Basis Universal compression modes. This mode is only available in layered textures (:ref:`Cubemap<class_Cubemap>`, :ref:`CubemapArray<class_CubemapArray>`, :ref:`Texture2DArray<class_Texture2DArray>` and :ref:`Texture3D<class_Texture3D>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`

Controls how VRAM compression should be performed for HDR images.

\ **Disabled:** Never use VRAM compression for HDR textures, regardless of whether they're opaque or transparent. Instead, the texture is converted to RGBE9995 (9-bits per channel + 5-bit exponent = 32 bits per pixel) to reduce memory usage compared to a half-float or single-precision float image format.

\ **Opaque Only:** Only uses VRAM compression for opaque HDR textures. This is due to a limitation of HDR formats, as there is no VRAM-compressed HDR format that supports transparency at the same time.

\ **Always:** Force VRAM compression even for HDR textures with an alpha channel. To perform this, the alpha channel is discarded on import.

\ **Note:** Only effective on Radiance HDR (\ ``.hdr``) and OpenEXR (\ ``.exr``) images.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/high_quality>`

If ``true``, uses BPTC compression on desktop platforms and ASTC compression on mobile platforms. When using BPTC, BC7 is used for SDR textures and BC6H is used for HDR textures.

If ``false``, uses the faster but lower-quality S3TC compression on desktop platforms and ETC2 on mobile/web platforms. When using S3TC, DXT1 (BC1) is used for opaque textures and DXT5 (BC3) is used for transparent or normal map (RGTC) textures.

BPTC and ASTC support VRAM compression for HDR textures, but S3TC and ETC2 do not (see :ref:`compress/hdr_compression<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/high_quality_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/high_quality_mode** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/high_quality_mode>`

Controls the priorities of the VRAM compression when :ref:`compress/high_quality<class_ResourceImporterLayeredTexture_property_compress/high_quality>` is enabled.

\ **Automatic:** Automatically adjusts the quality level based on the number of unique color channels present in the image. For ASTC, this corresponds to picking 8×8 when only one channel is detected (R, L), 6×6 when two channels are detected (RG, LA), and 4×4 in all other cases.

\ **Max Quality:** Prioritizes highest quality over compression. For ASTC, this corresponds to using a 4×4 block size.

\ **Compressed:** Prioritizes some compression over quality. For ASTC, this corresponds to using a 6×6 block size.

\ **Max Compression:** Prioritizes highest compression over quality. For ASTC, this corresponds to using an 8×8 block size.

\ **Note:** Currently, only the ASTC compressor uses this setting. Other compressors will ignore it.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/lossy_quality** = ``0.7`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/lossy_quality>`

The quality to use when using the **Lossy** compression mode. Higher values result in better quality, at the cost of larger file sizes. Lossy quality does not affect memory usage of the imported texture, only its file size on disk.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/mode>`

The compression mode to use. Each compression mode provides a different tradeoff:

\ **Lossless**: Original quality, high memory usage, high size on disk, fast import.

\ **Lossy:** Reduced quality, high memory usage, low size on disk, fast import.

\ **VRAM Compressed:** Reduced quality, low memory usage, low size on disk, slowest import. Only use for textures in 3D scenes, not for 2D elements.

\ **VRAM Uncompressed:** Original quality, high memory usage, highest size on disk, fastest import.

\ **Basis Universal:** Reduced quality, low memory usage, lowest size on disk, slow import. Only use for textures in 3D scenes, not for 2D elements.

See `Compress mode <../tutorials/assets_pipeline/importing_images.html#compress-mode>`__ in the manual for more details.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/rdo_quality_loss** = ``0.0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss>`

If greater than or equal to ``0.01``, enables Rate-Distortion Optimization (RDO) to reduce file size. Higher values result in smaller file sizes but lower quality.

\ **Note:** Enabling RDO makes encoding times significantly longer, especially when the image is large.

See also :ref:`ProjectSettings.rendering/textures/basis_universal/rdo_dict_size<class_ProjectSettings_property_rendering/textures/basis_universal/rdo_dict_size>` and :ref:`ProjectSettings.rendering/textures/basis_universal/zstd_supercompression_level<class_ProjectSettings_property_rendering/textures/basis_universal/zstd_supercompression_level>` if you want to reduce the file size further.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/uastc_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/uastc_level** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/uastc_level>`

The UASTC encoding level. Higher values result in better quality but make encoding times longer.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_mipmaps/generate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mipmaps/generate** = ``true`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_mipmaps/generate>`

If ``true``, smaller versions of the texture are generated on import. For example, a 64×64 texture will generate 6 mipmaps (32×32, 16×16, 8×8, 4×4, 2×2, 1×1). This has several benefits:

- Textures will not become grainy in the distance (in 3D), or if scaled down due to :ref:`Camera2D<class_Camera2D>` zoom or :ref:`CanvasItem<class_CanvasItem>` scale (in 2D).

- Performance will improve if the texture is displayed in the distance, since sampling smaller versions of the original texture is faster and requires less memory bandwidth.

The downside of mipmaps is that they increase memory usage by roughly 33% (for :ref:`Texture2DArray<class_Texture2DArray>`, :ref:`Cubemap<class_Cubemap>` and :ref:`CubemapArray<class_CubemapArray>`) or 14% (for :ref:`Texture3D<class_Texture3D>`).

It's recommended to enable mipmaps in 3D. However, in 2D, this should only be enabled if your project visibly benefits from having mipmaps enabled. If the camera never zooms out significantly, there won't be a benefit to enabling mipmaps but memory usage will increase.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_mipmaps/limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps/limit** = ``-1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_mipmaps/limit>`

Non implémenté. Ceci n'a actuellement aucun effet lorsque modifié.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_slices/arrangement:

.. rst-class:: classref-property

:ref:`int<class_int>` **slices/arrangement** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_slices/arrangement>`

Controls how the cubemap's texture is internally laid out. When using high-resolution cubemaps, **2×3** and **3×2** are less prone to exceeding hardware texture size limits compared to **1×6** and **6×1**.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
