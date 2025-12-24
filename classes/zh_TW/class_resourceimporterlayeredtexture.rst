:github_url: hide

.. _class_ResourceImporterLayeredTexture:

ResourceImporterLayeredTexture
==============================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

匯入 3 維紋理 (:ref:`Texture3D<class_Texture3D>`)、\ :ref:`Texture2DArray<class_Texture2DArray>`\ 、\ :ref:`Cubemap<class_Cubemap>` 或 :ref:`CubemapArray<class_CubemapArray>`\ 。

.. rst-class:: classref-introduction-group

說明
----

這會匯入 3 維紋理，然後可以在自訂著色器中將其用作 :ref:`FogMaterial<class_FogMaterial>` 密度圖或 :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`\ 。另請參閱 :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` 和 :ref:`ResourceImporterTextureAtlas<class_ResourceImporterTextureAtlas>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`匯入圖像 <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_ResourceImporterLayeredTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/channel_pack>`

Controls how color channels should be used in the imported texture.

\ **sRGB Friendly:**, prevents the RG color format from being used, as it does not support sRGB color.

\ **Optimized:**, allows the RG color format to be used if the texture does not use the blue channel. This reduces memory usage if the texture's blue channel can be discarded (all pixels must have a blue value of ``0``).

\ **Normal Map (RG Channels):** This forces all layers from the texture to be imported with the RG color format, with only the red and green channels preserved. RGTC (Red-Green Texture Compression) compression is able to preserve its detail much better, while using the same amount of memory as a standard RGBA VRAM-compressed texture. This only has an effect on textures with the VRAM Compressed or Basis Universal compression modes. This mode is only available in layered textures (:ref:`Cubemap<class_Cubemap>`, :ref:`CubemapArray<class_CubemapArray>`, :ref:`Texture2DArray<class_Texture2DArray>` and :ref:`Texture3D<class_Texture3D>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`

控制如何對 HDR 影像執行 VRAM 壓縮。

\ **停用：**\ 切勿對 HDR 紋理使用 VRAM 壓縮，無論它們是不透明還是透明。相反，紋理會轉換為 RGBE9995（每通道 9 位元 + 5 位元指數 = 每像素 32 位元），以減少與半浮點或單精確度浮點影像格式相比的記憶體使用量。

\ **僅不透明：** 僅對不透明 HDR 紋理使用 VRAM 壓縮。這是由於 HDR 格式的限制，因為沒有同時支援透明度的 VRAM 壓縮 HDR 格式。

\ **總是：** 強制 VRAM 壓縮，即使對於具有 Alpha 通道的 HDR 紋理也是如此。為此，在匯入時將丟棄 Alpha 通道。

\ **注意：** 僅對 Radiance HDR (``.hdr``) 和 OpenEXR (``.exr``) 影像有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/high_quality>`

如果\ ``true``\ ，在桌面平台上使用BPTC 壓縮，在行動平台上使用ASTC 壓縮。使用BPTC 時，BC7 用於SDR 紋理，BC6H 用於HDR紋理。

如果 ``false``\ ，則在桌面平台上使用速度更快但品質較低的 S3TC 壓縮，在行動裝置/Web 平台上使用 ETC2。使用 S3TC 時，DXT1 (BC1) 用於不透明紋理，DXT5 (BC3) 用於透明或法線貼圖 (RGTC) 紋理。

BPTC 和 ASTC 支援 HDR 紋理的 VRAM 壓縮，但 S3TC 和 ETC2 不支援（請參閱\ :ref:`compress/hdr_compression<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/lossy_quality** = ``0.7`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/lossy_quality>`

使用有損壓縮模式時使用的品質。值越高，品質越好，但檔案大小越大。有損品質不會影響記憶體匯入紋理的使用，僅其在磁碟上的檔案大小。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/mode>`

要使用的壓縮模式。每個壓縮模式都提供不同的權衡：

\ **無損**\ ：原始品質、高記憶體佔用、高磁碟空間、快速匯入。

\ **有損：** 品質降低、記憶體使用率高、磁碟空間小、匯入速度快。

\ **VRAM 壓縮：** 品質下降、記憶體使用率低、磁碟空間小、匯入速度最慢。僅用於 3D 場景中的紋理，不適用於 2D 元素。

\ **VRAM 未壓縮：** 原始品質、高記憶體使用率、磁碟大小最大、匯入速度最快。

\ **Basis Universal：** 品質降低、記憶體使用率低、磁碟大小最小、匯入速度慢。僅用於 3D 場景中的紋理，不適用於 2D 元素。

有關詳細信息，請參閱手冊中的\ `壓縮模式 <../tutorials/assets_pipeline/importing_images.html#compress-mode>`__\ 。

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

如果 ``true``\ ，匯入時會產生較小版本的紋理。例如，64×64 紋理將產生 6 個 mipmap（32×32、16× 16 、8×8、4×4、2×2、1×1）。這有幾個優點：

- 紋理在遠處（3D 中）或由於 :ref:`Camera2D<class_Camera2D>` 縮放或 :ref:`CanvasItem<class_CanvasItem>` 縮放（2D）而縮小時不會變得顆粒狀。

- 如果紋理顯示在遠處，效能將會提高，因為對原始紋理的較小版本進行取樣速度更快並且需要更少的記憶體頻寬。

mipmap 的缺點是它們使記憶體使用量增加約 33%（對於 :ref:`Texture2DArray<class_Texture2DArray>`\ 、\ :ref:`Cubemap<class_Cubemap>` 和 :ref:`CubemapArray<class_CubemapArray>`\ ）或 14%（對於 :ref:`Texture3D<class_Texture3D>`\ ）。

建議在 3D 中啟用 mipmap。但是，在 2D 中，僅當您的專案明顯受益於啟用 mipmap 時才應啟用此功能。如果相機永遠不會顯著縮小，啟用 mipmap 不會有任何好處，但記憶體使用量會增加。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_mipmaps/limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps/limit** = ``-1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_mipmaps/limit>`

未實作。目前變更後無效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_slices/arrangement:

.. rst-class:: classref-property

:ref:`int<class_int>` **slices/arrangement** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_slices/arrangement>`

控制立方體貼圖紋理的內部佈局方式。使用高解析度立方體貼圖時，\ **2×3** 和 **3×2**\ 與\ **1×6** 和\ **6×1** 相比，較不容易超出硬體紋理大小限制。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
