:github_url: hide

.. _class_TabContainer:

TabContainer
============

**Eredita:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un contenitore che crea una scheda per ogni controllo figlio, visualizzando solo il controllo della scheda attiva.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Dispone i controlli figlio in una vista a schede, creando una scheda per ciascuno. Il controllo corrispondente della scheda attiva è reso visibile, mentre tutti gli altri controlli figlio sono nascosti. Ignora i figli non di controllo.

\ **Nota:** Il disegno delle schede cliccabili è gestito da questo nodo; :ref:`TabBar<class_TabBar>` non è necessario.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Utilizzo dei Container <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`all_tabs_in_front<class_TabContainer_property_all_tabs_in_front>`                       |           |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`clip_tabs<class_TabContainer_property_clip_tabs>`                                       | ``true``  |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`current_tab<class_TabContainer_property_current_tab>`                                   | ``-1``    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`deselect_enabled<class_TabContainer_property_deselect_enabled>`                         | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`       | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`switch_on_drag_hover<class_TabContainer_property_switch_on_drag_hover>`                 | ``true``  |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`   | :ref:`tab_alignment<class_TabContainer_property_tab_alignment>`                               | ``0``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`FocusMode<enum_Control_FocusMode>`          | :ref:`tab_focus_mode<class_TabContainer_property_tab_focus_mode>`                             | ``2``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`tab_{index}/disabled<class_TabContainer_property_tab_{index}/disabled>`                 | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`tab_{index}/hidden<class_TabContainer_property_tab_{index}/hidden>`                     | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                 | :ref:`tab_{index}/icon<class_TabContainer_property_tab_{index}/icon>`                         |           |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                       | :ref:`tab_{index}/title<class_TabContainer_property_tab_{index}/title>`                       | ``""``    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`TabPosition<enum_TabContainer_TabPosition>` | :ref:`tabs_position<class_TabContainer_property_tabs_position>`                               | ``0``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`tabs_rearrange_group<class_TabContainer_property_tabs_rearrange_group>`                 | ``-1``    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`tabs_visible<class_TabContainer_property_tabs_visible>`                                 | ``true``  |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`use_hidden_tabs_for_min_size<class_TabContainer_property_use_hidden_tabs_for_min_size>` | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`     | :ref:`get_current_tab_control<class_TabContainer_method_get_current_tab_control>`\ (\ ) |const|                                                            |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Popup<class_Popup>`         | :ref:`get_popup<class_TabContainer_method_get_popup>`\ (\ ) |const|                                                                                        |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_previous_tab<class_TabContainer_method_get_previous_tab>`\ (\ ) |const|                                                                          |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TabBar<class_TabBar>`       | :ref:`get_tab_bar<class_TabContainer_method_get_tab_bar>`\ (\ ) |const|                                                                                    |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_tab_button_icon<class_TabContainer_method_get_tab_button_icon>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                   |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`     | :ref:`get_tab_control<class_TabContainer_method_get_tab_control>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_tab_count<class_TabContainer_method_get_tab_count>`\ (\ ) |const|                                                                                |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_tab_icon<class_TabContainer_method_get_tab_icon>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_tab_icon_max_width<class_TabContainer_method_get_tab_icon_max_width>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                             |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_tab_idx_at_point<class_TabContainer_method_get_tab_idx_at_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                           |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`get_tab_idx_from_control<class_TabContainer_method_get_tab_idx_from_control>`\ (\ control\: :ref:`Control<class_Control>`\ ) |const|                 |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`     | :ref:`get_tab_metadata<class_TabContainer_method_get_tab_metadata>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                         |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_tab_title<class_TabContainer_method_get_tab_title>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                               |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`       | :ref:`get_tab_tooltip<class_TabContainer_method_get_tab_tooltip>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_tab_disabled<class_TabContainer_method_is_tab_disabled>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`is_tab_hidden<class_TabContainer_method_is_tab_hidden>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                               |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`select_next_available<class_TabContainer_method_select_next_available>`\ (\ )                                                                        |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`select_previous_available<class_TabContainer_method_select_previous_available>`\ (\ )                                                                |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_popup<class_TabContainer_method_set_popup>`\ (\ popup\: :ref:`Node<class_Node>`\ )                                                               |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_button_icon<class_TabContainer_method_set_tab_button_icon>`\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_disabled<class_TabContainer_method_set_tab_disabled>`\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )             |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_hidden<class_TabContainer_method_set_tab_hidden>`\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ )                   |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_icon<class_TabContainer_method_set_tab_icon>`\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ )               |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_icon_max_width<class_TabContainer_method_set_tab_icon_max_width>`\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ )      |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_metadata<class_TabContainer_method_set_tab_metadata>`\ (\ tab_idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ )       |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_title<class_TabContainer_method_set_tab_title>`\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ )                  |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_tab_tooltip<class_TabContainer_method_set_tab_tooltip>`\ (\ tab_idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ )            |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`drop_mark_color<class_TabContainer_theme_color_drop_mark_color>`             | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_disabled_color<class_TabContainer_theme_color_font_disabled_color>`     | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_hovered_color<class_TabContainer_theme_color_font_hovered_color>`       | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_outline_color<class_TabContainer_theme_color_font_outline_color>`       | ``Color(0, 0, 0, 1)``               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_selected_color<class_TabContainer_theme_color_font_selected_color>`     | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_unselected_color<class_TabContainer_theme_color_font_unselected_color>` | ``Color(0.7, 0.7, 0.7, 1)``         |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_disabled_color<class_TabContainer_theme_color_icon_disabled_color>`     | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_hovered_color<class_TabContainer_theme_color_icon_hovered_color>`       | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_selected_color<class_TabContainer_theme_color_icon_selected_color>`     | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_unselected_color<class_TabContainer_theme_color_icon_unselected_color>` | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`icon_max_width<class_TabContainer_theme_constant_icon_max_width>`            | ``0``                               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`icon_separation<class_TabContainer_theme_constant_icon_separation>`          | ``4``                               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`outline_size<class_TabContainer_theme_constant_outline_size>`                | ``0``                               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`side_margin<class_TabContainer_theme_constant_side_margin>`                  | ``8``                               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`tab_separation<class_TabContainer_theme_constant_tab_separation>`            | ``0``                               |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Font<class_Font>`           | :ref:`font<class_TabContainer_theme_font_font>`                                    |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`font_size<class_TabContainer_theme_font_size_font_size>`                     |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement<class_TabContainer_theme_icon_decrement>`                          |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement_highlight<class_TabContainer_theme_icon_decrement_highlight>`      |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`drop_mark<class_TabContainer_theme_icon_drop_mark>`                          |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment<class_TabContainer_theme_icon_increment>`                          |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment_highlight<class_TabContainer_theme_icon_increment_highlight>`      |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu<class_TabContainer_theme_icon_menu>`                                    |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu_highlight<class_TabContainer_theme_icon_menu_highlight>`                |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`panel<class_TabContainer_theme_style_panel>`                                 |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_disabled<class_TabContainer_theme_style_tab_disabled>`                   |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_focus<class_TabContainer_theme_style_tab_focus>`                         |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_hovered<class_TabContainer_theme_style_tab_hovered>`                     |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_selected<class_TabContainer_theme_style_tab_selected>`                   |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_unselected<class_TabContainer_theme_style_tab_unselected>`               |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tabbar_background<class_TabContainer_theme_style_tabbar_background>`         |                                     |
   +-----------------------------------+------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_TabContainer_signal_active_tab_rearranged:

.. rst-class:: classref-signal

**active_tab_rearranged**\ (\ idx_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_active_tab_rearranged>`

Emesso quando la scheda attiva viene riorganizzata tramite il trascinamento del mouse. Vedi :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_pre_popup_pressed:

.. rst-class:: classref-signal

**pre_popup_pressed**\ (\ ) :ref:`🔗<class_TabContainer_signal_pre_popup_pressed>`

Emesso quando si clicca sul pulsante :ref:`Popup<class_Popup>` del **TabContainer**. Vedi :ref:`set_popup()<class_TabContainer_method_set_popup>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_button_pressed:

.. rst-class:: classref-signal

**tab_button_pressed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_button_pressed>`

Emesso quando l'utente clicca sull'icona del pulsante in questa scheda.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_changed:

.. rst-class:: classref-signal

**tab_changed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_changed>`

Emesso quando si cambia a un'altra scheda.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_clicked:

.. rst-class:: classref-signal

**tab_clicked**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_clicked>`

Emesso quando si clicca su una scheda, anche se è la scheda attuale.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_hovered:

.. rst-class:: classref-signal

**tab_hovered**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_hovered>`

Emesso quando si passa il mouse su una scheda.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_selected:

.. rst-class:: classref-signal

**tab_selected**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_selected>`

Emesso quando una scheda viene selezionata tramite clic, input direzionale o script, anche se è la scheda attuale.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_TabContainer_TabPosition:

.. rst-class:: classref-enumeration

enum **TabPosition**: :ref:`🔗<enum_TabContainer_TabPosition>`

.. _class_TabContainer_constant_POSITION_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_TOP** = ``0``

Posiziona la barra delle schede in alto.

.. _class_TabContainer_constant_POSITION_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_BOTTOM** = ``1``

Posiziona la barra delle schede in basso. Lo :ref:`StyleBox<class_StyleBox>` della barra delle schede sarà capovolto verticalmente.

.. _class_TabContainer_constant_POSITION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_MAX** = ``2``

Rappresenta la dimensione dell'enumerazione :ref:`TabPosition<enum_TabContainer_TabPosition>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_TabContainer_property_all_tabs_in_front:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **all_tabs_in_front** :ref:`🔗<class_TabContainer_property_all_tabs_in_front>`

.. rst-class:: classref-property-setget

- |void| **set_all_tabs_in_front**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_all_tabs_in_front**\ (\ )

**Deprecato:** Due to internal changes this doesn't do anything anymore, as they're always in front.

This doesn't do anything.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_clip_tabs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_tabs** = ``true`` :ref:`🔗<class_TabContainer_property_clip_tabs>`

.. rst-class:: classref-property-setget

- |void| **set_clip_tabs**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_clip_tabs**\ (\ )

Se ``true``, le schede che superano la larghezza di questo nodo saranno nascoste, visualizzando invece due pulsanti di navigazione. Altrimenti, la dimensione minima di questo nodo è aggiustata in modo che tutte le schede siano visibili.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_current_tab:

.. rst-class:: classref-property

:ref:`int<class_int>` **current_tab** = ``-1`` :ref:`🔗<class_TabContainer_property_current_tab>`

.. rst-class:: classref-property-setget

- |void| **set_current_tab**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_current_tab**\ (\ )

L'indice della scheda attuale. Quando impostato, la proprietà ``visible`` del nodo :ref:`Control<class_Control>` a questo indice è impostata su ``true`` e tutte le altre sono impostate su ``false``.

Un valore di ``-1`` significa che nessuna scheda è selezionata.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_deselect_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deselect_enabled** = ``false`` :ref:`🔗<class_TabContainer_property_deselect_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_deselect_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_deselect_enabled**\ (\ )

Se ``true``, tutte le schede possono essere deselezionate in modo che nessuna scheda sia selezionata. Clicca su :ref:`current_tab<class_TabContainer_property_current_tab>` per deselezionarla.

Sarà mostrata solo l'intestazione della scheda se nessuna scheda è selezionata.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_drag_to_rearrange_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_to_rearrange_enabled** = ``false`` :ref:`🔗<class_TabContainer_property_drag_to_rearrange_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_to_rearrange_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_drag_to_rearrange_enabled**\ (\ )

Se ``true``, le schede possono essere riorganizzate trascinandole con il mouse.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_switch_on_drag_hover:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **switch_on_drag_hover** = ``true`` :ref:`🔗<class_TabContainer_property_switch_on_drag_hover>`

.. rst-class:: classref-property-setget

- |void| **set_switch_on_drag_hover**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_switch_on_drag_hover**\ (\ )

If ``true``, hovering over a tab while dragging something will switch to that tab. Does not have effect when hovering another tab to rearrange.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tab_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **tab_alignment** = ``0`` :ref:`🔗<class_TabContainer_property_tab_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_tab_alignment**\ (\ value\: :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **get_tab_alignment**\ (\ )

La posizione in cui saranno posizionate le schede.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tab_focus_mode:

.. rst-class:: classref-property

:ref:`FocusMode<enum_Control_FocusMode>` **tab_focus_mode** = ``2`` :ref:`🔗<class_TabContainer_property_tab_focus_mode>`

.. rst-class:: classref-property-setget

- |void| **set_tab_focus_mode**\ (\ value\: :ref:`FocusMode<enum_Control_FocusMode>`\ )
- :ref:`FocusMode<enum_Control_FocusMode>` **get_tab_focus_mode**\ (\ )

La modalità di accesso alla focalizzazione per il nodo :ref:`TabBar<class_TabBar>` interno.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tab_{index}/disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tab_{index}/disabled** = ``false`` :ref:`🔗<class_TabContainer_property_tab_{index}/disabled>`

If ``true``, the tab at ``index`` is disabled.

\ **Note:** ``index`` is a value in the ``0 .. get_tab_count() - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tab_{index}/hidden:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tab_{index}/hidden** = ``false`` :ref:`🔗<class_TabContainer_property_tab_{index}/hidden>`

If ``true``, the tab at ``index`` is hidden.

\ **Note:** ``index`` is a value in the ``0 .. get_tab_count() - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tab_{index}/icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **tab_{index}/icon** :ref:`🔗<class_TabContainer_property_tab_{index}/icon>`

The title text of the tab at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. get_tab_count() - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tab_{index}/title:

.. rst-class:: classref-property

:ref:`String<class_String>` **tab_{index}/title** = ``""`` :ref:`🔗<class_TabContainer_property_tab_{index}/title>`

The tooltip text of the tab at ``index``.

\ **Note:** ``index`` is a value in the ``0 .. get_tab_count() - 1`` range.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tabs_position:

.. rst-class:: classref-property

:ref:`TabPosition<enum_TabContainer_TabPosition>` **tabs_position** = ``0`` :ref:`🔗<class_TabContainer_property_tabs_position>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_position**\ (\ value\: :ref:`TabPosition<enum_TabContainer_TabPosition>`\ )
- :ref:`TabPosition<enum_TabContainer_TabPosition>` **get_tabs_position**\ (\ )

The horizontal alignment of the tabs.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tabs_rearrange_group:

.. rst-class:: classref-property

:ref:`int<class_int>` **tabs_rearrange_group** = ``-1`` :ref:`🔗<class_TabContainer_property_tabs_rearrange_group>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_rearrange_group**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tabs_rearrange_group**\ (\ )

I **TabContainer** con lo stesso ID di gruppo di riorganizzazione consentiranno di trascinare le schede tra di loro. Abilita il trascinamento con :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`.

Impostando questo su ``-1`` sarà disabilitata la riorganizzazione tra i **TabContainer**.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tabs_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tabs_visible** = ``true`` :ref:`🔗<class_TabContainer_property_tabs_visible>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_tabs_visible**\ (\ )

Se ``true``, le schede sono visibili. Se ``false``, il contenuto e i titoli delle schede sono nascosti.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_use_hidden_tabs_for_min_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_hidden_tabs_for_min_size** = ``false`` :ref:`🔗<class_TabContainer_property_use_hidden_tabs_for_min_size>`

.. rst-class:: classref-property-setget

- |void| **set_use_hidden_tabs_for_min_size**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_hidden_tabs_for_min_size**\ (\ )

Se ``true``, la dimensione minima dei nodi :ref:`Control<class_Control>` figlio nascosti è presa in considerazione per quella totale, invece di solo quella attualmente visibile.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_TabContainer_method_get_current_tab_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_current_tab_control**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_current_tab_control>`

Restituisce il nodo :ref:`Control<class_Control>` figlio situato nell'indice della scheda attiva.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_popup:

.. rst-class:: classref-method

:ref:`Popup<class_Popup>` **get_popup**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_popup>`

Restituisce l'istanza del nodo :ref:`Popup<class_Popup>` se ne è già stata impostata una con :ref:`set_popup()<class_TabContainer_method_set_popup>`.

\ **Attenzione:** Questo è un nodo interno obbligatorio, rimuoverlo e liberarlo potrebbe causare un crash. Se desideri nascondere questo nodo o uno dei suoi figli, usa la loro proprietà :ref:`Window.visible<class_Window_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_previous_tab:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_previous_tab**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_previous_tab>`

Restituisce l'indice della scheda precedentemente attiva.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_bar:

.. rst-class:: classref-method

:ref:`TabBar<class_TabBar>` **get_tab_bar**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_bar>`

Restituisce la :ref:`TabBar<class_TabBar>` contenuta in questo contenitore.

\ **Attenzione:** Questo è un nodo interno obbligatorio, rimuoverlo e liberarlo potrebbe causare un crash. Se si desidera modificare le schede, usa i metodi forniti in **TabContainer**.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_button_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_button_icon>`

Restituisce l'icona del pulsante dalla scheda all'indice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_tab_control**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_control>`

Restituisce il nodo :ref:`Control<class_Control>` dalla scheda all'indice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_count**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_count>`

Restituisce il numero di schede.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_icon>`

Restituisce la :ref:`Texture2D<class_Texture2D>` della scheda all'indice ``tab_idx`` o ``null`` se la scheda non ha una :ref:`Texture2D<class_Texture2D>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_icon_max_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_icon_max_width>`

Restituisce la larghezza massima consentita dell'icona per la scheda all'indice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_idx_at_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_at_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_idx_at_point>`

Restituisce l'indice della scheda nelle coordinate locali ``point``. Restituisce ``-1`` se il punto è al di fuori dei limiti di controllo o se nessuna scheda è presente nella posizione interrogata.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_idx_from_control:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_from_control**\ (\ control\: :ref:`Control<class_Control>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_idx_from_control>`

Restituisce l'indice della scheda associata al ``control`` specificato. Il controllo deve essere un figlio del **TabContainer**.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_metadata>`

Restituisce il valore dei metadati impostato sulla scheda all'indice ``tab_idx`` tramite :ref:`set_tab_metadata()<class_TabContainer_method_set_tab_metadata>`. Se non sono stati impostati metadati, restituisce ``null`` per impostazione predefinita.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_title>`

Restituisce il titolo della scheda all'indice ``tab_idx``. Per impostazione predefinita, i titoli delle schede sono impostati sul nome del nodo figlio indicizzato, ma questo può essere sovrascritto con :ref:`set_tab_title()<class_TabContainer_method_set_tab_title>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_tooltip>`

Restituisce il testo del tooltip della scheda all'indice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_is_tab_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_is_tab_disabled>`

Restituisce ``true`` se la scheda all'indice ``tab_idx`` è disabilitata.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_is_tab_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_is_tab_hidden>`

Restituisce ``true`` se la scheda all'indice ``tab_idx`` è nascosta.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_select_next_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_next_available**\ (\ ) :ref:`🔗<class_TabContainer_method_select_next_available>`

Seleziona la prima scheda disponibile con un indice maggiore di quella attualmente selezionata. Restituisce ``true`` se la selezione della scheda è cambiata.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_select_previous_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_previous_available**\ (\ ) :ref:`🔗<class_TabContainer_method_select_previous_available>`

Seleziona la prima scheda disponibile con un indice minore di quella attualmente selezionata. Restituisce ``true`` se la selezione della scheda è cambiata.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_popup:

.. rst-class:: classref-method

|void| **set_popup**\ (\ popup\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_TabContainer_method_set_popup>`

Se impostato su un'istanza del nodo :ref:`Popup<class_Popup>`, un'icona del menu popup appare nell'angolo in alto a destra del **TabContainer** (impostandola su ``null`` la farà scomparire). Cliccando su di essa, il nodo :ref:`Popup<class_Popup>` si espanderà.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_button_icon:

.. rst-class:: classref-method

|void| **set_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_button_icon>`

Imposta l'icona del pulsante dalla scheda all'indice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_disabled:

.. rst-class:: classref-method

|void| **set_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_disabled>`

Se ``disabled`` è ``true``, disabilita la scheda all'indice ``tab_idx``, rendendola non interattiva.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_hidden:

.. rst-class:: classref-method

|void| **set_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_hidden>`

Se ``hidden`` è ``true``, nasconde la scheda all'indice ``tab_idx``, facendola scomparire dall'area della scheda.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_icon:

.. rst-class:: classref-method

|void| **set_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_icon>`

Imposta un'icona per la scheda all'indice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_icon_max_width:

.. rst-class:: classref-method

|void| **set_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_icon_max_width>`

Imposta la larghezza massima consentita dell'icona per la scheda all'indice ``tab_idx``. Questo limite viene applicato al di sopra della dimensione predefinita dell'icona e sopra a :ref:`icon_max_width<class_TabContainer_theme_constant_icon_max_width>`. L'altezza è regolata in base al rapporto dell'icona.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_metadata:

.. rst-class:: classref-method

|void| **set_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_metadata>`

Imposta il valore dei metadati per la scheda all'indice ``tab_idx``, che può essere recuperato in seguito tramite :ref:`get_tab_metadata()<class_TabContainer_method_get_tab_metadata>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_title:

.. rst-class:: classref-method

|void| **set_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_title>`

Imposta un titolo personalizzato per la scheda all'indice ``tab_idx`` (i titoli delle schede sono impostati per impostazione predefinita sul nome del nodo figlio indicizzato). Reimpostalo sul nome del nodo figlio per ripristinare la scheda al titolo predefinito.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_tooltip:

.. rst-class:: classref-method

|void| **set_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_tooltip>`

Imposta un testo di suggerimento personalizzato per la scheda all'indice ``tab_idx``.

\ **Nota:** Per impostazione predefinita, se ``tooltip`` è vuoto e il testo della scheda è troncato (non tutti i caratteri entrano nella scheda), il titolo sarà visualizzato nel tooltip. Per nascondere il tooltip, assegna ``" "`` come testo in ``tooltip``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_TabContainer_theme_color_drop_mark_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **drop_mark_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_drop_mark_color>`

Il colore di modulazione per l'icona :ref:`drop_mark<class_TabContainer_theme_icon_drop_mark>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_TabContainer_theme_color_font_disabled_color>`

Il colore del font delle schede disabilitate.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hovered_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_hovered_color>`

Il colore del font della scheda al passaggio del mouse. Non si applica alla scheda selezionata.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_outline_color>`

La tinta del contorno del testo per il nome della scheda.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_selected_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_selected_color>`

Il colore del font della scheda attualmente selezionata.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_unselected_color** = ``Color(0.7, 0.7, 0.7, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_unselected_color>`

Il colore del font delle altre schede non selezionate.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_icon_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_disabled_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_icon_disabled_color>`

Icon color of disabled tabs.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_icon_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_hovered_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_icon_hovered_color>`

Icon color of the currently hovered tab. Does not apply to the selected tab.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_icon_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_selected_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_icon_selected_color>`

Icon color of the currently selected tab.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_icon_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_unselected_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_icon_unselected_color>`

Icon color of the other, unselected tabs.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_icon_max_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_width** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_icon_max_width>`

La larghezza massima consentita dell'icona della scheda. Questo limite è applicato al di sopra della dimensione predefinita dell'icona, ma prima del valore impostato con :ref:`TabBar.set_tab_icon_max_width()<class_TabBar_method_set_tab_icon_max_width>`. L'altezza è regolata in base al rapporto dell'icona.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_icon_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_separation** = ``4`` :ref:`🔗<class_TabContainer_theme_constant_icon_separation>`

Lo spazio tra il nome della scheda e la sua icona.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_outline_size>`

La dimensione del contorno del testo della scheda.

\ **Nota:** Se si utilizza un font con :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` abilitato, il suo :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` deve essere impostato su almeno il *doppio* del valore di :ref:`outline_size<class_TabContainer_theme_constant_outline_size>` affinché il rendering del contorno appaia corretto. Altrimenti, il contorno potrebbe apparire troncato prima del previsto.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_side_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **side_margin** = ``8`` :ref:`🔗<class_TabContainer_theme_constant_side_margin>`

Lo spazio sui bordi sinistro o destro della barra delle schede, in base all'attuale :ref:`tab_alignment<class_TabContainer_property_tab_alignment>`.

Il margine è ignorato con :ref:`TabBar.ALIGNMENT_RIGHT<class_TabBar_constant_ALIGNMENT_RIGHT>` se le schede sono ritagliate (vedi :ref:`clip_tabs<class_TabContainer_property_clip_tabs>`) o è stato impostato un popup (vedi :ref:`set_popup()<class_TabContainer_method_set_popup>`). Il margine è sempre ignorato con :ref:`TabBar.ALIGNMENT_CENTER<class_TabBar_constant_ALIGNMENT_CENTER>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_tab_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tab_separation** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_tab_separation>`

La spaziatura tra le schede nella barra di schede.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TabContainer_theme_font_font>`

Il font utilizzato per disegnare i nomi delle schede.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_TabContainer_theme_font_size_font_size>`

La dimensione del font dei nomi delle schede.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_TabContainer_theme_icon_decrement>`

L'icona per il pulsante freccia sinistra che appare quando ci sono troppe schede per adattarsi alla larghezza del contenitore. Quando il pulsante è disabilitato (ovvero la prima scheda è visibile), appare semi-trasparente.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_TabContainer_theme_icon_decrement_highlight>`

L'icona per il pulsante freccia sinistra che appare quando ci sono troppe schede per adattarsi alla larghezza del contenitore. Utilizzato quando si passa il cursore sul pulsante.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_drop_mark:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **drop_mark** :ref:`🔗<class_TabContainer_theme_icon_drop_mark>`

Icon shown to indicate where a dragged tab will be dropped (see :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`).

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_TabContainer_theme_icon_increment>`

L'icona per il pulsante freccia destra che appare quando ci sono troppe schede per adattarsi alla larghezza del contenitore. Quando il pulsante è disabilitato (ovvero l'ultima scheda è visibile), appare semi-trasparente.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_TabContainer_theme_icon_increment_highlight>`

L'icona per il pulsante freccia destro che appare quando ci sono troppe schede per adattarsi alla larghezza del contenitore. Utilizzato quando si passa il cursore sul pulsante.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_menu:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu** :ref:`🔗<class_TabContainer_theme_icon_menu>`

L'icona per il pulsante del menu (vedi :ref:`set_popup()<class_TabContainer_method_set_popup>`).

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_menu_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_highlight** :ref:`🔗<class_TabContainer_theme_icon_menu_highlight>`

L'icona per il pulsante del menu (vedi :ref:`set_popup()<class_TabContainer_method_set_popup>`) quando ci si passa sopra con il cursore.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_TabContainer_theme_style_panel>`

Lo stile per il riempimento dello sfondo.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_disabled** :ref:`🔗<class_TabContainer_theme_style_tab_disabled>`

Lo stile delle schede disabilitate.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_focus** :ref:`🔗<class_TabContainer_theme_style_tab_focus>`

Lo :ref:`StyleBox<class_StyleBox>` utilizzato quando il :ref:`TabBar<class_TabBar>` è focalizzato. Lo :ref:`StyleBox<class_StyleBox>` di :ref:`tab_focus<class_TabContainer_theme_style_tab_focus>` è visualizzato *sopra* lo :ref:`StyleBox<class_StyleBox>` di base, quindi è necessario utilizzare uno :ref:`StyleBox<class_StyleBox>` parzialmente trasparente per garantire che lo :ref:`StyleBox<class_StyleBox>` di base rimanga visibile. Uno :ref:`StyleBox<class_StyleBox>` che rappresenta un contorno o una sottolineatura funziona bene per questo scopo. Per disabilitare l'effetto visivo del focus, assegna una risorsa :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Tieni presente che disattivare l'effetto visivo di focus ridurrà l'usabilità della navigazione tramite tastiera o controller, perciò non è consigliato per motivi di accessibilità.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_hovered** :ref:`🔗<class_TabContainer_theme_style_tab_hovered>`

Lo stile della scheda al passaggio del mouse.

\ **Nota:** Questo stile sarà disegnato con la stessa larghezza minima di :ref:`tab_unselected<class_TabContainer_theme_style_tab_unselected>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_selected** :ref:`🔗<class_TabContainer_theme_style_tab_selected>`

Lo stile della scheda attualmente selezionata.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_unselected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_unselected** :ref:`🔗<class_TabContainer_theme_style_tab_unselected>`

Lo stile delle altre schede non selezionate.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tabbar_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tabbar_background** :ref:`🔗<class_TabContainer_theme_style_tabbar_background>`

Lo stile per il riempimento dello sfondo dell'area del :ref:`TabBar<class_TabBar>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
