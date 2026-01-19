:github_url: hide

.. _class_TabBar:

TabBar
======

**Hereda:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un control que proporciona una barra horizontal con pestañas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un control que proporciona una barra horizontal con pestañas. Similar a :ref:`TabContainer<class_TabContainer>` pero sólo se encarga de dibujar pestañas, no de interactuar con los hijos.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Propiedades del Tema
----------------------------------------

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

Señales
--------------

.. _class_TabBar_signal_active_tab_rearranged:

.. rst-class:: classref-signal

**active_tab_rearranged**\ (\ idx_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_active_tab_rearranged>`

Emitida cuando la pestaña activa se reorganiza mediante el arrastre del ratón. Véase :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_button_pressed:

.. rst-class:: classref-signal

**tab_button_pressed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_button_pressed>`

Emitida al presionar el botón derecho de una pestaña. Véase :ref:`set_tab_button_icon()<class_TabBar_method_set_tab_button_icon>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_changed:

.. rst-class:: classref-signal

**tab_changed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_changed>`

Emitida cuando se cambia a otra pestaña.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_clicked:

.. rst-class:: classref-signal

**tab_clicked**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_clicked>`

Emitida cuando se hace clic con el botón derecho del ratón en una pestaña.

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

Emitida cuando una pestaña tiene encima el cursor del ratón.

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

Emitida cuando una pestaña es seleccionada mediante un clic, entrada direccional o script, incluso si es la pestaña actual.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

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

Representa el tamaño del enum :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`.

.. rst-class:: classref-item-separator

----

.. _enum_TabBar_CloseButtonDisplayPolicy:

.. rst-class:: classref-enumeration

enum **CloseButtonDisplayPolicy**: :ref:`🔗<enum_TabBar_CloseButtonDisplayPolicy>`

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_NEVER** = ``0``

Nunca muestra los botones de cerrado.

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_ACTIVE_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_ACTIVE_ONLY** = ``1``

Solo muestra el botón de cierre en la pestaña actualmente activa.

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_ALWAYS** = ``2``

Mostrar el botón de cerrado en todas las pestañas.

.. _class_TabBar_constant_CLOSE_BUTTON_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_MAX** = ``3``

Representa el tamaño del enum :ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_TabBar_property_clip_tabs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_tabs** = ``true`` :ref:`🔗<class_TabBar_property_clip_tabs>`

.. rst-class:: classref-property-setget

- |void| **set_clip_tabs**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_clip_tabs**\ (\ )

Si es ``true``, las pestañas que se desborden del ancho de este nodo se ocultarán, mostrando dos botones de navegación en su lugar. De lo contrario, el tamaño mínimo de este nodo se actualiza para que todas las pestañas sean visibles.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_close_with_middle_mouse:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **close_with_middle_mouse** = ``true`` :ref:`🔗<class_TabBar_property_close_with_middle_mouse>`

.. rst-class:: classref-property-setget

- |void| **set_close_with_middle_mouse**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_close_with_middle_mouse**\ (\ )

If ``true``, middle-clicking on a tab will emit the :ref:`tab_close_pressed<class_TabBar_signal_tab_close_pressed>` signal.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_current_tab:

.. rst-class:: classref-property

:ref:`int<class_int>` **current_tab** = ``-1`` :ref:`🔗<class_TabBar_property_current_tab>`

.. rst-class:: classref-property-setget

- |void| **set_current_tab**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_current_tab**\ (\ )

El índice de la pestaña seleccionada actualmente. Un valor de ``-1`` significa que no hay ninguna pestaña seleccionada y sólo se puede establecer cuando :ref:`deselect_enabled<class_TabBar_property_deselect_enabled>` es ``true`` o si todas las pestañas están ocultas o desactivadas.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_deselect_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deselect_enabled** = ``false`` :ref:`🔗<class_TabBar_property_deselect_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_deselect_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_deselect_enabled**\ (\ )

Si es ``true``, todas las pestañas pueden ser deseleccionadas de modo que ninguna pestaña sea seleccionada. Haz clic en la pestaña actual para deseleccionarla.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_drag_to_rearrange_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_to_rearrange_enabled** = ``false`` :ref:`🔗<class_TabBar_property_drag_to_rearrange_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_to_rearrange_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_drag_to_rearrange_enabled**\ (\ )

Si es ``true``, las pestañas se pueden reorganizar con el arrastre del ratón.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_max_tab_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_tab_width** = ``0`` :ref:`🔗<class_TabBar_property_max_tab_width>`

.. rst-class:: classref-property-setget

- |void| **set_max_tab_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_tab_width**\ (\ )

Establece el ancho máximo al que deben limitarse todas las pestañas. Ilimitado si se establece en ``0``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_scroll_to_selected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scroll_to_selected** = ``true`` :ref:`🔗<class_TabBar_property_scroll_to_selected>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_to_selected**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_scroll_to_selected**\ (\ )

Si es ``true``, el desplazamiento de la pestaña se cambiará para mantener visible la pestaña seleccionada actualmente.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_scrolling_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scrolling_enabled** = ``true`` :ref:`🔗<class_TabBar_property_scrolling_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_scrolling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_scrolling_enabled**\ (\ )

Si es ``true``, la rueda de desplazamiento del ratón se puede usar para navegar por la vista de desplazamiento.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_select_with_rmb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **select_with_rmb** = ``false`` :ref:`🔗<class_TabBar_property_select_with_rmb>`

.. rst-class:: classref-property-setget

- |void| **set_select_with_rmb**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_select_with_rmb**\ (\ )

Si es ``true``, permite seleccionar una pestaña con el botón derecho del ratón.

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

Cuando aparezca el botón cerrar en las pestañas.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tab_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **tab_count** = ``0`` :ref:`🔗<class_TabBar_property_tab_count>`

.. rst-class:: classref-property-setget

- |void| **set_tab_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tab_count**\ (\ )

El número de pestañas que hay actualmente en la barra.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tabs_rearrange_group:

.. rst-class:: classref-property

:ref:`int<class_int>` **tabs_rearrange_group** = ``-1`` :ref:`🔗<class_TabBar_property_tabs_rearrange_group>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_rearrange_group**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tabs_rearrange_group**\ (\ )

Las **TabBar**\ s con el mismo ID de grupo de reorganización permitirán arrastrar las pestañas entre ellas. Activa el arrastre con :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`.

Establecer esto como ``-1`` desactivará la reorganización entre **TabBar**\ s.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_TabBar_method_add_tab:

.. rst-class:: classref-method

|void| **add_tab**\ (\ title\: :ref:`String<class_String>` = "", icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_TabBar_method_add_tab>`

Añade una nueva pestaña.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_clear_tabs:

.. rst-class:: classref-method

|void| **clear_tabs**\ (\ ) :ref:`🔗<class_TabBar_method_clear_tabs>`

Li todas las pestañas.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_ensure_tab_visible:

.. rst-class:: classref-method

|void| **ensure_tab_visible**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_ensure_tab_visible>`

Mueve la scroll view para hacer visible la pestaña.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_offset_buttons_visible:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_offset_buttons_visible**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_offset_buttons_visible>`

Devuelve ``true`` si los botones de desplazamiento (los que aparecen cuando no hay suficiente espacio para todas las pestañas) son visibles.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_previous_tab:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_previous_tab**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_previous_tab>`

Devuelve la pestaña anteriormente activa.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_button_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_button_icon>`

Devuelve el icono del botón derecho de la pestaña en el índice ``tab_idx`` o ``null`` si el botón derecho no tiene icono.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_icon>`

Devuelve el icono de la pestaña en el índice ``tab_idx`` o ``null`` si la pestaña no tiene icono.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_icon_max_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_icon_max_width>`

Devuelve el ancho máximo permitido del icono para la pestaña en el índice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_idx_at_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_at_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_idx_at_point>`

Devuelve el índice de la pestaña en las coordenadas locales ``point``. Devuelve ``-1`` si el punto está fuera de los límites del control o si no hay ninguna pestaña en la posición consultada.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_language:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_language**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_language>`

Devuelve el código de idioma del título de la pestaña.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_metadata>`

Devuelve el valor de los metadatos establecidos en la pestaña en el índice ``tab_idx`` utilizando :ref:`set_tab_metadata()<class_TabBar_method_set_tab_metadata>`. Si no se han establecido metadatos previamente, devuelve ``null`` por defecto.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_offset**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_offset>`

Devuelve el número de pestañas ocultas desplazadas a la izquierda.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_tab_rect**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_rect>`

Devuelve la pestaña :ref:`Rect2<class_Rect2>` con la posición y el tamaño local.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_text_direction:

.. rst-class:: classref-method

:ref:`TextDirection<enum_Control_TextDirection>` **get_tab_text_direction**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_text_direction>`

Devuelve la dirección de escritura base del texto del título de la pestaña.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_title>`

Devuelve el título de la pestaña en el índice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_tooltip>`

Devuelve el texto de la información sobre herramientas de la pestaña en el índice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_is_tab_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_is_tab_disabled>`

Devuelve ``true`` si la pestaña en el índice ``tab_idx`` está desactivada.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_is_tab_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_is_tab_hidden>`

Devuelve ``true`` si la pestaña en el índice ``tab_idx`` está oculta.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_move_tab:

.. rst-class:: classref-method

|void| **move_tab**\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_move_tab>`

Mueve una pestaña de ``from`` a ``to``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_remove_tab:

.. rst-class:: classref-method

|void| **remove_tab**\ (\ tab_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_remove_tab>`

Elimina la pestaña en el índice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_select_next_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_next_available**\ (\ ) :ref:`🔗<class_TabBar_method_select_next_available>`

Selecciona la primera pestaña disponible con un índice mayor que la actualmente seleccionada. Devuelve ``true`` si la selección de la pestaña cambió.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_select_previous_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_previous_available**\ (\ ) :ref:`🔗<class_TabBar_method_select_previous_available>`

Selecciona la primera pestaña disponible con un índice menor que la actualmente seleccionada. Devuelve ``true`` si la selección de la pestaña cambió.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_button_icon:

.. rst-class:: classref-method

|void| **set_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabBar_method_set_tab_button_icon>`

Establece un ``icon`` para el botón de la pestaña en el índice ``tab_idx`` (ubicado a la derecha, antes del botón de cierre), haciéndolo visible y clicable (Véase :ref:`tab_button_pressed<class_TabBar_signal_tab_button_pressed>`). Darle un valor ``null`` ocultará el botón.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_disabled:

.. rst-class:: classref-method

|void| **set_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabBar_method_set_tab_disabled>`

Si ``disabled`` es ``true``, desactiva la pestaña en el índice ``tab_idx``, haciéndola no interactiva.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_hidden:

.. rst-class:: classref-method

|void| **set_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabBar_method_set_tab_hidden>`

Si ``hidden`` es ``true``, oculta la pestaña en el índice ``tab_idx``, haciéndola desaparecer del área de pestañas.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_icon:

.. rst-class:: classref-method

|void| **set_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabBar_method_set_tab_icon>`

Establece un ``icon`` para la pestaña en el índice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_icon_max_width:

.. rst-class:: classref-method

|void| **set_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_set_tab_icon_max_width>`

Establece el ancho máximo permitido del icono para la pestaña en el índice ``tab_idx``. Este límite se aplica sobre el tamaño predeterminado del icono y sobre :ref:`icon_max_width<class_TabBar_theme_constant_icon_max_width>`. La altura se ajusta según la relación del icono.

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

Establece el valor de los metadatos para la pestaña en el índice ``tab_idx``, que se puede recuperar más tarde utilizando :ref:`get_tab_metadata()<class_TabBar_method_get_tab_metadata>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_text_direction:

.. rst-class:: classref-method

|void| **set_tab_text_direction**\ (\ tab_idx\: :ref:`int<class_int>`, direction\: :ref:`TextDirection<enum_Control_TextDirection>`\ ) :ref:`🔗<class_TabBar_method_set_tab_text_direction>`

Establece la dirección de escritura base del título de la pestaña.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_title:

.. rst-class:: classref-method

|void| **set_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabBar_method_set_tab_title>`

Establece un ``title`` para la pestaña en el índice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_tooltip:

.. rst-class:: classref-method

|void| **set_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabBar_method_set_tab_tooltip>`

Establece una ``tooltip`` para la pestaña en el índice ``tab_idx``.

\ **Nota:** De forma predeterminada, si el ``tooltip`` está vacío y el texto de la pestaña está truncado (no todos los caracteres caben en la pestaña), el título se mostrará como información sobre herramientas. Para ocultar la información sobre herramientas, asigna ``" "`` como el texto de la ``tooltip``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_TabBar_theme_color_drop_mark_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **drop_mark_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabBar_theme_color_drop_mark_color>`

Color de modulación para el icono :ref:`drop_mark<class_TabBar_theme_icon_drop_mark>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_TabBar_theme_color_font_disabled_color>`

El color de la fuente de las pestañas desactivadas.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hovered_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabBar_theme_color_font_hovered_color>`

Color de la fuente de la pestaña sobre la que está el cursor. No se aplica a la pestaña seleccionada.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_TabBar_theme_color_font_outline_color>`

El tinte del contorno del texto del nombre de la pestaña.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_selected_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabBar_theme_color_font_selected_color>`

Color de la fuente de la pestaña actualmente seleccionada.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_unselected_color** = ``Color(0.7, 0.7, 0.7, 1)`` :ref:`🔗<class_TabBar_theme_color_font_unselected_color>`

Color de la fuente de las otras pestañas no seleccionadas.

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

La separación horizontal entre los elementos dentro de las pestañas.

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

El ancho máximo permitido para el icono de la pestaña. Este límite se aplica además del tamaño por defecto del icono, pero antes del valor establecido con :ref:`set_tab_icon_max_width()<class_TabBar_method_set_tab_icon_max_width>`. La altura se ajusta según la proporción del icono.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_TabBar_theme_constant_outline_size>`

El tamaño del contorno del texto de la pestaña.

\ **Nota:** Si utilizas una fuente con :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` activado, su :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` debe establecerse al menos al *doble* del valor de :ref:`outline_size<class_TabBar_theme_constant_outline_size>` para que el renderizado del contorno se vea correctamente. De lo contrario, el contorno puede aparecer recortado antes de lo previsto.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_tab_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tab_separation** = ``0`` :ref:`🔗<class_TabBar_theme_constant_tab_separation>`

The space between tabs in the tab bar.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TabBar_theme_font_font>`

La fuente usada para dibujar los nombres de las pestañas.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_TabBar_theme_font_size_font_size>`

Tamaño de fuente de los nombres de las pestañas.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_close:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **close** :ref:`🔗<class_TabBar_theme_icon_close>`

El icono para el botón de cerrado (véase :ref:`tab_close_display_policy<class_TabBar_property_tab_close_display_policy>`).

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_TabBar_theme_icon_decrement>`

Icono para el botón de la flecha izquierda que aparece cuando hay demasiadas pestañas que no caben en el ancho del contenedor. Cuando el botón está desactivado (es decir, la primera pestaña es visible), aparece semi-transparente.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_TabBar_theme_icon_decrement_highlight>`

Icono para el botón de la flecha izquierda que aparece cuando hay demasiadas pestañas que no caben en el ancho del contenedor. Se utiliza cuando el cursor se mantiene encima del botón.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_drop_mark:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **drop_mark** :ref:`🔗<class_TabBar_theme_icon_drop_mark>`

Icono que se muestra para indicar dónde se va a soltar una pestaña arrastrada (véase :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`).

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_TabBar_theme_icon_increment>`

Icono para el botón de la flecha derecha que aparece cuando hay demasiadas pestañas que no caben en el ancho del contenedor. Cuando el botón está desactivado (es decir, la última pestaña es visible) aparece semi-transparente.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_TabBar_theme_icon_increment_highlight>`

Icono para el botón de la flecha derecha que aparece cuando hay demasiadas pestañas que no caben en el ancho del contenedor. Se utiliza cuando el cursor esta encima del botón.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_button_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **button_highlight** :ref:`🔗<class_TabBar_theme_style_button_highlight>`

Fondo de la pestaña y los botones de cierre cuando se está pasando el cursor sobre ellos.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_button_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **button_pressed** :ref:`🔗<class_TabBar_theme_style_button_pressed>`

Fondo de la pestaña y los botones de cierre cuando se están presionando.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_disabled** :ref:`🔗<class_TabBar_theme_style_tab_disabled>`

El estilo de las pestañas desactivadas.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_focus** :ref:`🔗<class_TabBar_theme_style_tab_focus>`

:ref:`StyleBox<class_StyleBox>` que se usa cuando el **TabBar** tiene el foco. El :ref:`StyleBox<class_StyleBox>` de :ref:`tab_focus<class_TabBar_theme_style_tab_focus>` se muestra *sobre* el :ref:`StyleBox<class_StyleBox>` base de la pestaña seleccionada, por lo que se debe usar un :ref:`StyleBox<class_StyleBox>` parcialmente transparente para garantizar que el :ref:`StyleBox<class_StyleBox>` base permanezca visible. Un :ref:`StyleBox<class_StyleBox>` que representa un contorno o un subrayado funciona bien para este propósito. Para deshabilitar el efecto visual de foco, asigna un recurso :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Ten en cuenta que deshabilitar el efecto visual de foco perjudicará la usabilidad de la navegación por teclado/controlador, por lo que no se recomienda por razones de accesibilidad.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_hovered** :ref:`🔗<class_TabBar_theme_style_tab_hovered>`

The style of the currently hovered tab. Does not apply to the selected tab.

\ **Note:** This style will be drawn with the same width as :ref:`tab_unselected<class_TabBar_theme_style_tab_unselected>` at minimum.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_selected** :ref:`🔗<class_TabBar_theme_style_tab_selected>`

El estilo de la pestaña actualmente seleccionada.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_unselected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_unselected** :ref:`🔗<class_TabBar_theme_style_tab_unselected>`

El estilo de las otras pestañas no seleccionadas.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
