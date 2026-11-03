:github_url: hide

.. _class_SplitContainer:

SplitContainer
==============

**繼承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`HSplitContainer<class_HSplitContainer>`, :ref:`VSplitContainer<class_VSplitContainer>`

將兩個子控制項垂直或水平排列的容器，提供了用於調整它們之間分隔比例的抓取器。

.. rst-class:: classref-introduction-group

說明
----

用於水平或垂直排列子控制項的容器，還會在它們之間建立抓取器。可以拖動抓取器來改變子控制項之間的大小關係。

.. rst-class:: classref-introduction-group

教學
----

- :doc:`使用容器 <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`collapsed<class_SplitContainer_property_collapsed>`                                         | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`drag_area_highlight_in_editor<class_SplitContainer_property_drag_area_highlight_in_editor>` | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`drag_area_margin_begin<class_SplitContainer_property_drag_area_margin_begin>`               | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`drag_area_margin_end<class_SplitContainer_property_drag_area_margin_end>`                   | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`drag_area_offset<class_SplitContainer_property_drag_area_offset>`                           | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`drag_nested_intersections<class_SplitContainer_property_drag_nested_intersections>`         | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` | :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>`                       | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>`                           | ``true``                |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                           | :ref:`split_offset<class_SplitContainer_property_split_offset>`                                   | ``0``                   |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                 | :ref:`split_offsets<class_SplitContainer_property_split_offsets>`                                 | ``PackedInt32Array(0)`` |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>`                 | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`vertical<class_SplitContainer_property_vertical>`                                           | ``false``               |
   +-----------------------------------------------------------------+---------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                     | :ref:`clamp_split_offset<class_SplitContainer_method_clamp_split_offset>`\ (\ priority_index\: :ref:`int<class_int>` = 0\ ) |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`                              | :ref:`get_drag_area_control<class_SplitContainer_method_get_drag_area_control>`\ (\ )                                       |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Control<class_Control>`\] | :ref:`get_drag_area_controls<class_SplitContainer_method_get_drag_area_controls>`\ (\ )                                     |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

主題屬性
--------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`         | :ref:`touch_dragger_color<class_SplitContainer_theme_color_touch_dragger_color>`                 | ``Color(1, 1, 1, 0.3)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`         | :ref:`touch_dragger_hover_color<class_SplitContainer_theme_color_touch_dragger_hover_color>`     | ``Color(1, 1, 1, 0.6)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`         | :ref:`touch_dragger_pressed_color<class_SplitContainer_theme_color_touch_dragger_pressed_color>` | ``Color(1, 1, 1, 1)``   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`             | :ref:`autohide<class_SplitContainer_theme_constant_autohide>`                                    | ``1``                   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`             | :ref:`minimum_grab_thickness<class_SplitContainer_theme_constant_minimum_grab_thickness>`        | ``6``                   |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`             | :ref:`separation<class_SplitContainer_theme_constant_separation>`                                | ``12``                  |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`grabber<class_SplitContainer_theme_icon_grabber>`                                          |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>`                                      |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`h_touch_dragger<class_SplitContainer_theme_icon_h_touch_dragger>`                          |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`touch_dragger<class_SplitContainer_theme_icon_touch_dragger>`                              |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>`                                      |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`v_touch_dragger<class_SplitContainer_theme_icon_v_touch_dragger>`                          |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>`               |                         |
   +-----------------------------------+--------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_SplitContainer_signal_drag_ended:

.. rst-class:: classref-signal

**drag_ended**\ (\ ) :ref:`🔗<class_SplitContainer_signal_drag_ended>`

使用者結束拖動時發出。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_signal_drag_started:

.. rst-class:: classref-signal

**drag_started**\ (\ ) :ref:`🔗<class_SplitContainer_signal_drag_started>`

使用者開始拖動時發出。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_signal_dragged:

.. rst-class:: classref-signal

**dragged**\ (\ offset\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplitContainer_signal_dragged>`

當使用者拖動任意拖動器時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_SplitContainer_DraggerVisibility:

.. rst-class:: classref-enumeration

enum **DraggerVisibility**: :ref:`🔗<enum_SplitContainer_DraggerVisibility>`

.. _class_SplitContainer_constant_DRAGGER_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_VISIBLE** = ``0``

當 :ref:`autohide<class_SplitContainer_theme_constant_autohide>` 為 ``false`` 時，拆分拖動器始終可見，否則僅在滑鼠在拖動器上懸停時可見。

抓取器圖示的大小決定了最小間隔 :ref:`separation<class_SplitContainer_theme_constant_separation>`\ 。

抓取器圖示如果比拆分條長，就會自動隱藏。

.. _class_SplitContainer_constant_DRAGGER_HIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_HIDDEN** = ``1``

拆分拖動器圖示始終不可見，無視 :ref:`autohide<class_SplitContainer_theme_constant_autohide>` 的值。

抓取器圖示的大小決定了最小間隔 :ref:`separation<class_SplitContainer_theme_constant_separation>`\ 。

.. _class_SplitContainer_constant_DRAGGER_HIDDEN_COLLAPSED:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_HIDDEN_COLLAPSED** = ``2``

拆分拖動器圖示不可見，拆分條粗細折疊為零。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_SplitContainer_property_collapsed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collapsed** = ``false`` :ref:`🔗<class_SplitContainer_property_collapsed>`

.. rst-class:: classref-property-setget

- |void| **set_collapsed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collapsed**\ (\ )

如果為 ``true``\ ，則會停用拖動器，子節點會根據所有 :ref:`split_offsets<class_SplitContainer_property_split_offsets>` 都為 ``0`` 時的情況來調整大小。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_highlight_in_editor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_area_highlight_in_editor** = ``false`` :ref:`🔗<class_SplitContainer_property_drag_area_highlight_in_editor>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_highlight_in_editor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_area_highlight_in_editor_enabled**\ (\ )

醒目標示拖動區域 :ref:`Rect2<class_Rect2>`\ ，便於在開發時查看位置。\ :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>` 為 ``true`` 時拖動區域為金色，為 ``false`` 時則為紅色。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_margin_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_margin_begin** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_margin_begin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_margin_begin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_margin_begin**\ (\ )

減少可拖動區域和拆分條 :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>` 在容器起始側的大小。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_margin_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_margin_end** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_margin_end>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_margin_end**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_margin_end**\ (\ )

減少可拖動區域和拆分條 :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>` 在容器結尾側的大小。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_offset** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_offset**\ (\ )

將拖動區域在容器軸向上進行偏移，防止拖動區域與 :ref:`ScrollBar<class_ScrollBar>` 或其他子節點的可選中 :ref:`Control<class_Control>` 發生重疊。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_nested_intersections:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_nested_intersections** = ``false`` :ref:`🔗<class_SplitContainer_property_drag_nested_intersections>`

.. rst-class:: classref-property-setget

- |void| **set_drag_nested_intersections**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dragging_nested_intersections**\ (\ )

在兩個 SplitContainer 的拖動器交界處新增額外的拖動器，以允許同時拖動兩者。必須將兩個 SplitContainer 的該屬性都設定為 ``true``\ ，且其中一個必須是另一個的子節點（後代）。它們還必須是正交的（它們的 :ref:`vertical<class_SplitContainer_property_vertical>` 屬性不同），並且後代節點必須緊鄰祖先節點的至少一個拖動器（在 :ref:`minimum_grab_thickness<class_SplitContainer_theme_constant_minimum_grab_thickness>` 範圍內）。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_dragger_visibility:

.. rst-class:: classref-property

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **dragger_visibility** = ``0`` :ref:`🔗<class_SplitContainer_property_dragger_visibility>`

.. rst-class:: classref-property-setget

- |void| **set_dragger_visibility**\ (\ value\: :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>`\ )
- :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **get_dragger_visibility**\ (\ )

決定拖動器是否可見。該屬性無法決定拖動器是否啟用，這一需求請使用 :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_dragging_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dragging_enabled** = ``true`` :ref:`🔗<class_SplitContainer_property_dragging_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dragging_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dragging_enabled**\ (\ )

啟用或停用拆分拖動。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_split_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **split_offset** = ``0`` :ref:`🔗<class_SplitContainer_property_split_offset>`

.. rst-class:: classref-property-setget

- |void| **set_split_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_split_offset**\ (\ )

**已棄用：** Use :ref:`split_offsets<class_SplitContainer_property_split_offsets>` instead. The first element of the array is the split offset between the first two children.

:ref:`split_offsets<class_SplitContainer_property_split_offsets>` 的第一個元素。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_split_offsets:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **split_offsets** = ``PackedInt32Array(0)`` :ref:`🔗<class_SplitContainer_property_split_offsets>`

.. rst-class:: classref-property-setget

- |void| **set_split_offsets**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_split_offsets**\ (\ )

每個拖動器的偏移量，單位為像素。每個都是拖動器前後 :ref:`Control<class_Control>` 節點分割的偏移量，\ ``0`` 為預設位置。預設位置基於 :ref:`Control<class_Control>` 節點的擴充標誌和最小大小。請參閱 :ref:`Control.size_flags_horizontal<class_Control_property_size_flags_horizontal>`\ 、\ :ref:`Control.size_flags_vertical<class_Control_property_size_flags_vertical>` 和 :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`\ 。

如果拖動器前面的所有 :ref:`Control<class_Control>` 節點都沒有擴充，則預設位置位於 **SplitContainer** 的起始位置。如果拖動器後面的所有 :ref:`Control<class_Control>` 節點都沒有擴充，則預設位置位於 **SplitContainer** 的末尾。如果拖動器位於兩個已擴充的 :ref:`Control<class_Control>` 節點之間，則預設位置將位於中間，具體位置取決於 :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>` 和最小大小。

\ **注意：**\ 如果分割偏移量導致 :ref:`Control<class_Control>` 節點重疊，則在確定位置時將優先使用第一個分割。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_touch_dragger_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **touch_dragger_enabled** = ``false`` :ref:`🔗<class_SplitContainer_property_touch_dragger_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_touch_dragger_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_touch_dragger_enabled**\ (\ )

如果為 ``true``\ ，則會啟用適合觸控的拖動控點，方便在小尺寸螢幕上使用。與標準抓取器不同，這個拖動控點與 **SplitContainer** 的子節點存在重疊，不會影響它們的最小間隔。啟用該選項時不再繪製標準抓取器。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_SplitContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

如果為 ``true``\ ，則該 **SplitContainer** 會垂直排列其子代，而不是水平排列。

在使用 :ref:`HSplitContainer<class_HSplitContainer>` 和 :ref:`VSplitContainer<class_VSplitContainer>` 時無法改變。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_SplitContainer_method_clamp_split_offset:

.. rst-class:: classref-method

|void| **clamp_split_offset**\ (\ priority_index\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SplitContainer_method_clamp_split_offset>`

鉗制 :ref:`split_offsets<class_SplitContainer_property_split_offsets>` 的值以確保它們位於有效範圍內且彼此不重疊。重疊時該方法會通過將所有重疊的分割偏移量鉗制到該範圍，以優先考慮某個分割偏移量（位於索引 ``priority_index`` 處）。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_method_get_drag_area_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_drag_area_control**\ (\ ) :ref:`🔗<class_SplitContainer_method_get_drag_area_control>`

**已棄用：** Use the first element of :ref:`get_drag_area_controls()<class_SplitContainer_method_get_drag_area_controls>` instead.

回傳拖動區域 :ref:`Control<class_Control>`\ 。例如你可以把一個預先設定好的按鈕放到拖動區域 :ref:`Control<class_Control>` 中，這樣這個按鈕就會跟隨拆分條移動。呼叫 ``reparent()`` 前請嘗試將 :ref:`Button<class_Button>` 的錨點設定為 ``center``\ 。

::

    $BarnacleButton.reparent($SplitContainer.get_drag_area_control())

\ **注意：**\ 拖動區域 :ref:`Control<class_Control>` 繪製在 **SplitContainer** 的子節點之上，因此 :ref:`Control<class_Control>` 呼叫 :ref:`CanvasItem<class_CanvasItem>` 繪製方法所繪製的內容和新增至 :ref:`Control<class_Control>` 的子節點也會顯示在 **SplitContainer** 的子節點之上。如果需要阻止滑鼠拖動，請嘗試將自訂子節點的 :ref:`Control.mouse_filter<class_Control_property_mouse_filter>` 設定為 :ref:`Control.MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`\ 。

\ **警告：**\ 這是必要的內部節點，將其移除或釋放都可能造成崩潰。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_method_get_drag_area_controls:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Control<class_Control>`\] **get_drag_area_controls**\ (\ ) :ref:`🔗<class_SplitContainer_method_get_drag_area_controls>`

回傳拖動區域 :ref:`Control<class_Control>` 的 :ref:`Array<class_Array>`\ 。這些是每個子節點之間可互動的 :ref:`Control<class_Control>` 節點。例如，可以使用該方法將預設定的按鈕新增到拖動區域 :ref:`Control<class_Control>`\ ，使其隨分割條一起移動。嘗試在呼叫 :ref:`Node.reparent()<class_Node_method_reparent>` 之前將 :ref:`Button<class_Button>` 的錨點設定為 ``center``\ 。

::

    $BarnacleButton.reparent($SplitContainer.get_drag_area_controls()[0])

\ **注意：**\ 拖動區域 :ref:`Control<class_Control>` 繪製在 **SplitContainer** 的子級之上，因此從拖動區域呼叫的 :ref:`CanvasItem<class_CanvasItem>` 繪製物件以及新增到它的子物件也會出現在 **SplitContainer** 的子級之上。如果需要，可以嘗試將自訂子級的 :ref:`Control.mouse_filter<class_Control_property_mouse_filter>` 設定為 :ref:`Control.MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` 以防止阻止滑鼠拖動。

\ **警告：**\ 這些是必要的內部節點，將其移除或釋放都可能造成崩潰。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主題屬性說明
------------

.. _class_SplitContainer_theme_color_touch_dragger_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_color** = ``Color(1, 1, 1, 0.3)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_color>`

觸摸拖動器的顏色。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_color_touch_dragger_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_hover_color** = ``Color(1, 1, 1, 0.6)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_hover_color>`

觸摸拖動器懸停狀態的顏色。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_color_touch_dragger_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_pressed_color>`

觸摸拖動器按下狀態的顏色。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_autohide:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **autohide** = ``1`` :ref:`🔗<class_SplitContainer_theme_constant_autohide>`

布林值。如果為 ``1``\ （\ ``true``\ ），則當抓取器不在游標下方時會自動隱藏。如果為 ``0``\ （\ ``false``\ ），則抓取器始終可見。\ :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` 必須設定為 :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_minimum_grab_thickness:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **minimum_grab_thickness** = ``6`` :ref:`🔗<class_SplitContainer_theme_constant_minimum_grab_thickness>`

拆分條上使用者可點選抓取區域的最小厚度。能夠確保拆分條在 :ref:`separation<class_SplitContainer_theme_constant_separation>` 或 :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` / :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` 過窄、難以選中時仍然可以拖動。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``12`` :ref:`🔗<class_SplitContainer_theme_constant_separation>`

拆分條的粗細，即容器中每個子節點的間隙。如果 :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` 為 :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>` 或者為 :ref:`DRAGGER_HIDDEN<class_SplitContainer_constant_DRAGGER_HIDDEN>` 的同時 :ref:`separation<class_SplitContainer_theme_constant_separation>` 比抓取器圖示相應方向的大小要小，這個粗細就會被抓取器圖示的大小覆蓋。

\ **注意：**\ 如果要讓 :ref:`separation<class_SplitContainer_theme_constant_separation>` 比抓取器圖示大小要小，例如想要設成 ``1 px`` 的細線，請將 :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` 或 :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` 設為新的 :ref:`ImageTexture<class_ImageTexture>`\ ，這樣就把抓取器圖示的大小設為了 ``0 px``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber** :ref:`🔗<class_SplitContainer_theme_icon_grabber>`

用於在分隔條繪製的抓取器的圖示。僅在 :ref:`HSplitContainer<class_HSplitContainer>` 和 :ref:`VSplitContainer<class_VSplitContainer>` 中使用。對於 **SplitContainer**\ ，見 :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` 和 :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_h_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **h_grabber** :ref:`🔗<class_SplitContainer_theme_icon_h_grabber>`

:ref:`vertical<class_SplitContainer_property_vertical>` 為 ``false`` 時繪製在分隔條的抓取器圖示。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_h_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **h_touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_h_touch_dragger>`

:ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` 為 ``true`` 且 :ref:`vertical<class_SplitContainer_property_vertical>` 為 ``false`` 時拖動控點所使用的圖示。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_touch_dragger>`

:ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` 為 ``true`` 時用於拖放控點的圖示。僅在 :ref:`HSplitContainer<class_HSplitContainer>` 和 :ref:`VSplitContainer<class_VSplitContainer>` 中使用。對於 **SplitContainer**\ ，見 :ref:`h_touch_dragger<class_SplitContainer_theme_icon_h_touch_dragger>` 和 :ref:`v_touch_dragger<class_SplitContainer_theme_icon_v_touch_dragger>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_v_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **v_grabber** :ref:`🔗<class_SplitContainer_theme_icon_v_grabber>`

:ref:`vertical<class_SplitContainer_property_vertical>` 為 ``true`` 時繪製在分隔符的抓取器圖示。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_v_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **v_touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_v_touch_dragger>`

:ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` 為 ``true`` 且 :ref:`vertical<class_SplitContainer_property_vertical>` 為 ``true`` 時拖動控點所使用的圖示。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_style_split_bar_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **split_bar_background** :ref:`🔗<class_SplitContainer_theme_style_split_bar_background>`

決定拆分條厚度大於零時的背景。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
