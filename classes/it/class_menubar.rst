:github_url: hide

.. _class_MenuBar:

MenuBar
=======

**Eredita:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una barra di menu orizzontale che crea un menu per ogni :ref:`PopupMenu<class_PopupMenu>` figlio.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una barra di menu orizzontale che crea un menu per ogni :ref:`PopupMenu<class_PopupMenu>` figlio. Si possono creare nuove voci aggiungendo dei :ref:`PopupMenu<class_PopupMenu>` a questo nodo. Il titolo di ogni voce è determinato da :ref:`Window.title<class_Window_property_title>`, o dal nome del nodo se :ref:`Window.title<class_Window_property_title>` è vuoto. È possibile sovrascrivere il titolo di una voce attraverso :ref:`set_menu_title()<class_MenuBar_method_set_menu_title>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`flat<class_MenuBar_property_flat>`                             | ``false``                                                           |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`         | focus_mode                                                           | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`String<class_String>`                      | :ref:`language<class_MenuBar_property_language>`                     | ``""``                                                              |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`prefer_global_menu<class_MenuBar_property_prefer_global_menu>` | ``true``                                                            |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`start_index<class_MenuBar_property_start_index>`               | ``-1``                                                              |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`switch_on_hover<class_MenuBar_property_switch_on_hover>`       | ``true``                                                            |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>` | :ref:`text_direction<class_MenuBar_property_text_direction>`         | ``0``                                                               |
   +--------------------------------------------------+----------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_menu_count<class_MenuBar_method_get_menu_count>`\ (\ ) |const|                                                                  |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PopupMenu<class_PopupMenu>` | :ref:`get_menu_popup<class_MenuBar_method_get_menu_popup>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_menu_title<class_MenuBar_method_get_menu_title>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_menu_tooltip<class_MenuBar_method_get_menu_tooltip>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_menu_disabled<class_MenuBar_method_is_menu_disabled>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_menu_hidden<class_MenuBar_method_is_menu_hidden>`\ (\ menu\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_native_menu<class_MenuBar_method_is_native_menu>`\ (\ ) |const|                                                                  |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_disable_shortcuts<class_MenuBar_method_set_disable_shortcuts>`\ (\ disabled\: :ref:`bool<class_bool>`\ )                        |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_disabled<class_MenuBar_method_set_menu_disabled>`\ (\ menu\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )  |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_hidden<class_MenuBar_method_set_menu_hidden>`\ (\ menu\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ )        |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_title<class_MenuBar_method_set_menu_title>`\ (\ menu\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ )       |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_menu_tooltip<class_MenuBar_method_set_menu_tooltip>`\ (\ menu\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) |
   +-----------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_MenuBar_theme_color_font_color>`                             | ``Color(0.875, 0.875, 0.875, 1)``   |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_disabled_color<class_MenuBar_theme_color_font_disabled_color>`           | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_focus_color<class_MenuBar_theme_color_font_focus_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``      |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_color<class_MenuBar_theme_color_font_hover_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``      |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_pressed_color<class_MenuBar_theme_color_font_hover_pressed_color>` | ``Color(1, 1, 1, 1)``               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_MenuBar_theme_color_font_outline_color>`             | ``Color(0, 0, 0, 1)``               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_pressed_color<class_MenuBar_theme_color_font_pressed_color>`             | ``Color(1, 1, 1, 1)``               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`           | :ref:`h_separation<class_MenuBar_theme_constant_h_separation>`                      | ``4``                               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_MenuBar_theme_constant_outline_size>`                      | ``0``                               |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_MenuBar_theme_font_font>`                                          |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_MenuBar_theme_font_size_font_size>`                           |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`disabled<class_MenuBar_theme_style_disabled>`                                 |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`disabled_mirrored<class_MenuBar_theme_style_disabled_mirrored>`               |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover<class_MenuBar_theme_style_hover>`                                       |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover_mirrored<class_MenuBar_theme_style_hover_mirrored>`                     |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover_pressed<class_MenuBar_theme_style_hover_pressed>`                       |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`hover_pressed_mirrored<class_MenuBar_theme_style_hover_pressed_mirrored>`     |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal<class_MenuBar_theme_style_normal>`                                     |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`normal_mirrored<class_MenuBar_theme_style_normal_mirrored>`                   |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed<class_MenuBar_theme_style_pressed>`                                   |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`pressed_mirrored<class_MenuBar_theme_style_pressed_mirrored>`                 |                                     |
   +---------------------------------+-------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_MenuBar_property_flat:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flat** = ``false`` :ref:`🔗<class_MenuBar_property_flat>`

.. rst-class:: classref-property-setget

- |void| **set_flat**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flat**\ (\ )

Un **MenuBar** piatto non visualizza la decorazione delle sue voci.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_MenuBar_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Codice lingua utilizzato per gli algoritmi di interruzione di riga e di formazione del testo. Se lasciato vuoto, è utilizzata la localizzazione attuale.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_prefer_global_menu:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **prefer_global_menu** = ``true`` :ref:`🔗<class_MenuBar_property_prefer_global_menu>`

.. rst-class:: classref-property-setget

- |void| **set_prefer_global_menu**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_prefer_global_menu**\ (\ )

Se ``true``, **MenuBar** utilizzerà il menu globale di sistema quando supportato.

\ **Nota:** Se ``true`` e il menu globale è supportato, questo nodo non è visualizzato, ha dimensione zero e tutti i suoi nodi figlio eccetto i :ref:`PopupMenu<class_PopupMenu>` sono inaccessibili.

\ **Nota:** Questa proprietà sovrascrive il valore della proprietà :ref:`PopupMenu.prefer_native_menu<class_PopupMenu_property_prefer_native_menu>` dei nodi figlio.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_start_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **start_index** = ``-1`` :ref:`🔗<class_MenuBar_property_start_index>`

.. rst-class:: classref-property-setget

- |void| **set_start_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_start_index**\ (\ )

Ordine di posizionamento nel menu globale per inserire le voci **MenuBar**. Tutte le voci di menu in **MenuBar** sono sempre inserite come un intervallo continuo. I menu con un :ref:`start_index<class_MenuBar_property_start_index>` inferiore sono inseriti per primi. I menu con un :ref:`start_index<class_MenuBar_property_start_index>` uguale a ``-1`` sono inseriti per ultimi.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_switch_on_hover:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **switch_on_hover** = ``true`` :ref:`🔗<class_MenuBar_property_switch_on_hover>`

.. rst-class:: classref-property-setget

- |void| **set_switch_on_hover**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_switch_on_hover**\ (\ )

Se ``true``, quando il cursore passa sopra la voce del menu, chiuderà il :ref:`PopupMenu<class_PopupMenu>` attuale e aprirà l'altro.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_MenuBar_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

Direzione di scrittura del testo di base.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_MenuBar_method_get_menu_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_menu_count**\ (\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_count>`

Restituisce il numero di voci del menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_popup:

.. rst-class:: classref-method

:ref:`PopupMenu<class_PopupMenu>` **get_menu_popup**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_popup>`

Restituisce il :ref:`PopupMenu<class_PopupMenu>` associato alla voce del menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_menu_title**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_title>`

Restituisce il titolo della voce del menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_get_menu_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_menu_tooltip**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_get_menu_tooltip>`

Restituisce il tooltip della voce del menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_is_menu_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_menu_disabled**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_is_menu_disabled>`

Restituisce ``true`` se la voce del menu è disabilitata.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_is_menu_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_menu_hidden**\ (\ menu\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MenuBar_method_is_menu_hidden>`

Restituisce ``true`` se la voce del menu è nascosta.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_is_native_menu:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_native_menu**\ (\ ) |const| :ref:`🔗<class_MenuBar_method_is_native_menu>`

Restituisce ``true`` se il menu globale del sistema è supportato e utilizzato da questo **MenuBar**.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_disable_shortcuts:

.. rst-class:: classref-method

|void| **set_disable_shortcuts**\ (\ disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_disable_shortcuts>`

Se ``true``, le scorciatoie sono disabilitate e non possono essere utilizzate per attivare il pulsante.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_disabled:

.. rst-class:: classref-method

|void| **set_menu_disabled**\ (\ menu\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_disabled>`

Se ``true``, la voce del menu è disabilitata.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_hidden:

.. rst-class:: classref-method

|void| **set_menu_hidden**\ (\ menu\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_hidden>`

Se ``true``, la voce del menu è nascosto.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_title:

.. rst-class:: classref-method

|void| **set_menu_title**\ (\ menu\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_title>`

Imposta il titolo della voce del menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_method_set_menu_tooltip:

.. rst-class:: classref-method

|void| **set_menu_tooltip**\ (\ menu\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MenuBar_method_set_menu_tooltip>`

Imposta il tooltip della voce del menu.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_MenuBar_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_color>`

Il :ref:`Color<class_Color>` predefinito del testo delle voci del menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_MenuBar_theme_color_font_disabled_color>`

Il :ref:`Color<class_Color>` del testo utilizzato quando la voce del menu è disabilitata.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_focus_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_focus_color>`

Il :ref:`Color<class_Color>` del testo utilizzato quando la voce del menu è focalizzata. Gli stati disabilitato, al passaggio del mouse e premuto hanno la precedenza su questo colore.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_hover_color>`

Il :ref:`Color<class_Color>` del testo utilizzato quando si passa il mouse sulla voce del menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_hover_pressed_color>`

Il :ref:`Color<class_Color>` del testo utilizzato quando si passa il mouse e si preme la voce del menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_outline_color>`

La tinta del contorno del testo della voce di menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_color_font_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_MenuBar_theme_color_font_pressed_color>`

Il :ref:`Color<class_Color>` del testo utilizzato quando la voce del menu è premuta.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_MenuBar_theme_constant_h_separation>`

Lo spazio orizzontale tra le voci del menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_MenuBar_theme_constant_outline_size>`

La dimensione del contorno del testo.

\ **Nota:** Se si utilizza un font con :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` abilitato, il suo :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` deve essere impostato su almeno il *doppio* del valore di :ref:`outline_size<class_MenuBar_theme_constant_outline_size>` affinché il rendering del contorno appaia corretto. Altrimenti, il contorno potrebbe apparire troncato prima del previsto.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_MenuBar_theme_font_font>`

Il :ref:`Font<class_Font>` del testo delle voci del menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_MenuBar_theme_font_size_font_size>`

Dimensione del font per il testo delle voci del menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled** :ref:`🔗<class_MenuBar_theme_style_disabled>`

Lo :ref:`StyleBox<class_StyleBox>` utilizzato quando la voce del menu è disabilitata.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **disabled_mirrored** :ref:`🔗<class_MenuBar_theme_style_disabled_mirrored>`

Lo :ref:`StyleBox<class_StyleBox>` utilizzato quando la voce del menu è disabilitata (per i layout da destra a sinistra).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover** :ref:`🔗<class_MenuBar_theme_style_hover>`

Lo :ref:`StyleBox<class_StyleBox>` utilizzato quando si passa il mouse sulla voce del menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_mirrored** :ref:`🔗<class_MenuBar_theme_style_hover_mirrored>`

Lo :ref:`StyleBox<class_StyleBox>` utilizzato quando si passa il mouse sulla voce del menu (per i layout da destra a sinistra).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed** :ref:`🔗<class_MenuBar_theme_style_hover_pressed>`

Lo :ref:`StyleBox<class_StyleBox>` utilizzato quando si preme e si passa il mouse sulla voce del menu allo stesso tempo.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_hover_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **hover_pressed_mirrored** :ref:`🔗<class_MenuBar_theme_style_hover_pressed_mirrored>`

Lo :ref:`StyleBox<class_StyleBox>` utilizzato quando si preme e si passa il mouse sulla voce del menu allo stesso tempo (per i layout da destra a sinistra).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_normal:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal** :ref:`🔗<class_MenuBar_theme_style_normal>`

Lo :ref:`StyleBox<class_StyleBox>` predefinito per la voce del menu.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_normal_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **normal_mirrored** :ref:`🔗<class_MenuBar_theme_style_normal_mirrored>`

Lo :ref:`StyleBox<class_StyleBox>` predefinito per la voce del menu (per i layout da destra a sinistra).

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed** :ref:`🔗<class_MenuBar_theme_style_pressed>`

Lo :ref:`StyleBox<class_StyleBox>` utilizzato quando la voce del menu è premuta.

.. rst-class:: classref-item-separator

----

.. _class_MenuBar_theme_style_pressed_mirrored:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **pressed_mirrored** :ref:`🔗<class_MenuBar_theme_style_pressed_mirrored>`

Lo :ref:`StyleBox<class_StyleBox>` utilizzato quando la voce del menu è premuta (per i layout da destra a sinistra).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
