:github_url: hide

.. _class_LinkButton:

LinkButton
==========

**Eredita:** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un pulsante che rappresenta un collegamento.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un pulsante che rappresenta un collegamento. Questo tipo di pulsante è utilizzato principalmente per interazioni che causano un cambiamento di contesto (come il collegamento a una pagina web).

Vedi anche :ref:`BaseButton<class_BaseButton>` che contiene le proprietà e i metodi comuni associati a questo nodo.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`ellipsis_char<class_LinkButton_property_ellipsis_char>`                                                 | ``"…"``                                                                             |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                          | focus_mode                                                                                                    | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`)                 |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`language<class_LinkButton_property_language>`                                                           | ``""``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`CursorShape<enum_Control_CursorShape>`                      | mouse_default_cursor_shape                                                                                    | ``2`` (overrides :ref:`Control<class_Control_property_mouse_default_cursor_shape>`) |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` | :ref:`structured_text_bidi_override<class_LinkButton_property_structured_text_bidi_override>`                 | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                         | :ref:`structured_text_bidi_override_options<class_LinkButton_property_structured_text_bidi_override_options>` | ``[]``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`text<class_LinkButton_property_text>`                                                                   | ``""``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                  | :ref:`text_direction<class_LinkButton_property_text_direction>`                                               | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`           | :ref:`text_overrun_behavior<class_LinkButton_property_text_overrun_behavior>`                                 | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`UnderlineMode<enum_LinkButton_UnderlineMode>`               | :ref:`underline<class_LinkButton_property_underline>`                                                         | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`uri<class_LinkButton_property_uri>`                                                                     | ``""``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_LinkButton_theme_color_font_color>`                             | ``Color(0.875, 0.875, 0.875, 1)`` |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_disabled_color<class_LinkButton_theme_color_font_disabled_color>`           | ``Color(0, 0, 0, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_focus_color<class_LinkButton_theme_color_font_focus_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``    |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_color<class_LinkButton_theme_color_font_hover_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``    |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_pressed_color<class_LinkButton_theme_color_font_hover_pressed_color>` | ``Color(0, 0, 0, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_LinkButton_theme_color_font_outline_color>`             | ``Color(0, 0, 0, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_pressed_color<class_LinkButton_theme_color_font_pressed_color>`             | ``Color(1, 1, 1, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_LinkButton_theme_constant_outline_size>`                      | ``0``                             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`           | :ref:`underline_spacing<class_LinkButton_theme_constant_underline_spacing>`            | ``2``                             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_LinkButton_theme_font_font>`                                          |                                   |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_LinkButton_theme_font_size_font_size>`                           |                                   |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`focus<class_LinkButton_theme_style_focus>`                                       |                                   |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_LinkButton_UnderlineMode:

.. rst-class:: classref-enumeration

enum **UnderlineMode**: :ref:`🔗<enum_LinkButton_UnderlineMode>`

.. _class_LinkButton_constant_UNDERLINE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **UNDERLINE_MODE_ALWAYS** = ``0``

Il LinkButton mostrerà sempre una sottolineatura sotto al suo testo.

.. _class_LinkButton_constant_UNDERLINE_MODE_ON_HOVER:

.. rst-class:: classref-enumeration-constant

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **UNDERLINE_MODE_ON_HOVER** = ``1``

Il LinkButton mostrerà una sottolineatura sotto il suo testo quando il cursore del mouse è su di esso.

.. _class_LinkButton_constant_UNDERLINE_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **UNDERLINE_MODE_NEVER** = ``2``

Il LinkButton non mostrerà mai una sottolineatura sotto al suo testo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_LinkButton_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_LinkButton_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

Carattere di ellissi (puntini di sospensione) utilizzato per ritagliare il testo.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_LinkButton_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Codice lingua utilizzato per gli algoritmi di interruzione di riga e di formazione del testo. Se lasciato vuoto, è utilizzata la localizzazione attuale.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_LinkButton_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

Imposta la sostituzione dell'algoritmo BiDi per il testo strutturato.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_LinkButton_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

Imposta opzioni aggiuntive per la sostituzione BiDi.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_LinkButton_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Il testo del pulsante che sarà visualizzato all'interno dell'area del pulsante.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_LinkButton_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

Direzione di scrittura del testo di base.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_LinkButton_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

Imposta il comportamento di ritaglio quando il testo supera il rettangolo di delimitazione del nodo.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_underline:

.. rst-class:: classref-property

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **underline** = ``0`` :ref:`🔗<class_LinkButton_property_underline>`

.. rst-class:: classref-property-setget

- |void| **set_underline_mode**\ (\ value\: :ref:`UnderlineMode<enum_LinkButton_UnderlineMode>`\ )
- :ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **get_underline_mode**\ (\ )

La modalità di sottolineatura da utilizzare per il testo.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_uri:

.. rst-class:: classref-property

:ref:`String<class_String>` **uri** = ``""`` :ref:`🔗<class_LinkButton_property_uri>`

.. rst-class:: classref-property-setget

- |void| **set_uri**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_uri**\ (\ )

L'`URI <https://it.wikipedia.org/wiki/Uniform_Resource_Identifier>`__ per questo **LinkButton**. Se impostato su un URI valido, premendo il pulsante si apre l'URI utilizzando il programma predefinito del sistema operativo per il protocollo (tramite :ref:`OS.shell_open()<class_OS_method_shell_open>`). Gli URL HTTP e HTTPS aprono il browser Web predefinito.


.. tabs::

 .. code-tab:: gdscript

    uri = "https://godotengine.org"  # Apre l'URL nel browser Web predefinito.
    uri = "C:\SomeFolder"  # Apre l'esploratore file nel percorso specificato.
    uri = "C:\SomeImage.png"  # Apre l'immagine specificata nell'app di visualizzazione predefinita.

 .. code-tab:: csharp

    Uri = "https://godotengine.org"; // Apre l'URL nel browser Web predefinito.
    Uri = "C:\SomeFolder"; // Apre l'esploratore file nel percorso specificato.
    Uri = "C:\SomeImage.png"; // Apre l'immagine specificata nell'app di visualizzazione predefinita.



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_LinkButton_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_color>`

Il :ref:`Color<class_Color>` predefinito del testo del **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_disabled_color>`

Il :ref:`Color<class_Color>` del testo utilizzato quando il **LinkButton** è disabilitato.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_focus_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_focus_color>`

Il :ref:`Color<class_Color>` del testo utilizzato quando il **LinkButton** è focalizzato. Sostituisce solo il colore del testo normale del pulsante. Gli stati disabilitato, al passaggio del mouse e premuto hanno la precedenza su questo colore.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_hover_color>`

Il :ref:`Color<class_Color>` del testo utilizzato quando si passa il mouse sul **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_pressed_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_hover_pressed_color>`

Il :ref:`Color<class_Color>` del testo utilizzato quando si passa il mouse sopra e si preme il **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_outline_color>`

La tinta del contorno del testo del **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_pressed_color>`

Il :ref:`Color<class_Color>` del testo utilizzato quando il pulsante **LinkButton** è premuto.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_LinkButton_theme_constant_outline_size>`

La dimensione del contorno del testo.

\ **Nota:** Se si utilizza un font con :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` abilitato, il suo :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` deve essere impostato su almeno il *doppio* del valore di :ref:`outline_size<class_LinkButton_theme_constant_outline_size>` affinché il rendering del contorno appaia corretto. Altrimenti, il contorno potrebbe apparire troncato prima del previsto.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_constant_underline_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **underline_spacing** = ``2`` :ref:`🔗<class_LinkButton_theme_constant_underline_spacing>`

Lo spazio verticale tra la linea di base del testo e la sottolineatura.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_LinkButton_theme_font_font>`

Il :ref:`Font<class_Font>` del testo del **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_LinkButton_theme_font_size_font_size>`

Dimensione del font per il testo del **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_LinkButton_theme_style_focus>`

Lo :ref:`StyleBox<class_StyleBox>` utilizzato quando il **LinkButton** è focalizzato. Lo :ref:`StyleBox<class_StyleBox>` di :ref:`focus<class_LinkButton_theme_style_focus>` è visualizzato *sopra* lo :ref:`StyleBox<class_StyleBox>` di base, quindi è necessario utilizzare uno :ref:`StyleBox<class_StyleBox>` parzialmente trasparente per garantire che lo :ref:`StyleBox<class_StyleBox>` di base rimanga visibile. Uno :ref:`StyleBox<class_StyleBox>` che rappresenta un contorno o una sottolineatura funziona bene per questo scopo. Per disabilitare l'effetto visivo del focus, assegna una risorsa :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Tieni presente che disattivare l'effetto visivo di focus ridurrà l'usabilità della navigazione tramite tastiera o controller, perciò non è consigliato per motivi di accessibilità.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
