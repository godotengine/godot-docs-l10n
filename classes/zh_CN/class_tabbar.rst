:github_url: hide

.. _class_TabBar:

TabBar
======

**继承：** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

提供水平选项卡栏的控件。

.. rst-class:: classref-introduction-group

描述
----

提供水平选项卡栏的控件。类似于 :ref:`TabContainer<class_TabContainer>`\ ，但只负责绘制选项卡，不与子节点互动。

.. rst-class:: classref-reftable-group

属性
----

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

方法
----

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

主题属性
--------

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

信号
----

.. _class_TabBar_signal_active_tab_rearranged:

.. rst-class:: classref-signal

**active_tab_rearranged**\ (\ idx_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_active_tab_rearranged>`

通过鼠标拖动重新排列活动选项卡时发出。见 :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_button_pressed:

.. rst-class:: classref-signal

**tab_button_pressed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_button_pressed>`

选项卡的右侧按钮被按下时发出。见 :ref:`set_tab_button_icon()<class_TabBar_method_set_tab_button_icon>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_changed:

.. rst-class:: classref-signal

**tab_changed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_changed>`

切换到另一个选项卡时发出。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_clicked:

.. rst-class:: classref-signal

**tab_clicked**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_clicked>`

单击选项卡时发出，即使它是当前选项卡。

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

当鼠标悬停选项卡时发出。

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

通过点击、定向输入或脚本选中某个选项卡时发出，即便该选项卡本来就是当前选项卡。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

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

代表 :ref:`AlignmentMode<enum_TabBar_AlignmentMode>` 枚举的大小。

.. rst-class:: classref-item-separator

----

.. _enum_TabBar_CloseButtonDisplayPolicy:

.. rst-class:: classref-enumeration

enum **CloseButtonDisplayPolicy**: :ref:`🔗<enum_TabBar_CloseButtonDisplayPolicy>`

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_NEVER** = ``0``

永远不会显示关闭按钮。

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_ACTIVE_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_ACTIVE_ONLY** = ``1``

仅在当前活动选项卡上显示关闭按钮。

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_ALWAYS** = ``2``

在所有选项卡上显示关闭按钮。

.. _class_TabBar_constant_CLOSE_BUTTON_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_MAX** = ``3``

代表 :ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` 枚举的大小。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_TabBar_property_clip_tabs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_tabs** = ``true`` :ref:`🔗<class_TabBar_property_clip_tabs>`

.. rst-class:: classref-property-setget

- |void| **set_clip_tabs**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_clip_tabs**\ (\ )

如果为 ``true``\ ，则会隐藏超出该节点宽度的选项卡，改为显示两个导航按钮。否则，会更新该节点的最小尺寸，让所有选项卡均可见。

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

当前选中选项卡的索引号。\ ``-1`` 表示没有选中任何选项卡，只有在 :ref:`deselect_enabled<class_TabBar_property_deselect_enabled>` 为 ``true`` 或所有选项卡都处于隐藏或禁用状态下才能够设置。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_deselect_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deselect_enabled** = ``false`` :ref:`🔗<class_TabBar_property_deselect_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_deselect_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_deselect_enabled**\ (\ )

如果为 ``true``\ ，则所有选项卡都可以被取消选择，不选中任何选项卡。单击当前选项卡取消选中。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_drag_to_rearrange_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_to_rearrange_enabled** = ``false`` :ref:`🔗<class_TabBar_property_drag_to_rearrange_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_to_rearrange_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_drag_to_rearrange_enabled**\ (\ )

如果为 ``true``\ ，可以通过鼠标拖动重新排列选项卡。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_max_tab_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_tab_width** = ``0`` :ref:`🔗<class_TabBar_property_max_tab_width>`

.. rst-class:: classref-property-setget

- |void| **set_max_tab_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_tab_width**\ (\ )

设置所有选项卡应被限制的最大宽度。如果设置为 ``0``\ ，则无限制。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_scroll_to_selected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scroll_to_selected** = ``true`` :ref:`🔗<class_TabBar_property_scroll_to_selected>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_to_selected**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_scroll_to_selected**\ (\ )

如果为 ``true``\ ，则会更改选项卡偏移量，从而保持当前选中的选项卡可见。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_scrolling_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scrolling_enabled** = ``true`` :ref:`🔗<class_TabBar_property_scrolling_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_scrolling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_scrolling_enabled**\ (\ )

如果为 ``true``\ ，鼠标的滚轮可用于导航滚动视图。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_select_with_rmb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **select_with_rmb** = ``false`` :ref:`🔗<class_TabBar_property_select_with_rmb>`

.. rst-class:: classref-property-setget

- |void| **set_select_with_rmb**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_select_with_rmb**\ (\ )

如果为 ``true``\ ，启用鼠标右键选择选项卡。

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

选项卡上显示关闭按钮的时机。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tab_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **tab_count** = ``0`` :ref:`🔗<class_TabBar_property_tab_count>`

.. rst-class:: classref-property-setget

- |void| **set_tab_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tab_count**\ (\ )

选项卡栏中当前的选项卡数量。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tabs_rearrange_group:

.. rst-class:: classref-property

:ref:`int<class_int>` **tabs_rearrange_group** = ``-1`` :ref:`🔗<class_TabBar_property_tabs_rearrange_group>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_rearrange_group**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tabs_rearrange_group**\ (\ )

具有相同重新排列组 ID 的 **TabBar** 将允许在它们之间拖动选项卡。使用 :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>` 启用拖动。

将该属性设置为 ``-1`` 将禁用 **TabBar** 之间的重新排列。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_TabBar_method_add_tab:

.. rst-class:: classref-method

|void| **add_tab**\ (\ title\: :ref:`String<class_String>` = "", icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_TabBar_method_add_tab>`

添加新选项卡。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_clear_tabs:

.. rst-class:: classref-method

|void| **clear_tabs**\ (\ ) :ref:`🔗<class_TabBar_method_clear_tabs>`

清空所有选项卡。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_ensure_tab_visible:

.. rst-class:: classref-method

|void| **ensure_tab_visible**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_ensure_tab_visible>`

移动滚动视图，使标签可见。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_offset_buttons_visible:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_offset_buttons_visible**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_offset_buttons_visible>`

如果偏移按钮（所有选项卡没有足够空间时出现的按钮）可见，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_previous_tab:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_previous_tab**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_previous_tab>`

返回上一个活动选项卡的索引。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_button_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_button_icon>`

返回索引 ``tab_idx`` 处选项卡右侧按钮的图标，如果该按钮没有图标，则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_icon>`

返回索引 ``tab_idx`` 处选项卡的图标，如果该选项卡没有图标，则返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_icon_max_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_icon_max_width>`

设置索引为 ``tab_idx`` 处选项卡所允许的最大图标宽度。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_idx_at_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_at_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_idx_at_point>`

返回位于局部坐标 ``point`` 处的选项卡的索引。如果该点在控件边界之外或查询位置没有选项卡，则返回 ``-1``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_language:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_language**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_language>`

返回选项卡标题的语言代码。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_metadata>`

返回索引为 ``tab_idx`` 的选项卡的元数据的值，由 :ref:`set_tab_metadata()<class_TabBar_method_set_tab_metadata>` 设置。如果之前没有设置元数据，则默认返回 ``null``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_offset**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_offset>`

返回向左偏移的隐藏选项卡的数量。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_tab_rect**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_rect>`

返回带有局部位置和大小的选项卡 :ref:`Rect2<class_Rect2>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_text_direction:

.. rst-class:: classref-method

:ref:`TextDirection<enum_Control_TextDirection>` **get_tab_text_direction**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_text_direction>`

返回选项卡标题文本的基础书写方向。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_title>`

返回索引 ``tab_idx`` 处的选项卡的标题。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_tooltip>`

返回索引 ``tab_idx`` 处的选项卡的工具提示文本。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_is_tab_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_is_tab_disabled>`

如果索引 ``tab_idx`` 处的选项卡被禁用，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_is_tab_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_is_tab_hidden>`

如果索引 ``tab_idx`` 处的选项卡被隐藏，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_move_tab:

.. rst-class:: classref-method

|void| **move_tab**\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_move_tab>`

将选项卡从 ``from`` 移动到 ``to``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_remove_tab:

.. rst-class:: classref-method

|void| **remove_tab**\ (\ tab_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_remove_tab>`

删除索引 ``tab_idx`` 处的选项卡。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_select_next_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_next_available**\ (\ ) :ref:`🔗<class_TabBar_method_select_next_available>`

选择索引大于当前所选选项卡索引的第一个可用选项卡。如果选项卡选择发生改变，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_select_previous_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_previous_available**\ (\ ) :ref:`🔗<class_TabBar_method_select_previous_available>`

选择索引低于当前所选选项卡索引的第一个可用选项卡。如果选项卡选择发生改变，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_button_icon:

.. rst-class:: classref-method

|void| **set_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabBar_method_set_tab_button_icon>`

设置索引为 ``tab_idx`` 的选项卡按钮的图标 ``icon``\ （位于右侧，在关闭按钮之前），会将该按钮设为可见且可点击（见 :ref:`tab_button_pressed<class_TabBar_signal_tab_button_pressed>`\ ）。给定 ``null`` 值会隐藏该按钮。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_disabled:

.. rst-class:: classref-method

|void| **set_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabBar_method_set_tab_disabled>`

如果 ``disabled`` 为 ``true``\ ，则禁用索引 ``tab_idx`` 处的选项卡，使其不可交互。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_hidden:

.. rst-class:: classref-method

|void| **set_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabBar_method_set_tab_hidden>`

如果 ``hidden`` 为 ``true``\ ，则隐藏索引 ``tab_idx`` 处的选项卡，使其从选项卡区域消失。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_icon:

.. rst-class:: classref-method

|void| **set_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabBar_method_set_tab_icon>`

设置索引 ``tab_idx`` 处的选项卡的图标。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_icon_max_width:

.. rst-class:: classref-method

|void| **set_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_set_tab_icon_max_width>`

设置索引为 ``tab_idx`` 处选项卡所允许的最大图标宽度。这是在图标的默认大小和 :ref:`icon_max_width<class_TabBar_theme_constant_icon_max_width>` 的基础上的限制。高度会根据图标的长宽比调整。

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

为 ``tab_idx`` 的选项卡设置元数据的值，之后可以使用 :ref:`get_tab_metadata()<class_TabBar_method_get_tab_metadata>` 获取。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_text_direction:

.. rst-class:: classref-method

|void| **set_tab_text_direction**\ (\ tab_idx\: :ref:`int<class_int>`, direction\: :ref:`TextDirection<enum_Control_TextDirection>`\ ) :ref:`🔗<class_TabBar_method_set_tab_text_direction>`

设置选项卡标题的基础书写方向。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_title:

.. rst-class:: classref-method

|void| **set_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabBar_method_set_tab_title>`

设置索引 ``tab_idx`` 处的选项卡的标题 ``title``\ 。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_tooltip:

.. rst-class:: classref-method

|void| **set_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabBar_method_set_tab_tooltip>`

设置索引 ``tab_idx`` 处的选项卡的工具提示 ``tooltip``\ 。

\ **注意：**\ 默认情况下，如果 ``tooltip`` 为空而选项卡文本发生了裁剪（选项卡无法完整显示所有字符），那么就会将标题作为工具提示显示。要隐藏工具提示，请将 ``tooltip`` 文本设置为 ``" "``\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_TabBar_theme_color_drop_mark_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **drop_mark_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabBar_theme_color_drop_mark_color>`

:ref:`drop_mark<class_TabBar_theme_icon_drop_mark>` 图标的调制颜色。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_TabBar_theme_color_font_disabled_color>`

禁用选项卡的字体颜色。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hovered_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabBar_theme_color_font_hovered_color>`

当前悬停选项卡的字体颜色。不适用于选中的选项卡。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_TabBar_theme_color_font_outline_color>`

选项卡名称的文本轮廓的色调。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_selected_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabBar_theme_color_font_selected_color>`

当前所选选项卡的字体颜色。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_unselected_color** = ``Color(0.7, 0.7, 0.7, 1)`` :ref:`🔗<class_TabBar_theme_color_font_unselected_color>`

其他未被选中的选项卡的字体颜色。

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

选项卡内元素之间的水平分隔。

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

选项卡图标所允许的最大宽度。这个限制应用在该图标默认大小之上，但是应用在 :ref:`set_tab_icon_max_width()<class_TabBar_method_set_tab_icon_max_width>` 所设置的值之前。高度会根据图标比例调整。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_TabBar_theme_constant_outline_size>`

选项卡文字轮廓的大小。

\ **注意：**\ 如果使用启用了 :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` 的字体，其 :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` 必须至少设置为 :ref:`outline_size<class_TabBar_theme_constant_outline_size>` 的\ *两倍*\ ，轮廓渲染才能看起来正确。否则，轮廓可能会比预期的更早被切断。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_tab_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tab_separation** = ``0`` :ref:`🔗<class_TabBar_theme_constant_tab_separation>`

选项卡栏中选项卡的间距。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TabBar_theme_font_font>`

用于绘制选项卡名称的字体。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_TabBar_theme_font_size_font_size>`

选项卡名称的字体大小。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_close:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **close** :ref:`🔗<class_TabBar_theme_icon_close>`

关闭按钮的图标（见 :ref:`tab_close_display_policy<class_TabBar_property_tab_close_display_policy>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_TabBar_theme_icon_decrement>`

左边的箭头按钮的图标，当有太多的标签无法容纳在容器的宽度内时出现。当该按钮被禁用时（即第一个标签是可见的），它显示为半透明的。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_TabBar_theme_icon_decrement_highlight>`

当标签太多无法适应容器宽度时出现的左箭头按钮图标。当鼠标悬停在按钮上时使用。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_drop_mark:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **drop_mark** :ref:`🔗<class_TabBar_theme_icon_drop_mark>`

图标，用于指示拖动的选项卡将被放置到哪里（见 :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_TabBar_theme_icon_increment>`

右箭头按钮的图标，当有太多的标签无法容纳在容器的宽度内时出现。当该按钮被禁用时（即最后一个标签是可见的），它显示为半透明的。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_TabBar_theme_icon_increment_highlight>`

当标签太多无法适应容器宽度时出现的右箭头按钮图标。当鼠标悬停在按钮上时使用。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_button_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **button_highlight** :ref:`🔗<class_TabBar_theme_style_button_highlight>`

选项卡和关闭按钮的背景，处于鼠标悬停状态时使用。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_button_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **button_pressed** :ref:`🔗<class_TabBar_theme_style_button_pressed>`

选项卡和关闭按钮的背景，处于按下状态时使用。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_disabled** :ref:`🔗<class_TabBar_theme_style_tab_disabled>`

选项卡处于禁用状态时的样式。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_focus** :ref:`🔗<class_TabBar_theme_style_tab_focus>`

该 **TabBar** 处于聚焦状态时使用的 :ref:`StyleBox<class_StyleBox>`\ 。\ :ref:`tab_focus<class_TabBar_theme_style_tab_focus>` :ref:`StyleBox<class_StyleBox>` 显示在基础 :ref:`StyleBox<class_StyleBox>` *之上*\ ，所以应该使用部分透明的 :ref:`StyleBox<class_StyleBox>`\ ，确保基础 :ref:`StyleBox<class_StyleBox>` 仍然可见。代表轮廓或下划线的 :ref:`StyleBox<class_StyleBox>` 可以很好地实现这个目的。要禁用聚焦的视觉效果，请指定 :ref:`StyleBoxEmpty<class_StyleBoxEmpty>` 资源。请注意，禁用聚焦的视觉效果会影响使用键盘/手柄进行导航的可用性，所以出于可访问性的原因，不建议这样做。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_hovered** :ref:`🔗<class_TabBar_theme_style_tab_hovered>`

当前悬停选项卡的样式。不适用于选择的选项卡。

\ **注意：**\ 该样式将以至少与 :ref:`tab_unselected<class_TabBar_theme_style_tab_unselected>` 相同的宽度绘制。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_selected** :ref:`🔗<class_TabBar_theme_style_tab_selected>`

当前选中的选项卡的样式。

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_unselected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_unselected** :ref:`🔗<class_TabBar_theme_style_tab_unselected>`

其他未被选中的选项卡的样式。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
