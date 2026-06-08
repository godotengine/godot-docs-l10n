:github_url: hide

.. meta::
	:keywords: text

.. _class_Label:

Label
=====

**Eredita:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un controllo per visualizzare testo semplice.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un controllo per visualizzare testo semplice. Ti dà il controllo sull'allineamento orizzontale e verticale e può racchiudere il testo all'interno del rettangolo di delimitazione del nodo. Non supporta grassetto, corsivo o altre formattazioni di testo avanzate. Per questo, usa :ref:`RichTextLabel<class_RichTextLabel>`.

\ **Nota:** Un singolo nodo Label non è progettato per visualizzare grandi quantità di testo. Per visualizzare grandi quantità di testo in un singolo nodo, si consiglia di utilizzare :ref:`RichTextLabel<class_RichTextLabel>`, che supporta funzionalità come la barra di scorrimento integrata e la gestione su un thread. :ref:`RichTextLabel<class_RichTextLabel>` offre generalmente prestazioni migliori se usato per visualizzare grandi quantità di testo (diverse pagine o più).

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo 2D "Dodge The Creeps" <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`                           | :ref:`autowrap_mode<class_Label_property_autowrap_mode>`                                                 | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]           | :ref:`autowrap_trim_flags<class_Label_property_autowrap_trim_flags>`                                     | ``192``                                                                      |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                     | :ref:`clip_text<class_Label_property_clip_text>`                                                         | ``false``                                                                    |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                 | :ref:`ellipsis_char<class_Label_property_ellipsis_char>`                                                 | ``"…"``                                                                      |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`           | :ref:`horizontal_alignment<class_Label_property_horizontal_alignment>`                                   | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]   | :ref:`justification_flags<class_Label_property_justification_flags>`                                     | ``163``                                                                      |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`LabelSettings<class_LabelSettings>`                                   | :ref:`label_settings<class_Label_property_label_settings>`                                               |                                                                              |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                 | :ref:`language<class_Label_property_language>`                                                           | ``""``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                       | :ref:`lines_skipped<class_Label_property_lines_skipped>`                                                 | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                       | :ref:`max_lines_visible<class_Label_property_max_lines_visible>`                                         | ``-1``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`                                | mouse_filter                                                                                             | ``2`` (overrides :ref:`Control<class_Control_property_mouse_filter>`)        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                 | :ref:`paragraph_separator<class_Label_property_paragraph_separator>`                                     | ``"\\n"``                                                                    |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]                      | size_flags_vertical                                                                                      | ``4`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`) |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`           | :ref:`structured_text_bidi_override<class_Label_property_structured_text_bidi_override>`                 | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                   | :ref:`structured_text_bidi_override_options<class_Label_property_structured_text_bidi_override_options>` | ``[]``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`                         | :ref:`tab_stops<class_Label_property_tab_stops>`                                                         | ``PackedFloat32Array()``                                                     |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                 | :ref:`text<class_Label_property_text>`                                                                   | ``""``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                            | :ref:`text_direction<class_Label_property_text_direction>`                                               | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`                     | :ref:`text_overrun_behavior<class_Label_property_text_overrun_behavior>`                                 | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                     | :ref:`uppercase<class_Label_property_uppercase>`                                                         | ``false``                                                                    |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`               | :ref:`vertical_alignment<class_Label_property_vertical_alignment>`                                       | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                       | :ref:`visible_characters<class_Label_property_visible_characters>`                                       | ``-1``                                                                       |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>` | :ref:`visible_characters_behavior<class_Label_property_visible_characters_behavior>`                     | ``0``                                                                        |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                   | :ref:`visible_ratio<class_Label_property_visible_ratio>`                                                 | ``1.0``                                                                      |
   +-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_character_bounds<class_Label_method_get_character_bounds>`\ (\ pos\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_line_count<class_Label_method_get_line_count>`\ (\ ) |const|                                          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_line_height<class_Label_method_get_line_height>`\ (\ line\: :ref:`int<class_int>` = -1\ ) |const|     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_total_character_count<class_Label_method_get_total_character_count>`\ (\ ) |const|                    |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`     | :ref:`get_visible_line_count<class_Label_method_get_visible_line_count>`\ (\ ) |const|                          |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_Label_theme_color_font_color>`                      | ``Color(1, 1, 1, 1)`` |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_Label_theme_color_font_outline_color>`      | ``Color(0, 0, 0, 1)`` |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_shadow_color<class_Label_theme_color_font_shadow_color>`        | ``Color(0, 0, 0, 0)`` |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`line_spacing<class_Label_theme_constant_line_spacing>`               | ``3``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_Label_theme_constant_outline_size>`               | ``0``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`paragraph_spacing<class_Label_theme_constant_paragraph_spacing>`     | ``0``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`shadow_offset_x<class_Label_theme_constant_shadow_offset_x>`         | ``1``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`shadow_offset_y<class_Label_theme_constant_shadow_offset_y>`         | ``1``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`shadow_outline_size<class_Label_theme_constant_shadow_outline_size>` | ``1``                 |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_Label_theme_font_font>`                                   |                       |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_Label_theme_font_size_font_size>`                    |                       |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`focus<class_Label_theme_style_focus>`                                |                       |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal<class_Label_theme_style_normal>`                              |                       |
   +---------------------------------+----------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Label_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_Label_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

If set to something other than :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>`, the text gets wrapped inside the node's bounding rectangle. If you resize the node, it will change its height automatically to show all the text.

\ **Note:** Labels with autowrapping enabled must have a custom maximum width configured to work correctly, either through the Label's own :ref:`Control.custom_maximum_size<class_Control_property_custom_maximum_size>` or as a result of a propagated maximum size from a parent Control with :ref:`Control.propagate_maximum_size<class_Control_property_propagate_maximum_size>` enabled.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_autowrap_trim_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **autowrap_trim_flags** = ``192`` :ref:`🔗<class_Label_property_autowrap_trim_flags>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_trim_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_autowrap_trim_flags**\ (\ )

Flag di troncamento spazi per il ritorno a capo automatico. Vedi :ref:`TextServer.BREAK_TRIM_START_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_START_EDGE_SPACES>` e :ref:`TextServer.BREAK_TRIM_END_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_END_EDGE_SPACES>` per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_clip_text:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_text** = ``false`` :ref:`🔗<class_Label_property_clip_text>`

.. rst-class:: classref-property-setget

- |void| **set_clip_text**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_clipping_text**\ (\ )

Se ``true``, l'etichetta mostra solo il testo che rientra nel rettangolo di delimitazione e ritaglia il testo orizzontalmente.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_Label_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

Carattere di ellissi (puntini di sospensione) utilizzato per ritagliare il testo.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_horizontal_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **horizontal_alignment** = ``0`` :ref:`🔗<class_Label_property_horizontal_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Controlla l'allineamento orizzontale del testo. Supporta sinistra, centro, destra, e riempi (noto anche come giustifica).

.. rst-class:: classref-item-separator

----

.. _class_Label_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_Label_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

Regole di allineamento del riempimento per le righe.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_label_settings:

.. rst-class:: classref-property

:ref:`LabelSettings<class_LabelSettings>` **label_settings** :ref:`🔗<class_Label_property_label_settings>`

.. rst-class:: classref-property-setget

- |void| **set_label_settings**\ (\ value\: :ref:`LabelSettings<class_LabelSettings>`\ )
- :ref:`LabelSettings<class_LabelSettings>` **get_label_settings**\ (\ )

Una risorsa :ref:`LabelSettings<class_LabelSettings>` che può essere condivisa tra più nodi **Label**. Ha la priorità sulle proprietà del tema.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_Label_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Language code used for line-breaking and text shaping algorithms. If left empty, the current locale is used instead.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_lines_skipped:

.. rst-class:: classref-property

:ref:`int<class_int>` **lines_skipped** = ``0`` :ref:`🔗<class_Label_property_lines_skipped>`

.. rst-class:: classref-property-setget

- |void| **set_lines_skipped**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_lines_skipped**\ (\ )

Il numero di righe ignorate e non visualizzate dall'inizio del testo (:ref:`text<class_Label_property_text>`).

.. rst-class:: classref-item-separator

----

.. _class_Label_property_max_lines_visible:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_lines_visible** = ``-1`` :ref:`🔗<class_Label_property_max_lines_visible>`

.. rst-class:: classref-property-setget

- |void| **set_max_lines_visible**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_lines_visible**\ (\ )

Limita il numero delle righe di testo che il nodo mostra sullo schermo.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_paragraph_separator:

.. rst-class:: classref-property

:ref:`String<class_String>` **paragraph_separator** = ``"\\n"`` :ref:`🔗<class_Label_property_paragraph_separator>`

.. rst-class:: classref-property-setget

- |void| **set_paragraph_separator**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_paragraph_separator**\ (\ )

Stringa utilizzata come separatore di paragrafo. Ogni paragrafo è elaborato in modo indipendente, nel proprio contesto BiDi.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_Label_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

Imposta la sostituzione dell'algoritmo BiDi per il testo strutturato.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_Label_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

Imposta opzioni aggiuntive per la sostituzione BiDi.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_tab_stops:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **tab_stops** = ``PackedFloat32Array()`` :ref:`🔗<class_Label_property_tab_stops>`

.. rst-class:: classref-property-setget

- |void| **set_tab_stops**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_tab_stops**\ (\ )

Allinea il testo alle tabulazioni specificate.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_Label_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Il testo da visualizzare sullo schermo.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_Label_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

Direzione di scrittura del testo di base.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_Label_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

Il comportamento di ritaglio quando il testo supera il rettangolo di delimitazione del nodo.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_uppercase:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **uppercase** = ``false`` :ref:`🔗<class_Label_property_uppercase>`

.. rst-class:: classref-property-setget

- |void| **set_uppercase**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_uppercase**\ (\ )

Se ``true``, tutto il testo è visualizzato in MAIUSCOLO.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_vertical_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_alignment** = ``0`` :ref:`🔗<class_Label_property_vertical_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_alignment**\ (\ )

Controlla l'allineamento verticale del testo. Supporta sopra, centro, sotto e riempi.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_visible_characters:

.. rst-class:: classref-property

:ref:`int<class_int>` **visible_characters** = ``-1`` :ref:`🔗<class_Label_property_visible_characters>`

.. rst-class:: classref-property-setget

- |void| **set_visible_characters**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_visible_characters**\ (\ )

Il numero di caratteri da visualizzare. Se impostato su ``-1``, tutti i caratteri sono visualizzati. Può essere utile quando si anima il testo che appare in una finestra di dialogo.

\ **Nota:** Impostando questa proprietà si aggiorna :ref:`visible_ratio<class_Label_property_visible_ratio>` di conseguenza.

\ **Nota:** I caratteri sono conteggiati come codici Unicode. Un singolo grafema visibile può contenere più codici (ad esempio, alcune emoji ne utilizzano tre). Un singolo codice può contenere due caratteri UTF-16, i quali sono utilizzati nelle stringhe C#.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_visible_characters_behavior:

.. rst-class:: classref-property

:ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>` **visible_characters_behavior** = ``0`` :ref:`🔗<class_Label_property_visible_characters_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_visible_characters_behavior**\ (\ value\: :ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>`\ )
- :ref:`VisibleCharactersBehavior<enum_TextServer_VisibleCharactersBehavior>` **get_visible_characters_behavior**\ (\ )

Il comportamento di ritaglio quando è impostato :ref:`visible_characters<class_Label_property_visible_characters>` o :ref:`visible_ratio<class_Label_property_visible_ratio>`.

.. rst-class:: classref-item-separator

----

.. _class_Label_property_visible_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **visible_ratio** = ``1.0`` :ref:`🔗<class_Label_property_visible_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_visible_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visible_ratio**\ (\ )

La frazione di caratteri da visualizzare, relativa al numero totale di caratteri (vedi :ref:`get_total_character_count()<class_Label_method_get_total_character_count>`). Se impostato su ``1.0``, sono visualizzati tutti i caratteri. Se impostato su ``0.5``, sarà visualizzata solo la metà dei caratteri. Questo può essere utile quando si anima il testo che appare in una finestra di dialogo.

\ **Nota:** Impostando questa proprietà viene aggiornato :ref:`visible_characters<class_Label_property_visible_characters>` di conseguenza.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Label_method_get_character_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_character_bounds**\ (\ pos\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Label_method_get_character_bounds>`

Restituisce il rettangolo di delimitazione del carattere nella posizione ``pos``, nel sistema di coordinate locale dell'etichetta. Se il carattere è un carattere non visivo o ``pos`` è al di fuori dell'intervallo valido, viene restituito un :ref:`Rect2<class_Rect2>` vuoto. Se il carattere è parte di un grafema composito, è restituito il rettangolo di delimitazione dell'intero grafema.

.. rst-class:: classref-item-separator

----

.. _class_Label_method_get_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_count**\ (\ ) |const| :ref:`🔗<class_Label_method_get_line_count>`

Restituisce il numero di righe di testo che l'etichetta ha.

.. rst-class:: classref-item-separator

----

.. _class_Label_method_get_line_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_height**\ (\ line\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_Label_method_get_line_height>`

Restituisce l'altezza della riga ``line``.

Se ``line`` è impostato su ``-1``, restituisce l'altezza della riga più grande.

Se non ci sono righe, restituisce la dimensione del font in pixel.

.. rst-class:: classref-item-separator

----

.. _class_Label_method_get_total_character_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_total_character_count**\ (\ ) |const| :ref:`🔗<class_Label_method_get_total_character_count>`

Restituisce il numero totale di caratteri stampabili nel testo (esclusi spazi e ritorni a capo).

.. rst-class:: classref-item-separator

----

.. _class_Label_method_get_visible_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_visible_line_count**\ (\ ) |const| :ref:`🔗<class_Label_method_get_visible_line_count>`

Restituisce il numero di righe mostrate. Utile se l'altezza del **Label** non può attualmente visualizzare tutte le righe.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_Label_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Label_theme_color_font_color>`

Il :ref:`Color<class_Color>` predefinito del testo del **Label**.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Label_theme_color_font_outline_color>`

Il :ref:`Color<class_Color>` del contorno del testo.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_color_font_shadow_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_shadow_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_Label_theme_color_font_shadow_color>`

Il :ref:`Color<class_Color>` dell'ombra del testo.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_line_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **line_spacing** = ``3`` :ref:`🔗<class_Label_theme_constant_line_spacing>`

Spaziatura verticale aggiuntiva tra le righe (in pixel), la spaziatura è aggiunta alla discesa della riga. Questo valore può essere negativo.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_Label_theme_constant_outline_size>`

Dimensione del contorno del testo.

\ **Nota:** Se si utilizza un font con :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` abilitato, il suo :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` deve essere impostato su almeno il *doppio* del valore di :ref:`outline_size<class_Label_theme_constant_outline_size>` affinché il rendering del contorno appaia corretto. Altrimenti, il contorno potrebbe apparire troncato prima del previsto.

\ **Nota:** Non è consigliato utilizzare un valore maggiore della metà della dimensione del font, altrimenti il contorno del font potrebbe non chiudersi completamente.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_paragraph_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **paragraph_spacing** = ``0`` :ref:`🔗<class_Label_theme_constant_paragraph_spacing>`

Spazio verticale tra i paragrafi. Aggiunto assieme a :ref:`line_spacing<class_Label_theme_constant_line_spacing>`.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_shadow_offset_x:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **shadow_offset_x** = ``1`` :ref:`🔗<class_Label_theme_constant_shadow_offset_x>`

Lo scostamento orizzontale dell'ombra del testo.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_shadow_offset_y:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **shadow_offset_y** = ``1`` :ref:`🔗<class_Label_theme_constant_shadow_offset_y>`

Lo scostamento verticale dell'ombra del testo.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_constant_shadow_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **shadow_outline_size** = ``1`` :ref:`🔗<class_Label_theme_constant_shadow_outline_size>`

La dimensione del contorno dell'ombra.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_Label_theme_font_font>`

:ref:`Font<class_Font>` utilizzato per il testo del **Label**.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_Label_theme_font_size_font_size>`

Dimensione del font utilizzato per il testo del **Label**.

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_Label_theme_style_focus>`

:ref:`StyleBox<class_StyleBox>` utilizzato quando il **Label** è focalizzato (quando utilizzato tramite applicazioni assistive).

.. rst-class:: classref-item-separator

----

.. _class_Label_theme_style_normal:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal** :ref:`🔗<class_Label_theme_style_normal>`

Lo :ref:`StyleBox<class_StyleBox>` di sfondo per il **Label**.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
