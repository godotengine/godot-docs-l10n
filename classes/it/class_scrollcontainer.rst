:github_url: hide

.. _class_ScrollContainer:

ScrollContainer
===============

**Eredita:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`EditorInspector<class_EditorInspector>`

Un contenitore utilizzato per fornire barre di scorrimento a un controllo figlio quando necessario.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un contenitore utilizzato per fornire barre di scorrimento a un controllo figlio quando necessario. Le barre di scorrimento saranno automaticamente disegnate a destra (per verticale) o in basso (per orizzontale) e consentiranno il trascinamento per spostare il controllo visualizzabile (e i suoi figli) all'interno dello ScrollContainer. Le barre di scorrimento ridimensioneranno anche automaticamente il grabber in base al :ref:`Control.custom_minimum_size<class_Control_property_custom_minimum_size>` del controllo rispetto al contenitore.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dei Container <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | clip_contents                                                                                      | ``true`` (overrides :ref:`Control<class_Control_property_clip_contents>`)           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`draw_focus_border<class_ScrollContainer_property_draw_focus_border>`                         | ``false``                                                                           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`follow_focus<class_ScrollContainer_property_follow_focus>`                                   | ``false``                                                                           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`         | :ref:`horizontal_scroll_mode<class_ScrollContainer_property_horizontal_scroll_mode>`               | ``1``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | propagate_maximum_size                                                                             | ``false`` (overrides :ref:`Control<class_Control_property_propagate_maximum_size>`) |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`scroll_deadzone<class_ScrollContainer_property_scroll_deadzone>`                             | ``0``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` | :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`                           | ``0``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`scroll_horizontal<class_ScrollContainer_property_scroll_horizontal>`                         | ``0``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`scroll_horizontal_by_default<class_ScrollContainer_property_scroll_horizontal_by_default>`   | ``false``                                                                           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                  | :ref:`scroll_horizontal_custom_step<class_ScrollContainer_property_scroll_horizontal_custom_step>` | ``-1.0``                                                                            |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`scroll_vertical<class_ScrollContainer_property_scroll_vertical>`                             | ``0``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                  | :ref:`scroll_vertical_custom_step<class_ScrollContainer_property_scroll_vertical_custom_step>`     | ``-1.0``                                                                            |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`tile_scroll_hint<class_ScrollContainer_property_tile_scroll_hint>`                           | ``false``                                                                           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`         | :ref:`vertical_scroll_mode<class_ScrollContainer_property_vertical_scroll_mode>`                   | ``1``                                                                               |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`ensure_control_visible<class_ScrollContainer_method_ensure_control_visible>`\ (\ control\: :ref:`Control<class_Control>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`HScrollBar<class_HScrollBar>` | :ref:`get_h_scroll_bar<class_ScrollContainer_method_get_h_scroll_bar>`\ (\ )                                                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`VScrollBar<class_VScrollBar>` | :ref:`get_v_scroll_bar<class_ScrollContainer_method_get_v_scroll_bar>`\ (\ )                                                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`scroll_hint_horizontal_color<class_ScrollContainer_theme_color_scroll_hint_horizontal_color>` | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`scroll_hint_vertical_color<class_ScrollContainer_theme_color_scroll_hint_vertical_color>`     | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`scrollbar_h_separation<class_ScrollContainer_theme_constant_scrollbar_h_separation>`          | ``0``                 |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`scrollbar_v_separation<class_ScrollContainer_theme_constant_scrollbar_v_separation>`          | ``0``                 |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`scroll_hint_horizontal<class_ScrollContainer_theme_icon_scroll_hint_horizontal>`              |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`scroll_hint_vertical<class_ScrollContainer_theme_icon_scroll_hint_vertical>`                  |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`focus<class_ScrollContainer_theme_style_focus>`                                               |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`panel<class_ScrollContainer_theme_style_panel>`                                               |                       |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_ScrollContainer_signal_scroll_ended:

.. rst-class:: classref-signal

**scroll_ended**\ (\ ) :ref:`🔗<class_ScrollContainer_signal_scroll_ended>`

Emesso quando lo scorrimento viene interrotto quando si trascina l'area scorrevole *con un evento touch*. Questo segnale *non* viene emesso quando si scorre trascinando la barra di scorrimento, scorrendo con la rotellina del mouse o scorrendo con eventi da tastiera o gamepad.

\ **Nota:** Questo segnale viene emesso solo su Android o iOS, o su piattaforme desktop o web quando :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` è abilitato.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_signal_scroll_started:

.. rst-class:: classref-signal

**scroll_started**\ (\ ) :ref:`🔗<class_ScrollContainer_signal_scroll_started>`

Emesso quando lo scorrimento viene iniziato quando si trascina l'area scorrevole *con un evento touch*. Questo segnale *non* viene emesso quando si scorre trascinando la barra di scorrimento, scorrendo con la rotellina del mouse o scorrendo con eventi da tastiera o gamepad.

\ **Nota:** Questo segnale viene emesso solo su Android o iOS, o su piattaforme desktop o web quando :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` è abilitato.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ScrollContainer_ScrollMode:

.. rst-class:: classref-enumeration

enum **ScrollMode**: :ref:`🔗<enum_ScrollContainer_ScrollMode>`

.. _class_ScrollContainer_constant_SCROLL_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_DISABLED** = ``0``

Scorrimento disabilitato, la barra di scorrimento sarà invisibile.

.. _class_ScrollContainer_constant_SCROLL_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_AUTO** = ``1``

Scorrimento abilitato, la barra di scorrimento sarà visibile solo se necessario, ovvero se il contenuto del contenitore è più grande del contenitore stesso.

.. _class_ScrollContainer_constant_SCROLL_MODE_SHOW_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_SHOW_ALWAYS** = ``2``

Scorrimento abilitato, la barra di scorrimento sarà sempre visibile.

.. _class_ScrollContainer_constant_SCROLL_MODE_SHOW_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_SHOW_NEVER** = ``3``

Scorrimento abilitato, la barra di scorrimento sarà nascosta.

.. _class_ScrollContainer_constant_SCROLL_MODE_RESERVE:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_RESERVE** = ``4``

Combina :ref:`SCROLL_MODE_AUTO<class_ScrollContainer_constant_SCROLL_MODE_AUTO>` e :ref:`SCROLL_MODE_SHOW_ALWAYS<class_ScrollContainer_constant_SCROLL_MODE_SHOW_ALWAYS>`. La barra di scorrimento è visibile solo se necessario, ma la dimensione del contenuto è regolata come se fosse sempre visibile. È utile per garantire che la dimensione del contenuto rimanga la stessa, a prescindere dalla visibilità della barra di scorrimento.

.. _class_ScrollContainer_constant_SCROLL_MODE_MAXIMIZE_FIRST:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_MAXIMIZE_FIRST** = ``5``

Behaves like :ref:`SCROLL_MODE_AUTO<class_ScrollContainer_constant_SCROLL_MODE_AUTO>`, but makes the **ScrollContainer** report a minimum size based on its content (limited by :ref:`Control.custom_maximum_size<class_Control_property_custom_maximum_size>` when set on the corresponding axis). This allows it to grow first and only start scrolling once constrained.

.. rst-class:: classref-item-separator

----

.. _enum_ScrollContainer_ScrollHintMode:

.. rst-class:: classref-enumeration

enum **ScrollHintMode**: :ref:`🔗<enum_ScrollContainer_ScrollHintMode>`

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_DISABLED** = ``0``

Scroll hints will never be shown.

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_ALL** = ``1``

Scroll hints will be shown at the top and bottom (if vertical), or left and right (if horizontal).

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_TOP_AND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_TOP_AND_LEFT** = ``2``

Scroll hints will be shown at the top (if vertical), or the left (if horizontal).

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_BOTTOM_AND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_BOTTOM_AND_RIGHT** = ``3``

Scroll hints will be shown at the bottom (if horizontal), or the right (if horizontal).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ScrollContainer_property_draw_focus_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_focus_border** = ``false`` :ref:`🔗<class_ScrollContainer_property_draw_focus_border>`

.. rst-class:: classref-property-setget

- |void| **set_draw_focus_border**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_focus_border**\ (\ )

Se ``true``, :ref:`focus<class_ScrollContainer_theme_style_focus>` viene disegnato quando lo ScrollContainer o uno dei suoi nodi discendenti è attivo.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_follow_focus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_focus** = ``false`` :ref:`🔗<class_ScrollContainer_property_follow_focus>`

.. rst-class:: classref-property-setget

- |void| **set_follow_focus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_following_focus**\ (\ )

Se ``true``, il contenitore scorrerà automaticamente fino agli elementi figlio selezionati (inclusi quelli indiretti) per assicurarsi che siano completamente visibili.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_horizontal_scroll_mode:

.. rst-class:: classref-property

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **horizontal_scroll_mode** = ``1`` :ref:`🔗<class_ScrollContainer_property_horizontal_scroll_mode>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_scroll_mode**\ (\ value\: :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`\ )
- :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **get_horizontal_scroll_mode**\ (\ )

Controlla se la barra di scorrimento orizzontale si può utilizzare e quando deve essere visibile.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_deadzone:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_deadzone** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_deadzone>`

.. rst-class:: classref-property-setget

- |void| **set_deadzone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_deadzone**\ (\ )

Zona morta per lo scorrimento touch. Una zona morta più bassa rende lo scorrimento più sensibile.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_hint_mode:

.. rst-class:: classref-property

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **scroll_hint_mode** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_hint_mode>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_hint_mode**\ (\ value\: :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>`\ )
- :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **get_scroll_hint_mode**\ (\ )

The way which scroll hints (indicators that show that the content can still be scrolled in a certain direction) will be shown.

\ **Note:** Hints won't be shown if the content can be scrolled both vertically and horizontally.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_horizontal** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_scroll**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_h_scroll**\ (\ )

Il valore attuale dello scorrimento orizzontale.

\ **Nota:** Se si imposta questo valore nella funzione :ref:`Node._ready()<class_Node_private_method__ready>` o in precedenza, è necessario racchiuderlo con :ref:`Object.set_deferred()<class_Object_method_set_deferred>`, poiché il valore :ref:`Range.max_value<class_Range_property_max_value>` della barra di scorrimento non è ancora inizializzato.

::

    func _ready():
        set_deferred("scroll_horizontal", 600)

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal_by_default:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scroll_horizontal_by_default** = ``false`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal_by_default>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_horizontal_by_default**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scroll_horizontal_by_default**\ (\ )

If ``true``, the mouse wheel scrolls the view horizontally, and holding :kbd:`Shift` scrolls vertically.

If ``false`` (default), the mouse wheel scrolls the view vertically, and holding :kbd:`Shift` scrolls horizontally.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **scroll_horizontal_custom_step** = ``-1.0`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_horizontal_custom_step**\ (\ )

Sostituisce il :ref:`ScrollBar.custom_step<class_ScrollBar_property_custom_step>` utilizzato quando si clicca sui pulsanti di incremento e decremento orizzontale della barra di scorrimento interna o quando si utilizzano i tasti freccia quando la :ref:`ScrollBar<class_ScrollBar>` è attiva.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_vertical:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_vertical** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_scroll**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_v_scroll**\ (\ )

Il valore attuale dello scorrimento verticale.

\ **Nota:** Impostarlo in anticipo deve essere differito, proprio come in :ref:`scroll_horizontal<class_ScrollContainer_property_scroll_horizontal>`.

::

    func _ready():
        set_deferred("scroll_vertical", 600)

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_vertical_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **scroll_vertical_custom_step** = ``-1.0`` :ref:`🔗<class_ScrollContainer_property_scroll_vertical_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vertical_custom_step**\ (\ )

Sostituisce il :ref:`ScrollBar.custom_step<class_ScrollBar_property_custom_step>` utilizzato quando si clicca sui pulsanti di incremento e decremento verticale della barra di scorrimento interna o quando si utilizzano i tasti freccia quando la :ref:`ScrollBar<class_ScrollBar>` è attiva.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_tile_scroll_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tile_scroll_hint** = ``false`` :ref:`🔗<class_ScrollContainer_property_tile_scroll_hint>`

.. rst-class:: classref-property-setget

- |void| **set_tile_scroll_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scroll_hint_tiled**\ (\ )

If ``true``, the scroll hint texture will be tiled instead of stretched. See :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_vertical_scroll_mode:

.. rst-class:: classref-property

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **vertical_scroll_mode** = ``1`` :ref:`🔗<class_ScrollContainer_property_vertical_scroll_mode>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_scroll_mode**\ (\ value\: :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`\ )
- :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **get_vertical_scroll_mode**\ (\ )

Controlla se la barra di scorrimento verticale si può utilizzare e quando deve essere visibile.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ScrollContainer_method_ensure_control_visible:

.. rst-class:: classref-method

|void| **ensure_control_visible**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_ScrollContainer_method_ensure_control_visible>`

Assicura che il ``control`` specificato sia visibile (deve essere un figlio diretto o indiretto di questo contenitore). Usato da :ref:`follow_focus<class_ScrollContainer_property_follow_focus>`.

\ **Nota:** Questo non funzionerà su un nodo che è stato appena aggiunto durante lo stesso frame. Se vuoi scorrere fino a un figlio appena aggiunto, devi attendere fino al frame successivo usando :ref:`SceneTree.process_frame<class_SceneTree_signal_process_frame>`:

::

    add_child(child_node)
    await get_tree().process_frame
    ensure_control_visible(child_node)

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_method_get_h_scroll_bar:

.. rst-class:: classref-method

:ref:`HScrollBar<class_HScrollBar>` **get_h_scroll_bar**\ (\ ) :ref:`🔗<class_ScrollContainer_method_get_h_scroll_bar>`

Restituisce la barra di scorrimento orizzontale :ref:`HScrollBar<class_HScrollBar>` di questo **ScrollContainer**.

\ **Attenzione:** Questo è un nodo interno obbligatorio, rimuoverlo e liberarlo potrebbe causare un crash. Se desideri nascondere una barra di scorrimento, puoi usare :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_method_get_v_scroll_bar:

.. rst-class:: classref-method

:ref:`VScrollBar<class_VScrollBar>` **get_v_scroll_bar**\ (\ ) :ref:`🔗<class_ScrollContainer_method_get_v_scroll_bar>`

Restituisce la barra di scorrimento verticale :ref:`VScrollBar<class_VScrollBar>` di questo **ScrollContainer**.

\ **Attenzione:** Questo è un nodo interno obbligatorio, rimuoverlo e liberarlo potrebbe causare un crash. Se desideri nascondere una barra di scorrimento, puoi usare :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_ScrollContainer_theme_color_scroll_hint_horizontal_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **scroll_hint_horizontal_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ScrollContainer_theme_color_scroll_hint_horizontal_color>`

:ref:`Color<class_Color>` used to modulate the :ref:`scroll_hint_horizontal<class_ScrollContainer_theme_icon_scroll_hint_horizontal>` texture.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_color_scroll_hint_vertical_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **scroll_hint_vertical_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ScrollContainer_theme_color_scroll_hint_vertical_color>`

:ref:`Color<class_Color>` used to modulate the :ref:`scroll_hint_vertical<class_ScrollContainer_theme_icon_scroll_hint_vertical>` texture.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_h_separation** = ``0`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_h_separation>`

The space between the ScrollContainer's vertical scroll bar and its content, in pixels. No space will be added when the content's minimum size is larger than the ScrollContainer's size.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_v_separation** = ``0`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_v_separation>`

The space between the ScrollContainer's horizontal scroll bar and its content, in pixels. No space will be added when the content's minimum size is larger than the ScrollContainer's size.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_icon_scroll_hint_horizontal:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **scroll_hint_horizontal** :ref:`🔗<class_ScrollContainer_theme_icon_scroll_hint_horizontal>`

The indicator that will be shown when the content can still be scrolled horizontally. See :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_icon_scroll_hint_vertical:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **scroll_hint_vertical** :ref:`🔗<class_ScrollContainer_theme_icon_scroll_hint_vertical>`

The indicator that will be shown when the content can still be scrolled vertically. See :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_ScrollContainer_theme_style_focus>`

La :ref:`StyleBox<class_StyleBox>` di focus del bordo del **ScrollContainer**. Utilizzata solo se :ref:`draw_focus_border<class_ScrollContainer_property_draw_focus_border>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_ScrollContainer_theme_style_panel>`

Lo :ref:`StyleBox<class_StyleBox>` di sfondo del **ScrollContainer**.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
