:github_url: hide

.. _class_ResourceImporterStreamedTexture:

ResourceImporterStreamedTexture
===============================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Imports an image as a streaming-capable texture for dynamic mipmap loading.

.. rst-class:: classref-introduction-group

Description
-----------

This importer creates :ref:`StreamedTexture2D<class_StreamedTexture2D>` resources that support dynamic mipmap streaming. When texture streaming is enabled in the Project Settings (:ref:`ProjectSettings.rendering/textures/streaming/enabled<class_ProjectSettings_property_rendering/textures/streaming/enabled>`), these textures can have their mipmap levels dynamically loaded and unloaded based on usage, significantly reducing VRAM consumption for projects with many large textures.

The streaming system monitors which textures are visible in each frame and loads appropriate mipmap levels accordingly. Textures that are far from the camera or not currently visible have their higher-resolution mipmap levels unloaded, while textures being displayed up close are loaded at higher resolutions.

For textures that don't need streaming support, use :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` instead.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Descriptions des propriétés
------------------------------------------------------

.. _class_ResourceImporterStreamedTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/channel_pack>`

Controls how color channels should be used in the imported texture.

\ **sRGB Friendly:** Prevents the R and RG color formats from being used, as they do not support nonlinear sRGB encoding.

\ **Optimized:** Allows the RG color format to be used if the texture does not use the blue channel. This reduces memory usage if the texture's blue channel can be discarded (all pixels must have a blue value of ``0``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/hdr_compression>`

Controls how VRAM compression should be performed for HDR images.

\ **Disabled:** Never use VRAM compression for HDR textures, regardless of whether they're opaque or transparent. Instead, the texture is converted to RGBE9995 (9-bits per channel + 5-bit exponent = 32 bits per pixel) to reduce memory usage compared to a half-float or single-precision float image format.

\ **Opaque Only:** Only uses VRAM compression for opaque HDR textures. This is due to a limitation of HDR formats, as there is no VRAM-compressed HDR format that supports transparency at the same time.

\ **Always:** Force VRAM compression even for HDR textures with an alpha channel. To perform this, the alpha channel is discarded on import.

\ **Note:** Only effective on Radiance HDR (\ ``.hdr``) and OpenEXR (\ ``.exr``) images.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/high_quality>`

If ``true``, uses BPTC compression on desktop platforms and ASTC compression on mobile platforms. When using BPTC, BC7 is used for SDR textures and BC6H is used for HDR textures.

If ``false``, uses the faster but lower-quality S3TC compression on desktop platforms and ETC2 on mobile/web platforms. When using S3TC, DXT1 (BC1) is used for opaque textures and DXT5 (BC3) is used for transparent or normal map (RGTC) textures.

BPTC and ASTC support VRAM compression for HDR textures, but S3TC and ETC2 do not (see :ref:`compress/hdr_compression<class_ResourceImporterStreamedTexture_property_compress/hdr_compression>`).

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

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
