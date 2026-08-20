:github_url: hide

.. _class_TextMesh:

TextMesh
========

**Eredita:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Genera un :ref:`PrimitiveMesh<class_PrimitiveMesh>` dal testo.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Genera un :ref:`PrimitiveMesh<class_PrimitiveMesh>` dal testo.

È possibile generare un TextMesh solo quando si utilizzano font dinamici con contorni di glifi vettoriali. I caratteri bitmap (compresi i dati bitmap nei contenitori TrueType/OpenType, come i caratteri emoji a colori) non sono supportati.

Il layout UV è disposto in 4 fasce orizzontali, dall'alto verso il basso: 40% dell'altezza per la faccia anteriore, 40% per la faccia posteriore, 10% per i bordi esterni e 10% per i bordi interni.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Testo 3D <../tutorials/3d/3d_text>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`                         | :ref:`autowrap_mode<class_TextMesh_property_autowrap_mode>`                                                 | ``0``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`curve_step<class_TextMesh_property_curve_step>`                                                       | ``0.5``           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`depth<class_TextMesh_property_depth>`                                                                 | ``0.05``          |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Font<class_Font>`                                                   | :ref:`font<class_TextMesh_property_font>`                                                                   |                   |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                     | :ref:`font_size<class_TextMesh_property_font_size>`                                                         | ``16``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`horizontal_alignment<class_TextMesh_property_horizontal_alignment>`                                   | ``1``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`justification_flags<class_TextMesh_property_justification_flags>`                                     | ``163``           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`                                               | :ref:`language<class_TextMesh_property_language>`                                                           | ``""``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`line_spacing<class_TextMesh_property_line_spacing>`                                                   | ``0.0``           |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                             | :ref:`offset<class_TextMesh_property_offset>`                                                               | ``Vector2(0, 0)`` |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`pixel_size<class_TextMesh_property_pixel_size>`                                                       | ``0.01``          |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`         | :ref:`structured_text_bidi_override<class_TextMesh_property_structured_text_bidi_override>`                 | ``0``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Array<class_Array>`                                                 | :ref:`structured_text_bidi_override_options<class_TextMesh_property_structured_text_bidi_override_options>` | ``[]``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`                                               | :ref:`text<class_TextMesh_property_text>`                                                                   | ``""``            |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`text_direction<class_TextMesh_property_text_direction>`                                               | ``0``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`uppercase<class_TextMesh_property_uppercase>`                                                         | ``false``         |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`             | :ref:`vertical_alignment<class_TextMesh_property_vertical_alignment>`                                       | ``1``             |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_TextMesh_property_width>`                                                                 | ``500.0``         |
   +---------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TextMesh_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_TextMesh_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

Se impostato su un valore diverso da :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>`, il testo è racchiuso all'interno del rettangolo di delimitazione del nodo. Se il nodo si ridimensiona, la sua altezza si adatterà automaticamente per mostrare tutto il testo.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_curve_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **curve_step** = ``0.5`` :ref:`🔗<class_TextMesh_property_curve_step>`

.. rst-class:: classref-property-setget

- |void| **set_curve_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_curve_step**\ (\ )

Passo (in pixel) utilizzato per approssimare le curve di Bézier. Valori più bassi producono curve più uniformi, ma è più lento da generare e renderizzare. Si consiglia di regolare questo valore in base alla dimensione del font e alla tipica distanza di visione.

\ **Nota:** Cambiare questa proprietà rigenererà la mesh, il che è un'operazione lenta soprattutto con dimensioni grandi di font e testi lunghi.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``0.05`` :ref:`🔗<class_TextMesh_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

La profondità della mesh, se impostata su ``0.0``, è generata solo sulla superficie anteriore e il layout UV è modificato per utilizzare la texture completa solo per la faccia anteriore.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TextMesh_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_font**\ (\ )

Configurazione del font utilizzata per visualizzare il testo.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_size** = ``16`` :ref:`🔗<class_TextMesh_property_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_size**\ (\ )

Dimensione del font nel testo del **TextMesh**. Questa proprietà funziona in combinazione con :ref:`pixel_size<class_TextMesh_property_pixel_size>`. Valori più alti produrranno un font più dettagliato, a prescindere da :ref:`curve_step<class_TextMesh_property_curve_step>` e :ref:`pixel_size<class_TextMesh_property_pixel_size>`. Si consiglia di mantenere questo valore al di sotto di 63 (incluso) per ottenere buone prestazioni e di regolare :ref:`pixel_size<class_TextMesh_property_pixel_size>` secondo necessità per ingrandire il testo.

\ **Nota:** Cambiare questa proprietà rigenererà la mesh, il che è un'operazione lenta soprattutto con dimensioni grandi di font e testi lunghi. Per modificare la dimensione del testo in tempo reale efficientemente, cambia invece la :ref:`Node3D.scale<class_Node3D_property_scale>` del nodo.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_horizontal_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **horizontal_alignment** = ``1`` :ref:`🔗<class_TextMesh_property_horizontal_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Controlla l'allineamento orizzontale del testo. Supporta sinistra, centro, destra, e riempi (noto anche come giustifica).

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_TextMesh_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

Regole di allineamento del riempimento per le righe.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_TextMesh_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Codice lingua utilizzato per gli algoritmi di interruzione di riga e di formazione del testo. Se lasciato vuoto, è utilizzata la localizzazione attuale.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``0.0`` :ref:`🔗<class_TextMesh_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

Spaziatura verticale aggiuntiva tra le righe (in pixel), la spaziatura è aggiunta alla discesa della riga. Questo valore può essere negativo.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_TextMesh_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

L'offset di disegno del testo (in pixel).

\ **Nota:** Cambiare questa proprietà rigenererà la mesh, il che è un'operazione lenta. Per modificare la dimensione del testo in tempo reale efficientemente, cambia invece la :ref:`Node3D.position<class_Node3D_property_position>` del nodo.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_pixel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **pixel_size** = ``0.01`` :ref:`🔗<class_TextMesh_property_pixel_size>`

.. rst-class:: classref-property-setget

- |void| **set_pixel_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pixel_size**\ (\ )

La dimensione della larghezza di un pixel nel testo per scalarlo in 3D. Questa proprietà funziona in combinazione con :ref:`font_size<class_TextMesh_property_font_size>`.

\ **Nota:** Cambiare questa proprietà rigenererà la mesh, il che è un'operazione lenta. Per modificare la dimensione del testo in tempo reale efficientemente, cambia invece la :ref:`Node3D.scale<class_Node3D_property_scale>` del nodo.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_TextMesh_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

Imposta la sostituzione dell'algoritmo BiDi per il testo strutturato.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_TextMesh_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

Imposta opzioni aggiuntive per la sostituzione BiDi.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_TextMesh_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Il testo da cui generare la mesh.

\ **Nota:** Essendo una :ref:`Resource<class_Resource>`, non segue le regole di :ref:`Node.auto_translate_mode<class_Node_property_auto_translate_mode>`. Se si desidera disabilitare la traduzione, è necessario farlo manualmente con :ref:`Object.set_message_translation()<class_Object_method_set_message_translation>`.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_text_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **text_direction** = ``0`` :ref:`🔗<class_TextMesh_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_text_direction**\ (\ )

Direzione di scrittura del testo di base.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_uppercase:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **uppercase** = ``false`` :ref:`🔗<class_TextMesh_property_uppercase>`

.. rst-class:: classref-property-setget

- |void| **set_uppercase**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_uppercase**\ (\ )

Se ``true``, tutto il testo è visualizzato in MAIUSCOLO.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_vertical_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_alignment** = ``1`` :ref:`🔗<class_TextMesh_property_vertical_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_alignment**\ (\ )

Controlla l'allineamento verticale del testo. Supporta sopra, centro, sotto.

.. rst-class:: classref-item-separator

----

.. _class_TextMesh_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``500.0`` :ref:`🔗<class_TextMesh_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

La larghezza del testo (in pixel), usata per l'allineamento di riempimento.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
