:github_url: hide

.. _class_ResourceImporterStreamedTexture:

ResourceImporterStreamedTexture
===============================

**Sperimentale:** This class may be changed or removed in future versions.

**Eredita:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Imports an image as a streaming-capable texture for dynamic mipmap loading.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

This importer creates :ref:`StreamedTexture2D<class_StreamedTexture2D>` resources that support dynamic mipmap streaming. When texture streaming is enabled in the Project Settings (:ref:`ProjectSettings.rendering/textures/streaming/enabled<class_ProjectSettings_property_rendering/textures/streaming/enabled>`), these textures can have their mipmap levels dynamically loaded and unloaded based on usage, significantly reducing VRAM consumption for projects with many large textures.

The streaming system monitors which textures are visible in each frame and loads appropriate mipmap levels accordingly. Textures that are far from the camera or not currently visible have their higher-resolution mipmap levels unloaded, while textures being displayed up close are loaded at higher resolutions.

For textures that don't need streaming support, use :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` instead.

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ResourceImporterStreamedTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/channel_pack>`

Controlla come bisogna utilizzare i canali del colore nella texture importata.

\ **sRGB Friendly:** Impedisce l'uso dei formati colore R e RG, poiché non supportano la codifica sRGB non lineare.

\ **Optimized:** Consente l'uso del formato colore RG se la texture non utilizza il canale blu. Ciò riduce l'utilizzo di memoria se il canale blu della texture può essere scartato (tutti i pixel devono avere un valore blu pari a ``0``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/hdr_compression>`

Controlla come bisogna comprimere in VRAM le immagini HDR.

\ **Disabled:** Non usare mai la compressione in VRAM per le texture HDR, a prescindere che siano opache o trasparenti. Invece, la texture viene convertita in RGBE9995 (9 bit per canale, più esponente a 5 bit, per un totale di 32 bit per pixel) per ridurre l'utilizzo della memoria rispetto a un formato immagine in virgola mobile dimezzato o a precisione singola.

\ **Opaque Only:** Usa la compressione in VRAM solo per le texture HDR opache. Ciò è dovuto a una limitazione dei formati HDR, poiché non esiste un formato HDR compresso in VRAM che supporti la trasparenza allo stesso tempo.

\ **Always:** Forza la compressione in VRAM anche per le texture HDR con un canale alfa. Per eseguire questa operazione, il canale alfa viene scartato durante l'importazione.

\ **Nota:** Efficace solo su immagini Radiance HDR (\ ``.hdr``) e OpenEXR (\ ``.exr``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterStreamedTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterStreamedTexture_property_compress/high_quality>`

Se ``true``, utilizza la compressione BPTC sulle piattaforme desktop e la compressione ASTC sulle piattaforme mobili. Quando si utilizza BPTC, BC7 è utilizzato per le texture SDR e BC6H per le texture HDR.

Se ``false``, utilizza la compressione S3TC sulle piattaforme desktop e ETC2 sulle piattaforme mobili/web, la quale è più veloce ma di qualità inferiore. Quando si utilizza il S3TC, DXT1 (BC1) è utilizzato per le texture opache e DXT5 (BC3) è utilizzato per le texture trasparenti o a mappa normale (RGTC).

BPTC e ASTC supportano la compressione in VRAM per le texture HDR, ma S3TC ed ETC2 no (vedi :ref:`compress/hdr_compression<class_ResourceImporterStreamedTexture_property_compress/hdr_compression>`).

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

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
