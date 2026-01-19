:github_url: hide

.. _class_TabContainer:

TabContainer
============

**繼承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

會為每個子控制項建立一個分頁的容器，只會顯示活動分頁對應的控制項。

.. rst-class:: classref-introduction-group

說明
----

以分頁視圖排列子控制項，為每個子控制項建立一個分頁。活動分頁對應的控制項可見，其他子控制項都會被隱藏。非控制項子節點會被忽略。

\ **注意：**\ 可點擊的分頁是由這個節點負責繪製的；不需要 :ref:`TabBar<class_TabBar>`\ 。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用容器 <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`all_tabs_in_front<class_TabContainer_property_all_tabs_in_front>`                       | ``false`` |
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
   | :ref:`TabPosition<enum_TabContainer_TabPosition>` | :ref:`tabs_position<class_TabContainer_property_tabs_position>`                               | ``0``     |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                             | :ref:`tabs_rearrange_group<class_TabContainer_property_tabs_rearrange_group>`                 | ``-1``    |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`tabs_visible<class_TabContainer_property_tabs_visible>`                                 | ``true``  |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`use_hidden_tabs_for_min_size<class_TabContainer_property_use_hidden_tabs_for_min_size>` | ``false`` |
   +---------------------------------------------------+-----------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

方法
----

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

主題屬性
--------

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

訊號
----

.. _class_TabContainer_signal_active_tab_rearranged:

.. rst-class:: classref-signal

**active_tab_rearranged**\ (\ idx_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_active_tab_rearranged>`

通過滑鼠拖動重新排列活動分頁時發出。見 :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_pre_popup_pressed:

.. rst-class:: classref-signal

**pre_popup_pressed**\ (\ ) :ref:`🔗<class_TabContainer_signal_pre_popup_pressed>`

按一下 **TabContainer** 的 :ref:`Popup<class_Popup>` 按鈕時發出。有關詳細資訊，請參閱 :ref:`set_popup()<class_TabContainer_method_set_popup>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_button_pressed:

.. rst-class:: classref-signal

**tab_button_pressed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_button_pressed>`

使用者點擊該分頁上的按鈕圖示時發出。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_changed:

.. rst-class:: classref-signal

**tab_changed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_changed>`

切換到另一個分頁時發出。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_clicked:

.. rst-class:: classref-signal

**tab_clicked**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_clicked>`

按一下分頁時發出，即使它是目前分頁。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_hovered:

.. rst-class:: classref-signal

**tab_hovered**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_hovered>`

當滑鼠懸停分頁時發出。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_signal_tab_selected:

.. rst-class:: classref-signal

**tab_selected**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_signal_tab_selected>`

Emitted when a tab is selected via click, directional input, or script, even if it is the current tab.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_TabContainer_TabPosition:

.. rst-class:: classref-enumeration

enum **TabPosition**: :ref:`🔗<enum_TabContainer_TabPosition>`

.. _class_TabContainer_constant_POSITION_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_TOP** = ``0``

Places the tab bar at the top.

.. _class_TabContainer_constant_POSITION_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_BOTTOM** = ``1``

Places the tab bar at the bottom. The tab bar's :ref:`StyleBox<class_StyleBox>` will be flipped vertically.

.. _class_TabContainer_constant_POSITION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TabPosition<enum_TabContainer_TabPosition>` **POSITION_MAX** = ``2``

Represents the size of the :ref:`TabPosition<enum_TabContainer_TabPosition>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_TabContainer_property_all_tabs_in_front:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **all_tabs_in_front** = ``false`` :ref:`🔗<class_TabContainer_property_all_tabs_in_front>`

.. rst-class:: classref-property-setget

- |void| **set_all_tabs_in_front**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_all_tabs_in_front**\ (\ )

如果為 ``true``\ ，所有分頁都會被繪製在面板之前。如果為 ``false``\ ，未啟動的分頁會被繪製在面板之後。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_clip_tabs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_tabs** = ``true`` :ref:`🔗<class_TabContainer_property_clip_tabs>`

.. rst-class:: classref-property-setget

- |void| **set_clip_tabs**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_clip_tabs**\ (\ )

如果為 ``true``\ ，則會隱藏超出該節點寬度的分頁，改為顯示兩個導覽按鈕。否則，會更新該節點的最小尺寸，讓所有分頁均可見。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_current_tab:

.. rst-class:: classref-property

:ref:`int<class_int>` **current_tab** = ``-1`` :ref:`🔗<class_TabContainer_property_current_tab>`

.. rst-class:: classref-property-setget

- |void| **set_current_tab**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_current_tab**\ (\ )

The current tab index. When set, this index's :ref:`Control<class_Control>` node's ``visible`` property is set to ``true`` and all others are set to ``false``.

A value of ``-1`` means that no tab is selected.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_deselect_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deselect_enabled** = ``false`` :ref:`🔗<class_TabContainer_property_deselect_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_deselect_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_deselect_enabled**\ (\ )

If ``true``, all tabs can be deselected so that no tab is selected. Click on the :ref:`current_tab<class_TabContainer_property_current_tab>` to deselect it.

Only the tab header will be shown if no tabs are selected.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_drag_to_rearrange_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_to_rearrange_enabled** = ``false`` :ref:`🔗<class_TabContainer_property_drag_to_rearrange_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_to_rearrange_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_drag_to_rearrange_enabled**\ (\ )

如果為 ``true``\ ，可以通過滑鼠拖動重新排列分頁。

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

The position at which tabs will be placed.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tab_focus_mode:

.. rst-class:: classref-property

:ref:`FocusMode<enum_Control_FocusMode>` **tab_focus_mode** = ``2`` :ref:`🔗<class_TabContainer_property_tab_focus_mode>`

.. rst-class:: classref-property-setget

- |void| **set_tab_focus_mode**\ (\ value\: :ref:`FocusMode<enum_Control_FocusMode>`\ )
- :ref:`FocusMode<enum_Control_FocusMode>` **get_tab_focus_mode**\ (\ )

該介面的遊玩區域模式。

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

具有相同重新排列組 ID 的 **TabContainer** 將允許在它們之間拖動分頁。使用 :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>` 啟用拖動。

將該屬性設定為 ``-1`` 將禁用 **TabContainer** 之間的重新排列。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_tabs_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tabs_visible** = ``true`` :ref:`🔗<class_TabContainer_property_tabs_visible>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_tabs_visible**\ (\ )

如果為 ``true``\ ，分頁可見。如果 ``false``\ ，分頁的內容和標題被隱藏。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_property_use_hidden_tabs_for_min_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_hidden_tabs_for_min_size** = ``false`` :ref:`🔗<class_TabContainer_property_use_hidden_tabs_for_min_size>`

.. rst-class:: classref-property-setget

- |void| **set_use_hidden_tabs_for_min_size**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_hidden_tabs_for_min_size**\ (\ )

If ``true``, child :ref:`Control<class_Control>` nodes that are hidden have their minimum size take into account in the total, instead of only the currently visible one.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_TabContainer_method_get_current_tab_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_current_tab_control**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_current_tab_control>`

返回位於活動分頁索引處的子 :ref:`Control<class_Control>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_popup:

.. rst-class:: classref-method

:ref:`Popup<class_Popup>` **get_popup**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_popup>`

如果已經使用 :ref:`set_popup()<class_TabContainer_method_set_popup>` 設定了 :ref:`Popup<class_Popup>` 節點實例，則返回該節點實例。

\ **警告：**\ 這是一個必需的內部節點，移除和釋放它可能會導致當機。如果希望隱藏它或它的任何子項，請使用它們的 :ref:`Window.visible<class_Window_property_visible>` 屬性。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_previous_tab:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_previous_tab**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_previous_tab>`

返回上一個活動分頁的索引。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_bar:

.. rst-class:: classref-method

:ref:`TabBar<class_TabBar>` **get_tab_bar**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_bar>`

返回這個按鈕中包含的 :ref:`PopupMenu<class_PopupMenu>`\ 。

\ **警告：**\ 這是一個必需的內部節點，移除和釋放它可能會導致當機。如果你想隱藏它或它的任何子節點，請使用其 :ref:`Window.visible<class_Window_property_visible>` 屬性。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_button_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_button_icon>`

返回索引為 ``tab_idx`` 的分頁的按鈕圖示。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_tab_control**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_control>`

返回索引為 ``tab_idx`` 的分頁的 :ref:`Control<class_Control>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_count**\ (\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_count>`

返回分頁的數量。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_icon>`

返回索引 ``tab_idx`` 處分頁的 :ref:`Texture2D<class_Texture2D>`\ ，如果該分頁沒有 :ref:`Texture2D<class_Texture2D>`\ ，則返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_icon_max_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_icon_max_width>`

設定索引為 ``tab_idx`` 處分頁所允許的最大圖示寬度。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_idx_at_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_at_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_idx_at_point>`

返回位於局部座標 ``point`` 處的分頁的索引。如果該點在控制項邊界之外或查詢位置沒有分頁，則返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_idx_from_control:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_from_control**\ (\ control\: :ref:`Control<class_Control>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_idx_from_control>`

返回與給定的 ``control`` 綁定的標籤的索引。該控制項必須為 **TabContainer** 的子節點。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_metadata>`

返回索引為 ``tab_idx`` 的分頁的中繼資料的值，由 :ref:`set_tab_metadata()<class_TabContainer_method_set_tab_metadata>` 設定。如果之前沒有設定中繼資料，則預設返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_title>`

返回索引 ``tab_idx`` 處分頁的標題。分頁的標題預設為索引子節點的名稱，但可以用 :ref:`set_tab_title()<class_TabContainer_method_set_tab_title>` 覆蓋。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_get_tab_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_get_tab_tooltip>`

Returns the tooltip text of the tab at index ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_is_tab_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_is_tab_disabled>`

如果索引 ``tab_idx`` 處的分頁被禁用，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_is_tab_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabContainer_method_is_tab_hidden>`

如果索引 ``tab_idx`` 處的分頁被隱藏，則返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_select_next_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_next_available**\ (\ ) :ref:`🔗<class_TabContainer_method_select_next_available>`

返回目前焦點專案的索引。如果沒有焦點，則返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_select_previous_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_previous_available**\ (\ ) :ref:`🔗<class_TabContainer_method_select_previous_available>`

返回目前焦點專案的索引。如果沒有焦點，則返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_popup:

.. rst-class:: classref-method

|void| **set_popup**\ (\ popup\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_TabContainer_method_set_popup>`

如果在一個 :ref:`Popup<class_Popup>` 節點實例上設定，則一個彈出功能表圖示會出現在該 **TabContainer** 的右上角（將其設定為 ``null`` 將使其消失）。點擊它將展開該 :ref:`Popup<class_Popup>` 節點。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_button_icon:

.. rst-class:: classref-method

|void| **set_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_button_icon>`

設定索引為 ``tab_idx`` 的分頁的按鈕圖示。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_disabled:

.. rst-class:: classref-method

|void| **set_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_disabled>`

如果 ``disabled`` 為 ``true``\ ，則禁用索引 ``tab_idx`` 處的選項卡，使其不可互動。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_hidden:

.. rst-class:: classref-method

|void| **set_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_hidden>`

如果 ``hidden`` 為 ``true``\ ，則隱藏索引 ``tab_idx`` 處的選項卡，使其從分頁區域消失。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_icon:

.. rst-class:: classref-method

|void| **set_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_icon>`

設定索引為 ``tab_idx`` 的分頁的圖示。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_icon_max_width:

.. rst-class:: classref-method

|void| **set_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_icon_max_width>`

設定索引為 ``tab_idx`` 處分頁所允許的最大圖示寬度。這是在圖示的預設大小和 :ref:`icon_max_width<class_TabContainer_theme_constant_icon_max_width>` 的基礎上的限制。高度會根據圖示的長寬比調整。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_metadata:

.. rst-class:: classref-method

|void| **set_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_metadata>`

為 ``tab_idx`` 的分頁設定中繼資料的值，之後可以使用 :ref:`get_tab_metadata()<class_TabContainer_method_get_tab_metadata>` 獲取。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_method_set_tab_title:

.. rst-class:: classref-method

|void| **set_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabContainer_method_set_tab_title>`

為索引 ``tab_idx`` 處的分頁設定自訂標題（分頁標題預設為索引子節點的名稱）。將其設定回孩子的名字，使分頁再次預設為該名字。

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

主題屬性說明
------------

.. _class_TabContainer_theme_color_drop_mark_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **drop_mark_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabContainer_theme_color_drop_mark_color>`

:ref:`drop_mark<class_TabContainer_theme_icon_drop_mark>` 圖示的調變顏色。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_TabContainer_theme_color_font_disabled_color>`

禁用分頁的字形顏色。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hovered_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_hovered_color>`

目前懸停分頁的字形顏色。不適用於選中的分頁。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_outline_color>`

分頁名稱的文字輪廓的色調。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_selected_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_selected_color>`

目前所選分頁的字形顏色。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_color_font_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_unselected_color** = ``Color(0.7, 0.7, 0.7, 1)`` :ref:`🔗<class_TabContainer_theme_color_font_unselected_color>`

其他未被選中的分頁的字形顏色。

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

分頁圖示所允許的最大寬度。這個限制套用在該圖示預設大小之上，但是套用在 :ref:`TabBar.set_tab_icon_max_width()<class_TabBar_method_set_tab_icon_max_width>` 所設定的值之前。高度會根據圖示比例調整。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_icon_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_separation** = ``4`` :ref:`🔗<class_TabContainer_theme_constant_icon_separation>`

分頁名稱與其圖示之間的間距。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_outline_size>`

分頁文字輪廓的大小。

\ **注意：**\ 如果使用啟用了 :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` 的字形，其 :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` 必須至少設定為 :ref:`outline_size<class_TabContainer_theme_constant_outline_size>` 的\ *兩倍*\ ，輪廓算繪才能看起來正確。否則，輪廓可能會比預期的更早被切斷。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_side_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **side_margin** = ``8`` :ref:`🔗<class_TabContainer_theme_constant_side_margin>`

標籤欄左側或右側邊緣的間距，取決於目前的 :ref:`tab_alignment<class_TabContainer_property_tab_alignment>`\ 。

如果標籤頁被裁剪（見 :ref:`clip_tabs<class_TabContainer_property_clip_tabs>`\ ）或者設定了彈出框（見 :ref:`set_popup()<class_TabContainer_method_set_popup>`\ ），則會忽略 :ref:`TabBar.ALIGNMENT_RIGHT<class_TabBar_constant_ALIGNMENT_RIGHT>` 的邊距。使用 :ref:`TabBar.ALIGNMENT_CENTER<class_TabBar_constant_ALIGNMENT_CENTER>` 時始終忽略邊距。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_constant_tab_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tab_separation** = ``0`` :ref:`🔗<class_TabContainer_theme_constant_tab_separation>`

The space between tabs in the tab bar.

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TabContainer_theme_font_font>`

用於繪製分頁名稱的字形。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_TabContainer_theme_font_size_font_size>`

分頁名稱的字形大小。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_TabContainer_theme_icon_decrement>`

左邊的箭頭按鈕的圖示，當有太多的標籤無法容納在容器的寬度內時出現。當該按鈕被禁用時（即第一個標籤是可見的），它顯示為半透明的。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_TabContainer_theme_icon_decrement_highlight>`

當標籤太多無法適應容器寬度時出現的左箭頭按鈕圖示。當滑鼠懸停在按鈕上時使用。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_drop_mark:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **drop_mark** :ref:`🔗<class_TabContainer_theme_icon_drop_mark>`

圖示，用於指示拖動的分頁將被放置到哪裡（見 :ref:`drag_to_rearrange_enabled<class_TabContainer_property_drag_to_rearrange_enabled>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_TabContainer_theme_icon_increment>`

右箭頭按鈕的圖示，當有太多的標籤無法容納在容器的寬度內時出現。當該按鈕被禁用時（即最後一個標籤是可見的），它顯示為半透明的。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_TabContainer_theme_icon_increment_highlight>`

當標籤太多無法適應容器寬度時出現的右箭頭按鈕圖示。當滑鼠懸停在按鈕上時使用。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_menu:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu** :ref:`🔗<class_TabContainer_theme_icon_menu>`

功能表按鈕的圖示（見 :ref:`set_popup()<class_TabContainer_method_set_popup>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_icon_menu_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_highlight** :ref:`🔗<class_TabContainer_theme_icon_menu_highlight>`

當游標懸停時功能表按鈕的圖示（見 :ref:`set_popup()<class_TabContainer_method_set_popup>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_TabContainer_theme_style_panel>`

背景填充的樣式。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_disabled** :ref:`🔗<class_TabContainer_theme_style_tab_disabled>`

分頁處於禁用狀態時的樣式。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_focus** :ref:`🔗<class_TabContainer_theme_style_tab_focus>`

該 :ref:`Button<class_Button>` 處於聚焦狀態時使用的 :ref:`StyleBox<class_StyleBox>`\ 。\ ``focus`` :ref:`StyleBox<class_StyleBox>` 顯示在基礎 :ref:`StyleBox<class_StyleBox>` *之上*\ ，所以應該使用部分透明的 :ref:`StyleBox<class_StyleBox>`\ ，確保基礎 :ref:`StyleBox<class_StyleBox>` 仍然可見。代表輪廓或底線的 :ref:`StyleBox<class_StyleBox>` 可以很好地實作這個目的。要禁用聚焦的視覺效果，請指定 :ref:`StyleBoxEmpty<class_StyleBoxEmpty>` 資源。請注意，禁用聚焦的視覺效果會影響使用鍵盤/手柄進行導覽的可用性，所以出於可存取性的原因，不建議這樣做。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_hovered** :ref:`🔗<class_TabContainer_theme_style_tab_hovered>`

目前懸停的分頁的樣式。不會套用於選中的分頁。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_selected** :ref:`🔗<class_TabContainer_theme_style_tab_selected>`

目前選中的分頁的樣式。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tab_unselected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_unselected** :ref:`🔗<class_TabContainer_theme_style_tab_unselected>`

其他未被選中的分頁的樣式。

.. rst-class:: classref-item-separator

----

.. _class_TabContainer_theme_style_tabbar_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tabbar_background** :ref:`🔗<class_TabContainer_theme_style_tabbar_background>`

:ref:`TabBar<class_TabBar>` 區域的背景填充樣式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
