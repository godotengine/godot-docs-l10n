:github_url: hide

.. _class_ResourceImporterTexture:

ResourceImporterTexture
=======================

**繼承：** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

匯入影像以用於 2D 或 3D 算繪。

.. rst-class:: classref-introduction-group

說明
----

此匯入器匯入\ :ref:`CompressedTexture2D<class_CompressedTexture2D>` 資源。如果您需要以更方便的方式在腳本中處理映像，請改用\ :ref:`ResourceImporterImage<class_ResourceImporterImage>`\ 。另請參閱\ :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`匯入圖像 <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

屬性
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

屬性說明
--------

.. _class_ResourceImporterTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/channel_pack>`

控制在匯入的紋理中如何使用顏色通道。

\ **sRGB 友善：** 防止使用 RG 顏色格式，因為它不支援 sRGB 顏色。

\ **最佳化：**\ 如果紋理不使用藍色通道，則允許使用RG顏色格式。如果可以丟棄紋理的藍色通道（所有像素必須具有\ ``0`` 的藍色值），這會減少記憶體使用量。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_compress/hdr_compression>`

控制如何對 HDR 影像執行 VRAM 壓縮。

\ **停用：**\ 切勿對 HDR 紋理使用 VRAM 壓縮，無論它們是不透明還是透明。相反，紋理會轉換為 RGBE9995（每通道 9 位元 + 5 位元指數 = 每像素 32 位元），以減少與半浮點或單精確度浮點影像格式相比的記憶體使用量。

\ **僅不透明：** 僅對不透明 HDR 紋理使用 VRAM 壓縮。這是由於 HDR 格式的限制，因為沒有同時支援透明度的 VRAM 壓縮 HDR 格式。

\ **總是：** 強制 VRAM 壓縮，即使對於具有 Alpha 通道的 HDR 紋理也是如此。為此，在匯入時將丟棄 Alpha 通道。

\ **注意：** 僅對 Radiance HDR (``.hdr``) 和 OpenEXR (``.exr``) 影像有效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_compress/high_quality>`

如果\ ``true``\ ，在桌面平台上使用BPTC 壓縮，在行動平台上使用ASTC 壓縮。使用BPTC 時，BC7 用於SDR 紋理，BC6H 用於HDR紋理。

如果 ``false``\ ，則在桌面平台上使用速度更快但品質較低的 S3TC 壓縮，在行動裝置/Web 平台上使用 ETC2。使用 S3TC 時，DXT1 (BC1) 用於不透明紋理，DXT5 (BC3) 用於透明或法線貼圖 (RGTC) 紋理。

BPTC 和 ASTC 支援 HDR 紋理的 VRAM 壓縮，但 S3TC 和 ETC2 不支援（請參閱\ :ref:`compress/hdr_compression<class_ResourceImporterTexture_property_compress/hdr_compression>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/lossy_quality** = ``0.7`` :ref:`🔗<class_ResourceImporterTexture_property_compress/lossy_quality>`

使用有損壓縮模式時使用的品質。值越高，品質越好，但檔案大小越大。有損品質不會影響記憶體匯入紋理的使用，僅其在磁碟上的檔案大小。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/mode>`

要使用的壓縮模式。每個壓縮模式都提供不同的權衡：

\ **無損**\ ：原始品質、高記憶體佔用、高磁碟空間、快速匯入。

\ **有損：** 品質降低、記憶體使用率高、磁碟空間小、匯入速度快。

\ **VRAM 壓縮：** 品質下降、記憶體使用率低、磁碟空間小、匯入速度最慢。僅用於 3D 場景中的紋理，不適用於 2D 元素。

\ **VRAM 未壓縮：** 原始品質、高記憶體使用率、磁碟大小最大、匯入速度最快。

\ **Basis Universal：** 品質降低、記憶體使用率低、磁碟大小最小、匯入速度慢。僅用於 3D 場景中的紋理，不適用於 2D 元素。

有關詳細信息，請參閱手冊中的\ `壓縮模式 <../tutorials/assets_pipeline/importing_images.html#compress-mode>`__\ 。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/normal_map:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/normal_map** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/normal_map>`

當使用紋理作為法線貼圖時，只需要紅色和綠色通道。鑑於常規紋理壓縮演算法會產生在法線貼圖中看起來不太好的偽像，因此RGTC壓縮格式是最適合此資料的。強制此選項啟用將使 Godot 將影像匯入為 RGTC 壓縮。預設情況下，它設定為「偵測」。這表示如果偵測到紋理被用作法線貼圖，它將變更為啟用並自動重新匯入。

請注意，RGTC 壓縮會影響產生的法線貼圖影像。您必須調整使用法線貼圖的藍色通道的自訂著色器才能考慮到這一點。內建材質著色器已經忽略法線貼圖中的藍色通道（無論實際法線貼圖的內容如何）。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/rdo_quality_loss:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/rdo_quality_loss** = ``0.0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/rdo_quality_loss>`

If greater than or equal to ``0.01``, enables Rate-Distortion Optimization (RDO) to reduce file size. Higher values result in smaller file sizes but lower quality.

\ **Note:** Enabling RDO makes encoding times significantly longer, especially when the image is large.

See also :ref:`ProjectSettings.rendering/textures/basis_universal/rdo_dict_size<class_ProjectSettings_property_rendering/textures/basis_universal/rdo_dict_size>` and :ref:`ProjectSettings.rendering/textures/basis_universal/zstd_supercompression_level<class_ProjectSettings_property_rendering/textures/basis_universal/zstd_supercompression_level>` if you want to reduce the file size further.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/uastc_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/uastc_level** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/uastc_level>`

The UASTC encoding level. Higher values result in better quality but make encoding times longer.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_detect_3d/compress_to:

.. rst-class:: classref-property

:ref:`int<class_int>` **detect_3d/compress_to** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_detect_3d/compress_to>`

這會變更偵測到紋理在 3D 中使用時所使用的 :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>` 選項。

只有當偵測到紋理正在 3D 中使用時，變更此匯入選項才會生效。將其變更為\ **停用**\ ，然後重新匯入不會變更紋理上的現有壓縮模式（如果偵測到在3D 中使用），但選擇\ **VRAM 壓縮** 或\ **Basis Universal**\ 將。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor/convert_colors_with_editor_theme** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme>`

If ``true``, converts the imported image's colors to match :ref:`EditorSettings.interface/theme/icon_and_font_color<class_EditorSettings_property_interface/theme/icon_and_font_color>`. This assumes the image uses the exact same colors as :doc:`Godot's own color palette for editor icons <../engine_details/editor/creating_icons>`, with the source file designed for a dark editor theme. This should be enabled for editor plugin icons and custom class icons, but should be left disabled otherwise.

\ **Note:** Only available for SVG images.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_editor/scale_with_editor_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor/scale_with_editor_scale** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`

如果\ ``true``\ ，則縮放匯入的影像以符合\ :ref:`EditorSettings.interface/editor/custom_display_scale<class_EditorSettings_property_interface/editor/custom_display_scale>`\ 。應該為編輯器外掛程式圖示和自訂類別圖示啟用此功能，但否則應停用。

\ **注意：** 僅適用於 SVG 影像。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_mipmaps/generate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mipmaps/generate** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_mipmaps/generate>`

如果\ ``true``\ ，匯入時會產生較小版本的紋理。例如，64×64 紋理將產生 6 個 mipmap（32×32、16× 16 、8×8、4×4、2×2、1×1）。這有幾個優點：

- 紋理在遠處（3D 中）或由於 :ref:`Camera2D<class_Camera2D>` 縮放或 :ref:`CanvasItem<class_CanvasItem>` 縮放（2D）而縮小時不會變得顆粒狀。

- 如果紋理顯示在遠處，效能將會提高，因為對原始紋理的較小版本進行取樣速度更快並且需要更少的記憶體頻寬。

mipmap 的缺點是它們會增加約 33% 的記憶體使用量。

建議在 3D 中啟用 mipmap。但是，在 2D 中，僅當您的專案明顯受益於啟用 mipmap 時才應啟用此功能。如果相機永遠不會顯著縮小，啟用 mipmap 不會有任何好處，但記憶體使用量會增加。"

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_mipmaps/limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps/limit** = ``-1`` :ref:`🔗<class_ResourceImporterTexture_property_mipmaps/limit>`

未實作。目前變更後無效。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/alpha:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/alpha** = ``3`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/alpha>`

Specifies the data source of the output image's alpha channel.

\ **Red:** Use the values from the source image's red channel.

\ **Green:** Use the values from the source image's green channel.

\ **Blue:** Use the values from the source image's blue channel.

\ **Alpha:** Use the values from the source image's alpha channel.

\ **Red Inverted:** Use inverted values from the source image's red channel (``1.0 - R``).

\ **Green Inverted:** Use inverted values from the source image's green channel (``1.0 - G``).

\ **Blue Inverted:** Use inverted values from the source image's blue channel (``1.0 - B``).

\ **Alpha Inverted:** Use inverted values from the source image's alpha channel (``1.0 - A``).

\ **Unused:** Set the color channel's value to the default (``1.0`` for alpha, ``0.0`` for red, green or blue).

\ **Zero:** Set the color channel's value to ``0.0``.

\ **One:** Set the color channel's value to ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/blue:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/blue** = ``2`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/blue>`

Specifies the data source of the output image's blue channel.

\ **Red:** Use the values from the source image's red channel.

\ **Green:** Use the values from the source image's green channel.

\ **Blue:** Use the values from the source image's blue channel.

\ **Alpha:** Use the values from the source image's alpha channel.

\ **Red Inverted:** Use inverted values from the source image's red channel (``1.0 - R``).

\ **Green Inverted:** Use inverted values from the source image's green channel (``1.0 - G``).

\ **Blue Inverted:** Use inverted values from the source image's blue channel (``1.0 - B``).

\ **Alpha Inverted:** Use inverted values from the source image's alpha channel (``1.0 - A``).

\ **Unused:** Set the color channel's value to the default (``1.0`` for alpha, ``0.0`` for red, green or blue).

\ **Zero:** Set the color channel's value to ``0.0``.

\ **One:** Set the color channel's value to ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/green:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/green** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/green>`

Specifies the data source of the output image's green channel.

\ **Red:** Use the values from the source image's red channel.

\ **Green:** Use the values from the source image's green channel.

\ **Blue:** Use the values from the source image's blue channel.

\ **Alpha:** Use the values from the source image's alpha channel.

\ **Red Inverted:** Use inverted values from the source image's red channel (``1.0 - R``).

\ **Green Inverted:** Use inverted values from the source image's green channel (``1.0 - G``).

\ **Blue Inverted:** Use inverted values from the source image's blue channel (``1.0 - B``).

\ **Alpha Inverted:** Use inverted values from the source image's alpha channel (``1.0 - A``).

\ **Unused:** Set the color channel's value to the default (``1.0`` for alpha, ``0.0`` for red, green or blue).

\ **Zero:** Set the color channel's value to ``0.0``.

\ **One:** Set the color channel's value to ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/red:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/red** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/red>`

Specifies the data source of the output image's red channel.

\ **Red:** Use the values from the source image's red channel.

\ **Green:** Use the values from the source image's green channel.

\ **Blue:** Use the values from the source image's blue channel.

\ **Alpha:** Use the values from the source image's alpha channel.

\ **Red Inverted:** Use inverted values from the source image's red channel (``1.0 - R``).

\ **Green Inverted:** Use inverted values from the source image's green channel (``1.0 - G``).

\ **Blue Inverted:** Use inverted values from the source image's blue channel (``1.0 - B``).

\ **Alpha Inverted:** Use inverted values from the source image's alpha channel (``1.0 - A``).

\ **Unused:** Set the color channel's value to the default (``1.0`` for alpha, ``0.0`` for red, green or blue).

\ **Zero:** Set the color channel's value to ``0.0``.

\ **One:** Set the color channel's value to ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/fix_alpha_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/fix_alpha_border** = ``true`` :ref:`🔗<class_ResourceImporterTexture_property_process/fix_alpha_border>`

If ``true``, puts pixels of the same surrounding color in transition from transparent to opaque areas. For textures displayed with bilinear filtering, this helps to reduce the outline effect when exporting images from an image editor.

It's recommended to leave this enabled (as it is by default), unless this causes issues for a particular image.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/hdr_as_srgb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/hdr_as_srgb** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/hdr_as_srgb>`

您可以在網路上找到的一些 HDR 映像可能已損壞並包含 sRGB 顏色資料（而不是線性顏色資料）。建議不要使用這些檔案。如果絕對必要，請啟用\ :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>` 將使它們看起來正確。

\ **警告：**\ 在格式良好的HDR 影像上啟用\ :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>` 將導致產生的影像看起來太暗，因此如果不確定，請將其保留在\ ``false`` 上。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/hdr_clamp_exposure:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/hdr_clamp_exposure** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>`

如果\ ``true``\ ，則使用智慧型夾緊公式夾緊匯入的高動態範圍影像中的曝光（不引入\ *visible* 剪切）。

您可以在網路上找到的一些 HDR 全景影像可能包含極其明亮的像素，因為這些影像取自現實生活來源，沒有任何剪輯。

雖然這些 HDR 全景影像準確反映現實生活，但這可能會導致 Godot 產生的輻射圖在用作背景天空時包含閃光。這可以在材料反射中看到（即使在極端情況下在粗糙材料上）。啟用\ :ref:`process/hdr_clamp_exposure<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>`\ 可以解決此問題。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/normal_map_invert_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/normal_map_invert_y** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/normal_map_invert_y>`

**已棄用：** The same result can be achieved by setting :ref:`process/channel_remap/green<class_ResourceImporterTexture_property_process/channel_remap/green>` to ``Green Inverted``.

如果 ``true``\ ，則透過反轉其綠色通道將法線貼圖從 Y-（DirectX 樣式）轉換為 Y+（OpenGL 樣式）。這是Godot所期望的法線貼圖約定。

在\ `此處 <http://wiki.polycount.com/wiki/Normal_Map_Technical_Details>`__\ 找到。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/premult_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/premult_alpha** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/premult_alpha>`

An alternative to fixing darkened borders with :ref:`process/fix_alpha_border<class_ResourceImporterTexture_property_process/fix_alpha_border>` is to use premultiplied alpha. By enabling this option, the texture will be converted to this format. A premultiplied alpha texture requires specific materials to be displayed correctly:

- In 2D, a :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` will need to be created and configured to use the :ref:`CanvasItemMaterial.BLEND_MODE_PREMULT_ALPHA<class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA>` blend mode on :ref:`CanvasItem<class_CanvasItem>`\ s that use this texture. In custom ``@canvas_item`` shaders, ``render_mode blend_premul_alpha;`` should be used.

- In 3D, a :ref:`BaseMaterial3D<class_BaseMaterial3D>` will need to be created and configured to use the :ref:`BaseMaterial3D.BLEND_MODE_PREMULT_ALPHA<class_BaseMaterial3D_constant_BLEND_MODE_PREMULT_ALPHA>` blend mode on materials that use this texture. In custom ``spatial`` shaders, ``render_mode blend_premul_alpha;`` should be used.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/size_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/size_limit** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_process/size_limit>`

If set to a value greater than ``0``, the size of the texture is limited on import to a value smaller than or equal to the value specified here. For non-square textures, the size limit affects the longer dimension, with the shorter dimension scaled to preserve aspect ratio. Resizing is performed using cubic interpolation.

This can be used to reduce memory usage without affecting the source images, or avoid issues with textures not displaying on mobile/web platforms (as these usually can't display textures larger than 4096×4096).

\ **Note:** Even if this is set to ``0``, import size is limited to the following dimensions for technical reasons. Depending on :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>`, textures will be downsampled on import if necessary:

- **Lossy:** 16383 pixels width or height, whichever is larger;

- **Basis Universal:** 16384 pixels width or height, whichever is larger;

- **All other modes:** 32768 pixels width or height, whichever is larger.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_roughness/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **roughness/mode** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_roughness/mode>`

The color channel to consider as a roughness map in this texture. Only effective if :ref:`roughness/src_normal<class_ResourceImporterTexture_property_roughness/src_normal>` is not empty.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_roughness/src_normal:

.. rst-class:: classref-property

:ref:`String<class_String>` **roughness/src_normal** = ``""`` :ref:`🔗<class_ResourceImporterTexture_property_roughness/src_normal>`

匯入時考慮作為粗糙度篩選法線貼圖的紋理路徑。指定此專案可以幫助稍微減少 3D 中的鏡面鋸齒。

匯入時的粗糙度篩選僅用於 3D 算繪，不適用於 2D。

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_svg/scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **svg/scale** = ``1.0`` :ref:`🔗<class_ResourceImporterTexture_property_svg/scale>`

SVG 應該算繪的比例，\ ``1.0`` 是原始設計尺寸。較高的值會導致較大的圖像。請注意，與字形過取樣不同，此影響 SVG 在 2D 中算繪的大小。另請參閱 :ref:`editor/scale_with_editor_scale<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`\ 。

\ **注意：** 僅適用於 SVG 影像。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
