:github_url: hide

.. _class_TabContainer:

TabContainer
============

**Наследует:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Контейнер, который создает вкладку для каждого дочернего элемента управления, отображая только элемент управления активной вкладки.

.. rst-class:: classref-introduction-group

Описание
----------------

Упорядочивает дочерние элементы управления в виде вкладок, создавая вкладку для каждого из них. Соответствующий элемент управления активной вкладки становится видимым, а все остальные дочерние элементы управления скрываются. Игнорирует дочерние элементы, не являющиеся элементами управления.

\ **Примечание:** Отрисовка вкладок, на которые можно нажимать, обрабатывается этим узлом; :ref:`TabBar<class_TabBar>` не требуется.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование контейнеров <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Свойства темы
--------------------------

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

Сигналы
--------------

.. _class_TabContainer_signal_active_tab_rearranged:

.. rst-class:: classref-signal

**active_tab_rearranged**\ (\ idx_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_active_tab_rearranged>`

Выдается, когда активная вкладка перестраивается с помощью перетаскивания мышью. См. :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_pre_popup_pressed:

.. rst-class:: classref-signal

**pre_popup_pressed**\ (\ ) :ref:`🔗<class_TabContainer_signal_pre_popup_pressed>`

Вызывается при нажатии кнопки :ref:`Popup<class_Popup>` в **TabContainer**. Подробности см. в :ref:`set_popup()<class_TabContainer_method_set_popup>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_button_pressed:

.. rst-class:: classref-signal

**tab_button_pressed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_button_pressed>`

Вызывается, когда пользователь нажимает на значок кнопки на этой вкладке.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_changed:

.. rst-class:: classref-signal

**tab_changed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_changed>`

Возникает при переключении на другую вкладку.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_clicked:

.. rst-class:: classref-signal

**tab_clicked**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_clicked>`

Выдается при нажатии на вкладку, даже если это текущая вкладка.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_hovered:

.. rst-class:: classref-signal

**tab_hovered**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_hovered>`

Выдается при наведении указателя мыши на вкладку.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_selected:

.. rst-class:: classref-signal

**tab_selected**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_selected>`

Испускается при выборе вкладки с помощью щелчка, направленного ввода или скрипта, даже если это текущая вкладка.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_TabContainer_TabPosition:

.. rst-class:: classref-enumeration

enum **TabPosition**: :ref:`🔗<enum_TabContainer_TabPosition>`

.. _class_TabContainer_constant_POSITION_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_TOP** = ``0``

Размещает панель вкладок вверху.

.. _class_TabContainer_constant_POSITION_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_BOTTOM** = ``1``

Размещает панель вкладок внизу. :ref:`StyleBox<class_StyleBox>` панели вкладок будет перевернут по вертикали.

.. _class_TabContainer_constant_POSITION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_MAX** = ``2``

Представляет размер перечисления :ref:`TabPosition<enum_TabContainer_TabPosition>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_TabContainer_property_all_tabs_in_front:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **all_tabs_in_front** :ref:`🔗<class_TabContainer_property_all_tabs_in_front>`

.. rst-class:: classref-property-setget

- |void| **set_all_tabs_in_front**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_all_tabs_in_front**\ (\ )

**Устарело:** Due to internal changes this doesn't do anything anymore, as they're always in front.

This doesn't do anything.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_clip_tabs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_tabs** = ``true`` :ref:`🔗<class_TabContainer_property_clip_tabs>`

.. rst-class:: classref-property-setget

- |void| **set_clip_tabs**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_clip_tabs**\ (\ )

Если ``true``, вкладки, выходящие за пределы ширины этого узла, будут скрыты, отображая вместо этого две кнопки навигации. В противном случае минимальный размер этого узла обновляется так, чтобы все вкладки были видны.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_current_tab:

.. rst-class:: classref-property

:ref:`int<class_int>` **current_tab** = ``-1`` :ref:`🔗<class_TabContainer_property_current_tab>`

.. rst-class:: classref-property-setget

- |void| **set_current_tab**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_current_tab**\ (\ )

Текущий индекс вкладки. При установке свойство ``visible`` узла :ref:`Control<class_Control>` этого индекса устанавливается в ``true``, а все остальные устанавливаются в ``false``.

Значение ``-1`` означает, что вкладка не выбрана.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_deselect_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deselect_enabled** = ``false`` :ref:`🔗<class_TabContainer_property_deselect_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_deselect_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_deselect_enabled**\ (\ )

Если ``true``, все вкладки можно отменить, чтобы не было выбрано ни одной вкладки. Щелкните :ref:`current_tab<class_TabContainer_property_current_tab>`, чтобы отменить его выбор.

Если не выбрано ни одной вкладки, будет отображаться только заголовок вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_drag_to_rearrange_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_to_rearrange_enabled** = ``false`` :ref:`🔗<class_TabContainer_property_drag_to_rearrange_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_to_rearrange_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_drag_to_rearrange_enabled**\ (\ )

Если ``true``, вкладки можно переставлять перетаскиванием мыши.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_switch_on_drag_hover:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **switch_on_drag_hover** = ``true`` :ref:`🔗<class_TabContainer_property_switch_on_drag_hover>`

.. rst-class:: classref-property-setget

- |void| **set_switch_on_drag_hover**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_switch_on_drag_hover**\ (\ )

Если ``true``, то при наведении курсора на вкладку во время перетаскивания элемента произойдет переключение на эту вкладку. При наведении курсора на другую вкладку для изменения ее порядка это не сработает.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tab_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **tab_alignment** = ``0`` :ref:`🔗<class_TabContainer_property_tab_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_tab_alignment**\ (\ value\: :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **get_tab_alignment**\ (\ )

Позиция, в которой будут размещены вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tab_focus_mode:

.. rst-class:: classref-property

:ref:`FocusMode<enum_Control_FocusMode>` **tab_focus_mode** = ``2`` :ref:`🔗<class_TabContainer_property_tab_focus_mode>`

.. rst-class:: classref-property-setget

- |void| **set_tab_focus_mode**\ (\ value\: :ref:`FocusMode<enum_Control_FocusMode>`\ )
- :ref:`FocusMode<enum_Control_FocusMode>` **get_tab_focus_mode**\ (\ )

Режим доступа к фокусу для внутреннего узла :ref:`TabBar<class_TabBar>`.

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

Горизонтальное выравнивание вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tabs_rearrange_group:

.. rst-class:: classref-property

:ref:`int<class_int>` **tabs_rearrange_group** = ``-1`` :ref:`🔗<class_TabContainer_property_tabs_rearrange_group>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_rearrange_group**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tabs_rearrange_group**\ (\ )

**TabContainer** с одинаковым идентификатором группы перестановки позволят перетаскивать вкладки между ними. Включите перетаскивание с помощью :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`.

Установка этого значения в ``-1`` отключит перестановку между **TabContainer**.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tabs_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tabs_visible** = ``true`` :ref:`🔗<class_TabContainer_property_tabs_visible>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_tabs_visible**\ (\ )

Если ``true``, вкладки видны. Если ``false``, содержимое и заголовки вкладок скрыты.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_use_hidden_tabs_for_min_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_hidden_tabs_for_min_size** = ``false`` :ref:`🔗<class_TabContainer_property_use_hidden_tabs_for_min_size>`

.. rst-class:: classref-property-setget

- |void| **set_use_hidden_tabs_for_min_size**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_hidden_tabs_for_min_size**\ (\ )

Если ``true``, то для скрытых дочерних узлов :ref:`Control<class_Control>` в общем размере учитывается их минимальный размер, а не только текущий видимый размер.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_TabContainer_method_get_current_tab_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_current_tab_control**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_current_tab_control>`

Возвращает дочерний узел :ref:`Control<class_Control>`, расположенный по индексу активной вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_popup:

.. rst-class:: classref-method

:ref:`Popup<class_Popup>` **get_popup**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_popup>`

Возвращает экземпляр узла :ref:`Popup<class_Popup>`, если он уже был установлен с помощью :ref:`set_popup()<class_TabContainer_method_set_popup>`.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение может привести к сбою. Если вы хотите скрыть его или любой из его дочерних элементов, используйте их свойство :ref:`Window.visible<class_Window_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_previous_tab:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_previous_tab**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_previous_tab>`

Возвращает индекс предыдущей активной вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_bar:

.. rst-class:: classref-method

:ref:`TabBar<class_TabBar>` **get_tab_bar**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_bar>`

Возвращает :ref:`TabBar<class_TabBar>`, содержащийся в этом контейнере.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение или редактирование его вкладок может привести к сбою. Если вы хотите редактировать вкладки, используйте методы, предоставленные в **TabContainer**.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_button_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_button_icon>`

Возвращает значок кнопки из вкладки с индексом ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_tab_control**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_control>`

Возвращает узел :ref:`Control<class_Control>` из вкладки с индексом ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_count**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_count>`

Возвращает количество вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_icon>`

Возвращает :ref:`Texture2D<class_Texture2D>` для вкладки с индексом ``tab_idx`` или ``null``, если у вкладки нет :ref:`Texture2D<class_Texture2D>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_icon_max_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_icon_max_width>`

Возвращает максимально допустимую ширину значка для вкладки с индексом ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_idx_at_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_at_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_idx_at_point>`

Возвращает индекс вкладки в локальных координатах ``point``. Возвращает ``-1``, если точка находится за пределами границ элемента управления или если в запрошенной позиции нет вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_idx_from_control:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_from_control**\ (\ control\: :ref:`Control<class_Control>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_idx_from_control>`

Возвращает индекс вкладки, привязанной к заданному ``control``. Элемент управления должен быть дочерним для **TabContainer**.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_metadata>`

Возвращает значение метаданных, заданное для вкладки с индексом ``tab_idx``, используя :ref:`set_tab_metadata()<class_TabContainer_method_set_tab_metadata>`. Если ранее метаданные не были заданы, по умолчанию возвращается ``null``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_title>`

Возвращает заголовок вкладки по индексу ``tab_idx``. Заголовки вкладок по умолчанию соответствуют имени индексированного дочернего узла, но это можно переопределить с помощью :ref:`set_tab_title()<class_TabContainer_method_set_tab_title>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_tooltip>`

Возвращает текст всплывающей подсказки вкладки с индексом ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_is_tab_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_is_tab_disabled>`

Возвращает ``true``, если вкладка с индексом ``tab_idx`` отключена.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_is_tab_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_is_tab_hidden>`

Возвращает ``true``, если вкладка с индексом ``tab_idx`` скрыта.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_select_next_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_next_available**\ (\ ) :ref:`🔗<class_TabContainer_method_select_next_available>`

Выбирает первую доступную вкладку с большим индексом, чем выбранная в данный момент. Возвращает ``true``, если выбор вкладки изменился.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_select_previous_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_previous_available**\ (\ ) :ref:`🔗<class_TabContainer_method_select_previous_available>`

Выбирает первую доступную вкладку с индексом ниже текущего выбранного. Возвращает ``true``, если выбор вкладки изменился.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_popup:

.. rst-class:: classref-method

|void| **set_popup**\ (\ popup\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_TabContainer_method_set_popup>`

Если установлено на экземпляре узла :ref:`Popup<class_Popup>`, в правом верхнем углу **TabContainer** появляется значок всплывающего меню (установка его на ``null`` заставит его исчезнуть). Щелчок по нему развернет узел :ref:`Popup<class_Popup>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_button_icon:

.. rst-class:: classref-method

|void| **set_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_button_icon>`

Устанавливает значок кнопки из вкладки с индексом ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_disabled:

.. rst-class:: classref-method

|void| **set_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_disabled>`

Если ``disabled`` равен ``true``, отключает вкладку с индексом ``tab_idx``, делая ее неинтерактивной.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_hidden:

.. rst-class:: classref-method

|void| **set_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_hidden>`

Если ``hidden`` равен ``true``, скрывает вкладку с индексом ``tab_idx``, заставляя ее исчезнуть из области вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_icon:

.. rst-class:: classref-method

|void| **set_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_icon>`

Устанавливает значок для вкладки с индексом ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_icon_max_width:

.. rst-class:: classref-method

|void| **set_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_icon_max_width>`

Устанавливает максимально допустимую ширину значка для вкладки с индексом ``tab_idx``. Это ограничение применяется поверх размера значка по умолчанию и поверх :ref:`icon_max_width<class_TabContainer_theme_constant_icon_max_width>`. Высота регулируется в соответствии с соотношением значка.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_metadata:

.. rst-class:: classref-method

|void| **set_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_metadata>`

Устанавливает значение метаданных для вкладки с индексом ``tab_idx``, которое можно получить позже с помощью :ref:`get_tab_metadata()<class_TabContainer_method_get_tab_metadata>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_title:

.. rst-class:: classref-method

|void| **set_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_title>`

Устанавливает пользовательский заголовок для вкладки с индексом ``tab_idx`` (заголовки вкладок по умолчанию соответствуют имени индексированного дочернего узла). Установите его обратно к имени дочернего узла, чтобы снова сделать вкладку по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_tooltip:

.. rst-class:: classref-method

|void| **set_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_tooltip>`

Устанавливает пользовательский текст подсказки для вкладки с индексом ``tab_idx``.

\ **Примечание:** По умолчанию, если ``tooltip`` пуст и текст вкладки обрезан (не все символы помещаются во вкладку), заголовок будет отображаться как подсказка. Чтобы скрыть подсказку, назначьте ``" "`` в качестве текста ``tooltip``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_TabContainer_theme_color_drop_mark_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **drop_mark_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_drop_mark_color>`

Цвет модуляции для значка :ref:`drop_mark<class_TabContainer_theme_icon_drop_mark>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_TabContainer_theme_color_font_disabled_color>`

Цвет шрифта отключенных вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hovered_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_hovered_color>`

Цвет шрифта вкладки, на которую в данный момент наведен курсор. Не применяется к выбранной вкладке.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_outline_color>`

Оттенок контура текста названия вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_selected_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_selected_color>`

Цвет шрифта текущей выбранной вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_unselected_color** = ``Color(0.7, 0.7, 0.7, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_unselected_color>`

Цвет шрифта остальных, невыбранных вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_icon_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_disabled_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_icon_disabled_color>`

Цвет значков отключенных вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_icon_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_hovered_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_icon_hovered_color>`

Цвет значка текущей вкладки, на которую наведен курсор. Не применяется к выбранной вкладке.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_icon_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_selected_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_icon_selected_color>`

Цвет значка текущей выбранной вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_icon_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_unselected_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_icon_unselected_color>`

Цвет значков других, невыбранных вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_icon_max_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_width** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_icon_max_width>`

Максимально допустимая ширина значка вкладки. Это ограничение применяется поверх размера значка по умолчанию, но до значения, установленного с помощью :ref:`TabBar.set_tab_icon_max_width()<class_TabBar_method_set_tab_icon_max_width>`. Высота регулируется в соответствии с соотношением значка.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_icon_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_separation** = ``4`` :ref:`🔗<class_TabContainer_theme_constant_icon_separation>`

Пробел между названием вкладки и ее значком.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_outline_size>`

Размер контура текста вкладки.

\ **Примечание:** При использовании шрифта с включенным :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` его :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` должен быть установлен как минимум в *дважды* больше значения :ref:`outline_size<class_TabContainer_theme_constant_outline_size>`, чтобы контур выглядел правильно. В противном случае контур может оказаться обрезанным раньше, чем предполагалось.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_side_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **side_margin** = ``8`` :ref:`🔗<class_TabContainer_theme_constant_side_margin>`

Пространство слева или справа от панели вкладок, в соответствии с текущим :ref:`tab_alignment<class_TabContainer_property_tab_alignment>`.

Отступ игнорируется с :ref:`TabBar.ALIGNMENT_RIGHT<class_TabBar_constant_ALIGNMENT_RIGHT>`, если вкладки обрезаны (см. :ref:`clip_tabs<class_TabContainer_property_clip_tabs>`) или установлено всплывающее окно (см. :ref:`set_popup()<class_TabContainer_method_set_popup>`). Отступ всегда игнорируется с :ref:`TabBar.ALIGNMENT_CENTER<class_TabBar_constant_ALIGNMENT_CENTER>`.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_tab_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tab_separation** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_tab_separation>`

Пространство между вкладками на панели вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TabContainer_theme_font_font>`

Шрифт, используемый для отображения названий вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_TabContainer_theme_font_size_font_size>`

Размер шрифта названий вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_TabContainer_theme_icon_decrement>`

Значок для кнопки со стрелкой влево, которая появляется, когда вкладок слишком много, чтобы поместиться в ширину контейнера. Когда кнопка отключена (т.е. видна первая вкладка), она выглядит полупрозрачной.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_TabContainer_theme_icon_decrement_highlight>`

Значок для кнопки со стрелкой влево, которая появляется, когда вкладок слишком много, чтобы поместиться в ширину контейнера. Используется, когда на кнопку наведен курсор.

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

Значок для кнопки со стрелкой вправо, которая появляется, когда вкладок слишком много, чтобы вписаться в ширину контейнера. Когда кнопка отключена (т.е. видна последняя вкладка), она становится полупрозрачной.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_TabContainer_theme_icon_increment_highlight>`

Значок для кнопки со стрелкой вправо, которая появляется, когда вкладок слишком много, чтобы поместиться в ширину контейнера. Используется, когда на кнопку наведен курсор.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_menu:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu** :ref:`🔗<class_TabContainer_theme_icon_menu>`

Значок для кнопки меню (см. :ref:`set_popup()<class_TabContainer_method_set_popup>`).

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_menu_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_highlight** :ref:`🔗<class_TabContainer_theme_icon_menu_highlight>`

Значок кнопки меню (см. :ref:`set_popup()<class_TabContainer_method_set_popup>`) при наведении на нее курсора.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_TabContainer_theme_style_panel>`

Стиль заливки фона.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_disabled** :ref:`🔗<class_TabContainer_theme_style_tab_disabled>`

Стиль отключенных вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_focus** :ref:`🔗<class_TabContainer_theme_style_tab_focus>`

:ref:`StyleBox<class_StyleBox>` используется, когда :ref:`TabBar<class_TabBar>` находится в фокусе. :ref:`tab_focus<class_TabContainer_theme_style_tab_focus>` :ref:`StyleBox<class_StyleBox>` отображается *над* базовой :ref:`StyleBox<class_StyleBox>` выбранной вкладки, поэтому следует использовать частично прозрачный :ref:`StyleBox<class_StyleBox>`, чтобы базовый :ref:`StyleBox<class_StyleBox>` оставался видимым. :ref:`StyleBox<class_StyleBox>` представляющий контур или подчеркивание, хорошо подходит для этой цели. Чтобы отключить визуальный эффект фокуса, назначьте ресурс :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Обратите внимание, что отключение визуального эффекта фокуса навредит удобству использования навигации с помощью клавиатуры/контроллера, поэтому это не рекомендуется по соображениям доступности.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_hovered** :ref:`🔗<class_TabContainer_theme_style_tab_hovered>`

Стиль текущей вкладки, на которую наведен курсор.

\ **Примечание:** Этот стиль будет отрисован с той же шириной, что и :ref:`tab_unselected<class_TabContainer_theme_style_tab_unselected>` как минимум.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_selected** :ref:`🔗<class_TabContainer_theme_style_tab_selected>`

Стиль текущей выбранной вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_unselected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_unselected** :ref:`🔗<class_TabContainer_theme_style_tab_unselected>`

Стиль остальных, невыбранных вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tabbar_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tabbar_background** :ref:`🔗<class_TabContainer_theme_style_tabbar_background>`

Стиль фоновой заливки области :ref:`TabBar<class_TabBar>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
