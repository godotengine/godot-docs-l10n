:github_url: hide

.. _class_ResourceImporterTexture:

ResourceImporterTexture
=======================

**Eredita:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa un'immagine da utilizzare nel rendering 2D o 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo importatore importa risorse :ref:`CompressedTexture2D<class_CompressedTexture2D>`. Se hai bisogno di elaborare l'immagine negli script in modo più conveniente, usa :ref:`ResourceImporterImage<class_ResourceImporterImage>` al suo posto. Vedi anche :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Importare immagini <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ResourceImporterTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/channel_pack>`

Controlla come bisogna utilizzare i canali del colore nella texture importata.

\ **sRGB Friendly:** Impedisce l'uso dei formati colore R e RG, poiché non supportano la codifica sRGB non lineare.

\ **Optimized:** Consente l'uso del formato colore RG se la texture non utilizza il canale blu. Ciò riduce l'utilizzo di memoria se il canale blu della texture può essere scartato (tutti i pixel devono avere un valore blu pari a ``0``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_compress/hdr_compression>`

Controlla come bisogna comprimere in VRAM le immagini HDR.

\ **Disabled:** Non usare mai la compressione in VRAM per le texture HDR, a prescindere che siano opache o trasparenti. Invece, la texture viene convertita in RGBE9995 (9 bit per canale, più esponente a 5 bit, per un totale di 32 bit per pixel) per ridurre l'utilizzo della memoria rispetto a un formato immagine in virgola mobile dimezzato o a precisione singola.

\ **Opaque Only:** Usa la compressione in VRAM solo per le texture HDR opache. Ciò è dovuto a una limitazione dei formati HDR, poiché non esiste un formato HDR compresso in VRAM che supporti la trasparenza allo stesso tempo.

\ **Always:** Forza la compressione in VRAM anche per le texture HDR con un canale alfa. Per eseguire questa operazione, il canale alfa viene scartato durante l'importazione.

\ **Nota:** Efficace solo su immagini Radiance HDR (``.hdr``) e OpenEXR (``.exr``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_compress/high_quality>`

Se ``true``, utilizza la compressione BPTC sulle piattaforme desktop e la compressione ASTC sulle piattaforme mobili. Quando si utilizza BPTC, BC7 è utilizzato per le texture SDR e BC6H per le texture HDR.

Se ``false``, utilizza la compressione S3TC sulle piattaforme desktop e ETC2 sulle piattaforme mobili/web, la quale è più veloce ma di qualità inferiore. Quando si utilizza il S3TC, DXT1 (BC1) è utilizzato per le texture opache e DXT5 (BC3) è utilizzato per le texture trasparenti o a mappa normale (RGTC).

BPTC e ASTC supportano la compressione in VRAM per le texture HDR, ma S3TC ed ETC2 no (vedi :ref:`compress/hdr_compression<class_ResourceImporterTexture_property_compress/hdr_compression>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/lossy_quality** = ``0.7`` :ref:`🔗<class_ResourceImporterTexture_property_compress/lossy_quality>`

La qualità da usare quando si usa la modalità di compressione **Lossy** (con perdita). Valori più alti risultano in una migliore qualità, a costo di file di dimensioni maggiori. La qualità lossy non influisce sull'utilizzo della memoria della texture importata, ma solo sulle dimensioni del file su disco.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/mode>`

La modalità di compressione da utilizzare. Ogni modalità di compressione offre un diverso compromesso:

\ **Lossless**: Qualità originale, elevato utilizzo di memoria, elevata dimensione su disco, importazione rapida.

\ **Lossy:** Qualità ridotta, elevato utilizzo di memoria, ridotta dimensione su disco, importazione rapida.

\ **VRAM Compressed:** Qualità ridotta, basso utilizzo di memoria, ridotta dimensione su disco, importazione più lenta. Utilizzare solo per le texture nelle scene 3D, non per gli elementi 2D.

\ **VRAM Uncompressed:** Qualità originale, elevato utilizzo di memoria, massima dimensione su disco, importazione più rapida.

\ **Basis Universal:** Qualità ridotta, basso utilizzo di memoria, minima dimensione su disco, importazione lenta. Utilizzare solo per le texture nelle scene 3D, non per gli elementi 2D.

Vedi `Modalità di compressione <../tutorials/assets_pipeline/importing_images.html#compress-mode>`__ nel manuale per ulteriori dettagli.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/normal_map:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/normal_map** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/normal_map>`

Quando si usa una texture come mappa normale, sono richiesti solo i canali rosso e verde. Dato che gli algoritmi regolari di compressione delle texture producono artefatti che non hanno un bell'aspetto nelle mappe normali, il formato di compressione RGTC è il più adatto per questi dati. Forzando questa opzione su "Enable", Godot importerà l'immagine come compressa in RGTC. Come predefinito, è impostata su "Detect". Ciò significa che se la texture viene rilevata per essere utilizzata come mappa normale, verrà modificata in "Enable" e reimportata automaticamente.

Nota che la compressione RGTC influisce sull'immagine della mappa normale risultante. Sarà necessario regolare gli shader personalizzati che utilizzano il canale blu della mappa normale per tenerne conto. Gli shader integrati dei materiali ignorano già il canale blu in una mappa normale (a prescindere dal contenuto effettivo della mappa normale).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/rdo_quality_loss:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/rdo_quality_loss** = ``0.0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/rdo_quality_loss>`

Se maggiore o uguale a ``0.01``, abilita il Rate-Distortion Optimization(RDO) per ridurre le dimensioni del file. Valori più elevati risultano in file più piccoli ma di qualità inferiore.

\ **Nota:** Abilitare l'RDO allunga notevolmente i tempi di codifica, soprattutto quando l'immagine è grande.

Vedi anche :ref:`ProjectSettings.rendering/textures/basis_universal/rdo_dict_size<class_ProjectSettings_property_rendering/textures/basis_universal/rdo_dict_size>` e :ref:`ProjectSettings.rendering/textures/basis_universal/zstd_supercompression_level<class_ProjectSettings_property_rendering/textures/basis_universal/zstd_supercompression_level>` se si desidera ridurre ulteriormente le dimensioni del file.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/uastc_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/uastc_level** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/uastc_level>`

Il livello di codifica UASTC. Valori più alti risultano in una qualità migliore, ma allungano i tempi di codifica.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_detect_3d/compress_to:

.. rst-class:: classref-property

:ref:`int<class_int>` **detect_3d/compress_to** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_detect_3d/compress_to>`

Questo modifica l'opzione :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>` che è utilizzata quando una texture viene rilevata come utilizzata in 3D. La modifica di questa opzione di importazione ha effetto solo se una texture viene rilevata come utilizzata in 3D.

La modifica di questa opzione in **Disabled** e la successiva reimportazione non modificheranno la modalità di compressione esistente su una texture (se viene rilevata come utilizzata in 3D), ma la scelta su **VRAM Compressed** o **Basis Universal** lo farà.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor/convert_colors_with_editor_theme** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme>`

Se ``true``, converte i colori dell'immagine importata per abbinarli a :ref:`EditorSettings.interface/theme/icon_and_font_color<class_EditorSettings_property_interface/theme/icon_and_font_color>`. Ciò presuppone che l'immagine utilizzi esattamente gli stessi colori della :doc:`tavolozza di colori di Godot per le icone dell'editor <../contributing/development/editor/creating_icons>`, con il file sorgente progettato per un tema scuro dell'editor. Dovrebbe essere abilitata per le icone delle estensioni dell'editor e le icone delle classi personalizzate, altrimenti dovrebbe rimanere disabilitata.

\ **Nota:** Disponibile solo per le immagini SVG.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_editor/scale_with_editor_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor/scale_with_editor_scale** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`

Se ``true``, ridimensiona l'immagine importata in modo che corrisponda a :ref:`EditorSettings.interface/editor/appearance/custom_display_scale<class_EditorSettings_property_interface/editor/appearance/custom_display_scale>`. Dovrebbe essere abilitata per le icone delle estensioni dell'editor e le icone delle classi personalizzate, altrimenti dovrebbe rimanere disabilitata..

\ **Nota:** Disponibile solo per le immagini SVG.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_mipmaps/generate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mipmaps/generate** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_mipmaps/generate>`

Se ``true``, vengono generate versioni più piccole della texture durante l'importazione. Ad esempio, una texture 64×64 genererà 6 mipmap (32×32, 16×16, 8×8, 4×4, 2×2, 1×1). Ciò ha diversi vantaggi:

- Le texture non diventeranno granulose in lontananza (in 3D) o se ridimensionate tramite lo zoom di una :ref:`Camera2D<class_Camera2D>` o la scala di un :ref:`CanvasItem<class_CanvasItem>` (in 2D).

- Le prestazioni miglioreranno se la texture è visualizzata in lontananza, poiché il campionamento di versioni più piccole della texture originale è più veloce e richiede meno larghezza di banda di memoria.

Lo svantaggio delle mipmap è che aumentano l'utilizzo della memoria di circa il 33%.

Si consiglia di abilitare le mipmap in 3D. Tuttavia, in 2D, questa opzione dovrebbe essere abilitata solo se il progetto trae visibilmente vantaggio dall'abilitazione delle mipmap. Se lo zoom della telecamera non è mai ridotto significativamente, non ci sarà alcun vantaggio nell'abilitare le mipmap, ma l'utilizzo della memoria aumenterà comunque.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_mipmaps/limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps/limit** = ``-1`` :ref:`🔗<class_ResourceImporterTexture_property_mipmaps/limit>`

Non implementato. Al momento non ha alcun effetto quando viene modificato.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/alpha:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/alpha** = ``3`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/alpha>`

Specifica l'origine dei dati per il canale alfa dell'immagine risultante.

\ **Red:** Usa i valori del canale rosso dell'immagine sorgente.

\ **Green:** Usa i valori del canale verde dell'immagine sorgente.

\ **Blue:** Usa i valori del canale blu dell'immagine sorgente.

\ **Alpha:** Usa i valori del canale alfa dell'immagine sorgente.

\ **Red Inverted:** Usa i valori invertiti del canale rosso dell'immagine sorgente (``1.0 - R``).

\ **Green Inverted:** Usa i valori invertiti del canale verde dell'immagine sorgente (``1.0 - G``).

\ **Blue Inverted:** Usa i valori invertiti del canale blu dell'immagine sorgente (``1.0 - B``).

\ **Alpha Inverted:** Usa i valori invertiti del canale alfa dell'immagine sorgente (``1.0 - A``).

\ **Unused:** Imposta il valore del canale colore sul valore predefinito (``1.0`` per alfa, ``0.0`` per rosso, verde o blu).

\ **Zero:** Imposta il valore del canale colore su ``0.0``.

\ **One:** Imposta il valore del canale colore su ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/blue:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/blue** = ``2`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/blue>`

Specifica l'origine dei dati per il canale blu dell'immagine risultante.

\ **Red:** Usa i valori del canale rosso dell'immagine sorgente.

\ **Green:** Usa i valori del canale verde dell'immagine sorgente.

\ **Blue:** Usa i valori del canale blu dell'immagine sorgente.

\ **Alpha:** Usa i valori del canale alfa dell'immagine sorgente.

\ **Red Inverted:** Usa i valori invertiti del canale rosso dell'immagine sorgente (``1.0 - R``).

\ **Green Inverted:** Usa i valori invertiti del canale verde dell'immagine sorgente (``1.0 - G``).

\ **Blue Inverted:** Usa i valori invertiti del canale blu dell'immagine sorgente (``1.0 - B``).

\ **Alpha Inverted:** Usa i valori invertiti del canale alfa dell'immagine sorgente (``1.0 - A``).

\ **Unused:** Imposta il valore del canale colore sul valore predefinito (``1.0`` per alfa, ``0.0`` per rosso, verde o blu).

\ **Zero:** Imposta il valore del canale colore su ``0.0``.

\ **One:** Imposta il valore del canale colore su ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/green:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/green** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/green>`

Specifica l'origine dei dati per il canale verde dell'immagine risultante.

\ **Red:** Usa i valori del canale rosso dell'immagine sorgente.

\ **Green:** Usa i valori del canale verde dell'immagine sorgente.

\ **Blue:** Usa i valori del canale blu dell'immagine sorgente.

\ **Alpha:** Usa i valori del canale alfa dell'immagine sorgente.

\ **Red Inverted:** Usa i valori invertiti del canale rosso dell'immagine sorgente (``1.0 - R``).

\ **Green Inverted:** Usa i valori invertiti del canale verde dell'immagine sorgente (``1.0 - G``).

\ **Blue Inverted:** Usa i valori invertiti del canale blu dell'immagine sorgente (``1.0 - B``).

\ **Alpha Inverted:** Usa i valori invertiti del canale alfa dell'immagine sorgente (``1.0 - A``).

\ **Unused:** Imposta il valore del canale colore sul valore predefinito (``1.0`` per alfa, ``0.0`` per rosso, verde o blu).

\ **Zero:** Imposta il valore del canale colore su ``0.0``.

\ **One:** Imposta il valore del canale colore su ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/red:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/red** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/red>`

Specifica l'origine dei dati per il canale rosso dell'immagine risultante.

\ **Red:** Usa i valori del canale rosso dell'immagine sorgente.

\ **Green:** Usa i valori del canale verde dell'immagine sorgente.

\ **Blue:** Usa i valori del canale blu dell'immagine sorgente.

\ **Alpha:** Usa i valori del canale alfa dell'immagine sorgente.

\ **Red Inverted:** Usa i valori invertiti del canale rosso dell'immagine sorgente (``1.0 - R``).

\ **Green Inverted:** Usa i valori invertiti del canale verde dell'immagine sorgente (``1.0 - G``).

\ **Blue Inverted:** Usa i valori invertiti del canale blu dell'immagine sorgente (``1.0 - B``).

\ **Alpha Inverted:** Usa i valori invertiti del canale alfa dell'immagine sorgente (``1.0 - A``).

\ **Unused:** Imposta il valore del canale colore sul valore predefinito (``1.0`` per alfa, ``0.0`` per rosso, verde o blu).

\ **Zero:** Imposta il valore del canale colore su ``0.0``.

\ **One:** Imposta il valore del canale colore su ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/fix_alpha_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/fix_alpha_border** = ``true`` :ref:`🔗<class_ResourceImporterTexture_property_process/fix_alpha_border>`

Se ``true``, inserisce pixel dello stesso colore circostante in transizione dalle aree trasparenti alle aree opache. Per le texture visualizzate con il filtro bilineare, questo aiuta a ridurre l'effetto contorno quando si esportano immagini da un editor di immagini.

Si consiglia di lasciare questa opzione abilitata (come è predefinito), a meno che non causi problemi per un'immagine particolare.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/hdr_as_srgb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/hdr_as_srgb** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/hdr_as_srgb>`

Alcune immagini HDR ritrovabili online potrebbero essere incorrette e contenere dati codificati attraverso la funzione di trasferimento non lineare sRGB (anziché una codifica lineare). Si consiglia di non utilizzare tali file. Se è proprio necessario, abilitando :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>` appariranno corrette.

\ **Attenzione:** Abilitare :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>` sulle immagini HDR ben formattate risulterà in un'immagine troppo scura, quindi lascialo su ``false`` in caso di dubbio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/hdr_clamp_exposure:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/hdr_clamp_exposure** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>`

Se ``true``, limita l'esposizione nelle immagini ad alta gamma dinamica importate attraverso una formula di bloccaggio intelligente (senza introdurre clipping *visibile*).

Alcune immagini panoramiche HDR che è possibile trovare online potrebbero contenere pixel estremamente luminosi, perché sono state prese da sorgenti reali senza alcun clipping.

Sebbene queste immagini panoramiche HDR siano fedeli alla realtà, ciò può causare la presenza di scintille nella mappa della radianza generata da Godot quando viene utilizzata come cielo di sfondo. Ciò può essere osservato nei riflessi dei materiali (anche sui materiali ruvidi in casi estremi). L'abilitazione di :ref:`process/hdr_clamp_exposure<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>` può risolvere questo problema.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/normal_map_invert_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/normal_map_invert_y** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/normal_map_invert_y>`

**Deprecato:** The same result can be achieved by setting :ref:`process/channel_remap/green<class_ResourceImporterTexture_property_process/channel_remap/green>` to ``Green Inverted``.

Se ``true``, converte la mappa normale da Y- (stile DirectX) a Y+ (stile OpenGL) invertendo il suo canale di colore verde. Questa è la convenzione della mappa normale prevista da Godot.

È possibile trovare ulteriori informazioni sulle mappe normali (inclusa una tabella di ordine delle coordinate per i motori più diffusi) `qui <http://wiki.polycount.com/wiki/Normal_Map_Technical_Details>`__.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/premult_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/premult_alpha** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/premult_alpha>`

Un'alternativa per correggere i bordi scuriti con :ref:`process/fix_alpha_border<class_ResourceImporterTexture_property_process/fix_alpha_border>` è quella di usare un alfa premoltiplicato. Abilitando questa opzione, la texture sarà convertita in questo formato. Una texture con alfa premoltiplicato richiede materiali specifici per essere visualizzata correttamente:

- In 2D, sarà necessario creare un :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` e configurarlo per usare la modalità di fusione :ref:`CanvasItemMaterial.BLEND_MODE_PREMULT_ALPHA<class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA>` sui :ref:`CanvasItem<class_CanvasItem>` che usano questa texture. Negli shader ``canvas_item`` personalizzati, si dovrebbe usare ``render_mode blend_premul_alpha;``.

- In 3D, sarà necessario creare un :ref:`BaseMaterial3D<class_BaseMaterial3D>` e configurarlo per usare la modalità di fusione :ref:`BaseMaterial3D.BLEND_MODE_PREMULT_ALPHA<class_BaseMaterial3D_constant_BLEND_MODE_PREMULT_ALPHA>` sui materiali che usano questa texture. Negli shader ``spatial`` personalizzati, si dovrebbe usare ``render_mode blend_premul_alpha;``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/size_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/size_limit** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_process/size_limit>`

Se impostato su un valore maggiore di ``0``, le dimensioni della texture sono limitate all'importazione a un valore inferiore o uguale al valore specificato qui. Per le texture non quadrate, il limite di dimensioni influisce sulla dimensione più lunga, con la dimensione più corta ridimensionata per preservare le proporzioni. Il ridimensionamento è effettuato attraverso un interpolazione cubica.

Questo può servire per ridurre l'utilizzo della memoria senza influire sulle immagini di origine, oppure per evitare problemi di texture non visualizzate sulle piattaforme mobili o web (in quanto queste solitamente non possono visualizzare texture più grandi di 4096×4096).

\ **Nota:** Anche se impostato su ``0``, le dimensioni di importazione sono limitate alle seguenti dimensioni per motivi tecnici. A seconda di :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>`, le texture saranno sottocampionate all'importazione se necessario:

- **Lossy:** 16383 pixel di larghezza o altezza, a seconda di quale sia maggiore;

- **Base Universale:** 16384 pixel di larghezza o altezza, a seconda di quale sia maggiore;

- **Tutte le altre modalità:** 32768 pixel di larghezza o altezza, a seconda di quale sia maggiore.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_roughness/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **roughness/mode** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_roughness/mode>`

Il canale di colore da considerare come mappa di ruvidità in questa texture. Efficace solo se :ref:`roughness/src_normal<class_ResourceImporterTexture_property_roughness/src_normal>` non è vuoto.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_roughness/src_normal:

.. rst-class:: classref-property

:ref:`String<class_String>` **roughness/src_normal** = ``""`` :ref:`🔗<class_ResourceImporterTexture_property_roughness/src_normal>`

Il percorso verso la texture da considerare come una mappa normale per il filtraggio della ruvidità durante l'importazione. Specificare questo può aiutare a ridurre leggermente l'aliasing speculare in 3D.

Il filtraggio della ruvidità durante l'importazione è utilizzato solo nel rendering 3D, non in quello 2D.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_svg/scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **svg/scale** = ``1.0`` :ref:`🔗<class_ResourceImporterTexture_property_svg/scale>`

La scala in cui deve essere renderizzato l'SVG, con ``1.0`` rappresentate la dimensione del design originale. Valori più alti producono un'immagine più grande. Nota che a differenza del sovracampionamento dei font, questo influisce sulla dimensione in cui viene renderizzato l'SVG in 2D. Vedi anche :ref:`editor/scale_with_editor_scale<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`.

\ **Nota:** Disponibile solo per le immagini SVG.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
