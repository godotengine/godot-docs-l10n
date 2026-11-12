:github_url: hide

.. _class_ResourceImporterStreamedTexture:

ResourceImporterStreamedTexture
===============================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Imports an image as a streaming-capable texture for dynamic mipmap loading.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This importer creates :ref:`StreamedTexture2D<class_StreamedTexture2D>` resources that support dynamic mipmap streaming. When texture streaming is enabled in the Project Settings (:ref:`ProjectSettings.rendering/textures/streaming/enabled<class_ProjectSettings_property_rendering/textures/streaming/enabled>`), these textures can have their mipmap levels dynamically loaded and unloaded based on usage, significantly reducing VRAM consumption for projects with many large textures.

The streaming system monitors which textures are visible in each frame and loads appropriate mipmap levels accordingly. Textures that are far from the camera or not currently visible have their higher-resolution mipmap levels unloaded, while textures being displayed up close are loaded at higher resolutions.

For textures that don't need streaming support, use :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` instead.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Descripciones de Propiedades
--------------------------------------------------------

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

Controla cómo se debe realizar la compresión VRAM para las imágenes HDR.

\ **Desactivado:** Nunca uses la compresión VRAM para texturas HDR, independientemente de si son opacas o transparentes. En su lugar, la textura se convierte a RGBE9995 (9 bits por canal + exponente de 5 bits = 32 bits por píxel) para reducir el uso de memoria en comparación con un formato de imagen de punto flotante de media precisión o de precisión simple.

\ **Solo opaco:** Solo usa la compresión VRAM para texturas HDR opacas. Esto se debe a una limitación de los formatos HDR, ya que no hay un formato HDR comprimido en VRAM que admita la transparencia al mismo tiempo.

\ **Siempre:** Fuerza la compresión VRAM incluso para texturas HDR con un canal alfa. Para realizar esto, el canal alfa se descarta en la importación.

\ **Nota:** Solo es efectivo en imágenes Radiance HDR (\ ``.hdr``) y OpenEXR (\ ``.exr``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/high_quality>`

Si es ``true``, usa la compresión BPTC en plataformas de escritorio y la compresión ASTC en plataformas móviles. Cuando se usa BPTC, BC7 se usa para texturas SDR y BC6H se usa para texturas HDR.

Si es ``false``, usa la compresión S3TC más rápida pero de menor calidad en plataformas de escritorio y ETC2 en plataformas móviles/web. Cuando se usa S3TC, DXT1 (BC1) se usa para texturas opacas y DXT5 (BC3) se usa para texturas transparentes o mapas normales (RGTC).

BPTC y ASTC admiten la compresión VRAM para texturas HDR, pero S3TC y ETC2 no (ver :ref:`compress/hdr_compression<class_ResourceImporterStreamedTexture_property_compress/hdr_compression>`).

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

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
