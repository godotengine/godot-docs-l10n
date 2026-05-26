:github_url: hide

.. _class_SplitContainer:

SplitContainer
==============

**继承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`HSplitContainer<class_HSplitContainer>`, :ref:`VSplitContainer<class_VSplitContainer>`

将两个子控件垂直或水平排列的容器，提供了用于调整它们之间分隔比例的抓取器。

.. rst-class:: classref-introduction-group

描述
----

用于水平或垂直排列子控件的容器，还会在它们之间创建抓取器。可以拖动抓取器来改变子控件之间的大小关系。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用容器 <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

属性
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

主题属性
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

信号
----

.. _class_SplitContainer_signal_drag_ended:

.. rst-class:: classref-signal

**drag_ended**\ (\ ) :ref:`🔗<class_SplitContainer_signal_drag_ended>`

用户结束拖拽时发出。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_signal_drag_started:

.. rst-class:: classref-signal

**drag_started**\ (\ ) :ref:`🔗<class_SplitContainer_signal_drag_started>`

用户开始拖拽时发出。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_signal_dragged:

.. rst-class:: classref-signal

**dragged**\ (\ offset\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SplitContainer_signal_dragged>`

当用户拖动任意拖动器时发出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_SplitContainer_DraggerVisibility:

.. rst-class:: classref-enumeration

enum **DraggerVisibility**: :ref:`🔗<enum_SplitContainer_DraggerVisibility>`

.. _class_SplitContainer_constant_DRAGGER_VISIBLE:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_VISIBLE** = ``0``

当 :ref:`autohide<class_SplitContainer_theme_constant_autohide>` 为 ``false`` 时，拆分拖动器始终可见，否则仅在鼠标在拖动器上悬停时可见。

抓取器图标的大小决定了最小间隔 :ref:`separation<class_SplitContainer_theme_constant_separation>`\ 。

抓取器图标如果比拆分条长，就会自动隐藏。

.. _class_SplitContainer_constant_DRAGGER_HIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_HIDDEN** = ``1``

拆分拖动器图标始终不可见，无视 :ref:`autohide<class_SplitContainer_theme_constant_autohide>` 的值。

抓取器图标的大小决定了最小间隔 :ref:`separation<class_SplitContainer_theme_constant_separation>`\ 。

.. _class_SplitContainer_constant_DRAGGER_HIDDEN_COLLAPSED:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_HIDDEN_COLLAPSED** = ``2``

拆分拖动器图标不可见，拆分条粗细折叠为零。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_SplitContainer_property_collapsed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collapsed** = ``false`` :ref:`🔗<class_SplitContainer_property_collapsed>`

.. rst-class:: classref-property-setget

- |void| **set_collapsed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collapsed**\ (\ )

如果为 ``true``\ ，则会禁用拖动器，子节点会根据所有 :ref:`split_offsets<class_SplitContainer_property_split_offsets>` 都为 ``0`` 时的情况来调整大小。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_highlight_in_editor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_area_highlight_in_editor** = ``false`` :ref:`🔗<class_SplitContainer_property_drag_area_highlight_in_editor>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_highlight_in_editor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_area_highlight_in_editor_enabled**\ (\ )

高亮拖动区域 :ref:`Rect2<class_Rect2>`\ ，便于在开发时查看位置。\ :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>` 为 ``true`` 时拖动区域为金色，为 ``false`` 时则为红色。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_margin_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_margin_begin** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_margin_begin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_margin_begin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_margin_begin**\ (\ )

减少可拖动区域和拆分条 :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>` 在容器起始侧的大小。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_margin_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_margin_end** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_margin_end>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_margin_end**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_margin_end**\ (\ )

减少可拖动区域和拆分条 :ref:`split_bar_background<class_SplitContainer_theme_style_split_bar_background>` 在容器结尾侧的大小。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_drag_area_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **drag_area_offset** = ``0`` :ref:`🔗<class_SplitContainer_property_drag_area_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_area_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_drag_area_offset**\ (\ )

将拖动区域在容器轴向上进行偏移，防止拖动区域与 :ref:`ScrollBar<class_ScrollBar>` 或其他子节点的可选中 :ref:`Control<class_Control>` 发生重叠。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_dragger_visibility:

.. rst-class:: classref-property

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **dragger_visibility** = ``0`` :ref:`🔗<class_SplitContainer_property_dragger_visibility>`

.. rst-class:: classref-property-setget

- |void| **set_dragger_visibility**\ (\ value\: :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>`\ )
- :ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **get_dragger_visibility**\ (\ )

决定拖动器是否可见。该属性无法决定拖动器是否启用，这一需求请使用 :ref:`dragging_enabled<class_SplitContainer_property_dragging_enabled>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_dragging_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dragging_enabled** = ``true`` :ref:`🔗<class_SplitContainer_property_dragging_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_dragging_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_dragging_enabled**\ (\ )

启用或禁用拆分拖拽。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_split_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **split_offset** = ``0`` :ref:`🔗<class_SplitContainer_property_split_offset>`

.. rst-class:: classref-property-setget

- |void| **set_split_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_split_offset**\ (\ )

**已弃用：** Use :ref:`split_offsets<class_SplitContainer_property_split_offsets>` instead. The first element of the array is the split offset between the first two children.

:ref:`split_offsets<class_SplitContainer_property_split_offsets>` 的第一个元素。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_split_offsets:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **split_offsets** = ``PackedInt32Array(0)`` :ref:`🔗<class_SplitContainer_property_split_offsets>`

.. rst-class:: classref-property-setget

- |void| **set_split_offsets**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_split_offsets**\ (\ )

每个拖动器的偏移量，单位为像素。每个都是拖动器前后 :ref:`Control<class_Control>` 节点分割的偏移量，\ ``0`` 为默认位置。默认位置基于 :ref:`Control<class_Control>` 节点的扩展标志和最小大小。请参阅 :ref:`Control.size_flags_horizontal<class_Control_property_size_flags_horizontal>`\ 、\ :ref:`Control.size_flags_vertical<class_Control_property_size_flags_vertical>` 和 :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`\ 。

如果拖动器前面的所有 :ref:`Control<class_Control>` 节点都没有扩展，则默认位置位于 **SplitContainer** 的起始位置。如果拖动器后面的所有 :ref:`Control<class_Control>` 节点都没有扩展，则默认位置位于 **SplitContainer** 的末尾。如果拖动器位于两个已扩展的 :ref:`Control<class_Control>` 节点之间，则默认位置将位于中间，具体位置取决于 :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>` 和最小大小。

\ **注意：**\ 如果分割偏移量导致 :ref:`Control<class_Control>` 节点重叠，则在确定位置时将优先使用第一个分割。

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_touch_dragger_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **touch_dragger_enabled** = ``false`` :ref:`🔗<class_SplitContainer_property_touch_dragger_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_touch_dragger_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_touch_dragger_enabled**\ (\ )

如果为 ``true``\ ，则会启用适合触控的拖动手柄，方便在小尺寸屏幕上使用。与标准抓取器不同，这个拖动手柄与 **SplitContainer** 的子节点存在重叠，不会影响它们的最小间隔。启用该选项时不再绘制标准抓取器。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_SplitContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

如果为 ``true``\ ，则该 **SplitContainer** 会垂直排列其子代，而不是水平排列。

在使用 :ref:`HSplitContainer<class_HSplitContainer>` 和 :ref:`VSplitContainer<class_VSplitContainer>` 时无法改变。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_SplitContainer_method_clamp_split_offset:

.. rst-class:: classref-method

|void| **clamp_split_offset**\ (\ priority_index\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SplitContainer_method_clamp_split_offset>`

钳制 :ref:`split_offsets<class_SplitContainer_property_split_offsets>` 的值以确保它们位于有效范围内且彼此不重叠。重叠时该方法会通过将所有重叠的分割偏移量钳制到该范围，以优先考虑某个分割偏移量（位于索引 ``priority_index`` 处）。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_method_get_drag_area_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_drag_area_control**\ (\ ) :ref:`🔗<class_SplitContainer_method_get_drag_area_control>`

**已弃用：** Use the first element of :ref:`get_drag_area_controls()<class_SplitContainer_method_get_drag_area_controls>` instead.

返回拖拽区域 :ref:`Control<class_Control>`\ 。例如你可以把一个预先配置好的按钮放到拖拽区域 :ref:`Control<class_Control>` 中，这样这个按钮就会跟随拆分条移动。调用 ``reparent()`` 前请尝试将 :ref:`Button<class_Button>` 的锚点设置为 ``center``\ 。

::

    $BarnacleButton.reparent($SplitContainer.get_drag_area_control())

\ **注意：**\ 拖拽区域 :ref:`Control<class_Control>` 绘制在 **SplitContainer** 的子节点之上，因此 :ref:`Control<class_Control>` 调用 :ref:`CanvasItem<class_CanvasItem>` 绘制方法所绘制的内容和添加至 :ref:`Control<class_Control>` 的子节点也会显示在 **SplitContainer** 的子节点之上。如果需要阻止鼠标拖动，请尝试将自定义子节点的 :ref:`Control.mouse_filter<class_Control_property_mouse_filter>` 设置为 :ref:`Control.MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`\ 。

\ **警告：**\ 这是必要的内部节点，将其移除或释放都可能造成崩溃。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_method_get_drag_area_controls:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Control<class_Control>`\] **get_drag_area_controls**\ (\ ) :ref:`🔗<class_SplitContainer_method_get_drag_area_controls>`

返回拖拽区域 :ref:`Control<class_Control>` 的 :ref:`Array<class_Array>`\ 。这些是每个子节点之间可交互的 :ref:`Control<class_Control>` 节点。例如，可以使用该方法将预配置的按钮添加到拖拽区域 :ref:`Control<class_Control>`\ ，使其随分割条一起移动。尝试在调用 :ref:`Node.reparent()<class_Node_method_reparent>` 之前将 :ref:`Button<class_Button>` 的锚点设置为 ``center``\ 。

::

    $BarnacleButton.reparent($SplitContainer.get_drag_area_controls()[0])

\ **注意：**\ 拖拽区域 :ref:`Control<class_Control>` 绘制在 **SplitContainer** 的子级之上，因此从拖拽区域调用的 :ref:`CanvasItem<class_CanvasItem>` 绘制对象以及添加到它的子对象也会出现在 **SplitContainer** 的子级之上。如果需要，可以尝试将自定义子级的 :ref:`Control.mouse_filter<class_Control_property_mouse_filter>` 设置为 :ref:`Control.MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` 以防止阻止鼠标拖动。

\ **警告：**\ 这些是必要的内部节点，将其移除或释放都可能造成崩溃。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

主题属性说明
------------

.. _class_SplitContainer_theme_color_touch_dragger_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_color** = ``Color(1, 1, 1, 0.3)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_color>`

触摸拖动器的颜色。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_color_touch_dragger_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_hover_color** = ``Color(1, 1, 1, 0.6)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_hover_color>`

触摸拖动器悬停状态的颜色。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_color_touch_dragger_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **touch_dragger_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_SplitContainer_theme_color_touch_dragger_pressed_color>`

触摸拖动器按下状态的颜色。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_autohide:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **autohide** = ``1`` :ref:`🔗<class_SplitContainer_theme_constant_autohide>`

布尔值。如果为 ``1``\ （\ ``true``\ ），则当抓取器不在光标下方时会自动隐藏。如果为 ``0``\ （\ ``false``\ ），则抓取器始终可见。\ :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` 必须设置为 :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_minimum_grab_thickness:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **minimum_grab_thickness** = ``6`` :ref:`🔗<class_SplitContainer_theme_constant_minimum_grab_thickness>`

拆分条上用户可点击抓取区域的最小厚度。能够确保拆分条在 :ref:`separation<class_SplitContainer_theme_constant_separation>` 或 :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` / :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` 过窄、难以选中时仍然可以拖动。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``12`` :ref:`🔗<class_SplitContainer_theme_constant_separation>`

拆分条的粗细，即容器中每个子节点的间隙。如果 :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` 为 :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>` 或者为 :ref:`DRAGGER_HIDDEN<class_SplitContainer_constant_DRAGGER_HIDDEN>` 的同时 :ref:`separation<class_SplitContainer_theme_constant_separation>` 比抓取器图标相应方向的大小要小，这个粗细就会被抓取器图标的大小覆盖。

\ **注意：**\ 如果要让 :ref:`separation<class_SplitContainer_theme_constant_separation>` 比抓取器图标大小要小，例如想要设成 ``1 px`` 的细线，请将 :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` 或 :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` 设为新的 :ref:`ImageTexture<class_ImageTexture>`\ ，这样就把抓取器图标的大小设为了 ``0 px``\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber** :ref:`🔗<class_SplitContainer_theme_icon_grabber>`

用于在分隔条绘制的抓取器的图标。仅在 :ref:`HSplitContainer<class_HSplitContainer>` 和 :ref:`VSplitContainer<class_VSplitContainer>` 中使用。对于 **SplitContainer**\ ，见 :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` 和 :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_h_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **h_grabber** :ref:`🔗<class_SplitContainer_theme_icon_h_grabber>`

:ref:`vertical<class_SplitContainer_property_vertical>` 为 ``false`` 时绘制在分隔条的抓取器图标。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_h_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **h_touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_h_touch_dragger>`

:ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` 为 ``true`` 且 :ref:`vertical<class_SplitContainer_property_vertical>` 为 ``false`` 时拖拽手柄所使用的图标。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_touch_dragger>`

:ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` 为 ``true`` 时用于拖放手柄的图标。仅在 :ref:`HSplitContainer<class_HSplitContainer>` 和 :ref:`VSplitContainer<class_VSplitContainer>` 中使用。对于 **SplitContainer**\ ，见 :ref:`h_touch_dragger<class_SplitContainer_theme_icon_h_touch_dragger>` 和 :ref:`v_touch_dragger<class_SplitContainer_theme_icon_v_touch_dragger>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_v_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **v_grabber** :ref:`🔗<class_SplitContainer_theme_icon_v_grabber>`

:ref:`vertical<class_SplitContainer_property_vertical>` 为 ``true`` 时绘制在分隔符的抓取器图标。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_v_touch_dragger:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **v_touch_dragger** :ref:`🔗<class_SplitContainer_theme_icon_v_touch_dragger>`

:ref:`touch_dragger_enabled<class_SplitContainer_property_touch_dragger_enabled>` 为 ``true`` 且 :ref:`vertical<class_SplitContainer_property_vertical>` 为 ``true`` 时拖拽手柄所使用的图标。

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_style_split_bar_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **split_bar_background** :ref:`🔗<class_SplitContainer_theme_style_split_bar_background>`

决定拆分条厚度大于零时的背景。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
