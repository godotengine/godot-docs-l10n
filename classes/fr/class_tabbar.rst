:github_url: hide

.. _class_TabBar:

TabBar
======

**Hérite de :** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un contrôle qui fournit une barre horizontale avec des onglets.

.. rst-class:: classref-introduction-group

Description
-----------

Un contrôle qui fournit une barre horizontale avec des onglets. Semblable à :ref:`TabContainer<class_TabContainer>` mais est seulement chargé de dessiner les onglets, pas d'interagir avec les enfants.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`clip_tabs<class_TabBar_property_clip_tabs>`                                 | ``true``                                                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`close_with_middle_mouse<class_TabBar_property_close_with_middle_mouse>`     | ``true``                                                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`current_tab<class_TabBar_property_current_tab>`                             | ``-1``                                                              |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`deselect_enabled<class_TabBar_property_deselect_enabled>`                   | ``false``                                                           |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>` | ``false``                                                           |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                              | focus_mode                                                                        | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`max_tab_width<class_TabBar_property_max_tab_width>`                         | ``0``                                                               |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`scroll_to_selected<class_TabBar_property_scroll_to_selected>`               | ``true``                                                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`scrolling_enabled<class_TabBar_property_scrolling_enabled>`                 | ``true``                                                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`select_with_rmb<class_TabBar_property_select_with_rmb>`                     | ``false``                                                           |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`switch_on_drag_hover<class_TabBar_property_switch_on_drag_hover>`           | ``true``                                                            |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`                       | :ref:`tab_alignment<class_TabBar_property_tab_alignment>`                         | ``0``                                                               |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` | :ref:`tab_close_display_policy<class_TabBar_property_tab_close_display_policy>`   | ``0``                                                               |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`tab_count<class_TabBar_property_tab_count>`                                 | ``0``                                                               |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`tabs_rearrange_group<class_TabBar_property_tabs_rearrange_group>`           | ``-1``                                                              |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`add_tab<class_TabBar_method_add_tab>`\ (\ title\: :ref:`String<class_String>` = "", icon\: :ref:`Texture2D<class_Texture2D>` = null\ )                                   |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`clear_tabs<class_TabBar_method_clear_tabs>`\ (\ )                                                                                                                        |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`ensure_tab_visible<class_TabBar_method_ensure_tab_visible>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                           |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`get_offset_buttons_visible<class_TabBar_method_get_offset_buttons_visible>`\ (\ ) |const|                                                                                |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`get_previous_tab<class_TabBar_method_get_previous_tab>`\ (\ ) |const|                                                                                                    |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                | :ref:`get_tab_button_icon<class_TabBar_method_get_tab_button_icon>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                             |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                | :ref:`get_tab_icon<class_TabBar_method_get_tab_icon>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`get_tab_icon_max_width<class_TabBar_method_get_tab_icon_max_width>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`get_tab_idx_at_point<class_TabBar_method_get_tab_idx_at_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                     |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                      | :ref:`get_tab_language<class_TabBar_method_get_tab_language>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                   |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                    | :ref:`get_tab_metadata<class_TabBar_method_get_tab_metadata>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                   |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                            | :ref:`get_tab_offset<class_TabBar_method_get_tab_offset>`\ (\ ) |const|                                                                                                        |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                        | :ref:`get_tab_rect<class_TabBar_method_get_tab_rect>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>` | :ref:`get_tab_text_direction<class_TabBar_method_get_tab_text_direction>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                       |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                      | :ref:`get_tab_title<class_TabBar_method_get_tab_title>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                      | :ref:`get_tab_tooltip<class_TabBar_method_get_tab_tooltip>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`is_tab_disabled<class_TabBar_method_is_tab_disabled>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`is_tab_hidden<class_TabBar_method_is_tab_hidden>`\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`move_tab<class_TabBar_method_move_tab>`\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ )                                                                  |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`remove_tab<class_TabBar_method_remove_tab>`\ (\ tab_idx\: :ref:`int<class_int>`\ )                                                                                       |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`select_next_available<class_TabBar_method_select_next_available>`\ (\ )                                                                                                  |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                          | :ref:`select_previous_available<class_TabBar_method_select_previous_available>`\ (\ )                                                                                          |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_button_icon<class_TabBar_method_set_tab_button_icon>`\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ )                           |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_disabled<class_TabBar_method_set_tab_disabled>`\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ )                                       |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_hidden<class_TabBar_method_set_tab_hidden>`\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ )                                             |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_icon<class_TabBar_method_set_tab_icon>`\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ )                                         |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_icon_max_width<class_TabBar_method_set_tab_icon_max_width>`\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ )                                |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_language<class_TabBar_method_set_tab_language>`\ (\ tab_idx\: :ref:`int<class_int>`, language\: :ref:`String<class_String>`\ )                                   |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_metadata<class_TabBar_method_set_tab_metadata>`\ (\ tab_idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ )                                 |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_text_direction<class_TabBar_method_set_tab_text_direction>`\ (\ tab_idx\: :ref:`int<class_int>`, direction\: :ref:`TextDirection<enum_Control_TextDirection>`\ ) |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_title<class_TabBar_method_set_tab_title>`\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ )                                            |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                           | :ref:`set_tab_tooltip<class_TabBar_method_set_tab_tooltip>`\ (\ tab_idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ )                                      |
   +--------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`drop_mark_color<class_TabBar_theme_color_drop_mark_color>`                  | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_disabled_color<class_TabBar_theme_color_font_disabled_color>`          | ``Color(0.875, 0.875, 0.875, 0.5)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_hovered_color<class_TabBar_theme_color_font_hovered_color>`            | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_outline_color<class_TabBar_theme_color_font_outline_color>`            | ``Color(0, 0, 0, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_selected_color<class_TabBar_theme_color_font_selected_color>`          | ``Color(0.95, 0.95, 0.95, 1)``      |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`font_unselected_color<class_TabBar_theme_color_font_unselected_color>`      | ``Color(0.7, 0.7, 0.7, 1)``         |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_disabled_color<class_TabBar_theme_color_icon_disabled_color>`          | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_hovered_color<class_TabBar_theme_color_icon_hovered_color>`            | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_selected_color<class_TabBar_theme_color_icon_selected_color>`          | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`icon_unselected_color<class_TabBar_theme_color_icon_unselected_color>`      | ``Color(1, 1, 1, 1)``               |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`h_separation<class_TabBar_theme_constant_h_separation>`                     | ``4``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`hover_switch_wait_msec<class_TabBar_theme_constant_hover_switch_wait_msec>` | ``500``                             |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`icon_max_width<class_TabBar_theme_constant_icon_max_width>`                 | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`outline_size<class_TabBar_theme_constant_outline_size>`                     | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`tab_separation<class_TabBar_theme_constant_tab_separation>`                 | ``0``                               |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Font<class_Font>`           | :ref:`font<class_TabBar_theme_font_font>`                                         |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`             | :ref:`font_size<class_TabBar_theme_font_size_font_size>`                          |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`close<class_TabBar_theme_icon_close>`                                       |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement<class_TabBar_theme_icon_decrement>`                               |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`decrement_highlight<class_TabBar_theme_icon_decrement_highlight>`           |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`drop_mark<class_TabBar_theme_icon_drop_mark>`                               |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment<class_TabBar_theme_icon_increment>`                               |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`increment_highlight<class_TabBar_theme_icon_increment_highlight>`           |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`button_highlight<class_TabBar_theme_style_button_highlight>`                |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`button_pressed<class_TabBar_theme_style_button_pressed>`                    |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_disabled<class_TabBar_theme_style_tab_disabled>`                        |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_focus<class_TabBar_theme_style_tab_focus>`                              |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_hovered<class_TabBar_theme_style_tab_hovered>`                          |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_selected<class_TabBar_theme_style_tab_selected>`                        |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`tab_unselected<class_TabBar_theme_style_tab_unselected>`                    |                                     |
   +-----------------------------------+-----------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_TabBar_signal_active_tab_rearranged:

.. rst-class:: classref-signal

**active_tab_rearranged**\ (\ idx_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_active_tab_rearranged>`

Émis quand l'onglet actif est réarrangé en glissant la souris. Voir :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_button_pressed:

.. rst-class:: classref-signal

**tab_button_pressed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_button_pressed>`

Émis quand le bouton droit d'un onglet est appuyé. Voir :ref:`set_tab_button_icon()<class_TabBar_method_set_tab_button_icon>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_changed:

.. rst-class:: classref-signal

**tab_changed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_changed>`

Émis au changement d'onglet.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_clicked:

.. rst-class:: classref-signal

**tab_clicked**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_clicked>`

Émis quand un onglet est cliqué, même si c'est l'onglet actuel.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_close_pressed:

.. rst-class:: classref-signal

**tab_close_pressed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_close_pressed>`

Emitted when a tab's close button is pressed or, if :ref:`close_with_middle_mouse<class_TabBar_property_close_with_middle_mouse>` is ``true``, when middle-clicking on a tab.

\ **Note:** Tabs are not removed automatically; this behavior needs to be coded manually. For example:


.. tabs::

 .. code-tab:: gdscript

    $TabBar.tab_close_pressed.connect($TabBar.remove_tab)

 .. code-tab:: csharp

    GetNode<TabBar>("TabBar").TabClosePressed += GetNode<TabBar>("TabBar").RemoveTab;



.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_hovered:

.. rst-class:: classref-signal

**tab_hovered**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_hovered>`

Émis quand un onglet est survolé par la souris.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_rmb_clicked:

.. rst-class:: classref-signal

**tab_rmb_clicked**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_rmb_clicked>`

Emitted when a tab is right-clicked.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_selected:

.. rst-class:: classref-signal

**tab_selected**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_selected>`

Émis lorsqu'un onglet est sélectionné par un clic, une entrée directionnelle ou un script, même s'il s'agit de l'onglet actuel.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_TabBar_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_TabBar_AlignmentMode>`

.. _class_TabBar_constant_ALIGNMENT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **ALIGNMENT_LEFT** = ``0``

Aligns tabs to the left.

.. _class_TabBar_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

Aligns tabs in the middle.

.. _class_TabBar_constant_ALIGNMENT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **ALIGNMENT_RIGHT** = ``2``

Aligns tabs to the right.

.. _class_TabBar_constant_ALIGNMENT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **ALIGNMENT_MAX** = ``3``

Représente la taille de l’enum :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`.

.. rst-class:: classref-item-separator

----

.. _enum_TabBar_CloseButtonDisplayPolicy:

.. rst-class:: classref-enumeration

enum **CloseButtonDisplayPolicy**: :ref:`🔗<enum_TabBar_CloseButtonDisplayPolicy>`

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_NEVER** = ``0``

Ne jamais afficher les boutons fermer.

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_ACTIVE_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_ACTIVE_ONLY** = ``1``

N'afficher le bouton fermer que pour l'onglet actif.

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_ALWAYS** = ``2``

Affiche le bouton fermer sur tous les onglets.

.. _class_TabBar_constant_CLOSE_BUTTON_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_MAX** = ``3``

Représente la taille de l’enum :ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_TabBar_property_clip_tabs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_tabs** = ``true`` :ref:`🔗<class_TabBar_property_clip_tabs>`

.. rst-class:: classref-property-setget

- |void| **set_clip_tabs**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_clip_tabs**\ (\ )

Si ``true``, les onglets débordant de la largeur de ce nœud seront cachés, affichant deux boutons de navigation à la place. Sinon, la taille minimale de ce nœud est mise à jour de sorte que tous les onglets soient visibles.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_close_with_middle_mouse:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **close_with_middle_mouse** = ``true`` :ref:`🔗<class_TabBar_property_close_with_middle_mouse>`

.. rst-class:: classref-property-setget

- |void| **set_close_with_middle_mouse**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_close_with_middle_mouse**\ (\ )

Si ``true``, un clic du milieu de la souris sur un onglet émettra le :ref:`tab_close_pressed<class_TabBar_signal_tab_close_pressed>`\ signal.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_current_tab:

.. rst-class:: classref-property

:ref:`int<class_int>` **current_tab** = ``-1`` :ref:`🔗<class_TabBar_property_current_tab>`

.. rst-class:: classref-property-setget

- |void| **set_current_tab**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_current_tab**\ (\ )

L'index de l'onglet sélectionné actuel. Une valeur de ``-1`` signifie qu'aucun onglet n'est sélectionné et ne peut être défini que lorsque :ref:`deselect_enabled<class_TabBar_property_deselect_enabled>` vaut ``true`` ou si tous les onglets sont cachés ou désactivés.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_deselect_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deselect_enabled** = ``false`` :ref:`🔗<class_TabBar_property_deselect_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_deselect_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_deselect_enabled**\ (\ )

Si ``true``, tous les onglets peuvent être désélectionnés de sorte qu'aucun onglet ne soit sélectionné. Cliquez sur l'onglet actuel pour le désélectionner.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_drag_to_rearrange_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_to_rearrange_enabled** = ``false`` :ref:`🔗<class_TabBar_property_drag_to_rearrange_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_to_rearrange_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_drag_to_rearrange_enabled**\ (\ )

Si ``true``, les onglets peuvent être réarrangés avec par déposé-glissé.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_max_tab_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_tab_width** = ``0`` :ref:`🔗<class_TabBar_property_max_tab_width>`

.. rst-class:: classref-property-setget

- |void| **set_max_tab_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_tab_width**\ (\ )

Définit la largeur maximale à laquelle tous les onglets devraient être limités. Illimités si défini à ``0``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_scroll_to_selected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scroll_to_selected** = ``true`` :ref:`🔗<class_TabBar_property_scroll_to_selected>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_to_selected**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_scroll_to_selected**\ (\ )

Si ``true``, le décalage de l'onglet sera modifié pour garder l'onglet actuellement sélectionné visible.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_scrolling_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scrolling_enabled** = ``true`` :ref:`🔗<class_TabBar_property_scrolling_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_scrolling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_scrolling_enabled**\ (\ )

si ``true``, la roue de défilement de la souris permet de naviguer dans la vue de défilement.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_select_with_rmb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **select_with_rmb** = ``false`` :ref:`🔗<class_TabBar_property_select_with_rmb>`

.. rst-class:: classref-property-setget

- |void| **set_select_with_rmb**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_select_with_rmb**\ (\ )

Si ``true``, active la possibilité de sélectionner les onglets avec le clic droit.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_switch_on_drag_hover:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **switch_on_drag_hover** = ``true`` :ref:`🔗<class_TabBar_property_switch_on_drag_hover>`

.. rst-class:: classref-property-setget

- |void| **set_switch_on_drag_hover**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_switch_on_drag_hover**\ (\ )

If ``true``, hovering over a tab while dragging something will switch to that tab. Does not have effect when hovering another tab to rearrange. The delay for when this happens is dictated by :ref:`hover_switch_wait_msec<class_TabBar_theme_constant_hover_switch_wait_msec>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tab_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **tab_alignment** = ``0`` :ref:`🔗<class_TabBar_property_tab_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_tab_alignment**\ (\ value\: :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **get_tab_alignment**\ (\ )

The horizontal alignment of the tabs.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tab_close_display_policy:

.. rst-class:: classref-property

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **tab_close_display_policy** = ``0`` :ref:`🔗<class_TabBar_property_tab_close_display_policy>`

.. rst-class:: classref-property-setget

- |void| **set_tab_close_display_policy**\ (\ value\: :ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>`\ )
- :ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **get_tab_close_display_policy**\ (\ )

Quand est-ce que le bouton de fermeture apparaîtra sur les onglets.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tab_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **tab_count** = ``0`` :ref:`🔗<class_TabBar_property_tab_count>`

.. rst-class:: classref-property-setget

- |void| **set_tab_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tab_count**\ (\ )

Le nombre d'onglets actuellement dans la barre.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tabs_rearrange_group:

.. rst-class:: classref-property

:ref:`int<class_int>` **tabs_rearrange_group** = ``-1`` :ref:`🔗<class_TabBar_property_tabs_rearrange_group>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_rearrange_group**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tabs_rearrange_group**\ (\ )

Des **TabBar**\ s avec le même ID de groupe de réorganisation permettront de glisser les onglets entre eux. Activez le glissement avec :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`.

Définir ceci à ``-1`` désactivera la réorganisation entre les **TabBar**\ s.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_TabBar_method_add_tab:

.. rst-class:: classref-method

|void| **add_tab**\ (\ title\: :ref:`String<class_String>` = "", icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_TabBar_method_add_tab>`

Ajoute un nouvel onglet.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_clear_tabs:

.. rst-class:: classref-method

|void| **clear_tabs**\ (\ ) :ref:`🔗<class_TabBar_method_clear_tabs>`

Efface tous les onglets.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_ensure_tab_visible:

.. rst-class:: classref-method

|void| **ensure_tab_visible**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_ensure_tab_visible>`

Déplace la vue de défilement pour rendre l'onglet visible.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_offset_buttons_visible:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_offset_buttons_visible**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_offset_buttons_visible>`

Renvoie ``true`` si les boutons de décalage (les boutons qui apparaissent lorsqu'il n'y a pas assez d'espace pour tous les onglets) sont visibles.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_previous_tab:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_previous_tab**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_previous_tab>`

Renvoie l'index de l'onglet précédemment actif.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_button_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_button_icon>`

Renvoie l'icône pour le bouton droit de l'onglet à l'index ``tab_idx`` ou ``null`` si le bouton droit n'a pas d'icône.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_icon>`

Renvoie l'icône pour l'onglet à l'index ``tab_idx`` ou ``null`` si l'onglet n'a pas d'icône.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_icon_max_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_icon_max_width>`

Renvoie la largeur maximale autorisée de l'icône pour l'onglet à l'index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_idx_at_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_at_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_idx_at_point>`

Renvoie l'index de l'onglet aux coordonnées locales ``point``. Renvoie ``-1`` si le point est en dehors des limites du contrôle ou s'il n'y a pas d'onglet à la position demandée.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_language:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_language**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_language>`

Renvoie le code de langue de l'onglet.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_metadata>`

Renvoie la valeur des métadonnées définies dans l'onglet à l'index ``tab_idx`` en utilisant :ref:`set_tab_metadata()<class_TabBar_method_set_tab_metadata>`. Si aucune métadonnée n'a été précédemment définie, renvoie ``null`` par défaut.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_offset**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_offset>`

Renvoie le nombre d'onglets cachés décalés vers la gauche.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_tab_rect**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_rect>`

Renvoie l'onglet :ref:`Rect2<class_Rect2>` avec la position et la taille locales.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_text_direction:

.. rst-class:: classref-method

:ref:`TextDirection<enum_Control_TextDirection>` **get_tab_text_direction**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_text_direction>`

Renvoie la direction d'écriture de base du texte du titre de l'onglet.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_title>`

Renvoie le titre de l'onglet à l'index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_tooltip>`

Renvoie le texte de l'info-bulle de l'onglet à l'index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_is_tab_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_is_tab_disabled>`

Renvoie ``true`` si l'onglet à la position ``tab_idx`` est désactivé.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_is_tab_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_is_tab_hidden>`

Renvoie ``true`` si l'onglet à l'index ``tab_idx`` est masqué.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_move_tab:

.. rst-class:: classref-method

|void| **move_tab**\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_move_tab>`

Déplace un onglet de ``from`` à ``to``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_remove_tab:

.. rst-class:: classref-method

|void| **remove_tab**\ (\ tab_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_remove_tab>`

Retire l'onglet à l'index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_select_next_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_next_available**\ (\ ) :ref:`🔗<class_TabBar_method_select_next_available>`

Sélectionne le premier onglet disponible avec un index supérieur à celui actuellement sélectionné. Renvoie\ ``true`` si la sélection d'onglet a changé.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_select_previous_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_previous_available**\ (\ ) :ref:`🔗<class_TabBar_method_select_previous_available>`

Sélectionne le premier onglet disponible avec un index inférieur à celui actuellement sélectionné. Renvoie\ ``true`` si la sélection d'onglet a changé.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_button_icon:

.. rst-class:: classref-method

|void| **set_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabBar_method_set_tab_button_icon>`

Définit un ``icon`` pour le bouton de l'onglet à l'index ``tab_idx`` (qui se trouve à droite, avant de bouton de fermeture), le rendant visible et cliquable (voir :ref:`tab_button_pressed<class_TabBar_signal_tab_button_pressed>`). Lui donner une valeur ``null`` cachera le bouton.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_disabled:

.. rst-class:: classref-method

|void| **set_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabBar_method_set_tab_disabled>`

Si ``disabled`` est ``true``, désactive l'onglet à l'index ``tab_idx``, le rendant non-interactif.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_hidden:

.. rst-class:: classref-method

|void| **set_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabBar_method_set_tab_hidden>`

Si ``hidden`` vaut ``true``, cache l'onglet à l'index ``tab_idx``, le faisait disparaître de la zone des onglets.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_icon:

.. rst-class:: classref-method

|void| **set_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabBar_method_set_tab_icon>`

Définit une icône ``icon`` pour l'onglet à l'index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_icon_max_width:

.. rst-class:: classref-method

|void| **set_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_set_tab_icon_max_width>`

Définit la largeur maximale autorisée de l'icône pour l'onglet à l'index ``tab_idx``. Cette limite est appliquée en plus de la taille par défaut de l'icône et en plus de :ref:`icon_max_width<class_TabBar_theme_constant_icon_max_width>`. La hauteur est ajustée selon le ratio de l'icône.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_language:

.. rst-class:: classref-method

|void| **set_tab_language**\ (\ tab_idx\: :ref:`int<class_int>`, language\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabBar_method_set_tab_language>`

Sets the language code of the title for the tab at index ``tab_idx`` to ``language``. This is used for line-breaking and text shaping algorithms. If ``language`` is empty, the current locale is used.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_metadata:

.. rst-class:: classref-method

|void| **set_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TabBar_method_set_tab_metadata>`

Définit la valeur des métadonnées pour l'onglet à l'index ``tab_idx``, qui peuvent être récupérées plus tard en utilisant :ref:`get_tab_metadata()<class_TabBar_method_get_tab_metadata>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_text_direction:

.. rst-class:: classref-method

|void| **set_tab_text_direction**\ (\ tab_idx\: :ref:`int<class_int>`, direction\: :ref:`TextDirection<enum_Control_TextDirection>`\ ) :ref:`🔗<class_TabBar_method_set_tab_text_direction>`

Définit la direction d'écriture de base du titre de l'onglet.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_title:

.. rst-class:: classref-method

|void| **set_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabBar_method_set_tab_title>`

Définit un titre ``title`` pour l'onglet à l'index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_tooltip:

.. rst-class:: classref-method

|void| **set_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabBar_method_set_tab_tooltip>`

Définit une info-bulle ``tooltip`` pour l'onglet à l'index ``tab_idx``.

\ **Note :** Par défaut, si l'info-bulle ``tooltip`` est vide et que le texte de l'onglet est tronqué (les caractères ne rentrent pas tous dans l'onglet), le titre sera affiché en tant qu'info-bulle. Pour cacher l'info-bulle, assignez ``" "`` comme texte de ``tooltip``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_TabBar_theme_color_drop_mark_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **drop_mark_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabBar_theme_color_drop_mark_color>`

Couleur de modulation pour l'icône :ref:`drop_mark<class_TabBar_theme_icon_drop_mark>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_TabBar_theme_color_font_disabled_color>`

La couleur de la police pour les onglets désactivés.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hovered_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabBar_theme_color_font_hovered_color>`

Couleur de la police de l'onglet actuellement survolé. Ne s'applique pas à l'onglet sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_TabBar_theme_color_font_outline_color>`

La teinte du contour du texte du nom de l'onglet.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_selected_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabBar_theme_color_font_selected_color>`

La couleur de la police pour l'onglet actuellement sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_unselected_color** = ``Color(0.7, 0.7, 0.7, 1)`` :ref:`🔗<class_TabBar_theme_color_font_unselected_color>`

Couleur de police pour les autres onglets, non sélectionnés.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_icon_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_disabled_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabBar_theme_color_icon_disabled_color>`

Icon color of disabled tabs.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_icon_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_hovered_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabBar_theme_color_icon_hovered_color>`

Icon color of the currently hovered tab. Does not apply to the selected tab.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_icon_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_selected_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabBar_theme_color_icon_selected_color>`

Icon color of the currently selected tab.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_icon_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_unselected_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabBar_theme_color_icon_unselected_color>`

Icon color of the other, unselected tabs.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_TabBar_theme_constant_h_separation>`

La séparation horizontale entre les éléments dans les onglets.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_hover_switch_wait_msec:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **hover_switch_wait_msec** = ``500`` :ref:`🔗<class_TabBar_theme_constant_hover_switch_wait_msec>`

During a drag-and-drop, this is how many milliseconds to wait before switching the tab.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_icon_max_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_width** = ``0`` :ref:`🔗<class_TabBar_theme_constant_icon_max_width>`

La largeur maximale autorisée de l'icône de l'onglet. Cette limite est appliquée en plus de la taille par défaut de l'icône, mais avant la valeur définie avec :ref:`set_tab_icon_max_width()<class_TabBar_method_set_tab_icon_max_width>`. La hauteur est ajustée selon le ratio de l'icône.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_TabBar_theme_constant_outline_size>`

La taille du contour du texte de l'onglet.

\ **Note :** Lors de l'utilisation d'une police avec :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` activé, son :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` doit être défini à au moins *deux fois* la valeur de :ref:`outline_size<class_TabBar_theme_constant_outline_size>` pour que le rendu puisse être correct. Sinon, le contour peut sembler être coupé plus tôt que prévu.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_tab_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tab_separation** = ``0`` :ref:`🔗<class_TabBar_theme_constant_tab_separation>`

L'espace entre les onglets dans la barre d'onglets.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TabBar_theme_font_font>`

La police utilisée pour les noms des onglets.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_TabBar_theme_font_size_font_size>`

Taille de police des noms d'onglet.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_close:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **close** :ref:`🔗<class_TabBar_theme_icon_close>`

L'icône pour le bouton fermer (voir :ref:`tab_close_display_policy<class_TabBar_property_tab_close_display_policy>`).

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_TabBar_theme_icon_decrement>`

L'icône pour le bouton flèche de gauche qui apparaît quand il y a trop d'onglets à afficher dans le conteneur. Lorsque le bouton est désactivé (c'est-à-dire le premier onglet est visible), il apparaît en semi-transparent.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_TabBar_theme_icon_decrement_highlight>`

L'icône pour le bouton flèche de gauche qui apparaît quand il y a trop d'onglets à afficher dans le conteneur. Utilisé quand le bouton est survolé par le curseur.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_drop_mark:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **drop_mark** :ref:`🔗<class_TabBar_theme_icon_drop_mark>`

Icon shown to indicate where a dragged tab is gonna be dropped (see :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`).

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_TabBar_theme_icon_increment>`

L'icône pour le bouton flèche de droite qui apparaît quand il y a trop d'onglets à afficher dans le conteneur. Lorsque le bouton est désactivé (c'est-à-dire le dernier onglet est visible), il apparaît en semi-transparent.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_TabBar_theme_icon_increment_highlight>`

L'icône pour le bouton flèche de droite qui apparaît quand il y a trop d'onglets à afficher dans le conteneur. Utilisé quand le bouton est survolé par le curseur.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_button_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **button_highlight** :ref:`🔗<class_TabBar_theme_style_button_highlight>`

Arrière-plan de l'onglet et des boutons de fermeture quand ils sont survolés avec le curseur.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_button_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **button_pressed** :ref:`🔗<class_TabBar_theme_style_button_pressed>`

Arrière-plan de l'onglet et des boutons de fermeture quand ils sont appuyés.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_disabled** :ref:`🔗<class_TabBar_theme_style_tab_disabled>`

Le style des onglets désactivés.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_focus** :ref:`🔗<class_TabBar_theme_style_tab_focus>`

:ref:`StyleBox<class_StyleBox>` utilisé lorsque le **TabBar** a le focus. La :ref:`StyleBox<class_StyleBox>` :ref:`tab_focus<class_TabBar_theme_style_tab_focus>` est affichée *par-dessus* la :ref:`StyleBox<class_StyleBox>` de base de l'onglet sélectionné, ainsi une :ref:`StyleBox<class_StyleBox>` partiellement transparente devrait être utilisée pour s'assurer que la :ref:`StyleBox<class_StyleBox>` de base reste visible. Une :ref:`StyleBox<class_StyleBox>` qui représente un contour ou un soulignement fonctionne bien à cette fin. Pour désactiver l'effet visuel du focus, assignez une ressource :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Notez que la désactivation de l'effet visuel du focus va nuire à l'utilisabilité de la navigation clavier/contrôleur, ce qui n'est donc pas recommandé pour des raisons d'accessibilité.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_hovered** :ref:`🔗<class_TabBar_theme_style_tab_hovered>`

Le style de l'onglet actuellement survolé. Ne s'applique pas à l'onglet sélectionné.

\ **Note :** Ce style sera dessiné avec la même largeur que :ref:`tab_unselected<class_TabBar_theme_style_tab_unselected>` au minimum.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_selected** :ref:`🔗<class_TabBar_theme_style_tab_selected>`

Le style de l'onglet actuellement sélectionné.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_unselected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_unselected** :ref:`🔗<class_TabBar_theme_style_tab_unselected>`

Le style des autres onglets, non sélectionnés.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
