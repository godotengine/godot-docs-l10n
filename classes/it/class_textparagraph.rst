:github_url: hide

.. _class_TextParagraph:

TextParagraph
=============

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene un paragrafo di testo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Astrazione sul :ref:`TextServer<class_TextServer>` per la gestione di un singolo paragrafo di testo.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`alignment<class_TextParagraph_property_alignment>`                         | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]         | :ref:`break_flags<class_TextParagraph_property_break_flags>`                     | ``3``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                               | :ref:`custom_punctuation<class_TextParagraph_property_custom_punctuation>`       | ``""``    |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`direction<class_TextParagraph_property_direction>`                         | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                               | :ref:`ellipsis_char<class_TextParagraph_property_ellipsis_char>`                 | ``"…"``   |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`justification_flags<class_TextParagraph_property_justification_flags>`     | ``163``   |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                 | :ref:`line_spacing<class_TextParagraph_property_line_spacing>`                   | ``0.0``   |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                     | :ref:`max_lines_visible<class_TextParagraph_property_max_lines_visible>`         | ``-1``    |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`Orientation<enum_TextServer_Orientation>`                           | :ref:`orientation<class_TextParagraph_property_orientation>`                     | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_control<class_TextParagraph_property_preserve_control>`           | ``false`` |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_invalid<class_TextParagraph_property_preserve_invalid>`           | ``true``  |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`                   | :ref:`text_overrun_behavior<class_TextParagraph_property_text_overrun_behavior>` | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_TextParagraph_property_width>`                                 | ``-1.0``  |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_object<class_TextParagraph_method_add_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ )                                                    |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_string<class_TextParagraph_method_add_string>`\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ )                                                                                            |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`clear<class_TextParagraph_method_clear>`\ (\ )                                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`clear_dropcap<class_TextParagraph_method_clear_dropcap>`\ (\ )                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw<class_TextParagraph_method_draw>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_dropcap<class_TextParagraph_method_draw_dropcap>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_dropcap_outline<class_TextParagraph_method_draw_dropcap_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_line<class_TextParagraph_method_draw_line>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_line_outline<class_TextParagraph_method_draw_line_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                   |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_outline<class_TextParagraph_method_draw_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextParagraph<class_TextParagraph>`   | :ref:`duplicate<class_TextParagraph_method_duplicate>`\ (\ ) |const|                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`get_dropcap_lines<class_TextParagraph_method_get_dropcap_lines>`\ (\ ) |const|                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_dropcap_rid<class_TextParagraph_method_get_dropcap_rid>`\ (\ ) |const|                                                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_dropcap_size<class_TextParagraph_method_get_dropcap_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                         |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Direction<enum_TextServer_Direction>` | :ref:`get_inferred_direction<class_TextParagraph_method_get_inferred_direction>`\ (\ ) |const|                                                                                                                                                                                                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_ascent<class_TextParagraph_method_get_line_ascent>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`get_line_count<class_TextParagraph_method_get_line_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_descent<class_TextParagraph_method_get_line_descent>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                   | :ref:`get_line_object_rect<class_TextParagraph_method_get_line_object_rect>`\ (\ line\: :ref:`int<class_int>`, key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                   | :ref:`get_line_objects<class_TextParagraph_method_get_line_objects>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`             | :ref:`get_line_range<class_TextParagraph_method_get_line_range>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_line_rid<class_TextParagraph_method_get_line_rid>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                   |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_line_size<class_TextParagraph_method_get_line_size>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                 |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_position<class_TextParagraph_method_get_line_underline_position>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_thickness<class_TextParagraph_method_get_line_underline_thickness>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                   |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_width<class_TextParagraph_method_get_line_width>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_non_wrapped_size<class_TextParagraph_method_get_non_wrapped_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                 |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`             | :ref:`get_range<class_TextParagraph_method_get_range>`\ (\ ) |const|                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_rid<class_TextParagraph_method_get_rid>`\ (\ ) |const|                                                                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_size<class_TextParagraph_method_get_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                         |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`has_object<class_TextParagraph_method_has_object>`\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                                                                                |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`hit_test<class_TextParagraph_method_hit_test>`\ (\ coords\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                                                                                                 |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`resize_object<class_TextParagraph_method_resize_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ )                                                                                  |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_bidi_override<class_TextParagraph_method_set_bidi_override>`\ (\ override\: :ref:`Array<class_Array>`\ )                                                                                                                                                                                                                                         |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`set_dropcap<class_TextParagraph_method_set_dropcap>`\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, dropcap_margins\: :ref:`Rect2<class_Rect2>` = Rect2(0, 0, 0, 0), language\: :ref:`String<class_String>` = ""\ )                                                                      |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`tab_align<class_TextParagraph_method_tab_align>`\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )                                                                                                                                                                                                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TextParagraph_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_TextParagraph_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_alignment**\ (\ )

Allineamento orizzontale del paragrafo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_break_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **break_flags** = ``3`` :ref:`🔗<class_TextParagraph_property_break_flags>`

.. rst-class:: classref-property-setget

- |void| **set_break_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_break_flags**\ (\ )

Regole di interruzione di riga. Per ulteriori informazioni, vedi :ref:`TextServer<class_TextServer>`.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_custom_punctuation:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_punctuation** = ``""`` :ref:`🔗<class_TextParagraph_property_custom_punctuation>`

.. rst-class:: classref-property-setget

- |void| **set_custom_punctuation**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_custom_punctuation**\ (\ )

Lista personalizzata di caratteri di punteggiatura, utilizzati per suddividere le parole. Se impostato su stringa vuota, sono utilizzati i valori predefiniti del server.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **direction** = ``0`` :ref:`🔗<class_TextParagraph_property_direction>`

.. rst-class:: classref-property-setget

- |void| **set_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_direction**\ (\ )

Direzione di scrittura del testo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_TextParagraph_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

Carattere di ellissi (puntini di sospensione) utilizzato per ritagliare il testo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_TextParagraph_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

Regole di allineamento del riempimento per le righe.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``0.0`` :ref:`🔗<class_TextParagraph_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

Spaziatura verticale aggiuntiva tra le righe (in pixel), la spaziatura è aggiunta alla discesa della riga. Questo valore può essere negativo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_max_lines_visible:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_lines_visible** = ``-1`` :ref:`🔗<class_TextParagraph_property_max_lines_visible>`

.. rst-class:: classref-property-setget

- |void| **set_max_lines_visible**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_lines_visible**\ (\ )

Limita le righe del testo mostrato.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_orientation:

.. rst-class:: classref-property

:ref:`Orientation<enum_TextServer_Orientation>` **orientation** = ``0`` :ref:`🔗<class_TextParagraph_property_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_orientation**\ (\ value\: :ref:`Orientation<enum_TextServer_Orientation>`\ )
- :ref:`Orientation<enum_TextServer_Orientation>` **get_orientation**\ (\ )

Orientamento del testo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_preserve_control:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_control** = ``false`` :ref:`🔗<class_TextParagraph_property_preserve_control>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_control**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_control**\ (\ )

Se impostato su ``true`` il testo visualizzerà i caratteri di controllo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_preserve_invalid:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_invalid** = ``true`` :ref:`🔗<class_TextParagraph_property_preserve_invalid>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_invalid**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_invalid**\ (\ )

Se impostato sul ``true`` il testo visualizzerà i caratteri non validi.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_TextParagraph_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

Il comportamento di ritaglio quando il testo supera la larghezza impostata del paragrafo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``-1.0`` :ref:`🔗<class_TextParagraph_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

Larghezza del paragrafo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TextParagraph_method_add_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextParagraph_method_add_object>`

Aggiunge un oggetto in riga al buffer di testo, la chiave ``key`` deve essere univoca. Nel testo, l'oggetto è rappresentato come un numero di ``length`` caratteri di sostituzione.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_add_string:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_string**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_TextParagraph_method_add_string>`

Aggiunge una riga di testo e il font per disegnarla.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TextParagraph_method_clear>`

Cancella il paragrafo di testo (rimuove il testo e gli oggetti in riga).

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_clear_dropcap:

.. rst-class:: classref-method

|void| **clear_dropcap**\ (\ ) :ref:`🔗<class_TextParagraph_method_clear_dropcap>`

Rimuove il capolettera.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw>`

Disegna tutte le righe del testo e il capolettera in un elemento canvas in una posizione specificata, con il colore ``color``. ``pos`` specifica l'angolo superiore sinistro del riquadro di delimitazione. Se ``oversampling`` è maggiore di zero, è utilizzato come fattore di sovracampionamento del font, altrimenti sono utilizzate le impostazioni di sovracampionamento della viewport.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_dropcap:

.. rst-class:: classref-method

|void| **draw_dropcap**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_dropcap>`

Disegna il capolettera in un elemento canvas in una posizione specificata, con il colore ``color``. ``pos`` specifica l'angolo superiore sinistro del riquadro di delimitazione. Se ``oversampling`` è maggiore di zero, è utilizzato come fattore di sovracampionamento del font, altrimenti sono utilizzate le impostazioni di sovracampionamento della viewport.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_dropcap_outline:

.. rst-class:: classref-method

|void| **draw_dropcap_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_dropcap_outline>`

Disegna il contorno del capolettera in un elemento canvas in una posizione specificata, con il colore ``color``. ``pos`` specifica l'angolo superiore sinistro del riquadro di delimitazione. Se ``oversampling`` è maggiore di zero, è utilizzato come fattore di sovracampionamento del font, altrimenti sono utilizzate le impostazioni di sovracampionamento della viewport.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_line:

.. rst-class:: classref-method

|void| **draw_line**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_line>`

Disegna una singola riga in un elemento canvas in una posizione specificata, con il colore ``color``. ``pos`` specifica l'angolo superiore sinistro del riquadro di delimitazione. Se ``oversampling`` è maggiore di zero, è utilizzato come fattore di sovracampionamento del font, altrimenti sono utilizzate le impostazioni di sovracampionamento della viewport.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_line_outline:

.. rst-class:: classref-method

|void| **draw_line_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_line_outline>`

Disegna il contorno di una singola riga in un elemento canvas in una posizione specificata, con il colore ``color``. ``pos`` specifica l'angolo superiore sinistro del riquadro di delimitazione. Se ``oversampling`` è maggiore di zero, è utilizzato come fattore di sovracampionamento del font, altrimenti sono utilizzate le impostazioni di sovracampionamento della viewport.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_outline:

.. rst-class:: classref-method

|void| **draw_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_outline>`

Disegna i contorni di tutte le righe del testo e del capolettera in un elemento canvas in una posizione specificata, con ``color``. ``pos`` specifica l'angolo superiore sinistro del riquadro di delimitazione. Se ``oversampling`` è maggiore di zero, è utilizzato come fattore di sovracampionamento del font, altrimenti sono utilizzate le impostazioni di sovracampionamento della viewport.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_duplicate:

.. rst-class:: classref-method

:ref:`TextParagraph<class_TextParagraph>` **duplicate**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_duplicate>`

Duplica questo **TextParagraph**.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_lines:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_dropcap_lines**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_lines>`

Restituisce il numero di righe utilizzate dal capo lettera.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_dropcap_rid**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_rid>`

Restituisce il RID del buffer di testo del capolettera.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_dropcap_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_size>`

Restituisce il riquadro di delimitazione del capolettera.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_inferred_direction:

.. rst-class:: classref-method

:ref:`Direction<enum_TextServer_Direction>` **get_inferred_direction**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_inferred_direction>`

Restituisce la direzione di scrittura del testo, dedotta dall'algoritmo BiDi.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_ascent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_ascent**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_ascent>`

Restituisce l'ascesa della riga di testo (numero di pixel sopra la linea di base per un layout orizzontale o a sinistra della linea di base per un layout verticale).

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_count**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_count>`

Restituisce il numero di righe nel paragrafo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_descent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_descent**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_descent>`

Restituisce la discesa della riga di testo (numero di pixel sotto la linea di base per un layout orizzontale o a destra della linea di base per un layout verticale).

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_object_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_line_object_rect**\ (\ line\: :ref:`int<class_int>`, key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_object_rect>`

Restituisce il rettangolo di delimitazione dell'oggetto in riga.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_objects:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_line_objects**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_objects>`

Restituisce un'array di oggetti in riga nella riga.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_range:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_line_range**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_range>`

Restituisce la gamma di caratteri della riga.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_line_rid**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_rid>`

Restituisce il :ref:`RID<class_RID>` del buffer di riga nel TextServer.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_line_size**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_size>`

Restituisce le dimensioni del riquadro della riga di testo. Le dimensioni restituite sono arrotondate per eccesso.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_underline_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_position**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_underline_position>`

Restituisce l'offset in pixel della sottolineatura sotto la linea di base.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_underline_thickness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_thickness**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_underline_thickness>`

Restituisce lo spessore della sottolineatura.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_width:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_width**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_width>`

Restituisce la larghezza (per il layout orizzontale) o l'altezza (per il layout verticale) della riga di testo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_non_wrapped_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_non_wrapped_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_non_wrapped_size>`

Restituisce le dimensioni del riquadro del paragrafo, senza interruzioni di riga.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_range:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_range**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_range>`

Restituisce l'intervallo di caratteri del paragrafo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_rid>`

Restituisce il RID del buffer della stringa completa nel TextServer.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_size>`

Restituisce le dimensioni del riquadro del paragrafo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_has_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_object**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextParagraph_method_has_object>`

Restituisce ``true`` se un oggetto con la chiave ``key`` è incorporato in questo buffer di testo sagomato.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_hit_test:

.. rst-class:: classref-method

:ref:`int<class_int>` **hit_test**\ (\ coords\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TextParagraph_method_hit_test>`

Restituisce l'offset per il cursore alle coordinate specificate. Questa funzione restituisce sempre una posizione valida.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_resize_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **resize_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextParagraph_method_resize_object>`

Imposta le nuove dimensioni e l'allineamento di un oggetto incorporato.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_set_bidi_override:

.. rst-class:: classref-method

|void| **set_bidi_override**\ (\ override\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_TextParagraph_method_set_bidi_override>`

Sostituisce il BiDi per il testo strutturato.

Gli intervalli di sostituzione devono coprire l'intero testo sorgente senza sovrapposizioni. L'algoritmo BiDi sarà utilizzato separatamente su ogni intervallo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_set_dropcap:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_dropcap**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, dropcap_margins\: :ref:`Rect2<class_Rect2>` = Rect2(0, 0, 0, 0), language\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_TextParagraph_method_set_dropcap>`

Imposta il capolettera, sovrascrive il capolettera impostato in precedenza. Il capolettera è un elemento decorativo all'inizio di un paragrafo che è più grande del resto del testo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_tab_align:

.. rst-class:: classref-method

|void| **tab_align**\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_TextParagraph_method_tab_align>`

Allinea il paragrafo alle tabulazioni specificate.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
