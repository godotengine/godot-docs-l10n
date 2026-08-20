:github_url: hide

.. _class_TabContainer:

TabContainer
============

**Hereda:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un contenedor que crea una pestaña para cada control hijo, mostrando solo el control de la pestaña activa.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Organiza los controles hijos en una vista de pestañas, creando una pestaña para cada uno. El control correspondiente a la pestaña activa se hace visible, mientras que todos los demás controles hijos se ocultan. Ignora los hijos que no son controles.

\ **Nota:** El dibujo de las pestañas clickables es manejado por este nodo; no se necesita :ref:`TabBar<class_TabBar>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usar Contenedores <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Propiedades del Tema
----------------------------------------

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

Señales
--------------

.. _class_TabContainer_signal_active_tab_rearranged:

.. rst-class:: classref-signal

**active_tab_rearranged**\ (\ idx_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_active_tab_rearranged>`

Emitida cuando la pestaña activa se reorganiza mediante el arrastre del ratón. Véase :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_pre_popup_pressed:

.. rst-class:: classref-signal

**pre_popup_pressed**\ (\ ) :ref:`🔗<class_TabContainer_signal_pre_popup_pressed>`

Emitida cuando se hace clic en el botón :ref:`Popup<class_Popup>` del **TabContainer**. Véase :ref:`set_popup()<class_TabContainer_method_set_popup>` para obtener más detalles.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_button_pressed:

.. rst-class:: classref-signal

**tab_button_pressed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_button_pressed>`

Emitida cuando el usuario hace clic en el icono del botón en esta pestaña.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_changed:

.. rst-class:: classref-signal

**tab_changed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_changed>`

Emitida cuando se cambia a otra pestaña.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_clicked:

.. rst-class:: classref-signal

**tab_clicked**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_clicked>`

Emitida cuando se hace clic con el botón derecho del ratón en una pestaña.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_hovered:

.. rst-class:: classref-signal

**tab_hovered**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_hovered>`

Emitida cuando una pestaña tiene encima el cursor del ratón.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_selected:

.. rst-class:: classref-signal

**tab_selected**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_selected>`

Emitida cuando una pestaña es seleccionada mediante un clic, entrada direccional o script, incluso si es la pestaña actual.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_TabContainer_TabPosition:

.. rst-class:: classref-enumeration

enum **TabPosition**: :ref:`🔗<enum_TabContainer_TabPosition>`

.. _class_TabContainer_constant_POSITION_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_TOP** = ``0``

Coloca la barra de pestañas en la parte superior.

.. _class_TabContainer_constant_POSITION_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_BOTTOM** = ``1``

Coloca la barra de pestañas en la parte inferior. El :ref:`StyleBox<class_StyleBox>` de la barra de pestañas se volteará verticalmente.

.. _class_TabContainer_constant_POSITION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_MAX** = ``2``

Representa el tamaño del enum :ref:`TabPosition<enum_TabContainer_TabPosition>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_TabContainer_property_all_tabs_in_front:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **all_tabs_in_front** :ref:`🔗<class_TabContainer_property_all_tabs_in_front>`

.. rst-class:: classref-property-setget

- |void| **set_all_tabs_in_front**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_all_tabs_in_front**\ (\ )

**Obsoleto:** Due to internal changes this doesn't do anything anymore, as they're always in front.

Esto no hace nada.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_clip_tabs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_tabs** = ``true`` :ref:`🔗<class_TabContainer_property_clip_tabs>`

.. rst-class:: classref-property-setget

- |void| **set_clip_tabs**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_clip_tabs**\ (\ )

Si es ``true``, las pestañas que se desborden del ancho de este nodo se ocultarán, mostrando dos botones de navegación en su lugar. De lo contrario, el tamaño mínimo de este nodo se actualiza para que todas las pestañas sean visibles.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_current_tab:

.. rst-class:: classref-property

:ref:`int<class_int>` **current_tab** = ``-1`` :ref:`🔗<class_TabContainer_property_current_tab>`

.. rst-class:: classref-property-setget

- |void| **set_current_tab**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_current_tab**\ (\ )

El índice de la pestaña actual. Cuando se establece, la propiedad ``visible`` del nodo :ref:`Control<class_Control>` de este índice se establece en ``true`` y todas las demás se establecen en ``false``.

Un valor de ``-1`` significa que no hay ninguna pestaña seleccionada.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_deselect_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deselect_enabled** = ``false`` :ref:`🔗<class_TabContainer_property_deselect_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_deselect_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_deselect_enabled**\ (\ )

Si es ``true``, se pueden deseleccionar todas las pestañas para que no haya ninguna pestaña seleccionada. Haz clic en la :ref:`current_tab<class_TabContainer_property_current_tab>` para deseleccionarla.

Solo se mostrará la cabecera de pestañas si no hay ninguna pestaña seleccionada.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_drag_to_rearrange_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_to_rearrange_enabled** = ``false`` :ref:`🔗<class_TabContainer_property_drag_to_rearrange_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_to_rearrange_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_drag_to_rearrange_enabled**\ (\ )

Si es ``true``, las pestañas se pueden reorganizar con el arrastre del ratón.

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

La posición en la que se colocarán las pestañas.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tab_focus_mode:

.. rst-class:: classref-property

:ref:`FocusMode<enum_Control_FocusMode>` **tab_focus_mode** = ``2`` :ref:`🔗<class_TabContainer_property_tab_focus_mode>`

.. rst-class:: classref-property-setget

- |void| **set_tab_focus_mode**\ (\ value\: :ref:`FocusMode<enum_Control_FocusMode>`\ )
- :ref:`FocusMode<enum_Control_FocusMode>` **get_tab_focus_mode**\ (\ )

The focus access mode for the internal :ref:`TabBar<class_TabBar>` node.

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

La alineación horizontal de las pestañas.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tabs_rearrange_group:

.. rst-class:: classref-property

:ref:`int<class_int>` **tabs_rearrange_group** = ``-1`` :ref:`🔗<class_TabContainer_property_tabs_rearrange_group>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_rearrange_group**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tabs_rearrange_group**\ (\ )

Los **TabContainer**\ s con el mismo ID de grupo de reorganización permitirán arrastrar las pestañas entre ellos. Habilita el arrastre con :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`.

Establecer esto a ``-1`` deshabilitará la reorganización entre **TabContainer**\ s.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tabs_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tabs_visible** = ``true`` :ref:`🔗<class_TabContainer_property_tabs_visible>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_tabs_visible**\ (\ )

Si es ``true``, las pestañas son visibles. Si es ``false``, el contenido y los títulos de las pestañas están ocultos.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_use_hidden_tabs_for_min_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_hidden_tabs_for_min_size** = ``false`` :ref:`🔗<class_TabContainer_property_use_hidden_tabs_for_min_size>`

.. rst-class:: classref-property-setget

- |void| **set_use_hidden_tabs_for_min_size**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_hidden_tabs_for_min_size**\ (\ )

Si es ``true``, los nodos hijos :ref:`Control<class_Control>` que están ocultos tienen su tamaño mínimo en cuenta en el total, en lugar de sólo el actualmente visible.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_TabContainer_method_get_current_tab_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_current_tab_control**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_current_tab_control>`

Devuelve el nodo hijo :ref:`Control<class_Control>` situado en el pestaña activa.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_popup:

.. rst-class:: classref-method

:ref:`Popup<class_Popup>` **get_popup**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_popup>`

Returns the :ref:`Popup<class_Popup>` node instance if one has been set already with :ref:`set_popup()<class_TabContainer_method_set_popup>`.

\ **Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their :ref:`Window.visible<class_Window_property_visible>` property.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_previous_tab:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_previous_tab**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_previous_tab>`

Devuelve la pestaña anteriormente activa.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_bar:

.. rst-class:: classref-method

:ref:`TabBar<class_TabBar>` **get_tab_bar**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_bar>`

Returns the :ref:`TabBar<class_TabBar>` contained in this container.

\ **Warning:** This is a required internal node, removing and freeing it or editing its tabs may cause a crash. If you wish to edit the tabs, use the methods provided in **TabContainer**.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_button_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_button_icon>`

Returns the button icon from the tab at index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_tab_control**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_control>`

Returns the :ref:`Control<class_Control>` node from the tab at index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_count**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_count>`

Devuelve el número de pestañas.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_icon>`

Returns the :ref:`Texture2D<class_Texture2D>` for the tab at index ``tab_idx`` or ``null`` if the tab has no :ref:`Texture2D<class_Texture2D>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_icon_max_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_icon_max_width>`

Devuelve el ancho máximo permitido del icono para la pestaña en el índice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_idx_at_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_at_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_idx_at_point>`

Devuelve el índice de la pestaña en las coordenadas locales ``point``. Devuelve ``-1`` si el punto está fuera de los límites del control o si no hay ninguna pestaña en la posición consultada.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_idx_from_control:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_from_control**\ (\ control\: :ref:`Control<class_Control>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_idx_from_control>`

Returns the index of the tab tied to the given ``control``. The control must be a child of the **TabContainer**.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_metadata>`

Devuelve el valor de los metadatos establecidos en la pestaña en el índice ``tab_idx`` utilizando :ref:`set_tab_metadata()<class_TabContainer_method_set_tab_metadata>`. Si no se han establecido metadatos previamente, devuelve ``null`` por defecto.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_title>`

Returns the title of the tab at index ``tab_idx``. Tab titles default to the name of the indexed child node, but this can be overridden with :ref:`set_tab_title()<class_TabContainer_method_set_tab_title>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_tooltip>`

Devuelve el texto de la información sobre herramientas de la pestaña en el índice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_is_tab_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_is_tab_disabled>`

Devuelve ``true`` si la pestaña en el índice ``tab_idx`` está desactivada.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_is_tab_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_is_tab_hidden>`

Devuelve ``true`` si la pestaña en el índice ``tab_idx`` está oculta.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_select_next_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_next_available**\ (\ ) :ref:`🔗<class_TabContainer_method_select_next_available>`

Selecciona la primera pestaña disponible con un índice mayor que la actualmente seleccionada. Devuelve ``true`` si la selección de la pestaña cambió.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_select_previous_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_previous_available**\ (\ ) :ref:`🔗<class_TabContainer_method_select_previous_available>`

Selecciona la primera pestaña disponible con un índice menor que la actualmente seleccionada. Devuelve ``true`` si la selección de la pestaña cambió.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_popup:

.. rst-class:: classref-method

|void| **set_popup**\ (\ popup\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_TabContainer_method_set_popup>`

If set on a :ref:`Popup<class_Popup>` node instance, a popup menu icon appears in the top-right corner of the **TabContainer** (setting it to ``null`` will make it go away). Clicking it will expand the :ref:`Popup<class_Popup>` node.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_button_icon:

.. rst-class:: classref-method

|void| **set_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_button_icon>`

Establece el icono del botón de la pestaña en el índice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_disabled:

.. rst-class:: classref-method

|void| **set_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_disabled>`

Si ``disabled`` es ``true``, desactiva la pestaña en el índice ``tab_idx``, haciéndola no interactiva.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_hidden:

.. rst-class:: classref-method

|void| **set_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_hidden>`

Si ``hidden`` es ``true``, oculta la pestaña en el índice ``tab_idx``, haciéndola desaparecer del área de pestañas.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_icon:

.. rst-class:: classref-method

|void| **set_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_icon>`

Establece un icono para la pestaña en el índice ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_icon_max_width:

.. rst-class:: classref-method

|void| **set_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_icon_max_width>`

Establece el ancho máximo permitido del icono para la pestaña en el índice ``tab_idx``. Este límite se aplica sobre el tamaño predeterminado del icono y sobre :ref:`icon_max_width<class_TabContainer_theme_constant_icon_max_width>`. La altura se ajusta según la relación del icono.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_metadata:

.. rst-class:: classref-method

|void| **set_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_metadata>`

Establece el valor de los metadatos para la pestaña en el índice ``tab_idx``, que se puede recuperar más tarde utilizando :ref:`get_tab_metadata()<class_TabContainer_method_get_tab_metadata>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_title:

.. rst-class:: classref-method

|void| **set_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_title>`

Establece un título personalizado para la pestaña en el índice ``tab_idx`` (los títulos de las pestañas por defecto son el nombre del nodo hijo indexado). Vuelve a establecerlo con el nombre del hijo para que la pestaña vuelva a usarlo por defecto.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_tooltip:

.. rst-class:: classref-method

|void| **set_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_tooltip>`

Sets a custom tooltip text for tab at index ``tab_idx``.

\ **Note:** By default, if the ``tooltip`` is empty and the tab text is truncated (not all characters fit into the tab), the title will be displayed as a tooltip. To hide the tooltip, assign ``" "`` as the ``tooltip`` text.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_TabContainer_theme_color_drop_mark_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **drop_mark_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_drop_mark_color>`

Color de modulación para el icono :ref:`drop_mark<class_TabContainer_theme_icon_drop_mark>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_TabContainer_theme_color_font_disabled_color>`

El color de la fuente de las pestañas desactivadas.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hovered_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_hovered_color>`

Color de la fuente de la pestaña sobre la que está el cursor. No se aplica a la pestaña seleccionada.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_outline_color>`

El tinte del contorno del texto del nombre de la pestaña.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_selected_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_selected_color>`

Color de la fuente de la pestaña actualmente seleccionada.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_unselected_color** = ``Color(0.7, 0.7, 0.7, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_unselected_color>`

Color de la fuente de las otras pestañas no seleccionadas.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_icon_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_disabled_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_icon_disabled_color>`

Color del icono de las pestañas deshabilitadas.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_icon_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_hovered_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_icon_hovered_color>`

Color del icono de la pestaña sobre la que se pasa el cursor. No se aplica a la pestaña seleccionada.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_icon_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_selected_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_icon_selected_color>`

Color del icono de la pestaña seleccionada actualmente.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_icon_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_unselected_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_icon_unselected_color>`

Color del icono de las otras pestañas no seleccionadas.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_icon_max_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_width** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_icon_max_width>`

El ancho máximo permitido para el icono de la pestaña. Este límite se aplica sobre el tamaño por defecto del icono, pero antes del valor establecido con :ref:`TabBar.set_tab_icon_max_width()<class_TabBar_method_set_tab_icon_max_width>`. La altura se ajusta según la relación de aspecto del icono.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_icon_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_separation** = ``4`` :ref:`🔗<class_TabContainer_theme_constant_icon_separation>`

Espacio entre el nombre de la pestaña y su icono.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_outline_size>`

El tamaño del contorno del texto de la pestaña.

\ **Nota:** Si utilizas una fuente con :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` activado, su :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` debe establecerse al menos al *doble* del valor de :ref:`outline_size<class_TabContainer_theme_constant_outline_size>` para que el renderizado del contorno se vea correctamente. De lo contrario, el contorno puede aparecer recortado antes de lo previsto.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_side_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **side_margin** = ``8`` :ref:`🔗<class_TabContainer_theme_constant_side_margin>`

El espacio en los bordes izquierdo o derecho de la barra de pestañas, de acuerdo con el :ref:`tab_alignment<class_TabContainer_property_tab_alignment>` actual.

El margen se ignora con :ref:`TabBar.ALIGNMENT_RIGHT<class_TabBar_constant_ALIGNMENT_RIGHT>` si las pestañas se recortan (véase :ref:`clip_tabs<class_TabContainer_property_clip_tabs>`) o si se ha establecido un popup (ver :ref:`set_popup()<class_TabContainer_method_set_popup>`). El margen siempre se ignora con :ref:`TabBar.ALIGNMENT_CENTER<class_TabBar_constant_ALIGNMENT_CENTER>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_tab_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tab_separation** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_tab_separation>`

El espacio entre las pestañas en la barra de pestañas.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TabContainer_theme_font_font>`

La fuente usada para dibujar los nombres de las pestañas.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_TabContainer_theme_font_size_font_size>`

Tamaño de fuente de los nombres de las pestañas.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_TabContainer_theme_icon_decrement>`

Icono para el botón de la flecha izquierda que aparece cuando hay demasiadas pestañas que no caben en el ancho del contenedor. Cuando el botón está desactivado (es decir, la primera pestaña es visible), aparece semi-transparente.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_TabContainer_theme_icon_decrement_highlight>`

Icono para el botón de la flecha izquierda que aparece cuando hay demasiadas pestañas que no caben en el ancho del contenedor. Se utiliza cuando el cursor se mantiene encima del botón.

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

Icono para el botón de la flecha derecha que aparece cuando hay demasiadas pestañas que no caben en el ancho del contenedor. Cuando el botón está desactivado (es decir, la última pestaña es visible) aparece semi-transparente.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_TabContainer_theme_icon_increment_highlight>`

Icono para el botón de la flecha derecha que aparece cuando hay demasiadas pestañas que no caben en el ancho del contenedor. Se utiliza cuando el cursor esta encima del botón.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_menu:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu** :ref:`🔗<class_TabContainer_theme_icon_menu>`

El icono para el botón de menú (véase :ref:`set_popup()<class_TabContainer_method_set_popup>`).

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_menu_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_highlight** :ref:`🔗<class_TabContainer_theme_icon_menu_highlight>`

El icono del botón de menú (véase :ref:`set_popup()<class_TabContainer_method_set_popup>`) cuando se pasa el cursor por encima de él.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_TabContainer_theme_style_panel>`

El estilo para el relleno de fondo.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_disabled** :ref:`🔗<class_TabContainer_theme_style_tab_disabled>`

El estilo de las pestañas desactivadas.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_focus** :ref:`🔗<class_TabContainer_theme_style_tab_focus>`

:ref:`StyleBox<class_StyleBox>` que se usa cuando el :ref:`TabBar<class_TabBar>` tiene el foco. El :ref:`StyleBox<class_StyleBox>` de :ref:`tab_focus<class_TabContainer_theme_style_tab_focus>` se muestra *sobre* el :ref:`StyleBox<class_StyleBox>` base de la pestaña seleccionada, por lo que se debe usar un :ref:`StyleBox<class_StyleBox>` parcialmente transparente para garantizar que el :ref:`StyleBox<class_StyleBox>` base permanezca visible. Un :ref:`StyleBox<class_StyleBox>` que representa un contorno o un subrayado funciona bien para este propósito. Para deshabilitar el efecto visual de foco, asigna un recurso :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Ten en cuenta que deshabilitar el efecto visual de foco perjudicará la usabilidad de la navegación por teclado/controlador, por lo que no se recomienda por razones de accesibilidad.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_hovered** :ref:`🔗<class_TabContainer_theme_style_tab_hovered>`

The style of the currently hovered tab.

\ **Note:** This style will be drawn with the same width as :ref:`tab_unselected<class_TabContainer_theme_style_tab_unselected>` at minimum.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_selected** :ref:`🔗<class_TabContainer_theme_style_tab_selected>`

El estilo de la pestaña actualmente seleccionada.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_unselected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_unselected** :ref:`🔗<class_TabContainer_theme_style_tab_unselected>`

El estilo de las otras pestañas no seleccionadas.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tabbar_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tabbar_background** :ref:`🔗<class_TabContainer_theme_style_tabbar_background>`

El estilo para el relleno de fondo del área de :ref:`TabBar<class_TabBar>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
