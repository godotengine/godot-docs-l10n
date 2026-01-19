:github_url: hide

.. _class_TabBar:

TabBar
======

**Успадковує:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Контроль, що забезпечує горизонтальний брус з вкладками.

.. rst-class:: classref-introduction-group

Опис
--------

Контроль, що забезпечує горизонтальний брус з вкладками. Подібно до :ref:`TabContainer<class_TabContainer>` але є лише зарядом витяжок, не взаємодіючи з дітьми.

.. rst-class:: classref-reftable-group

Властивості
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

Методи
------------

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

Властивості теми
--------------------------------

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

Сигнали
--------------

.. _class_TabBar_signal_active_tab_rearranged:

.. rst-class:: classref-signal

**active_tab_rearranged**\ (\ idx_to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_active_tab_rearranged>`

Викликається, коли активну вкладку перевпорядковують перетягуванням миші. Див. :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_button_pressed:

.. rst-class:: classref-signal

**tab_button_pressed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_button_pressed>`

Видається, коли натискається права кнопка вкладки. Див. :ref:`set_tab_button_icon()<class_TabBar_method_set_tab_button_icon>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_changed:

.. rst-class:: classref-signal

**tab_changed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_changed>`

Випробувано при переході на іншу вкладку.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_clicked:

.. rst-class:: classref-signal

**tab_clicked**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_clicked>`

При натисканні вкладки, навіть якщо це поточна вкладка.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_close_pressed:

.. rst-class:: classref-signal

**tab_close_pressed**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_close_pressed>`

Викликається при натисканні кнопки закриття вкладки або, якщо :ref:`close_with_middle_mouse<class_TabBar_property_close_with_middle_mouse>` має значення ``true``, при клацанні середньою кнопкою миші на вкладці.

\ **Примітка:** Вкладки не видаляються автоматично; цю поведінку потрібно налаштувати вручну. Наприклад:


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

Увімкніть, коли вкладка передається мишкою.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_rmb_clicked:

.. rst-class:: classref-signal

**tab_rmb_clicked**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_rmb_clicked>`

Викликається при натисканні правої кнопки миші на вкладку.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_signal_tab_selected:

.. rst-class:: classref-signal

**tab_selected**\ (\ tab\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_signal_tab_selected>`

Увімкнено, коли вкладка вибрана за допомогою кнопок, спрямованого введення, або скрипта, навіть якщо це поточний вкладок.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_TabBar_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_TabBar_AlignmentMode>`

.. _class_TabBar_constant_ALIGNMENT_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **ALIGNMENT_LEFT** = ``0``

Вирівнює вкладки ліворуч.

.. _class_TabBar_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

Вирівнює вкладки посередині.

.. _class_TabBar_constant_ALIGNMENT_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **ALIGNMENT_RIGHT** = ``2``

Вирівнює вкладки праворуч.

.. _class_TabBar_constant_ALIGNMENT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **ALIGNMENT_MAX** = ``3``

Представляє розмір переліку :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`.

.. rst-class:: classref-item-separator

----

.. _enum_TabBar_CloseButtonDisplayPolicy:

.. rst-class:: classref-enumeration

enum **CloseButtonDisplayPolicy**: :ref:`🔗<enum_TabBar_CloseButtonDisplayPolicy>`

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_NEVER** = ``0``

Ніколи не покажуть кнопки закриття.

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_ACTIVE_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_ACTIVE_ONLY** = ``1``

Тільки покажуть на вказану активну вкладку.

.. _class_TabBar_constant_CLOSE_BUTTON_SHOW_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_SHOW_ALWAYS** = ``2``

Показати близьку кнопку на всіх вкладках.

.. _class_TabBar_constant_CLOSE_BUTTON_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **CLOSE_BUTTON_MAX** = ``3``

Представляє розмір :ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_TabBar_property_clip_tabs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_tabs** = ``true`` :ref:`🔗<class_TabBar_property_clip_tabs>`

.. rst-class:: classref-property-setget

- |void| **set_clip_tabs**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_clip_tabs**\ (\ )

Якщо ``true``, вкладки, що переповнюють ширину цього вузла, будуть приховані, відображають дві кнопки навігації замість. В іншому випадку цей розмір вузла оновлюється таким чином, щоб всі вкладки були видимими.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_close_with_middle_mouse:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **close_with_middle_mouse** = ``true`` :ref:`🔗<class_TabBar_property_close_with_middle_mouse>`

.. rst-class:: classref-property-setget

- |void| **set_close_with_middle_mouse**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_close_with_middle_mouse**\ (\ )

Якщо ``true``, клацання середньою кнопкою миші на вкладці видаватиме сигнал :ref:`tab_close_pressed<class_TabBar_signal_tab_close_pressed>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_current_tab:

.. rst-class:: classref-property

:ref:`int<class_int>` **current_tab** = ``-1`` :ref:`🔗<class_TabBar_property_current_tab>`

.. rst-class:: classref-property-setget

- |void| **set_current_tab**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_current_tab**\ (\ )

Індекс поточного вибраного вкладки. Вартість ``-1`` означає, що не вибрано вкладку і може бути встановлена лише тоді, коли :ref:`deselect_enabled<class_TabBar_property_deselect_enabled>` ``true`` або якщо всі вкладки приховані або вимкнені.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_deselect_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deselect_enabled** = ``false`` :ref:`🔗<class_TabBar_property_deselect_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_deselect_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_deselect_enabled**\ (\ )

Якщо ``true``, всі вкладки можна видалити так, щоб не вибрано вкладку. Натисніть на поточну вкладку, щоб видалити її.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_drag_to_rearrange_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_to_rearrange_enabled** = ``false`` :ref:`🔗<class_TabBar_property_drag_to_rearrange_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_to_rearrange_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_drag_to_rearrange_enabled**\ (\ )

Якщо ``true``, вкладки можна перепланувати з перетягуванням миші.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_max_tab_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_tab_width** = ``0`` :ref:`🔗<class_TabBar_property_max_tab_width>`

.. rst-class:: classref-property-setget

- |void| **set_max_tab_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_tab_width**\ (\ )

Налаштовує максимальну ширину вкладок, яка повинна бути обмежена. Необмежено, якщо встановити до ``0``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_scroll_to_selected:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scroll_to_selected** = ``true`` :ref:`🔗<class_TabBar_property_scroll_to_selected>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_to_selected**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_scroll_to_selected**\ (\ )

Якщо ``true``, вкладка буде змінена для збереження в даний час вибраної вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_scrolling_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scrolling_enabled** = ``true`` :ref:`🔗<class_TabBar_property_scrolling_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_scrolling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_scrolling_enabled**\ (\ )

якщо ``true``, колесо мишки можна використовувати для навігації вигляду прокрутки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_select_with_rmb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **select_with_rmb** = ``false`` :ref:`🔗<class_TabBar_property_select_with_rmb>`

.. rst-class:: classref-property-setget

- |void| **set_select_with_rmb**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_select_with_rmb**\ (\ )

Якщо ``true``, вибравши вкладку з правою кнопкою миші.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_switch_on_drag_hover:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **switch_on_drag_hover** = ``true`` :ref:`🔗<class_TabBar_property_switch_on_drag_hover>`

.. rst-class:: classref-property-setget

- |void| **set_switch_on_drag_hover**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_switch_on_drag_hover**\ (\ )

Якщо ``true``, наведення курсора на вкладку під час перетягування чогось призведе до перемикання на цю вкладку. Це не впливає на наведення курсора на іншу вкладку для зміни порядку. Затримка перемикання визначається параметром :ref:`hover_switch_wait_msec<class_TabBar_theme_constant_hover_switch_wait_msec>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tab_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **tab_alignment** = ``0`` :ref:`🔗<class_TabBar_property_tab_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_tab_alignment**\ (\ value\: :ref:`AlignmentMode<enum_TabBar_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_TabBar_AlignmentMode>` **get_tab_alignment**\ (\ )

Горизонтальне вирівнювання вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tab_close_display_policy:

.. rst-class:: classref-property

:ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **tab_close_display_policy** = ``0`` :ref:`🔗<class_TabBar_property_tab_close_display_policy>`

.. rst-class:: classref-property-setget

- |void| **set_tab_close_display_policy**\ (\ value\: :ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>`\ )
- :ref:`CloseButtonDisplayPolicy<enum_TabBar_CloseButtonDisplayPolicy>` **get_tab_close_display_policy**\ (\ )

Коли кнопка закриття з’явиться на вкладках.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tab_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **tab_count** = ``0`` :ref:`🔗<class_TabBar_property_tab_count>`

.. rst-class:: classref-property-setget

- |void| **set_tab_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tab_count**\ (\ )

Кількість вкладок в даний час в барі.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_property_tabs_rearrange_group:

.. rst-class:: classref-property

:ref:`int<class_int>` **tabs_rearrange_group** = ``-1`` :ref:`🔗<class_TabBar_property_tabs_rearrange_group>`

.. rst-class:: classref-property-setget

- |void| **set_tabs_rearrange_group**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_tabs_rearrange_group**\ (\ )

**TabBar** з однаковим ідентифікатором групи задніх груп дозволить перетягування вкладок між ними. Увімкнути перетягування :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`.

Налаштування цього до ``-1`` буде відключати заднє кріплення між **TabBar**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_TabBar_method_add_tab:

.. rst-class:: classref-method

|void| **add_tab**\ (\ title\: :ref:`String<class_String>` = "", icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_TabBar_method_add_tab>`

Додати нову вкладку.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_clear_tabs:

.. rst-class:: classref-method

|void| **clear_tabs**\ (\ ) :ref:`🔗<class_TabBar_method_clear_tabs>`

Очищає всі вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_ensure_tab_visible:

.. rst-class:: classref-method

|void| **ensure_tab_visible**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_ensure_tab_visible>`

Переміщує перегляд прокрутки, щоб зробити вкладку видимим.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_offset_buttons_visible:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_offset_buttons_visible**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_offset_buttons_visible>`

Повертає ``true``, якщо вимкнені кнопки (такі, що з'являються, коли для всіх вкладок не вистачає місця.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_previous_tab:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_previous_tab**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_previous_tab>`

Повернути індекс раніше активної вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_button_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_button_icon>`

Повернення іконки для правої кнопки вкладки в індекс ``tab_idx`` або ``null``, якщо права кнопка не має іконки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_icon>`

Повернення іконки для вкладки в індекс ``tab_idx`` або ``null``, якщо вкладка не має іконки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_icon_max_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_icon_max_width>`

Повертаємо максимальну допустиму ширину іконки для вкладки в індекс ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_idx_at_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_idx_at_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_idx_at_point>`

Повернення індексу вкладки в локальні координати ``пункт абзаців``. Повертаємо ``-1``, якщо точка знаходиться поза межами контролю або якщо у вас немає вкладки на переглянуту позицію.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_language:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_language**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_language>`

Повернути мову заголовка вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_metadata:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_metadata>`

Повертає набір значень метаданих до вкладки в індекс ``tab_idx`` за допомогою :ref:`set_tab_metadata()<class_TabBar_method_set_tab_metadata>`. Якщо раніше не встановлено метадані, повертає ``null`` за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_tab_offset**\ (\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_offset>`

Повертає кількість прихованих вкладок, зміщених зліва.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_tab_rect**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_rect>`

Вкладка повертається :ref:`Rect2<class_Rect2>` з локальною позицією та розміром.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_text_direction:

.. rst-class:: classref-method

:ref:`TextDirection<enum_Control_TextDirection>` **get_tab_text_direction**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_text_direction>`

Повертає назву вкладки текстовий напрямок написання бази.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_title:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_title>`

Повертає назву вкладки в індекс ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_get_tab_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_get_tab_tooltip>`

Повертає текст вкладки в індекс ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_is_tab_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_is_tab_disabled>`

Повертає ``true``, якщо вкладка в індексі ``tab_idx`` вимкнена.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_is_tab_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TabBar_method_is_tab_hidden>`

Повертає ``true``, якщо вкладка в індексі ``tab_idx`` прихована.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_move_tab:

.. rst-class:: classref-method

|void| **move_tab**\ (\ from\: :ref:`int<class_int>`, to\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_move_tab>`

Переміщує вкладку з ``from`` до ``to``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_remove_tab:

.. rst-class:: classref-method

|void| **remove_tab**\ (\ tab_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_remove_tab>`

Видалити вкладку в індекс ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_select_next_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_next_available**\ (\ ) :ref:`🔗<class_TabBar_method_select_next_available>`

Виберіть перший доступний вкладку з більшим індексом, ніж обраний в даний час. Повернення ``true`` якщо змінено вибір вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_select_previous_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **select_previous_available**\ (\ ) :ref:`🔗<class_TabBar_method_select_previous_available>`

Виберіть перший доступний вкладку з меншим індексом, ніж обраний в даний час. Повертає ``true``, якщо змінено вибір вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_button_icon:

.. rst-class:: classref-method

|void| **set_tab_button_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabBar_method_set_tab_button_icon>`

Встановлює ``icon`` для кнопки вкладки за індексом ``tab_idx`` (розташованої праворуч, перед кнопкою закриття), роблячи її видимою та клікабельною (див. :ref:`tab_button_pressed<class_TabBar_signal_tab_button_pressed>`). Якщо надати їй значення ``null``, кнопка буде прихована.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_disabled:

.. rst-class:: classref-method

|void| **set_tab_disabled**\ (\ tab_idx\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabBar_method_set_tab_disabled>`

Якщо ``disabled`` має значення ``true``, вкладка за індексом ``tab_idx`` вимикається, що робить її невзаємодіючою.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_hidden:

.. rst-class:: classref-method

|void| **set_tab_hidden**\ (\ tab_idx\: :ref:`int<class_int>`, hidden\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TabBar_method_set_tab_hidden>`

Якщо ``hidden`` має значення ``true``, приховує вкладку за індексом ``tab_idx``, що зникає з області вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_icon:

.. rst-class:: classref-method

|void| **set_tab_icon**\ (\ tab_idx\: :ref:`int<class_int>`, icon\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_TabBar_method_set_tab_icon>`

Встановлює ``icon`` для вкладки з індексом ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_icon_max_width:

.. rst-class:: classref-method

|void| **set_tab_icon_max_width**\ (\ tab_idx\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TabBar_method_set_tab_icon_max_width>`

Встановлює максимально допустиму ширину значка для вкладки з індексом ``tab_idx``. Це обмеження застосовується поверх стандартного розміру значка та поверх :ref:`icon_max_width<class_TabBar_theme_constant_icon_max_width>`. Висота налаштовується відповідно до співвідношення сторін значка.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_language:

.. rst-class:: classref-method

|void| **set_tab_language**\ (\ tab_idx\: :ref:`int<class_int>`, language\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabBar_method_set_tab_language>`

Встановлює код мови заголовка вкладки за індексом ``tab_idx`` на ``language``. Це використовується для алгоритмів розриву рядків та формування тексту. Якщо ``language`` порожній, використовується поточна локалізація.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_metadata:

.. rst-class:: classref-method

|void| **set_tab_metadata**\ (\ tab_idx\: :ref:`int<class_int>`, metadata\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TabBar_method_set_tab_metadata>`

Встановіть значення метаданих для вкладки в індекс ``tab_idx``, який можна отримати пізніше за допомогою :ref:`get_tab_metadata()<class_TabBar_method_get_tab_metadata>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_text_direction:

.. rst-class:: classref-method

|void| **set_tab_text_direction**\ (\ tab_idx\: :ref:`int<class_int>`, direction\: :ref:`TextDirection<enum_Control_TextDirection>`\ ) :ref:`🔗<class_TabBar_method_set_tab_text_direction>`

Встановлює напрямок написання вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_title:

.. rst-class:: classref-method

|void| **set_tab_title**\ (\ tab_idx\: :ref:`int<class_int>`, title\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabBar_method_set_tab_title>`

Встановіть ``title`` для вкладки в індекс ``tab_idx``.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_method_set_tab_tooltip:

.. rst-class:: classref-method

|void| **set_tab_tooltip**\ (\ tab_idx\: :ref:`int<class_int>`, tooltip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_TabBar_method_set_tab_tooltip>`

Встановіть ``tooltip`` для вкладки в індекс ``tab_idx``.

\ **Примітка:** За замовчуванням, якщо ``tooltip`` є порожнім, а текст вкладки обрізається (не всі символи вводяться в вкладку), назву буде відображатися як інструмент. Щоб приховати пристрій, призначте ``"``, як текст ``tooltip``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_TabBar_theme_color_drop_mark_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **drop_mark_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabBar_theme_color_drop_mark_color>`

Модуляційний колір для іконки :ref:`drop_mark<class_TabBar_theme_icon_drop_mark>`.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0.875, 0.875, 0.875, 0.5)`` :ref:`🔗<class_TabBar_theme_color_font_disabled_color>`

Колір шрифту відключених вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hovered_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabBar_theme_color_font_hovered_color>`

Колір шрифту в даний час ховається вкладка. Не застосовується до вибраної вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_TabBar_theme_color_font_outline_color>`

Вміст текстового контуру імені вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_selected_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_TabBar_theme_color_font_selected_color>`

Колір шрифту вказаної вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_font_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_unselected_color** = ``Color(0.7, 0.7, 0.7, 1)`` :ref:`🔗<class_TabBar_theme_color_font_unselected_color>`

Колір шрифту іншого, невибрані вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_icon_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_disabled_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabBar_theme_color_icon_disabled_color>`

Колір значка вимкнених вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_icon_hovered_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_hovered_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabBar_theme_color_icon_hovered_color>`

Колір значка вкладки, на яку наведено курсор. Не застосовується до вибраної вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_icon_selected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_selected_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabBar_theme_color_icon_selected_color>`

Колір значка поточної вибраної вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_color_icon_unselected_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **icon_unselected_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TabBar_theme_color_icon_unselected_color>`

Колір значків інших, невибраних вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_TabBar_theme_constant_h_separation>`

Горизонтальне розділення елементів всередині вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_hover_switch_wait_msec:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **hover_switch_wait_msec** = ``500`` :ref:`🔗<class_TabBar_theme_constant_hover_switch_wait_msec>`

Під час перетягування це кількість мілісекунд, яку потрібно чекати перед перемиканням вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_icon_max_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_width** = ``0`` :ref:`🔗<class_TabBar_theme_constant_icon_max_width>`

Максимальна допустима ширина іконки вкладки. Цей ліміт наноситься зверху за замовчуванням, розмір іконки, але до значення, встановленого :ref:`set_tab_icon_max_width()<class_TabBar_method_set_tab_icon_max_width>`. Висота регульована відповідно до співвідношення ікони.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_TabBar_theme_constant_outline_size>`

Розмір тексту вкладки.

\ **Примітка:** Якщо за допомогою шрифту :ref:`FontFile.multiканал_signed_distance_field<class_FontFile_property_multiканал_signed_distance_field>` ввімкнено, його :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` необхідно встановити принаймні *twice* значення :ref:`index_size<class_TabBar_theme_item_index_size>` для позначення, що дає змогу виглядати правильно. В іншому випадку контур може з'явитися, щоб зрізати раніше, ніж призначений.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_constant_tab_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **tab_separation** = ``0`` :ref:`🔗<class_TabBar_theme_constant_tab_separation>`

Простір між вкладками на панелі вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_TabBar_theme_font_font>`

Шрифт, який використовується для позначення назв вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_TabBar_theme_font_size_font_size>`

Розмір шрифту назв вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_close:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **close** :ref:`🔗<class_TabBar_theme_icon_close>`

Піктограма кнопки закриття (див. :ref:`tab_close_display_policy<class_TabBar_property_tab_close_display_policy>`).

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_decrement:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement** :ref:`🔗<class_TabBar_theme_icon_decrement>`

Ікона для лівої стрілки, яка з'являється, коли є занадто багато вкладок, щоб відповідати в ширину контейнера. Коли кнопка вимкнена (тобто видно першу вкладку), вона з'являється напівпрозорою.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_decrement_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **decrement_highlight** :ref:`🔗<class_TabBar_theme_icon_decrement_highlight>`

Ікона для лівої стрілки, яка з'являється, коли є занадто багато вкладок, щоб відповідати в ширину контейнера. Використовуються при натисканні кнопки з курсором.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_drop_mark:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **drop_mark** :ref:`🔗<class_TabBar_theme_icon_drop_mark>`

Ікона показана до того, що вкладка перетягування (див. :ref:`drag_to_rearrange_enabled<class_TabBar_property_drag_to_rearrange_enabled>`).

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_increment:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment** :ref:`🔗<class_TabBar_theme_icon_increment>`

Ікона для правої стрілки, яка з'являється, коли є занадто багато вкладок, щоб відповідати в ширину контейнера. Коли кнопка вимкнена (тобто остання вкладка видима) вона з'являється напівпрозорою.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_icon_increment_highlight:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **increment_highlight** :ref:`🔗<class_TabBar_theme_icon_increment_highlight>`

Ікона для правої стрілки, яка з'являється, коли є занадто багато вкладок, щоб відповідати в ширину контейнера. Використовуються при натисканні кнопки з курсором.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_button_highlight:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **button_highlight** :ref:`🔗<class_TabBar_theme_style_button_highlight>`

Задня частина вкладки і закриття гудзиків, коли вони переховуються курсором.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_button_pressed:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **button_pressed** :ref:`🔗<class_TabBar_theme_style_button_pressed>`

Задня частина вкладки і закриття гудзиків при натисканні.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_disabled:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_disabled** :ref:`🔗<class_TabBar_theme_style_tab_disabled>`

Стиль відключених вкладок.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_focus** :ref:`🔗<class_TabBar_theme_style_tab_focus>`

:ref:`StyleBox<class_StyleBox>` використовується при фокусі **TabBar**. :ref:`tab_focus<class_TabBar_theme_style_tab_focus>` :ref:`StyleBox<class_StyleBox>` відображається *over* бази :ref:`StyleBox<class_StyleBox>` вибраної вкладки, тому частково прозора :ref:`StyleBox<class_StyleBox>` повинна бути використана для забезпечення бази :ref:`StyleBox<class_StyleBox>`. :ref:`StyleBox<class_StyleBox>`, який добре працює для цього. Щоб вимкнути візуальний ефект фокусу, призначте ресурс :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Зверніть увагу, що відключення візуального ефекту фокусу буде завдати шкоди клавіатурі / керованій навігації, тому це не рекомендується для причин доступності.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_hovered:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_hovered** :ref:`🔗<class_TabBar_theme_style_tab_hovered>`

Стиль в даний час ховається вкладка. Не застосовується до вибраної вкладки.

\ **Примітка:** Цей стиль буде складений з такою ж шириною, як :ref:`tab_unselected<class_TabBar_theme_style_tab_unselected>` при мінімальному.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_selected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_selected** :ref:`🔗<class_TabBar_theme_style_tab_selected>`

Стиль вказаної вкладки.

.. rst-class:: classref-item-separator

----

.. _class_TabBar_theme_style_tab_unselected:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **tab_unselected** :ref:`🔗<class_TabBar_theme_style_tab_unselected>`

Стиль іншого, невибрані вкладки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
