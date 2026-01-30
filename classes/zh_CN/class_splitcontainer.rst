:github_url: hide

.. _class_SplitContainer:

SplitContainer
==============

**继承：** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**派生：** :ref:`HSplitContainer<class_HSplitContainer>`, :ref:`VSplitContainer<class_VSplitContainer>`

A container that arranges child controls horizontally or vertically and provides grabbers for adjusting the split ratios between them.

.. rst-class:: classref-introduction-group

描述
----

A container that arranges child controls horizontally or vertically and creates grabbers between them. The grabbers can be dragged around to change the size relations between the child controls.

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

Emitted when any dragger is dragged by user.

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

拖动器图标的大小决定了最小间隔 :ref:`separation<class_SplitContainer_theme_constant_separation>`\ 。

拖动器图标如果比拆分条长，就会自动隐藏。

.. _class_SplitContainer_constant_DRAGGER_HIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`DraggerVisibility<enum_SplitContainer_DraggerVisibility>` **DRAGGER_HIDDEN** = ``1``

拆分拖动器图标始终不可见，无视 :ref:`autohide<class_SplitContainer_theme_constant_autohide>` 的值。

拖动器图标的大小决定了最小间隔 :ref:`separation<class_SplitContainer_theme_constant_separation>`\ 。

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

If ``true``, the draggers will be disabled and the children will be sized as if all :ref:`split_offsets<class_SplitContainer_property_split_offsets>` were ``0``.

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

The first element of :ref:`split_offsets<class_SplitContainer_property_split_offsets>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_property_split_offsets:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **split_offsets** = ``PackedInt32Array(0)`` :ref:`🔗<class_SplitContainer_property_split_offsets>`

.. rst-class:: classref-property-setget

- |void| **set_split_offsets**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_split_offsets**\ (\ )

Offsets for each dragger in pixels. Each one is the offset of the split between the :ref:`Control<class_Control>` nodes before and after the dragger, with ``0`` being the default position. The default position is based on the :ref:`Control<class_Control>` nodes expand flags and minimum sizes. See :ref:`Control.size_flags_horizontal<class_Control_property_size_flags_horizontal>`, :ref:`Control.size_flags_vertical<class_Control_property_size_flags_vertical>`, and :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`.

If none of the :ref:`Control<class_Control>` nodes before the dragger are expanded, the default position will be at the start of the **SplitContainer**. If none of the :ref:`Control<class_Control>` nodes after the dragger are expanded, the default position will be at the end of the **SplitContainer**. If the dragger is in between expanded :ref:`Control<class_Control>` nodes, the default position will be in the middle, based on the :ref:`Control.size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`\ s and minimum sizes.

\ **Note:** If the split offsets cause :ref:`Control<class_Control>` nodes to overlap, the first split will take priority when resolving the positions.

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

Clamps the :ref:`split_offsets<class_SplitContainer_property_split_offsets>` values to ensure they are within valid ranges and do not overlap with each other. When overlaps occur, this method prioritizes one split offset (at index ``priority_index``) by clamping any overlapping split offsets to it.

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

Returns an :ref:`Array<class_Array>` of the drag area :ref:`Control<class_Control>`\ s. These are the interactable :ref:`Control<class_Control>` nodes between each child. For example, this can be used to add a pre-configured button to a drag area :ref:`Control<class_Control>` so that it rides along with the split bar. Try setting the :ref:`Button<class_Button>` anchors to ``center`` prior to the :ref:`Node.reparent()<class_Node_method_reparent>` call.

::

    $BarnacleButton.reparent($SplitContainer.get_drag_area_controls()[0])

\ **Note:** The drag area :ref:`Control<class_Control>`\ s are drawn over the **SplitContainer**'s children, so :ref:`CanvasItem<class_CanvasItem>` draw objects called from a drag area and children added to it will also appear over the **SplitContainer**'s children. Try setting :ref:`Control.mouse_filter<class_Control_property_mouse_filter>` of custom children to :ref:`Control.MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` to prevent blocking the mouse from dragging if desired.

\ **Warning:** These are required internal nodes, removing or freeing them may cause a crash.

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

Boolean value. If ``1`` (``true``), the grabbers will hide automatically when they aren't under the cursor. If ``0`` (``false``), the grabbers are always visible. The :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` must be :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>`.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_minimum_grab_thickness:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **minimum_grab_thickness** = ``6`` :ref:`🔗<class_SplitContainer_theme_constant_minimum_grab_thickness>`

The minimum thickness of the area users can click on to grab a split bar. This ensures that the split bar can still be dragged if :ref:`separation<class_SplitContainer_theme_constant_separation>` or :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` / :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>`'s size is too narrow to easily select.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``12`` :ref:`🔗<class_SplitContainer_theme_constant_separation>`

The split bar thickness, i.e., the gap between each child of the container. This is overridden by the size of the grabber icon if :ref:`dragger_visibility<class_SplitContainer_property_dragger_visibility>` is set to :ref:`DRAGGER_VISIBLE<class_SplitContainer_constant_DRAGGER_VISIBLE>`, or :ref:`DRAGGER_HIDDEN<class_SplitContainer_constant_DRAGGER_HIDDEN>`, and :ref:`separation<class_SplitContainer_theme_constant_separation>` is smaller than the size of the grabber icon in the same axis.

\ **Note:** To obtain :ref:`separation<class_SplitContainer_theme_constant_separation>` values less than the size of the grabber icon, for example a ``1 px`` hairline, set :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` or :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` to a new :ref:`ImageTexture<class_ImageTexture>`, which effectively sets the grabber icon size to ``0 px``.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **grabber** :ref:`🔗<class_SplitContainer_theme_icon_grabber>`

The icon used for the grabbers drawn in the separations. This is only used in :ref:`HSplitContainer<class_HSplitContainer>` and :ref:`VSplitContainer<class_VSplitContainer>`. For **SplitContainer**, see :ref:`h_grabber<class_SplitContainer_theme_icon_h_grabber>` and :ref:`v_grabber<class_SplitContainer_theme_icon_v_grabber>` instead.

.. rst-class:: classref-item-separator

----

.. _class_SplitContainer_theme_icon_h_grabber:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **h_grabber** :ref:`🔗<class_SplitContainer_theme_icon_h_grabber>`

The icon used for the grabbers drawn in the separations when :ref:`vertical<class_SplitContainer_property_vertical>` is ``false``.

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

The icon used for the grabbers drawn in the separations when :ref:`vertical<class_SplitContainer_property_vertical>` is ``true``.

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
