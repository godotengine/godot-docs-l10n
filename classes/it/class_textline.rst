:github_url: hide

.. _class_TextLine:

TextLine
========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Mantiene una riga di testo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Astrazione sul :ref:`TextServer<class_TextServer>` per la gestione di una singola riga di testo.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`alignment<class_TextLine_property_alignment>`                         | ``0``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`direction<class_TextLine_property_direction>`                         | ``0``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                               | :ref:`ellipsis_char<class_TextLine_property_ellipsis_char>`                 | ``"…"``   |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`flags<class_TextLine_property_flags>`                                 | ``3``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`Orientation<enum_TextServer_Orientation>`                           | :ref:`orientation<class_TextLine_property_orientation>`                     | ``0``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_control<class_TextLine_property_preserve_control>`           | ``false`` |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_invalid<class_TextLine_property_preserve_invalid>`           | ``true``  |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`                   | :ref:`text_overrun_behavior<class_TextLine_property_text_overrun_behavior>` | ``3``     |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_TextLine_property_width>`                                 | ``-1.0``  |
   +---------------------------------------------------------------------------+-----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_object<class_TextLine_method_add_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ ) |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_string<class_TextLine_method_add_string>`\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ )                                         |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`clear<class_TextLine_method_clear>`\ (\ )                                                                                                                                                                                                                                                    |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw<class_TextLine_method_draw>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                                  |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_outline<class_TextLine_method_draw_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|        |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextLine<class_TextLine>`             | :ref:`duplicate<class_TextLine_method_duplicate>`\ (\ ) |const|                                                                                                                                                                                                                                    |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Direction<enum_TextServer_Direction>` | :ref:`get_inferred_direction<class_TextLine_method_get_inferred_direction>`\ (\ ) |const|                                                                                                                                                                                                          |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_ascent<class_TextLine_method_get_line_ascent>`\ (\ ) |const|                                                                                                                                                                                                                        |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_descent<class_TextLine_method_get_line_descent>`\ (\ ) |const|                                                                                                                                                                                                                      |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_position<class_TextLine_method_get_line_underline_position>`\ (\ ) |const|                                                                                                                                                                                                |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_thickness<class_TextLine_method_get_line_underline_thickness>`\ (\ ) |const|                                                                                                                                                                                              |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_width<class_TextLine_method_get_line_width>`\ (\ ) |const|                                                                                                                                                                                                                          |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                   | :ref:`get_object_rect<class_TextLine_method_get_object_rect>`\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                   |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                   | :ref:`get_objects<class_TextLine_method_get_objects>`\ (\ ) |const|                                                                                                                                                                                                                                |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_rid<class_TextLine_method_get_rid>`\ (\ ) |const|                                                                                                                                                                                                                                        |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_size<class_TextLine_method_get_size>`\ (\ ) |const|                                                                                                                                                                                                                                      |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`has_object<class_TextLine_method_has_object>`\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                             |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`hit_test<class_TextLine_method_hit_test>`\ (\ coords\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                  |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`resize_object<class_TextLine_method_resize_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ )                               |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_bidi_override<class_TextLine_method_set_bidi_override>`\ (\ override\: :ref:`Array<class_Array>`\ )                                                                                                                                                                                      |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`tab_align<class_TextLine_method_tab_align>`\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )                                                                                                                                                                           |
   +---------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TextLine_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_TextLine_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Imposta l'allineamento del testo all'interno della riga come se la riga fosse orizzontale.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **direction** = ``0`` :ref:`🔗<class_TextLine_property_direction>`

.. rst-class:: classref-property-setget

- |void| **set_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_direction**\ (\ )

Direzione di scrittura del testo.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_TextLine_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

Carattere di ellissi (puntini di sospensione) utilizzato per ritagliare il testo.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **flags** = ``3`` :ref:`🔗<class_TextLine_property_flags>`

.. rst-class:: classref-property-setget

- |void| **set_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_flags**\ (\ )

Regole di allineamento delle righe. Per maggiori informazioni, vedi :ref:`TextServer<class_TextServer>`.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_orientation:

.. rst-class:: classref-property

:ref:`Orientation<enum_TextServer_Orientation>` **orientation** = ``0`` :ref:`🔗<class_TextLine_property_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_orientation**\ (\ value\: :ref:`Orientation<enum_TextServer_Orientation>`\ )
- :ref:`Orientation<enum_TextServer_Orientation>` **get_orientation**\ (\ )

Orientamento del testo.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_preserve_control:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_control** = ``false`` :ref:`🔗<class_TextLine_property_preserve_control>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_control**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_control**\ (\ )

Se impostato su ``true`` il testo visualizzerà i caratteri di controllo.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_preserve_invalid:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_invalid** = ``true`` :ref:`🔗<class_TextLine_property_preserve_invalid>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_invalid**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_invalid**\ (\ )

Se impostato sul ``true`` il testo visualizzerà i caratteri non validi.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``3`` :ref:`🔗<class_TextLine_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

Il comportamento di ritaglio quando il testo supera la larghezza impostata della riga di testo.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``-1.0`` :ref:`🔗<class_TextLine_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

Larghezza della riga di testo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TextLine_method_add_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextLine_method_add_object>`

Aggiunge un oggetto in riga al buffer di testo, la chiave ``key`` deve essere univoca. Nel testo, l'oggetto è rappresentato come un numero di ``length`` caratteri di sostituzione.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_add_string:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_string**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_TextLine_method_add_string>`

Aggiunge una riga di testo e il font per disegnarla.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TextLine_method_clear>`

Cancella la riga di testo (rimuove il testo e gli oggetti in riga).

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextLine_method_draw>`

Disegna il testo in un elemento canvas in una posizione specificata, con il colore ``color``. ``pos`` specifica l'angolo superiore sinistro del riquadro di delimitazione. Se ``oversampling`` è maggiore di zero, è utilizzato come fattore di sovracampionamento del font, altrimenti sono utilizzate le impostazioni di sovracampionamento della viewport.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_draw_outline:

.. rst-class:: classref-method

|void| **draw_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextLine_method_draw_outline>`

Disegna il testo in un elemento canvas in una posizione specificata, con il colore ``color``. ``pos`` specifica l'angolo superiore sinistro del riquadro di delimitazione. Se ``oversampling`` è maggiore di zero, è utilizzato come fattore di sovracampionamento del font, altrimenti sono utilizzate le impostazioni di sovracampionamento della viewport.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_duplicate:

.. rst-class:: classref-method

:ref:`TextLine<class_TextLine>` **duplicate**\ (\ ) |const| :ref:`🔗<class_TextLine_method_duplicate>`

Duplica questo **TextLine**.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_inferred_direction:

.. rst-class:: classref-method

:ref:`Direction<enum_TextServer_Direction>` **get_inferred_direction**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_inferred_direction>`

Restituisce la direzione di scrittura del testo, dedotta dall'algoritmo BiDi.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_ascent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_ascent**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_ascent>`

Restituisce l'ascesa del testo (numero di pixel sopra la linea di base per un layout orizzontale o a sinistra della linea di base per un layout verticale).

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_descent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_descent**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_descent>`

Restituisce la discesa del testo (numero di pixel sotto la linea di base per un layout orizzontale o a destra della linea di base per un layout verticale).

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_underline_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_position**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_underline_position>`

Restituisce l'offset in pixel della sottolineatura sotto la linea di base.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_underline_thickness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_thickness**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_underline_thickness>`

Restituisce lo spessore della sottolineatura.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_line_width:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_width**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_line_width>`

Restituisce la larghezza (per un layout orizzontale) o l'altezza (per un layout verticale) del testo.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_object_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_object_rect**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextLine_method_get_object_rect>`

Restituisce il rettangolo di delimitazione dell'oggetto in riga.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_objects:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_objects**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_objects>`

Restituisce un array di oggetti in riga.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_rid>`

Restituisce il RID del buffer nel TextServer.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_TextLine_method_get_size>`

Restituisce le dimensioni del riquadro del testo.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_has_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_object**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextLine_method_has_object>`

Restituisce ``true`` se un oggetto con la chiave ``key`` è incorporato in questa riga.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_hit_test:

.. rst-class:: classref-method

:ref:`int<class_int>` **hit_test**\ (\ coords\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_TextLine_method_hit_test>`

Restituisce l'offset per il cursore nel pixel specificato sulla linea di base. Questa funzione restituisce sempre una posizione valida.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_resize_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **resize_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextLine_method_resize_object>`

Imposta le nuove dimensioni e l'allineamento di un oggetto incorporato.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_set_bidi_override:

.. rst-class:: classref-method

|void| **set_bidi_override**\ (\ override\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_TextLine_method_set_bidi_override>`

Sostituisce il BiDi per il testo strutturato.

Gli intervalli di sostituzione devono coprire l'intero testo sorgente senza sovrapposizioni. L'algoritmo BiDi sarà utilizzato separatamente su ogni intervallo.

.. rst-class:: classref-item-separator

----

.. _class_TextLine_method_tab_align:

.. rst-class:: classref-method

|void| **tab_align**\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_TextLine_method_tab_align>`

Allinea il testo alle tabulazioni specificate.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
