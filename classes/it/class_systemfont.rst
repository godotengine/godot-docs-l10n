:github_url: hide

.. _class_SystemFont:

SystemFont
==========

**Eredita:** :ref:`Font<class_Font>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un font caricato da un font di sistema. Ritorna a un font del tema predefinito se non implementato sul sistema operativo host.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**SystemFont** carica un font da un font di sistema con il primo nome corrispondente da :ref:`font_names<class_SystemFont_property_font_names>`.

Tenterà di abbinare lo stile del font, ma non è garantito.

Il font restituito potrebbe far parte di una collezione di font o essere un font variabile con le funzionalità OpenType "weight", "width" e/o "italic".

Puoi creare un :ref:`FontVariation<class_FontVariation>` del font di sistema per un controllo preciso sulle sue funzionalità.

\ **Nota:** Questa classe è implementata su iOS, Linux, macOS e Windows, su altre piattaforme tornerà al font del tema predefinito.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`allow_system_fallback<class_SystemFont_property_allow_system_fallback>`                           | ``true``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>`       | :ref:`antialiasing<class_SystemFont_property_antialiasing>`                                             | ``1``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`disable_embedded_bitmaps<class_SystemFont_property_disable_embedded_bitmaps>`                     | ``true``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`font_italic<class_SystemFont_property_font_italic>`                                               | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`               | :ref:`font_names<class_SystemFont_property_font_names>`                                                 | ``PackedStringArray()`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`font_stretch<class_SystemFont_property_font_stretch>`                                             | ``100``                 |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`font_weight<class_SystemFont_property_font_weight>`                                               | ``400``                 |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`force_autohinter<class_SystemFont_property_force_autohinter>`                                     | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`generate_mipmaps<class_SystemFont_property_generate_mipmaps>`                                     | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Hinting<enum_TextServer_Hinting>`                         | :ref:`hinting<class_SystemFont_property_hinting>`                                                       | ``1``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`keep_rounding_remainders<class_SystemFont_property_keep_rounding_remainders>`                     | ``true``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`modulate_color_glyphs<class_SystemFont_property_modulate_color_glyphs>`                           | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`msdf_pixel_range<class_SystemFont_property_msdf_pixel_range>`                                     | ``16``                  |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`msdf_size<class_SystemFont_property_msdf_size>`                                                   | ``48``                  |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`multichannel_signed_distance_field<class_SystemFont_property_multichannel_signed_distance_field>` | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                                       | :ref:`oversampling<class_SystemFont_property_oversampling>`                                             | ``0.0``                 |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`SubpixelPositioning<enum_TextServer_SubpixelPositioning>` | :ref:`subpixel_positioning<class_SystemFont_property_subpixel_positioning>`                             | ``1``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SystemFont_property_allow_system_fallback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_system_fallback** = ``true`` :ref:`🔗<class_SystemFont_property_allow_system_fallback>`

.. rst-class:: classref-property-setget

- |void| **set_allow_system_fallback**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_system_fallback**\ (\ )

Se impostato su ``true``, i font del sistema possono essere utilizzati automaticamente come alternative di riserva.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_antialiasing:

.. rst-class:: classref-property

:ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>` **antialiasing** = ``1`` :ref:`🔗<class_SystemFont_property_antialiasing>`

.. rst-class:: classref-property-setget

- |void| **set_antialiasing**\ (\ value\: :ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>`\ )
- :ref:`FontAntialiasing<enum_TextServer_FontAntialiasing>` **get_antialiasing**\ (\ )

Modalità anti-aliasing del font.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_disable_embedded_bitmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_embedded_bitmaps** = ``true`` :ref:`🔗<class_SystemFont_property_disable_embedded_bitmaps>`

.. rst-class:: classref-property-setget

- |void| **set_disable_embedded_bitmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_disable_embedded_bitmaps**\ (\ )

Se impostato su ``true``, il caricamento delle bitmap dei font incorporati è disabilitato (i font solo con bitmap e i font colorati ignorano questa proprietà).

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_italic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **font_italic** = ``false`` :ref:`🔗<class_SystemFont_property_font_italic>`

.. rst-class:: classref-property-setget

- |void| **set_font_italic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_font_italic**\ (\ )

Se impostato su ``true``, i font in italico o in obliquo sono preferiti.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_names:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **font_names** = ``PackedStringArray()`` :ref:`🔗<class_SystemFont_property_font_names>`

.. rst-class:: classref-property-setget

- |void| **set_font_names**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_font_names**\ (\ )

Array di nomi di famiglie di font da ricercare; è utilizzato il primo font corrispondente.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_stretch:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_stretch** = ``100`` :ref:`🔗<class_SystemFont_property_font_stretch>`

.. rst-class:: classref-property-setget

- |void| **set_font_stretch**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_stretch**\ (\ )

Quantità preferita dell'allargamento del font, rispetto a una larghezza normale. Un valore di percentuale compreso tra ``50%`` e ``200%``.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_font_weight:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_weight** = ``400`` :ref:`🔗<class_SystemFont_property_font_weight>`

.. rst-class:: classref-property-setget

- |void| **set_font_weight**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_weight**\ (\ )

Peso preferito (grassetto) del font. Un valore nell'intervallo ``100...999``, il peso normale dei font è ``400``, il peso dei font in grassetto è ``700``.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_force_autohinter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_autohinter** = ``false`` :ref:`🔗<class_SystemFont_property_force_autohinter>`

.. rst-class:: classref-property-setget

- |void| **set_force_autohinter**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_force_autohinter**\ (\ )

Se impostato su ``true``, l'hinting automatico è supportato e preferito rispetto all'hinting integrato nel font.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``false`` :ref:`🔗<class_SystemFont_property_generate_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_generate_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_generate_mipmaps**\ (\ )

Se impostato su ``true``, genera mipmap per le texture del font.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_hinting:

.. rst-class:: classref-property

:ref:`Hinting<enum_TextServer_Hinting>` **hinting** = ``1`` :ref:`🔗<class_SystemFont_property_hinting>`

.. rst-class:: classref-property-setget

- |void| **set_hinting**\ (\ value\: :ref:`Hinting<enum_TextServer_Hinting>`\ )
- :ref:`Hinting<enum_TextServer_Hinting>` **get_hinting**\ (\ )

Modalità di hinting del font.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_keep_rounding_remainders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_rounding_remainders** = ``true`` :ref:`🔗<class_SystemFont_property_keep_rounding_remainders>`

.. rst-class:: classref-property-setget

- |void| **set_keep_rounding_remainders**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_keep_rounding_remainders**\ (\ )

Se impostato su ``true``, quando si allineano i glifi ai confini dei pixel, il resto dopo l'arrotondamento viene accumulato per garantire una distribuzione più uniforme dei glifi. Questa impostazione non ha effetto se è abilitato il posizionamento subpixel.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_modulate_color_glyphs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **modulate_color_glyphs** = ``false`` :ref:`🔗<class_SystemFont_property_modulate_color_glyphs>`

.. rst-class:: classref-property-setget

- |void| **set_modulate_color_glyphs**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_modulate_color_glyphs**\ (\ )

Se impostato su ``true``, la modulazione del colore è applicata quando si disegnano glifi colorati, altrimenti è applicata solo ai glifi monocromatici.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_msdf_pixel_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_pixel_range** = ``16`` :ref:`🔗<class_SystemFont_property_msdf_pixel_range>`

.. rst-class:: classref-property-setget

- |void| **set_msdf_pixel_range**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_msdf_pixel_range**\ (\ )

La larghezza dell'intervallo attorno alla forma tra la distanza con segno (signed distance) minima e massima rappresentabile. Se si usano i contorni di font, :ref:`msdf_pixel_range<class_SystemFont_property_msdf_pixel_range>` deve essere impostato almeno sul *doppio* dello spessore del contorno più grande. Il valore predefinito per :ref:`msdf_pixel_range<class_SystemFont_property_msdf_pixel_range>` di ``16`` consente a uno spessore di contorno fino a ``8`` di apparire corretto.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_msdf_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_size** = ``48`` :ref:`🔗<class_SystemFont_property_msdf_size>`

.. rst-class:: classref-property-setget

- |void| **set_msdf_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_msdf_size**\ (\ )

Dimensione del font sorgente utilizzata per generare le texture MSDF. Valori più alti consentono una maggiore precisione, ma sono più lenti da renderizzare e richiedono più memoria. Aumenta questo valore solo se noti una notevole mancanza di precisione nel rendering dei glifi.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_multichannel_signed_distance_field:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multichannel_signed_distance_field** = ``false`` :ref:`🔗<class_SystemFont_property_multichannel_signed_distance_field>`

.. rst-class:: classref-property-setget

- |void| **set_multichannel_signed_distance_field**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_multichannel_signed_distance_field**\ (\ )

Se impostato su ``true``, i glifi di tutte le dimensioni sono renderizzati utilizzando un singolo MSDF generato dai dati vettoriali dei font dinamici.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_oversampling:

.. rst-class:: classref-property

:ref:`float<class_float>` **oversampling** = ``0.0`` :ref:`🔗<class_SystemFont_property_oversampling>`

.. rst-class:: classref-property-setget

- |void| **set_oversampling**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_oversampling**\ (\ )

Se impostato su un valore positivo, sostituisce il fattore di sovracampionamento della viewport in cui è utilizzato questo font. Vedi :ref:`Viewport.oversampling<class_Viewport_property_oversampling>`. Questo valore non sostituisce il parametro ``oversampling`` dei metodi ``draw_*``.

.. rst-class:: classref-item-separator

----

.. _class_SystemFont_property_subpixel_positioning:

.. rst-class:: classref-property

:ref:`SubpixelPositioning<enum_TextServer_SubpixelPositioning>` **subpixel_positioning** = ``1`` :ref:`🔗<class_SystemFont_property_subpixel_positioning>`

.. rst-class:: classref-property-setget

- |void| **set_subpixel_positioning**\ (\ value\: :ref:`SubpixelPositioning<enum_TextServer_SubpixelPositioning>`\ )
- :ref:`SubpixelPositioning<enum_TextServer_SubpixelPositioning>` **get_subpixel_positioning**\ (\ )

Modalità di posizionamento in mezzo ai pixel del glifo del font. Il posizionamento in mezzo ai pixel fornisce testo più definito e migliore crenatura per dimensioni di font più piccole, a scapito dell'utilizzo di memoria e della velocità di rasterizzazione del font. Utilizza :ref:`TextServer.SUBPIXEL_POSITIONING_AUTO<class_TextServer_constant_SUBPIXEL_POSITIONING_AUTO>` per abilitarlo automaticamente in base alla dimensione del font.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
