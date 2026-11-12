:github_url: hide

.. _class_ScrollContainer:

ScrollContainer
===============

**繼承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`EditorInspector<class_EditorInspector>`

需要時能夠為子控制項提供捲軸的容器。

.. rst-class:: classref-introduction-group

說明
----

用於在需要時為子控制項提供捲軸的容器。捲軸會自動繪製在右側（垂直捲動條）或底部（水平捲軸），拖動捲軸能夠移動 ScrollContainer 中的可見 Control（及其子項）。捲軸會根據該 Control 的 :ref:`Control.custom_minimum_size<class_Control_property_custom_minimum_size>` 相對於 ScrollContainer 的大小自動調整抓取器的大小。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用容器 <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

屬性
----

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

方法
----

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

主題屬性
--------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`scroll_hint_horizontal_color<class_ScrollContainer_theme_color_scroll_hint_horizontal_color>` | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`scroll_hint_vertical_color<class_ScrollContainer_theme_color_scroll_hint_vertical_color>`     | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`scrollbar_h_separation<class_ScrollContainer_theme_constant_scrollbar_h_separation>`          | ``0``                 |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`scrollbar_margin_bottom<class_ScrollContainer_theme_constant_scrollbar_margin_bottom>`        | ``-1``                |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`scrollbar_margin_left<class_ScrollContainer_theme_constant_scrollbar_margin_left>`            | ``-1``                |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`scrollbar_margin_right<class_ScrollContainer_theme_constant_scrollbar_margin_right>`          | ``-1``                |
   +-----------------------------------+-----------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`scrollbar_margin_top<class_ScrollContainer_theme_constant_scrollbar_margin_top>`              | ``-1``                |
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

訊號
----

.. _class_ScrollContainer_signal_scroll_ended:

.. rst-class:: classref-signal

**scroll_ended**\ (\ ) :ref:`🔗<class_ScrollContainer_signal_scroll_ended>`

使用觸控事件\ *拖動可捲動區域*\ 時捲動停止時發出。拖動捲動條時\ *不會*\ 發出此訊號，使用滑鼠滾輪捲動或使用鍵盤/遊戲手把事件捲動。

\ **注意：**\ 此訊號僅在啟用 :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` 時在 Android 或 iOS 或桌面/Web 平台上發出。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_signal_scroll_started:

.. rst-class:: classref-signal

**scroll_started**\ (\ ) :ref:`🔗<class_ScrollContainer_signal_scroll_started>`

透過觸控事件\ *拖動可捲動區域*\ 時開始捲動時發出。拖動捲動條時\ *不會*\ 發出此訊號，使用滑鼠滾輪捲動或使用鍵盤/遊戲手把事件捲動。

\ **注意：**\ 此訊號僅在啟用 :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` 時在 Android 或 iOS 或桌面/Web 平台上發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_ScrollContainer_ScrollMode:

.. rst-class:: classref-enumeration

enum **ScrollMode**: :ref:`🔗<enum_ScrollContainer_ScrollMode>`

.. _class_ScrollContainer_constant_SCROLL_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_DISABLED** = ``0``

停用捲動，捲軸不可見。

.. _class_ScrollContainer_constant_SCROLL_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_AUTO** = ``1``

啟用捲動，捲軸僅在需要時可見，即容器的內容比容器大時。

.. _class_ScrollContainer_constant_SCROLL_MODE_SHOW_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_SHOW_ALWAYS** = ``2``

啟用捲動，捲軸始終可見。

.. _class_ScrollContainer_constant_SCROLL_MODE_SHOW_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_SHOW_NEVER** = ``3``

啟用捲動，捲軸隱藏。

.. _class_ScrollContainer_constant_SCROLL_MODE_RESERVE:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_RESERVE** = ``4``

:ref:`SCROLL_MODE_AUTO<class_ScrollContainer_constant_SCROLL_MODE_AUTO>` 和 :ref:`SCROLL_MODE_SHOW_ALWAYS<class_ScrollContainer_constant_SCROLL_MODE_SHOW_ALWAYS>` 的結合。僅在必要時顯示捲動條，但是會按照捲動條始終顯示來調整內容的大小。適合需要保證無論捲動條是否可見，內容大小都保持一致的場合。

.. _class_ScrollContainer_constant_SCROLL_MODE_MAXIMIZE_FIRST:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **SCROLL_MODE_MAXIMIZE_FIRST** = ``5``

其行為類似於 :ref:`SCROLL_MODE_AUTO<class_ScrollContainer_constant_SCROLL_MODE_AUTO>`\ ，但會使 **ScrollContainer** 根據其內容報告一個最小尺寸（受對應軸向上設定的 :ref:`Control.custom_maximum_size<class_Control_property_custom_maximum_size>` 限制）。這允許容器優先擴充自身，僅在空間受限時才開始出現捲動條。

.. rst-class:: classref-item-separator

----

.. _enum_ScrollContainer_ScrollHintMode:

.. rst-class:: classref-enumeration

enum **ScrollHintMode**: :ref:`🔗<enum_ScrollContainer_ScrollHintMode>`

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_DISABLED** = ``0``

捲動提示將永遠不會顯示。

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_ALL** = ``1``

捲動提示將顯示在頂部和底部（如果是垂直的），或左側和右側（如果是水平的）。

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_TOP_AND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_TOP_AND_LEFT** = ``2``

捲動提示將顯示在頂部（如果是垂直的），或左側（如果是水平的）。

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_BOTTOM_AND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_BOTTOM_AND_RIGHT** = ``3``

捲動提示將顯示在底部（如果是水平的），或右側（如果是垂直的）。

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_TOP_AND_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_TOP_AND_BOTTOM** = ``4``

捲動提示將顯示在頂部和底部。

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_LEFT_AND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_LEFT_AND_RIGHT** = ``5``

Scroll hints will be shown on the left and right.

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_TOP** = ``6``

Scroll hint will be shown at the top.

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_BOTTOM** = ``7``

Scroll hint will be shown at the bottom.

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_LEFT** = ``8``

Scroll hint will be shown on the left.

.. _class_ScrollContainer_constant_SCROLL_HINT_MODE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **SCROLL_HINT_MODE_RIGHT** = ``9``

Scroll hint will be shown on the right.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_ScrollContainer_property_draw_focus_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_focus_border** = ``false`` :ref:`🔗<class_ScrollContainer_property_draw_focus_border>`

.. rst-class:: classref-property-setget

- |void| **set_draw_focus_border**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_focus_border**\ (\ )

如果為 ``true``\ ，則當 ScrollContainer 或其子節點獲得焦點時會繪製 :ref:`focus<class_ScrollContainer_theme_style_focus>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_follow_focus:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_focus** = ``false`` :ref:`🔗<class_ScrollContainer_property_follow_focus>`

.. rst-class:: classref-property-setget

- |void| **set_follow_focus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_following_focus**\ (\ )

如果為 ``true``\ ，則 ScrollContainer 將自動捲動到獲得焦點的子項（包括間接子項）以確保它們完全可見。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_horizontal_scroll_mode:

.. rst-class:: classref-property

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **horizontal_scroll_mode** = ``1`` :ref:`🔗<class_ScrollContainer_property_horizontal_scroll_mode>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_scroll_mode**\ (\ value\: :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`\ )
- :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **get_horizontal_scroll_mode**\ (\ )

控制水平捲動條是否可用、應該何時可見。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_deadzone:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_deadzone** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_deadzone>`

.. rst-class:: classref-property-setget

- |void| **set_deadzone**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_deadzone**\ (\ )

觸摸捲動的死區。較低的死區使捲動更加敏感。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_hint_mode:

.. rst-class:: classref-property

:ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **scroll_hint_mode** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_hint_mode>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_hint_mode**\ (\ value\: :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>`\ )
- :ref:`ScrollHintMode<enum_ScrollContainer_ScrollHintMode>` **get_scroll_hint_mode**\ (\ )

The way which scroll hints (indicators that show that the content can still be scrolled in a certain direction) will be shown.

\ **Note:** Modes with perpendicular hints won't be shown if the content can be scrolled both vertically and horizontally.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_horizontal** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_scroll**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_h_scroll**\ (\ )

目前的水平捲動值。

\ **注意：**\ 如果在 :ref:`Node._ready()<class_Node_private_method__ready>` 函式或之前設定該值，則需要用 :ref:`Object.set_deferred()<class_Object_method_set_deferred>` 包裹，因為捲軸的 :ref:`Range.max_value<class_Range_property_max_value>` 此時尚未初始化。

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

如果設定為 ``true``\ ，滑鼠滾輪將水平捲動檢視，而按住 :kbd:`Shift` 鍵則進行垂直捲動。

如果設定為 ``false``\ （預設），滑鼠滾輪將垂直捲動檢視，而按住 :kbd:`Shift` 鍵則進行水平捲動。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_horizontal_custom_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **scroll_horizontal_custom_step** = ``-1.0`` :ref:`🔗<class_ScrollContainer_property_scroll_horizontal_custom_step>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_custom_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_horizontal_custom_step**\ (\ )

覆蓋點選內部捲軸的水平增減按鈕或 :ref:`ScrollBar<class_ScrollBar>` 處於聚焦狀態下使用方向鍵時使用的 :ref:`ScrollBar.custom_step<class_ScrollBar_property_custom_step>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_scroll_vertical:

.. rst-class:: classref-property

:ref:`int<class_int>` **scroll_vertical** = ``0`` :ref:`🔗<class_ScrollContainer_property_scroll_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_scroll**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_v_scroll**\ (\ )

目前的垂直捲動值。

\ **注意：**\ 與 :ref:`scroll_horizontal<class_ScrollContainer_property_scroll_horizontal>` 一樣，最初設定時需要進行延遲。

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

覆蓋點選內部捲軸的垂直增減按鈕或 :ref:`ScrollBar<class_ScrollBar>` 處於聚焦狀態下使用方向鍵時使用的 :ref:`ScrollBar.custom_step<class_ScrollBar_property_custom_step>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_tile_scroll_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tile_scroll_hint** = ``false`` :ref:`🔗<class_ScrollContainer_property_tile_scroll_hint>`

.. rst-class:: classref-property-setget

- |void| **set_tile_scroll_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_scroll_hint_tiled**\ (\ )

如果為 ``true``\ ，則捲動提示紋理將平鋪而不是拉伸。見 :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_property_vertical_scroll_mode:

.. rst-class:: classref-property

:ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **vertical_scroll_mode** = ``1`` :ref:`🔗<class_ScrollContainer_property_vertical_scroll_mode>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_scroll_mode**\ (\ value\: :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>`\ )
- :ref:`ScrollMode<enum_ScrollContainer_ScrollMode>` **get_vertical_scroll_mode**\ (\ )

控制垂直捲動條是否可用、應該何時可見。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_ScrollContainer_method_ensure_control_visible:

.. rst-class:: classref-method

|void| **ensure_control_visible**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_ScrollContainer_method_ensure_control_visible>`

確保給定的 ``control`` 控制項可見（必須是 ScrollContainer 的直接或間接子節點）。會被 :ref:`follow_focus<class_ScrollContainer_property_follow_focus>` 使用。

\ **注意：**\ 這不適用於在同一影格內剛剛新增的節點。如果想捲動到一個新新增的子節點，就必須使用 :ref:`SceneTree.process_frame<class_SceneTree_signal_process_frame>` 等待至下一影格：

::

    add_child(child_node)
    await get_tree().process_frame
    ensure_control_visible(child_node)

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_method_get_h_scroll_bar:

.. rst-class:: classref-method

:ref:`HScrollBar<class_HScrollBar>` **get_h_scroll_bar**\ (\ ) :ref:`🔗<class_ScrollContainer_method_get_h_scroll_bar>`

返回該 **ScrollContainer** 的水平捲軸 :ref:`HScrollBar<class_HScrollBar>`\ 。

\ **警告：**\ 這是一個必要的內部節點，移除和釋放它可能會導致當機。如果你想停用或隱藏捲軸，可以使用 :ref:`horizontal_scroll_mode<class_ScrollContainer_property_horizontal_scroll_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_method_get_v_scroll_bar:

.. rst-class:: classref-method

:ref:`VScrollBar<class_VScrollBar>` **get_v_scroll_bar**\ (\ ) :ref:`🔗<class_ScrollContainer_method_get_v_scroll_bar>`

返回該 **ScrollContainer** 的垂直捲動條 :ref:`VScrollBar<class_VScrollBar>`\ 。

\ **警告：**\ 這是一個必要的內部節點，移除和釋放它可能會導致當機。如果你想停用或隱藏捲軸，可以使用 :ref:`vertical_scroll_mode<class_ScrollContainer_property_vertical_scroll_mode>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_ScrollContainer_theme_color_scroll_hint_horizontal_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **scroll_hint_horizontal_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ScrollContainer_theme_color_scroll_hint_horizontal_color>`

用於調制 :ref:`scroll_hint_horizontal<class_ScrollContainer_theme_icon_scroll_hint_horizontal>` 紋理的 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_color_scroll_hint_vertical_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **scroll_hint_vertical_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ScrollContainer_theme_color_scroll_hint_vertical_color>`

用於調制 :ref:`scroll_hint_vertical<class_ScrollContainer_theme_icon_scroll_hint_vertical>` 紋理的 :ref:`Color<class_Color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_h_separation** = ``0`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_h_separation>`

ScrollContainer 的垂直捲動條與其內容之間的間距，單位為像素。如果內容的最小大小大於 ScrollContainer 的大小，則不會新增任何間距。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_margin_bottom:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_margin_bottom** = ``-1`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_margin_bottom>`

The bottom margin of the horizontal scrollbar. When negative, uses :ref:`panel<class_ScrollContainer_theme_style_panel>`'s bottom margin.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_margin_left:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_margin_left** = ``-1`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_margin_left>`

The left margin of the horizontal scrollbar. When negative, uses :ref:`panel<class_ScrollContainer_theme_style_panel>`'s left margin.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_margin_right:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_margin_right** = ``-1`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_margin_right>`

The right margin of the horizontal scrollbar. When negative, uses :ref:`panel<class_ScrollContainer_theme_style_panel>`'s right margin.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_margin_top:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_margin_top** = ``-1`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_margin_top>`

The top margin of the horizontal scrollbar. When negative, uses :ref:`panel<class_ScrollContainer_theme_style_panel>`'s top margin.

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_constant_scrollbar_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **scrollbar_v_separation** = ``0`` :ref:`🔗<class_ScrollContainer_theme_constant_scrollbar_v_separation>`

ScrollContainer 的水平捲動條與其內容之間的間距，單位為像素。如果內容的最小大小大於 ScrollContainer 的大小，則不會新增任何間距。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_icon_scroll_hint_horizontal:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **scroll_hint_horizontal** :ref:`🔗<class_ScrollContainer_theme_icon_scroll_hint_horizontal>`

當內容仍可水平捲動時將顯示的指示器。請參閱 :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_icon_scroll_hint_vertical:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **scroll_hint_vertical** :ref:`🔗<class_ScrollContainer_theme_icon_scroll_hint_vertical>`

當內容仍可垂直捲動時將顯示的指示器。請參閱 :ref:`scroll_hint_mode<class_ScrollContainer_property_scroll_hint_mode>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_ScrollContainer_theme_style_focus>`

**ScrollContainer** 的聚焦邊框 :ref:`StyleBox<class_StyleBox>`\ 。僅在 :ref:`draw_focus_border<class_ScrollContainer_property_draw_focus_border>` 為 ``true`` 時使用。

.. rst-class:: classref-item-separator

----

.. _class_ScrollContainer_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_ScrollContainer_theme_style_panel>`

**ScrollContainer** 的背景 :ref:`StyleBox<class_StyleBox>`\ 。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
