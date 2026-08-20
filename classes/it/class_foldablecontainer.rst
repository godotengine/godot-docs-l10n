:github_url: hide

.. meta::
	:keywords: expandable, collapsible, collapse, accordion, details

.. _class_FoldableContainer:

FoldableContainer
=================

**Eredita:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un contenitore che si può espandere/comprimere.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un contenitore che si può espandere/comprimere, con un titolo che si può riempire con controlli, come pulsanti. Questo tipo di contenitore è anche detto fisarmonica.

Il titolo può essere posizionato in alto o in basso il contenitore. È possibile espandere o comprimere il contenitore cliccando sul titolo o premendo ``ui_accept`` quando è focalizzato. I nodi figlio di controllo sono nascosti quando il contenitore è compresso. Ignora i nodi figlio non di controllo.

È possibile raggruppare un FoldableContainer con altri FoldableContainer in modo che solo uno di essi sia aperto alla volta; vedi :ref:`foldable_group<class_FoldableContainer_property_foldable_group>` e :ref:`FoldableGroup<class_FoldableGroup>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                          | focus_mode                                                                                       | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`)   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`FoldableGroup<class_FoldableGroup>`                         | :ref:`foldable_group<class_FoldableContainer_property_foldable_group>`                           |                                                                       |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`folded<class_FoldableContainer_property_folded>`                                           | ``false``                                                             |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`language<class_FoldableContainer_property_language>`                                       | ``""``                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`                      | mouse_filter                                                                                     | ``0`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`title<class_FoldableContainer_property_title>`                                             | ``""``                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | :ref:`title_alignment<class_FoldableContainer_property_title_alignment>`                         | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`TitlePosition<enum_FoldableContainer_TitlePosition>`        | :ref:`title_position<class_FoldableContainer_property_title_position>`                           | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                  | :ref:`title_text_direction<class_FoldableContainer_property_title_text_direction>`               | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`           | :ref:`title_text_overrun_behavior<class_FoldableContainer_property_title_text_overrun_behavior>` | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_title_bar_control<class_FoldableContainer_method_add_title_bar_control>`\ (\ control\: :ref:`Control<class_Control>`\ )       |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`expand<class_FoldableContainer_method_expand>`\ (\ )                                                                              |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`fold<class_FoldableContainer_method_fold>`\ (\ )                                                                                  |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_title_bar_control<class_FoldableContainer_method_remove_title_bar_control>`\ (\ control\: :ref:`Control<class_Control>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`collapsed_font_color<class_FoldableContainer_theme_color_collapsed_font_color>`               | ``Color(1, 1, 1, 1)``             |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_color<class_FoldableContainer_theme_color_font_color>`                                   | ``Color(0.875, 0.875, 0.875, 1)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_outline_color<class_FoldableContainer_theme_color_font_outline_color>`                   | ``Color(1, 1, 1, 1)``             |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`hover_font_color<class_FoldableContainer_theme_color_hover_font_color>`                       | ``Color(0.95, 0.95, 0.95, 1)``    |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`             | :ref:`h_separation<class_FoldableContainer_theme_constant_h_separation>`                            | ``2``                             |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`             | :ref:`outline_size<class_FoldableContainer_theme_constant_outline_size>`                            | ``0``                             |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Font<class_Font>`           | :ref:`font<class_FoldableContainer_theme_font_font>`                                                |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`             | :ref:`font_size<class_FoldableContainer_theme_font_size_font_size>`                                 |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`expanded_arrow<class_FoldableContainer_theme_icon_expanded_arrow>`                            |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`expanded_arrow_mirrored<class_FoldableContainer_theme_icon_expanded_arrow_mirrored>`          |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folded_arrow<class_FoldableContainer_theme_icon_folded_arrow>`                                |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folded_arrow_mirrored<class_FoldableContainer_theme_icon_folded_arrow_mirrored>`              |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`focus<class_FoldableContainer_theme_style_focus>`                                             |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`panel<class_FoldableContainer_theme_style_panel>`                                             |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`title_collapsed_hover_panel<class_FoldableContainer_theme_style_title_collapsed_hover_panel>` |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`title_collapsed_panel<class_FoldableContainer_theme_style_title_collapsed_panel>`             |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`title_hover_panel<class_FoldableContainer_theme_style_title_hover_panel>`                     |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`title_panel<class_FoldableContainer_theme_style_title_panel>`                                 |                                   |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_FoldableContainer_signal_folding_changed:

.. rst-class:: classref-signal

**folding_changed**\ (\ is_folded\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_FoldableContainer_signal_folding_changed>`

Emesso quando il contenitore viene ridotto/espanso.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_FoldableContainer_TitlePosition:

.. rst-class:: classref-enumeration

enum **TitlePosition**: :ref:`🔗<enum_FoldableContainer_TitlePosition>`

.. _class_FoldableContainer_constant_POSITION_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **POSITION_TOP** = ``0``

Visualizza il titolo in alto al contenitore.

.. _class_FoldableContainer_constant_POSITION_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **POSITION_BOTTOM** = ``1``

Visualizza il titolo in basso al contenitore. Capovolge verticalmente tutti gli stylebox.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_FoldableContainer_property_foldable_group:

.. rst-class:: classref-property

:ref:`FoldableGroup<class_FoldableGroup>` **foldable_group** :ref:`🔗<class_FoldableContainer_property_foldable_group>`

.. rst-class:: classref-property-setget

- |void| **set_foldable_group**\ (\ value\: :ref:`FoldableGroup<class_FoldableGroup>`\ )
- :ref:`FoldableGroup<class_FoldableGroup>` **get_foldable_group**\ (\ )

Il :ref:`FoldableGroup<class_FoldableGroup>` associato al contenitore. Quando più nodi **FoldableContainer** condividono lo stesso gruppo, è consentito espandere solo uno di essi.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_folded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **folded** = ``false`` :ref:`🔗<class_FoldableContainer_property_folded>`

.. rst-class:: classref-property-setget

- |void| **set_folded**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_folded**\ (\ )

Se ``true``, il contenitore verrà ridotto e nasconderà tutti i suoi figli.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_FoldableContainer_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Codice lingua utilizzato per gli algoritmi di formazione del testo. Se lasciato vuoto, è utilizzata la localizzazione attuale.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``""`` :ref:`🔗<class_FoldableContainer_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

Il testo del titolo del contenitore.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **title_alignment** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_title_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_title_alignment**\ (\ )

L'allineamento orizzontale del testo del titolo.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_position:

.. rst-class:: classref-property

:ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **title_position** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_position>`

.. rst-class:: classref-property-setget

- |void| **set_title_position**\ (\ value\: :ref:`TitlePosition<enum_FoldableContainer_TitlePosition>`\ )
- :ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **get_title_position**\ (\ )

La posizione del titolo.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **title_text_direction** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_title_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_title_text_direction**\ (\ )

Direzione di scrittura del testo del titolo.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **title_text_overrun_behavior** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_title_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_title_text_overrun_behavior**\ (\ )

Definisce il comportamento del titolo quando il testo è più lungo dello spazio disponibile.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_FoldableContainer_method_add_title_bar_control:

.. rst-class:: classref-method

|void| **add_title_bar_control**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_FoldableContainer_method_add_title_bar_control>`

Aggiunge un :ref:`Control<class_Control>` che sarà posizionato accanto al titolo del contenitore, oscurando l'area cliccabile. Serve principalmente per aggiungere nodi :ref:`Button<class_Button>`, ma può essere qualsiasi :ref:`Control<class_Control>`.

Il controllo sarà aggiunto come figlio di questo contenitore e rimosso dal precedente genitore, se necessario. I controlli sarà posizionati allineati a destra, vale a dire che il primo controllo aggiunto sarà quello più a sinistra.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_expand:

.. rst-class:: classref-method

|void| **expand**\ (\ ) :ref:`🔗<class_FoldableContainer_method_expand>`

Espande il contenitore ed emette :ref:`folding_changed<class_FoldableContainer_signal_folding_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_fold:

.. rst-class:: classref-method

|void| **fold**\ (\ ) :ref:`🔗<class_FoldableContainer_method_fold>`

Riduce il contenitore ed emette :ref:`folding_changed<class_FoldableContainer_signal_folding_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_remove_title_bar_control:

.. rst-class:: classref-method

|void| **remove_title_bar_control**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_FoldableContainer_method_remove_title_bar_control>`

Rimuove un :ref:`Control<class_Control>` aggiunto con :ref:`add_title_bar_control()<class_FoldableContainer_method_add_title_bar_control>`. Il nodo non viene liberato automaticamente, è necessario usare :ref:`Node.queue_free()<class_Node_method_queue_free>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_FoldableContainer_theme_color_collapsed_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **collapsed_font_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_collapsed_font_color>`

Il colore del font del titolo quando compresso.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_font_color>`

Il colore del font del titolo quando espanso.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_font_outline_color>`

Il colore del contorno del font del titolo.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_color_hover_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **hover_font_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_hover_font_color>`

Il colore del font del titolo al passaggio del mouse.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``2`` :ref:`🔗<class_FoldableContainer_theme_constant_h_separation>`

La separazione orizzontale tra l'icona e il testo del titolo e tra i controlli della barra del titolo.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_FoldableContainer_theme_constant_outline_size>`

La dimensione del contorno del testo del titolo.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_FoldableContainer_theme_font_font>`

Il font del titolo.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_FoldableContainer_theme_font_size_font_size>`

La dimensione del font del titolo.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_expanded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **expanded_arrow** :ref:`🔗<class_FoldableContainer_theme_icon_expanded_arrow>`

L'icona del titolo utilizzata quando espanso.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_expanded_arrow_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **expanded_arrow_mirrored** :ref:`🔗<class_FoldableContainer_theme_icon_expanded_arrow_mirrored>`

L'icona del titolo utilizzata quando espanso (per il titolo in basso).

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_folded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folded_arrow** :ref:`🔗<class_FoldableContainer_theme_icon_folded_arrow>`

L'icona del titolo utilizzata quando compresso (per i layout da sinistra a destra).

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_folded_arrow_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folded_arrow_mirrored** :ref:`🔗<class_FoldableContainer_theme_icon_folded_arrow_mirrored>`

L'icona del titolo utilizzata quando compresso (per i layout da destra a sinistra).

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_FoldableContainer_theme_style_focus>`

Sfondo utilizzato quando il **FoldableContainer** ha il focus della GUI. Lo :ref:`StyleBox<class_StyleBox>` di :ref:`focus<class_FoldableContainer_theme_style_focus>` è visualizzato *sopra* lo :ref:`StyleBox<class_StyleBox>` di base, quindi è necessario utilizzare uno :ref:`StyleBox<class_StyleBox>` parzialmente trasparente per garantire che lo :ref:`StyleBox<class_StyleBox>` di base rimanga visibile. Uno :ref:`StyleBox<class_StyleBox>` che rappresenta un contorno o una sottolineatura funziona bene per questo scopo. Per disabilitare l'effetto visivo del focus, assegna una risorsa :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Tieni presente che disattivare l'effetto visivo di focus ridurrà l'usabilità della navigazione tramite tastiera o controller, perciò non è consigliato per motivi di accessibilità.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_FoldableContainer_theme_style_panel>`

Sfondo predefinito per il **FoldableContainer**.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_collapsed_hover_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_collapsed_hover_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_collapsed_hover_panel>`

Sfondo utilizzato quando il cursore del mouse entra nell'area del titolo quando compresso.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_collapsed_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_collapsed_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_collapsed_panel>`

Sfondo predefinito per il **FoldableContainer** quando è compresso.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_hover_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_hover_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_hover_panel>`

Sfondo utilizzato quando il cursore del mouse entra nell'area del titolo quando espanso.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_panel>`

Sfondo predefinito per il **FoldableContainer** quando è espanso.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
