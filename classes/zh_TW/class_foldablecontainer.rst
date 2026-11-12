:github_url: hide

.. meta::
	:keywords: expandable, collapsible, collapse, accordion, details

.. _class_FoldableContainer:

FoldableContainer
=================

**繼承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

能夠展開、折疊的容器。

.. rst-class:: classref-introduction-group

說明
----

能夠展開、折疊的容器，標題中可以新增按鈕等控制項。這也叫做手風琴。

標題可以放在容器的頂部或底部。點選標題或在聚焦時按下 ``ui_accept`` 可以將容器展開或折疊。容器折疊時子控制項節點隱藏。忽略非控制項子節點。

可折疊容器可以與其他可折疊容器分組，這樣一次只能打開其中一個；見 :ref:`foldable_group<class_FoldableContainer_property_foldable_group>` 和 :ref:`FoldableGroup<class_FoldableGroup>`\ 。

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                          | focus_mode                                                                                       | ``2`` (overrides :ref:`Control<class_Control_property_focus_mode>`)   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`FoldableGroup<class_FoldableGroup>`                         | :ref:`foldable_group<class_FoldableContainer_property_foldable_group>`                           |                                                                       |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`folded<class_FoldableContainer_property_folded>`                                           | ``false``                                                             |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`language<class_FoldableContainer_property_language>`                                       | ``""``                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`                      | mouse_filter                                                                                     | ``0`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`title<class_FoldableContainer_property_title>`                                             | ``""``                                                                |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | :ref:`title_alignment<class_FoldableContainer_property_title_alignment>`                         | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`TitlePosition<enum_FoldableContainer_TitlePosition>`        | :ref:`title_position<class_FoldableContainer_property_title_position>`                           | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                  | :ref:`title_text_direction<class_FoldableContainer_property_title_text_direction>`               | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`           | :ref:`title_text_overrun_behavior<class_FoldableContainer_property_title_text_overrun_behavior>` | ``0``                                                                 |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_title_bar_control<class_FoldableContainer_method_add_title_bar_control>`\ (\ control\: :ref:`Control<class_Control>`\ )       |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`expand<class_FoldableContainer_method_expand>`\ (\ )                                                                              |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`fold<class_FoldableContainer_method_fold>`\ (\ )                                                                                  |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>` | :ref:`get_title_bar_control<class_FoldableContainer_method_get_title_bar_control>`\ (\ index\: :ref:`int<class_int>`\ ) |const|         |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_title_bar_control_count<class_FoldableContainer_method_get_title_bar_control_count>`\ (\ ) |const|                            |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_title_bar_control<class_FoldableContainer_method_remove_title_bar_control>`\ (\ control\: :ref:`Control<class_Control>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`collapsed_font_color<class_FoldableContainer_theme_color_collapsed_font_color>`               | ``Color(1, 1, 1, 1)``             |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`font_color<class_FoldableContainer_theme_color_font_color>`                                   | ``Color(0.875, 0.875, 0.875, 1)`` |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`font_outline_color<class_FoldableContainer_theme_color_font_outline_color>`                   | ``Color(1, 1, 1, 1)``             |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`hover_font_color<class_FoldableContainer_theme_color_hover_font_color>`                       | ``Color(0.95, 0.95, 0.95, 1)``    |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`h_separation<class_FoldableContainer_theme_constant_h_separation>`                            | ``2``                             |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`icon_max_width<class_FoldableContainer_theme_constant_icon_max_width>`                        | ``0``                             |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`outline_size<class_FoldableContainer_theme_constant_outline_size>`                            | ``0``                             |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Font<class_Font>`               | :ref:`font<class_FoldableContainer_theme_font_font>`                                                |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`                 | :ref:`font_size<class_FoldableContainer_theme_font_size_font_size>`                                 |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`expanded_arrow<class_FoldableContainer_theme_icon_expanded_arrow>`                            |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`expanded_arrow_mirrored<class_FoldableContainer_theme_icon_expanded_arrow_mirrored>`          |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`folded_arrow<class_FoldableContainer_theme_icon_folded_arrow>`                                |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Texture2D<class_Texture2D>`     | :ref:`folded_arrow_mirrored<class_FoldableContainer_theme_icon_folded_arrow_mirrored>`              |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`expanded_sound<class_FoldableContainer_theme_sound_expanded_sound>`                           |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`focus_sound<class_FoldableContainer_theme_sound_focus_sound>`                                 |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`AudioStream<class_AudioStream>` | :ref:`folded_sound<class_FoldableContainer_theme_sound_folded_sound>`                               |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`focus<class_FoldableContainer_theme_style_focus>`                                             |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`panel<class_FoldableContainer_theme_style_panel>`                                             |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`title_collapsed_hover_panel<class_FoldableContainer_theme_style_title_collapsed_hover_panel>` |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`title_collapsed_panel<class_FoldableContainer_theme_style_title_collapsed_panel>`             |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`title_hover_panel<class_FoldableContainer_theme_style_title_hover_panel>`                     |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>`       | :ref:`title_panel<class_FoldableContainer_theme_style_title_panel>`                                 |                                   |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_FoldableContainer_signal_folding_changed:

.. rst-class:: classref-signal

**folding_changed**\ (\ is_folded\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_FoldableContainer_signal_folding_changed>`

容器折疊/展開時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_FoldableContainer_TitlePosition:

.. rst-class:: classref-enumeration

enum **TitlePosition**: :ref:`🔗<enum_FoldableContainer_TitlePosition>`

.. _class_FoldableContainer_constant_POSITION_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **POSITION_TOP** = ``0``

標題出現在容器頂部。

.. _class_FoldableContainer_constant_POSITION_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **POSITION_BOTTOM** = ``1``

標題出現在容器底部。同時會讓所有 StyleBox 垂直翻轉。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_FoldableContainer_property_foldable_group:

.. rst-class:: classref-property

:ref:`FoldableGroup<class_FoldableGroup>` **foldable_group** :ref:`🔗<class_FoldableContainer_property_foldable_group>`

.. rst-class:: classref-property-setget

- |void| **set_foldable_group**\ (\ value\: :ref:`FoldableGroup<class_FoldableGroup>`\ )
- :ref:`FoldableGroup<class_FoldableGroup>` **get_foldable_group**\ (\ )

與容器關聯的 :ref:`FoldableGroup<class_FoldableGroup>`\ 。多個 **FoldableContainer** 節點具有相同的分組時，只允許有一個處於展開狀態。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_folded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **folded** = ``false`` :ref:`🔗<class_FoldableContainer_property_folded>`

.. rst-class:: classref-property-setget

- |void| **set_folded**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_folded**\ (\ )

如果設為 ``true``\ ，該容器將會被折疊，並隱藏其所有子節點。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_FoldableContainer_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

語言程式碼，用於文字塑形算法。如果留空則使用目前區域設定。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title:

.. rst-class:: classref-property

:ref:`String<class_String>` **title** = ``""`` :ref:`🔗<class_FoldableContainer_property_title>`

.. rst-class:: classref-property-setget

- |void| **set_title**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_title**\ (\ )

容器的標題文字。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **title_alignment** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_title_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_title_alignment**\ (\ )

標題的水平文字對齊方式。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_position:

.. rst-class:: classref-property

:ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **title_position** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_position>`

.. rst-class:: classref-property-setget

- |void| **set_title_position**\ (\ value\: :ref:`TitlePosition<enum_FoldableContainer_TitlePosition>`\ )
- :ref:`TitlePosition<enum_FoldableContainer_TitlePosition>` **get_title_position**\ (\ )

標題的位置。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **title_text_direction** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_title_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_title_text_direction**\ (\ )

標題的文字書寫方向。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_property_title_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **title_text_overrun_behavior** = ``0`` :ref:`🔗<class_FoldableContainer_property_title_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_title_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_title_text_overrun_behavior**\ (\ )

定義標題在文字比可用空間更長時的行為。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_FoldableContainer_method_add_title_bar_control:

.. rst-class:: classref-method

|void| **add_title_bar_control**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_FoldableContainer_method_add_title_bar_control>`

新增放置在容器標題旁的 :ref:`Control<class_Control>`\ ，遮擋可點選區域。主要用途是新增 :ref:`Button<class_Button>` 節點，但可以是任何 :ref:`Control<class_Control>`\ 。

控制項會被新增為該容器的子節點，必要時會從之前的父節點中移除。這些控制項是右對齊的，最先新增的控制項位於最左側。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_expand:

.. rst-class:: classref-method

|void| **expand**\ (\ ) :ref:`🔗<class_FoldableContainer_method_expand>`

展開容器，發出 :ref:`folding_changed<class_FoldableContainer_signal_folding_changed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_fold:

.. rst-class:: classref-method

|void| **fold**\ (\ ) :ref:`🔗<class_FoldableContainer_method_fold>`

折疊容器，發出 :ref:`folding_changed<class_FoldableContainer_signal_folding_changed>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_get_title_bar_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_title_bar_control**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_FoldableContainer_method_get_title_bar_control>`

Returns the title bar :ref:`Control<class_Control>` at the given ``index``, or ``null`` if the index is out of bounds.

Use :ref:`get_title_bar_control_count()<class_FoldableContainer_method_get_title_bar_control_count>` to get the total number of title bar controls.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_get_title_bar_control_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_title_bar_control_count**\ (\ ) |const| :ref:`🔗<class_FoldableContainer_method_get_title_bar_control_count>`

Returns the number of controls added to the title bar via :ref:`add_title_bar_control()<class_FoldableContainer_method_add_title_bar_control>`.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_method_remove_title_bar_control:

.. rst-class:: classref-method

|void| **remove_title_bar_control**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_FoldableContainer_method_remove_title_bar_control>`

移除使用 :ref:`add_title_bar_control()<class_FoldableContainer_method_add_title_bar_control>` 新增的 :ref:`Control<class_Control>`\ 。該節點不會自動釋放，你需要使用 :ref:`Node.queue_free()<class_Node_method_queue_free>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_FoldableContainer_theme_color_collapsed_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **collapsed_font_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_collapsed_font_color>`

折疊時的標題字型顏色。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_font_color>`

展開時的標題字型顏色。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_font_outline_color>`

標題字型輪廓顏色。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_color_hover_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **hover_font_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_FoldableContainer_theme_color_hover_font_color>`

標題字型懸停顏色。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``2`` :ref:`🔗<class_FoldableContainer_theme_constant_h_separation>`

標題的圖示和文字之間以及標題欄控制項之間的水平間距。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_constant_icon_max_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **icon_max_width** = ``0`` :ref:`🔗<class_FoldableContainer_theme_constant_icon_max_width>`

The maximum allowed width of the **FoldableContainer**'s icon. The height is adjusted according to the icon's ratio.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_FoldableContainer_theme_constant_outline_size>`

標題字型輪廓大小。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_FoldableContainer_theme_font_font>`

標題字型。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_FoldableContainer_theme_font_size_font_size>`

標題字型大小。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_expanded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **expanded_arrow** :ref:`🔗<class_FoldableContainer_theme_icon_expanded_arrow>`

展開時使用的標題圖示。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_expanded_arrow_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **expanded_arrow_mirrored** :ref:`🔗<class_FoldableContainer_theme_icon_expanded_arrow_mirrored>`

展開時使用的標題圖示（用於底部標題）。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_folded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folded_arrow** :ref:`🔗<class_FoldableContainer_theme_icon_folded_arrow>`

折疊時使用的標題圖示（用於從左至右版面配置）。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_icon_folded_arrow_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folded_arrow_mirrored** :ref:`🔗<class_FoldableContainer_theme_icon_folded_arrow_mirrored>`

展開時使用的標題圖示（用於從右至左版面配置）。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_sound_expanded_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **expanded_sound** :ref:`🔗<class_FoldableContainer_theme_sound_expanded_sound>`

Played when the container is expanded with any input method.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_sound_focus_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **focus_sound** :ref:`🔗<class_FoldableContainer_theme_sound_focus_sound>`

Played when this **FoldableContainer** receives keyboard or gamepad-induced focus. Mouse or touch-induced focus does not play a focus sound.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_sound_folded_sound:

.. rst-class:: classref-themeproperty

:ref:`AudioStream<class_AudioStream>` **folded_sound** :ref:`🔗<class_FoldableContainer_theme_sound_folded_sound>`

Played when the container is folded with any input method.

\ **Note:** This does not play if the container is folded as a result of being part of a :ref:`FoldableGroup<class_FoldableGroup>` and another container in the same group was expanded.

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_FoldableContainer_theme_style_focus>`

**FoldableContainer** 擁有 GUI 焦點時使用的背景。\ :ref:`focus<class_FoldableContainer_theme_style_focus>` :ref:`StyleBox<class_StyleBox>` 顯示在基礎 :ref:`StyleBox<class_StyleBox>` *之上*\ ，所以應該使用部分透明的 :ref:`StyleBox<class_StyleBox>`\ ，確保基礎 :ref:`StyleBox<class_StyleBox>` 仍然可見。代表輪廓或底線的 :ref:`StyleBox<class_StyleBox>` 可以很好地實現這個目的。要停用聚焦的視覺效果，請指定 :ref:`StyleBoxEmpty<class_StyleBoxEmpty>` 資源。請注意，停用聚焦的視覺效果會影響使用鍵盤/控制器進行導航的可用性，所以出於無障礙存取的原因，不建議這樣做。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_FoldableContainer_theme_style_panel>`

**FoldableContainer** 的預設背景。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_collapsed_hover_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_collapsed_hover_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_collapsed_hover_panel>`

處於折疊狀態下，滑鼠游標進入標題區域時使用的背景。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_collapsed_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_collapsed_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_collapsed_panel>`

處於折疊狀態下，\ **FoldableContainer** 標題的預設背景。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_hover_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_hover_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_hover_panel>`

處於展開狀態下，滑鼠游標進入標題區域時使用的背景。

.. rst-class:: classref-item-separator

----

.. _class_FoldableContainer_theme_style_title_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **title_panel** :ref:`🔗<class_FoldableContainer_theme_style_title_panel>`

處於展開狀態下，\ **FoldableContainer** 標題的預設背景。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
