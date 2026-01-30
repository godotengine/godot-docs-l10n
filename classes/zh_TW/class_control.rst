:github_url: hide

.. _class_Control:

Control
=======

**繼承：** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**被繼承：** :ref:`BaseButton<class_BaseButton>`, :ref:`ColorRect<class_ColorRect>`, :ref:`Container<class_Container>`, :ref:`GraphEdit<class_GraphEdit>`, :ref:`ItemList<class_ItemList>`, :ref:`Label<class_Label>`, :ref:`LineEdit<class_LineEdit>`, :ref:`MenuBar<class_MenuBar>`, :ref:`NinePatchRect<class_NinePatchRect>`, :ref:`Panel<class_Panel>`, :ref:`Range<class_Range>`, :ref:`ReferenceRect<class_ReferenceRect>`, :ref:`RichTextLabel<class_RichTextLabel>`, :ref:`Separator<class_Separator>`, :ref:`TabBar<class_TabBar>`, :ref:`TextEdit<class_TextEdit>`, :ref:`TextureRect<class_TextureRect>`, :ref:`Tree<class_Tree>`, :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`

所有 GUI 控制項的基底類別。根據其父控制項調整其位置和大小。

.. rst-class:: classref-introduction-group

說明
----

Base class for all UI-related nodes. **Control** features a bounding rectangle that defines its extents, an anchor position relative to its parent control or the current viewport, and offsets relative to the anchor. The offsets update automatically when the node, any of its parents, or the screen size change.

For more information on Godot's UI system, anchors, offsets, and containers, see the related tutorials in the manual. To build flexible UIs, you'll need a mix of UI elements that inherit from **Control** and :ref:`Container<class_Container>` nodes.

\ **Note:** Since both :ref:`Node2D<class_Node2D>` and **Control** inherit from :ref:`CanvasItem<class_CanvasItem>`, they share several concepts from the class such as the :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` and :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` properties.

\ **User Interface nodes and input**\ 

Godot propagates input events via viewports. Each :ref:`Viewport<class_Viewport>` is responsible for propagating :ref:`InputEvent<class_InputEvent>`\ s to their child nodes. As the :ref:`SceneTree.root<class_SceneTree_property_root>` is a :ref:`Window<class_Window>`, this already happens automatically for all UI elements in your game.

Input events are propagated through the :ref:`SceneTree<class_SceneTree>` from the root node to all child nodes by calling :ref:`Node._input()<class_Node_private_method__input>`. For UI elements specifically, it makes more sense to override the virtual method :ref:`_gui_input()<class_Control_private_method__gui_input>`, which filters out unrelated input events, such as by checking z-order, :ref:`mouse_filter<class_Control_property_mouse_filter>`, focus, or if the event was inside of the control's bounding box.

Call :ref:`accept_event()<class_Control_method_accept_event>` so no other node receives the event. Once you accept an input, it becomes handled so :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` will not process it.

Only one **Control** node can be in focus. Only the node in focus will receive events. To get the focus, call :ref:`grab_focus()<class_Control_method_grab_focus>`. **Control** nodes lose focus when another node grabs it, or if you hide the node in focus. Focus will not be represented visually if gained via mouse/touch input, only appearing with keyboard/gamepad input (for accessibility), or via :ref:`grab_focus()<class_Control_method_grab_focus>`.

Set :ref:`mouse_filter<class_Control_property_mouse_filter>` to :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` to tell a **Control** node to ignore mouse or touch events. You'll need it if you place an icon on top of a button.

\ :ref:`Theme<class_Theme>` resources change the control's appearance. The :ref:`theme<class_Control_property_theme>` of a **Control** node affects all of its direct and indirect children (as long as a chain of controls is uninterrupted). To override some of the theme items, call one of the ``add_theme_*_override`` methods, like :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>`. You can also override theme items in the Inspector.

\ **Note:** Theme items are *not* :ref:`Object<class_Object>` properties. This means you can't access their values using :ref:`Object.get()<class_Object_method_get>` and :ref:`Object.set()<class_Object_method_set>`. Instead, use the ``get_theme_*`` and ``add_theme_*_override`` methods provided by this class.

.. rst-class:: classref-introduction-group

教學
----

- :doc:`GUI 文件索引 <../tutorials/ui/index>`

- :doc:`2D 的自訂繪製 <../tutorials/2d/custom_drawing_in_2d>`

- :doc:`控制項節點一覽 <../tutorials/ui/control_node_gallery>`

- :doc:`多解析度 <../tutorials/rendering/multiple_resolutions>`

- `所有 GUI 演示 <https://github.com/godotengine/godot-demo-projects/tree/master/gui>`__

.. rst-class:: classref-reftable-group

屬性
----

.. table::
   :widths: auto

   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]           | :ref:`accessibility_controls_nodes<class_Control_property_accessibility_controls_nodes>`         | ``[]``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]           | :ref:`accessibility_described_by_nodes<class_Control_property_accessibility_described_by_nodes>` | ``[]``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                            | :ref:`accessibility_description<class_Control_property_accessibility_description>`               | ``""``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]           | :ref:`accessibility_flow_to_nodes<class_Control_property_accessibility_flow_to_nodes>`           | ``[]``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]           | :ref:`accessibility_labeled_by_nodes<class_Control_property_accessibility_labeled_by_nodes>`     | ``[]``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`AccessibilityLiveMode<enum_DisplayServer_AccessibilityLiveMode>` | :ref:`accessibility_live<class_Control_property_accessibility_live>`                             | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                            | :ref:`accessibility_name<class_Control_property_accessibility_name>`                             | ``""``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`anchor_bottom<class_Control_property_anchor_bottom>`                                       | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`anchor_left<class_Control_property_anchor_left>`                                           | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`anchor_right<class_Control_property_anchor_right>`                                         | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`anchor_top<class_Control_property_anchor_top>`                                             | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`auto_translate<class_Control_property_auto_translate>`                                     |                                                                               |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`clip_contents<class_Control_property_clip_contents>`                                       | ``false``                                                                     |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>`                           | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>`     | :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>`                 | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                               | :ref:`focus_mode<class_Control_property_focus_mode>`                                             | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                        | :ref:`focus_neighbor_bottom<class_Control_property_focus_neighbor_bottom>`                       | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                        | :ref:`focus_neighbor_left<class_Control_property_focus_neighbor_left>`                           | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                        | :ref:`focus_neighbor_right<class_Control_property_focus_neighbor_right>`                         | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                        | :ref:`focus_neighbor_top<class_Control_property_focus_neighbor_top>`                             | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                        | :ref:`focus_next<class_Control_property_focus_next>`                                             | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                        | :ref:`focus_previous<class_Control_property_focus_previous>`                                     | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`global_position<class_Control_property_global_position>`                                   |                                                                               |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`GrowDirection<enum_Control_GrowDirection>`                       | :ref:`grow_horizontal<class_Control_property_grow_horizontal>`                                   | ``1``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`GrowDirection<enum_Control_GrowDirection>`                       | :ref:`grow_vertical<class_Control_property_grow_vertical>`                                       | ``1``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`LayoutDirection<enum_Control_LayoutDirection>`                   | :ref:`layout_direction<class_Control_property_layout_direction>`                                 | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`localize_numeral_system<class_Control_property_localize_numeral_system>`                   | ``true``                                                                      |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>`     | :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>`                 | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`CursorShape<enum_Control_CursorShape>`                           | :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>`             | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`                           | :ref:`mouse_filter<class_Control_property_mouse_filter>`                                         | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`mouse_force_pass_scroll_events<class_Control_property_mouse_force_pass_scroll_events>`     | ``true``                                                                      |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`offset_bottom<class_Control_property_offset_bottom>`                                       | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`offset_left<class_Control_property_offset_left>`                                           | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`offset_right<class_Control_property_offset_right>`                                         | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`offset_top<class_Control_property_offset_top>`                                             | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>`    | physics_interpolation_mode                                                                       | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`pivot_offset<class_Control_property_pivot_offset>`                                         | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`pivot_offset_ratio<class_Control_property_pivot_offset_ratio>`                             | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`position<class_Control_property_position>`                                                 | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`rotation<class_Control_property_rotation>`                                                 | ``0.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`rotation_degrees<class_Control_property_rotation_degrees>`                                 |                                                                               |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`scale<class_Control_property_scale>`                                                       | ``Vector2(1, 1)``                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                                | :ref:`shortcut_context<class_Control_property_shortcut_context>`                                 |                                                                               |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                          | :ref:`size<class_Control_property_size>`                                                         | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]                 | :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>`                       | ``1``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`                 | ``1.0``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]                 | :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`                           | ``1``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Theme<class_Theme>`                                              | :ref:`theme<class_Control_property_theme>`                                                       |                                                                               |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                    | :ref:`theme_type_variation<class_Control_property_theme_type_variation>`                         | ``&""``                                                                       |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`                  | :ref:`tooltip_auto_translate_mode<class_Control_property_tooltip_auto_translate_mode>`           | ``0``                                                                         |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                            | :ref:`tooltip_text<class_Control_property_tooltip_text>`                                         | ``""``                                                                        |
   +------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                  | :ref:`_accessibility_get_contextual_info<class_Control_private_method__accessibility_get_contextual_info>`\ (\ ) |virtual| |const|                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`_can_drop_data<class_Control_private_method__can_drop_data>`\ (\ at_position\: :ref:`Vector2<class_Vector2>`, data\: :ref:`Variant<class_Variant>`\ ) |virtual| |const|                                                                                           |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`_drop_data<class_Control_private_method__drop_data>`\ (\ at_position\: :ref:`Vector2<class_Vector2>`, data\: :ref:`Variant<class_Variant>`\ ) |virtual|                                                                                                           |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                  | :ref:`_get_accessibility_container_name<class_Control_private_method__get_accessibility_container_name>`\ (\ node\: :ref:`Node<class_Node>`\ ) |virtual| |const|                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                | :ref:`_get_drag_data<class_Control_private_method__get_drag_data>`\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual|                                                                                                                                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`_get_minimum_size<class_Control_private_method__get_minimum_size>`\ (\ ) |virtual| |const|                                                                                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                  | :ref:`_get_tooltip<class_Control_private_method__get_tooltip>`\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const|                                                                                                                                     |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`_gui_input<class_Control_private_method__gui_input>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual|                                                                                                                                                 |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`_has_point<class_Control_private_method__has_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const|                                                                                                                                               |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                                  | :ref:`_make_custom_tooltip<class_Control_private_method__make_custom_tooltip>`\ (\ for_text\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`_structured_text_parser<class_Control_private_method__structured_text_parser>`\ (\ args\: :ref:`Array<class_Array>`, text\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`accept_event<class_Control_method_accept_event>`\ (\ )                                                                                                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`accessibility_drag<class_Control_method_accessibility_drag>`\ (\ )                                                                                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`accessibility_drop<class_Control_method_accessibility_drop>`\ (\ )                                                                                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`add_theme_color_override<class_Control_method_add_theme_color_override>`\ (\ name\: :ref:`StringName<class_StringName>`, color\: :ref:`Color<class_Color>`\ )                                                                                                     |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`add_theme_constant_override<class_Control_method_add_theme_constant_override>`\ (\ name\: :ref:`StringName<class_StringName>`, constant\: :ref:`int<class_int>`\ )                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`add_theme_font_override<class_Control_method_add_theme_font_override>`\ (\ name\: :ref:`StringName<class_StringName>`, font\: :ref:`Font<class_Font>`\ )                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`add_theme_font_size_override<class_Control_method_add_theme_font_size_override>`\ (\ name\: :ref:`StringName<class_StringName>`, font_size\: :ref:`int<class_int>`\ )                                                                                             |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`add_theme_icon_override<class_Control_method_add_theme_icon_override>`\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )                                                                                             |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`add_theme_stylebox_override<class_Control_method_add_theme_stylebox_override>`\ (\ name\: :ref:`StringName<class_StringName>`, stylebox\: :ref:`StyleBox<class_StyleBox>`\ )                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`begin_bulk_theme_override<class_Control_method_begin_bulk_theme_override>`\ (\ )                                                                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`end_bulk_theme_override<class_Control_method_end_bulk_theme_override>`\ (\ )                                                                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`                                | :ref:`find_next_valid_focus<class_Control_method_find_next_valid_focus>`\ (\ ) |const|                                                                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`                                | :ref:`find_prev_valid_focus<class_Control_method_find_prev_valid_focus>`\ (\ ) |const|                                                                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`                                | :ref:`find_valid_focus_neighbor<class_Control_method_find_valid_focus_neighbor>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`force_drag<class_Control_method_force_drag>`\ (\ data\: :ref:`Variant<class_Variant>`, preview\: :ref:`Control<class_Control>`\ )                                                                                                                                 |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                    | :ref:`get_anchor<class_Control_method_get_anchor>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_begin<class_Control_method_get_begin>`\ (\ ) |const|                                                                                                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_combined_minimum_size<class_Control_method_get_combined_minimum_size>`\ (\ ) |const|                                                                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_combined_pivot_offset<class_Control_method_get_combined_pivot_offset>`\ (\ ) |const|                                                                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CursorShape<enum_Control_CursorShape>`                 | :ref:`get_cursor_shape<class_Control_method_get_cursor_shape>`\ (\ position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_end<class_Control_method_get_end>`\ (\ ) |const|                                                                                                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                     | :ref:`get_focus_mode_with_override<class_Control_method_get_focus_mode_with_override>`\ (\ ) |const|                                                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                              | :ref:`get_focus_neighbor<class_Control_method_get_focus_neighbor>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                    | :ref:`get_global_rect<class_Control_method_get_global_rect>`\ (\ ) |const|                                                                                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_minimum_size<class_Control_method_get_minimum_size>`\ (\ ) |const|                                                                                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`                 | :ref:`get_mouse_filter_with_override<class_Control_method_get_mouse_filter_with_override>`\ (\ ) |const|                                                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                    | :ref:`get_offset<class_Control_method_get_offset>`\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_parent_area_size<class_Control_method_get_parent_area_size>`\ (\ ) |const|                                                                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>`                                | :ref:`get_parent_control<class_Control_method_get_parent_control>`\ (\ ) |const|                                                                                                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                    | :ref:`get_rect<class_Control_method_get_rect>`\ (\ ) |const|                                                                                                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_screen_position<class_Control_method_get_screen_position>`\ (\ ) |const|                                                                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                                    | :ref:`get_theme_color<class_Control_method_get_theme_color>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_theme_constant<class_Control_method_get_theme_constant>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                    | :ref:`get_theme_default_base_scale<class_Control_method_get_theme_default_base_scale>`\ (\ ) |const|                                                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Font<class_Font>`                                      | :ref:`get_theme_default_font<class_Control_method_get_theme_default_font>`\ (\ ) |const|                                                                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_theme_default_font_size<class_Control_method_get_theme_default_font_size>`\ (\ ) |const|                                                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Font<class_Font>`                                      | :ref:`get_theme_font<class_Control_method_get_theme_font>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_theme_font_size<class_Control_method_get_theme_font_size>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`get_theme_icon<class_Control_method_get_theme_icon>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StyleBox<class_StyleBox>`                              | :ref:`get_theme_stylebox<class_Control_method_get_theme_stylebox>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                  | :ref:`get_tooltip<class_Control_method_get_tooltip>`\ (\ at_position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                                                                                                                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`grab_click_focus<class_Control_method_grab_click_focus>`\ (\ )                                                                                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`grab_focus<class_Control_method_grab_focus>`\ (\ hide_focus\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_focus<class_Control_method_has_focus>`\ (\ ignore_hidden_focus\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                                                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_color<class_Control_method_has_theme_color>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_color_override<class_Control_method_has_theme_color_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_constant<class_Control_method_has_theme_constant>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_constant_override<class_Control_method_has_theme_constant_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_font<class_Control_method_has_theme_font>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_font_override<class_Control_method_has_theme_font_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_font_size<class_Control_method_has_theme_font_size>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_font_size_override<class_Control_method_has_theme_font_size_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_icon<class_Control_method_has_theme_icon>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_icon_override<class_Control_method_has_theme_icon_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_stylebox<class_Control_method_has_theme_stylebox>`\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`has_theme_stylebox_override<class_Control_method_has_theme_stylebox_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_drag_successful<class_Control_method_is_drag_successful>`\ (\ ) |const|                                                                                                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`is_layout_rtl<class_Control_method_is_layout_rtl>`\ (\ ) |const|                                                                                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`release_focus<class_Control_method_release_focus>`\ (\ )                                                                                                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_theme_color_override<class_Control_method_remove_theme_color_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_theme_constant_override<class_Control_method_remove_theme_constant_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_theme_font_override<class_Control_method_remove_theme_font_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_theme_font_size_override<class_Control_method_remove_theme_font_size_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_theme_icon_override<class_Control_method_remove_theme_icon_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`remove_theme_stylebox_override<class_Control_method_remove_theme_stylebox_override>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`reset_size<class_Control_method_reset_size>`\ (\ )                                                                                                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_anchor<class_Control_method_set_anchor>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, keep_offset\: :ref:`bool<class_bool>` = false, push_opposite_anchor\: :ref:`bool<class_bool>` = true\ )                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_anchor_and_offset<class_Control_method_set_anchor_and_offset>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, offset\: :ref:`float<class_float>`, push_opposite_anchor\: :ref:`bool<class_bool>` = false\ )              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_anchors_and_offsets_preset<class_Control_method_set_anchors_and_offsets_preset>`\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ ) |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_anchors_preset<class_Control_method_set_anchors_preset>`\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, keep_offsets\: :ref:`bool<class_bool>` = false\ )                                                                                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_begin<class_Control_method_set_begin>`\ (\ position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_drag_forwarding<class_Control_method_set_drag_forwarding>`\ (\ drag_func\: :ref:`Callable<class_Callable>`, can_drop_func\: :ref:`Callable<class_Callable>`, drop_func\: :ref:`Callable<class_Callable>`\ )                                                   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_drag_preview<class_Control_method_set_drag_preview>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                                                                                                           |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_end<class_Control_method_set_end>`\ (\ position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_focus_neighbor<class_Control_method_set_focus_neighbor>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_global_position<class_Control_method_set_global_position>`\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ )                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_offset<class_Control_method_set_offset>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_offsets_preset<class_Control_method_set_offsets_preset>`\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ )                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_position<class_Control_method_set_position>`\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ )                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_size<class_Control_method_set_size>`\ (\ size\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ )                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`update_minimum_size<class_Control_method_update_minimum_size>`\ (\ )                                                                                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`warp_mouse<class_Control_method_warp_mouse>`\ (\ position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

訊號
----

.. _class_Control_signal_focus_entered:

.. rst-class:: classref-signal

**focus_entered**\ (\ ) :ref:`🔗<class_Control_signal_focus_entered>`

當該節點獲得焦點時發出。

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_focus_exited:

.. rst-class:: classref-signal

**focus_exited**\ (\ ) :ref:`🔗<class_Control_signal_focus_exited>`

當該節點失去焦點時發出。

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_gui_input:

.. rst-class:: classref-signal

**gui_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_Control_signal_gui_input>`

當節點收到 :ref:`InputEvent<class_InputEvent>` 時發出。

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_minimum_size_changed:

.. rst-class:: classref-signal

**minimum_size_changed**\ (\ ) :ref:`🔗<class_Control_signal_minimum_size_changed>`

當節點的最小大小更改時發出。

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_mouse_entered:

.. rst-class:: classref-signal

**mouse_entered**\ (\ ) :ref:`🔗<class_Control_signal_mouse_entered>`

Emitted when the mouse cursor enters the control's (or any child control's) visible area, that is not occluded behind other Controls or Windows, provided its :ref:`mouse_filter<class_Control_property_mouse_filter>` lets the event reach it and regardless if it's currently focused or not.

\ **Note:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` doesn't affect, which Control receives the signal.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_mouse_exited:

.. rst-class:: classref-signal

**mouse_exited**\ (\ ) :ref:`🔗<class_Control_signal_mouse_exited>`

Emitted when the mouse cursor leaves the control's (and all child control's) visible area, that is not occluded behind other Controls or Windows, provided its :ref:`mouse_filter<class_Control_property_mouse_filter>` lets the event reach it and regardless if it's currently focused or not.

\ **Note:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` doesn't affect, which Control receives the signal.

\ **Note:** If you want to check whether the mouse truly left the area, ignoring any top nodes, you can use code like this:

::

    func _on_mouse_exited():
        if not Rect2(Vector2(), size).has_point(get_local_mouse_position()):
            # Not hovering over area.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_resized:

.. rst-class:: classref-signal

**resized**\ (\ ) :ref:`🔗<class_Control_signal_resized>`

當控制項更改大小時發出。

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_size_flags_changed:

.. rst-class:: classref-signal

**size_flags_changed**\ (\ ) :ref:`🔗<class_Control_signal_size_flags_changed>`

當大小旗標之一更改時發出。見 :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` 和 :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_theme_changed:

.. rst-class:: classref-signal

**theme_changed**\ (\ ) :ref:`🔗<class_Control_signal_theme_changed>`

發送 :ref:`NOTIFICATION_THEME_CHANGED<class_Control_constant_NOTIFICATION_THEME_CHANGED>` 通知時發出。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

列舉
----

.. _enum_Control_FocusMode:

.. rst-class:: classref-enumeration

enum **FocusMode**: :ref:`🔗<enum_Control_FocusMode>`

.. _class_Control_constant_FOCUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_NONE** = ``0``

該節點無法獲取焦點。在 :ref:`focus_mode<class_Control_property_focus_mode>` 中使用。

.. _class_Control_constant_FOCUS_CLICK:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_CLICK** = ``1``

該節點只能通過滑鼠點擊獲取焦點。在 :ref:`focus_mode<class_Control_property_focus_mode>` 中使用。

.. _class_Control_constant_FOCUS_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_ALL** = ``2``

該節點可以通過滑鼠按一下、使用鍵盤上的箭頭和 Tab 鍵、或使用遊戲手柄上的方向鍵來獲取焦點。用於 :ref:`focus_mode<class_Control_property_focus_mode>`\ 。

.. _class_Control_constant_FOCUS_ACCESSIBILITY:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_ACCESSIBILITY** = ``3``

The node can grab focus only when screen reader is active. Use with :ref:`focus_mode<class_Control_property_focus_mode>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_FocusBehaviorRecursive:

.. rst-class:: classref-enumeration

enum **FocusBehaviorRecursive**: :ref:`🔗<enum_Control_FocusBehaviorRecursive>`

.. _class_Control_constant_FOCUS_BEHAVIOR_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_INHERITED** = ``0``

Inherits the :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` from the parent control. If there is no parent control, this is the same as :ref:`FOCUS_BEHAVIOR_ENABLED<class_Control_constant_FOCUS_BEHAVIOR_ENABLED>`.

.. _class_Control_constant_FOCUS_BEHAVIOR_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_DISABLED** = ``1``

Prevents the control from getting focused. :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` will return :ref:`FOCUS_NONE<class_Control_constant_FOCUS_NONE>`.

.. _class_Control_constant_FOCUS_BEHAVIOR_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_ENABLED** = ``2``

Allows the control to be focused, depending on the :ref:`focus_mode<class_Control_property_focus_mode>`. This can be used to ignore the parent's :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>`. :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` will return the :ref:`focus_mode<class_Control_property_focus_mode>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_MouseBehaviorRecursive:

.. rst-class:: classref-enumeration

enum **MouseBehaviorRecursive**: :ref:`🔗<enum_Control_MouseBehaviorRecursive>`

.. _class_Control_constant_MOUSE_BEHAVIOR_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **MOUSE_BEHAVIOR_INHERITED** = ``0``

Inherits the :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` from the parent control. If there is no parent control, this is the same as :ref:`MOUSE_BEHAVIOR_ENABLED<class_Control_constant_MOUSE_BEHAVIOR_ENABLED>`.

.. _class_Control_constant_MOUSE_BEHAVIOR_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **MOUSE_BEHAVIOR_DISABLED** = ``1``

Prevents the control from receiving mouse input. :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>` will return :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`.

.. _class_Control_constant_MOUSE_BEHAVIOR_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **MOUSE_BEHAVIOR_ENABLED** = ``2``

Allows the control to receive mouse input, depending on the :ref:`mouse_filter<class_Control_property_mouse_filter>`. This can be used to ignore the parent's :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>`. :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>` will return the :ref:`mouse_filter<class_Control_property_mouse_filter>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_CursorShape:

.. rst-class:: classref-enumeration

enum **CursorShape**: :ref:`🔗<enum_Control_CursorShape>`

.. _class_Control_constant_CURSOR_ARROW:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_ARROW** = ``0``

當使用者將節點懸停時，顯示系統的箭頭滑鼠游標。與 :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>` 成員一起使用。

.. _class_Control_constant_CURSOR_IBEAM:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_IBEAM** = ``1``

當使用者將節點懸停時，顯示系統的 I 型光束滑鼠游標。工字梁指針的形狀類似於“I”。它告訴使用者他們可以突出顯示或插入文字。

.. _class_Control_constant_CURSOR_POINTING_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_POINTING_HAND** = ``2``

當使用者將節點懸停時，顯示系統的手形滑鼠游標。

.. _class_Control_constant_CURSOR_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_CROSS** = ``3``

當使用者將滑鼠懸停在節點上時，顯示系統的交叉滑鼠游標。

.. _class_Control_constant_CURSOR_WAIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_WAIT** = ``4``

當使用者懸停節點時，顯示系統等待的滑鼠游標。通常是一個沙漏。

.. _class_Control_constant_CURSOR_BUSY:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_BUSY** = ``5``

當使用者懸停節點時，顯示系統繁忙的滑鼠游標。通常是箭頭加一個小沙漏。

.. _class_Control_constant_CURSOR_DRAG:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_DRAG** = ``6``

當使用者懸停在節點上時，顯示系統的拖動滑鼠游標，通常是一個閉合的拳頭或十字元號。它告訴使用者他們目前正在拖動一個專案，例如場景面板中的節點。

.. _class_Control_constant_CURSOR_CAN_DROP:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_CAN_DROP** = ``7``

當使用者懸停節點時，顯示系統的落地滑鼠游標。它可以是一個張開的手。它告訴使用者可以放下一個他們目前正在抓取的物品，比如場景面板中的一個節點。

.. _class_Control_constant_CURSOR_FORBIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_FORBIDDEN** = ``8``

當使用者懸停節點時，顯示系統禁止的滑鼠游標。通常是一個交叉的圓圈。

.. _class_Control_constant_CURSOR_VSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_VSIZE** = ``9``

當使用者懸停節點時，顯示系統的垂直調整滑鼠游標。一個雙頭的垂直箭頭。它告訴使用者可以垂直調整視窗或面板的大小。

.. _class_Control_constant_CURSOR_HSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HSIZE** = ``10``

當使用者懸停節點時，顯示系統的水平調整滑鼠游標。一個雙頭的水平箭頭。它告訴使用者可以水平調整視窗或面板的大小。

.. _class_Control_constant_CURSOR_BDIAGSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_BDIAGSIZE** = ``11``

當使用者將節點懸停時，顯示系統視窗調整大小的滑鼠游標。游標是從左下角到右上角的雙向箭頭。它告訴使用者可以水平和垂直調整視窗或面板的大小。

.. _class_Control_constant_CURSOR_FDIAGSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_FDIAGSIZE** = ``12``

當使用者將節點懸停時，顯示系統視窗調整大小的滑鼠游標。游標是一個雙向箭頭，從左上角到右下角，與 :ref:`CURSOR_BDIAGSIZE<class_Control_constant_CURSOR_BDIAGSIZE>` 相反。它告訴使用者可以水平和垂直調整視窗或面板的大小。

.. _class_Control_constant_CURSOR_MOVE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_MOVE** = ``13``

當使用者將節點懸停時，顯示系統的移動滑鼠游標。它以 90 度角顯示 2 個雙向箭頭。它告訴使用者他們可以自由移動 UI 元素。

.. _class_Control_constant_CURSOR_VSPLIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_VSPLIT** = ``14``

當使用者將節點懸停時，顯示系統的垂直拆分滑鼠游標。在 Windows 上與 :ref:`CURSOR_VSIZE<class_Control_constant_CURSOR_VSIZE>` 相同。

.. _class_Control_constant_CURSOR_HSPLIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HSPLIT** = ``15``

當使用者將節點懸停時，顯示系統的水平拆分滑鼠游標。在 Windows 上與 :ref:`CURSOR_HSIZE<class_Control_constant_CURSOR_HSIZE>` 相同。

.. _class_Control_constant_CURSOR_HELP:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HELP** = ``16``

當使用者將節點懸停在一個節點上時，顯示系統的説明滑鼠游標，一個問號。

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutPreset:

.. rst-class:: classref-enumeration

enum **LayoutPreset**: :ref:`🔗<enum_Control_LayoutPreset>`

.. _class_Control_constant_PRESET_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_LEFT** = ``0``

將所有 4 個錨點對齊到父控制項邊界的左上角。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_TOP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_RIGHT** = ``1``

將所有 4 個錨點對齊到父控制項邊界的右上角。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_BOTTOM_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_LEFT** = ``2``

將所有 4 個錨點對齊到父控制項邊界的左下角。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_BOTTOM_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_RIGHT** = ``3``

將所有 4 個錨點對齊到父控制項邊界的右下角。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_CENTER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_LEFT** = ``4``

將所有 4 個錨點對齊到父控制項邊界的左邊緣的中點。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_CENTER_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_TOP** = ``5``

將所有 4 個錨點對齊到父控制項邊界的頂邊緣的中點。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_CENTER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_RIGHT** = ``6``

將所有 4 個錨點對齊到父控制項邊界的右邊緣的中點。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_CENTER_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_BOTTOM** = ``7``

將所有 4 個錨點對齊到父控制項邊界的底邊緣的中點。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER** = ``8``

將所有 4 個錨點對齊到父控制項邊界的中心。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_LEFT_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_LEFT_WIDE** = ``9``

將所有 4 個錨點對齊到父控制項的左邊緣。左偏移量相對於父節點的左邊緣，上偏移量相對於父節點的左上角。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_TOP_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_WIDE** = ``10``

將所有 4 個錨點對齊到父控制項的上邊緣。左偏移量相對於父節點的左上角，上偏移量相對於父節點的上邊緣，右偏移相對於父節點的右上角。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_RIGHT_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_RIGHT_WIDE** = ``11``

將所有 4 個錨點對齊到父控制項的右邊緣。右偏移量相對於父節點的右邊緣，上偏移量相對於父節點的右上角。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_BOTTOM_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_WIDE** = ``12``

將所有 4 個錨點對齊到父控制項的下邊緣。左偏移量相對於父節點的左下角，下偏移量相對於父節點的下邊緣，右偏移相對於父節點的右下角。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_VCENTER_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_VCENTER_WIDE** = ``13``

將所有 4 個錨點對齊到一條垂直線，該垂直線將父控制項切成兩半。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_HCENTER_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_HCENTER_WIDE** = ``14``

將所有 4 個錨點對齊到一條水平線，該水平線將父控制項切成兩半。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. _class_Control_constant_PRESET_FULL_RECT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_FULL_RECT** = ``15``

將所有 4 個錨點對齊到父控制項對應的角。套用此預設後，會將所有 4 個偏移都設定為 0，該 **Control** 將適合其父控制項。與 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 一起使用。

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutPresetMode:

.. rst-class:: classref-enumeration

enum **LayoutPresetMode**: :ref:`🔗<enum_Control_LayoutPresetMode>`

.. _class_Control_constant_PRESET_MODE_MINSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_MINSIZE** = ``0``

控制項將被調整為最小尺寸。

.. _class_Control_constant_PRESET_MODE_KEEP_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_WIDTH** = ``1``

控制項的寬度不會改變。

.. _class_Control_constant_PRESET_MODE_KEEP_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_HEIGHT** = ``2``

控制項的高度不會改變。

.. _class_Control_constant_PRESET_MODE_KEEP_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_SIZE** = ``3``

控制項的大小不會改變。

.. rst-class:: classref-item-separator

----

.. _enum_Control_SizeFlags:

.. rst-class:: classref-enumeration

flags **SizeFlags**: :ref:`🔗<enum_Control_SizeFlags>`

.. _class_Control_constant_SIZE_SHRINK_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_BEGIN** = ``0``

告訴父級 :ref:`Container<class_Container>` 將該節點與其起點對齊，即頂部或左側。它與 :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` 以及其他收縮大小旗標互斥，但可以在某些容器中與 :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` 一起使用。與 :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` 和 :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>` 一起使用。

\ **注意：**\ 設定這個旗標相當於沒有任何大小旗標。

.. _class_Control_constant_SIZE_FILL:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_FILL** = ``1``

告訴父級 :ref:`Container<class_Container>` 擴充該節點的邊界以填充所有可用空間，而無需推動任何其他節點。它與收縮大小旗標互斥。與 :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` 和 :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>` 一起使用。

.. _class_Control_constant_SIZE_EXPAND:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_EXPAND** = ``2``

告訴父級 :ref:`Container<class_Container>` 讓該節點佔用你標記的軸上的所有可用空間。如果將多個相鄰節點設定為擴充，它們將根據其拉伸比共用空間。見 :ref:`size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`\ 。用於 :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` 和 :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`\ 。

.. _class_Control_constant_SIZE_EXPAND_FILL:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_EXPAND_FILL** = ``3``

將該節點的大小旗標設定為填充和擴充。有關詳細資訊，請參閱 :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` 和 :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>`\ 。

.. _class_Control_constant_SIZE_SHRINK_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_CENTER** = ``4``

告訴父級 :ref:`Container<class_Container>` 將節點置於可用空間的中心。它與 :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` 以及其他收縮大小旗標互斥，但可以在某些容器中與 :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` 一起使用。與 :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` 和 :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>` 一起使用。

.. _class_Control_constant_SIZE_SHRINK_END:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_END** = ``8``

告訴父級 :ref:`Container<class_Container>` 將節點與其末端對齊，即底部或右側。它與 :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` 以及其他收縮大小旗標互斥，但可以在某些容器中與 :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` 一起使用。與 :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` 和 :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>` 一起使用。

.. rst-class:: classref-item-separator

----

.. _enum_Control_MouseFilter:

.. rst-class:: classref-enumeration

enum **MouseFilter**: :ref:`🔗<enum_Control_MouseFilter>`

.. _class_Control_constant_MOUSE_FILTER_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_STOP** = ``0``

The control will receive mouse movement input events and mouse button input events if clicked on through :ref:`_gui_input()<class_Control_private_method__gui_input>`. The control will also receive the :ref:`mouse_entered<class_Control_signal_mouse_entered>` and :ref:`mouse_exited<class_Control_signal_mouse_exited>` signals. These events are automatically marked as handled, and they will not propagate further to other controls. This also results in blocking signals in other controls.

.. _class_Control_constant_MOUSE_FILTER_PASS:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_PASS** = ``1``

The control will receive mouse movement input events and mouse button input events if clicked on through :ref:`_gui_input()<class_Control_private_method__gui_input>`. The control will also receive the :ref:`mouse_entered<class_Control_signal_mouse_entered>` and :ref:`mouse_exited<class_Control_signal_mouse_exited>` signals.

If this control does not handle the event, the event will propagate up to its parent control if it has one. The event is bubbled up the node hierarchy until it reaches a non-:ref:`CanvasItem<class_CanvasItem>`, a control with :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>`, or a :ref:`CanvasItem<class_CanvasItem>` with :ref:`CanvasItem.top_level<class_CanvasItem_property_top_level>` enabled. This will allow signals to fire in all controls it reaches. If no control handled it, the event will be passed to :ref:`Node._shortcut_input()<class_Node_private_method__shortcut_input>` for further processing.

.. _class_Control_constant_MOUSE_FILTER_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_IGNORE** = ``2``

The control will not receive any mouse movement input events nor mouse button input events through :ref:`_gui_input()<class_Control_private_method__gui_input>`. The control will also not receive the :ref:`mouse_entered<class_Control_signal_mouse_entered>` nor :ref:`mouse_exited<class_Control_signal_mouse_exited>` signals. This will not block other controls from receiving these events or firing the signals. Ignored events will not be handled automatically. If a child has :ref:`MOUSE_FILTER_PASS<class_Control_constant_MOUSE_FILTER_PASS>` and an event was passed to this control, the event will further propagate up to the control's parent.

\ **Note:** If the control has received :ref:`mouse_entered<class_Control_signal_mouse_entered>` but not :ref:`mouse_exited<class_Control_signal_mouse_exited>`, changing the :ref:`mouse_filter<class_Control_property_mouse_filter>` to :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` will cause :ref:`mouse_exited<class_Control_signal_mouse_exited>` to be emitted.

.. rst-class:: classref-item-separator

----

.. _enum_Control_GrowDirection:

.. rst-class:: classref-enumeration

enum **GrowDirection**: :ref:`🔗<enum_Control_GrowDirection>`

.. _class_Control_constant_GROW_DIRECTION_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`GrowDirection<enum_Control_GrowDirection>` **GROW_DIRECTION_BEGIN** = ``0``

如果控制項的最小尺寸更改為大於其相應軸上的目前尺寸，則控制項將向左或頂部增大以進行組合。

.. _class_Control_constant_GROW_DIRECTION_END:

.. rst-class:: classref-enumeration-constant

:ref:`GrowDirection<enum_Control_GrowDirection>` **GROW_DIRECTION_END** = ``1``

如果控制項的最小尺寸更改為大於其相應軸上的目前尺寸，則控制項將向右或向下增大以進行補償。

.. _class_Control_constant_GROW_DIRECTION_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`GrowDirection<enum_Control_GrowDirection>` **GROW_DIRECTION_BOTH** = ``2``

如果控制項的最小大小更改為大於其目前大小，則控制項將在兩個方向上均等地增長以組成該控制項。

.. rst-class:: classref-item-separator

----

.. _enum_Control_Anchor:

.. rst-class:: classref-enumeration

enum **Anchor**: :ref:`🔗<enum_Control_Anchor>`

.. _class_Control_constant_ANCHOR_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`Anchor<enum_Control_Anchor>` **ANCHOR_BEGIN** = ``0``

將 4 個錨點的某一側吸附到節點的 ``Rect`` 的左上角。在 ``anchor_*`` 成員變數中使用，例如 :ref:`anchor_left<class_Control_property_anchor_left>`\ 。要一次更改全部 4 個錨點，請使用 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`\ 。

.. _class_Control_constant_ANCHOR_END:

.. rst-class:: classref-enumeration-constant

:ref:`Anchor<enum_Control_Anchor>` **ANCHOR_END** = ``1``

將 4 個錨點的某一側吸附到節點的 ``Rect`` 的右下角。在 ``anchor_*`` 成員變數中使用，例如 :ref:`anchor_left<class_Control_property_anchor_left>`\ 。要一次更改全部 4 個錨點，請使用 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`\ 。

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutDirection:

.. rst-class:: classref-enumeration

enum **LayoutDirection**: :ref:`🔗<enum_Control_LayoutDirection>`

.. _class_Control_constant_LAYOUT_DIRECTION_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_INHERITED** = ``0``

自動佈局方向，由父控制項佈局方向決定。

.. _class_Control_constant_LAYOUT_DIRECTION_APPLICATION_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_APPLICATION_LOCALE** = ``1``

Automatic layout direction, determined from the current locale. Right-to-left layout direction is automatically used for languages that require it such as Arabic and Hebrew, but only if a valid translation file is loaded for the given language (unless said language is configured as a fallback in :ref:`ProjectSettings.internationalization/locale/fallback<class_ProjectSettings_property_internationalization/locale/fallback>`). For all other languages (or if no valid translation file is found by Godot), left-to-right layout direction is used. If using :ref:`TextServerFallback<class_TextServerFallback>` (:ref:`ProjectSettings.internationalization/rendering/text_driver<class_ProjectSettings_property_internationalization/rendering/text_driver>`), left-to-right layout direction is always used regardless of the language. Right-to-left layout direction can also be forced using :ref:`ProjectSettings.internationalization/rendering/force_right_to_left_layout_direction<class_ProjectSettings_property_internationalization/rendering/force_right_to_left_layout_direction>`.

.. _class_Control_constant_LAYOUT_DIRECTION_LTR:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_LTR** = ``2``

從左至右的佈局方向。

.. _class_Control_constant_LAYOUT_DIRECTION_RTL:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_RTL** = ``3``

從右至左的佈局方向。

.. _class_Control_constant_LAYOUT_DIRECTION_SYSTEM_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_SYSTEM_LOCALE** = ``4``

Automatic layout direction, determined from the system locale. Right-to-left layout direction is automatically used for languages that require it such as Arabic and Hebrew, but only if a valid translation file is loaded for the given language. For all other languages (or if no valid translation file is found by Godot), left-to-right layout direction is used. If using :ref:`TextServerFallback<class_TextServerFallback>` (:ref:`ProjectSettings.internationalization/rendering/text_driver<class_ProjectSettings_property_internationalization/rendering/text_driver>`), left-to-right layout direction is always used regardless of the language.

.. _class_Control_constant_LAYOUT_DIRECTION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_MAX** = ``5``

Represents the size of the :ref:`LayoutDirection<enum_Control_LayoutDirection>` enum.

.. _class_Control_constant_LAYOUT_DIRECTION_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_LOCALE** = ``1``

**已棄用：** Use :ref:`LAYOUT_DIRECTION_APPLICATION_LOCALE<class_Control_constant_LAYOUT_DIRECTION_APPLICATION_LOCALE>` instead.



.. rst-class:: classref-item-separator

----

.. _enum_Control_TextDirection:

.. rst-class:: classref-enumeration

enum **TextDirection**: :ref:`🔗<enum_Control_TextDirection>`

.. _class_Control_constant_TEXT_DIRECTION_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_INHERITED** = ``3``

文字書寫方向與佈局方向相同。

.. _class_Control_constant_TEXT_DIRECTION_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_AUTO** = ``0``

自動文字書寫方向，根據目前區域設定和文字內容確定。

.. _class_Control_constant_TEXT_DIRECTION_LTR:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_LTR** = ``1``

從左至右的文字書寫方向。

.. _class_Control_constant_TEXT_DIRECTION_RTL:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_RTL** = ``2``

從右至左的文字書寫方向。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常數
----

.. _class_Control_constant_NOTIFICATION_RESIZED:

.. rst-class:: classref-constant

**NOTIFICATION_RESIZED** = ``40`` :ref:`🔗<class_Control_constant_NOTIFICATION_RESIZED>`

當節點改變大小時發送。請使用 :ref:`size<class_Control_property_size>` 獲取新大小。

.. _class_Control_constant_NOTIFICATION_MOUSE_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_ENTER** = ``41`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_ENTER>`

Sent when the mouse cursor enters the control's (or any child control's) visible area, that is not occluded behind other Controls or Windows, provided its :ref:`mouse_filter<class_Control_property_mouse_filter>` lets the event reach it and regardless if it's currently focused or not.

\ **Note:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` doesn't affect which Control receives the notification.

See also :ref:`NOTIFICATION_MOUSE_ENTER_SELF<class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_EXIT** = ``42`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_EXIT>`

Sent when the mouse cursor leaves the control's (and all child control's) visible area, that is not occluded behind other Controls or Windows, provided its :ref:`mouse_filter<class_Control_property_mouse_filter>` lets the event reach it and regardless if it's currently focused or not.

\ **Note:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` doesn't affect which Control receives the notification.

See also :ref:`NOTIFICATION_MOUSE_EXIT_SELF<class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_ENTER_SELF** = ``60`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF>`

**實驗性：** The reason this notification is sent may change in the future.

Sent when the mouse cursor enters the control's visible area, that is not occluded behind other Controls or Windows, provided its :ref:`mouse_filter<class_Control_property_mouse_filter>` lets the event reach it and regardless if it's currently focused or not.

\ **Note:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` doesn't affect which Control receives the notification.

See also :ref:`NOTIFICATION_MOUSE_ENTER<class_Control_constant_NOTIFICATION_MOUSE_ENTER>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_EXIT_SELF** = ``61`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF>`

**實驗性：** The reason this notification is sent may change in the future.

Sent when the mouse cursor leaves the control's visible area, that is not occluded behind other Controls or Windows, provided its :ref:`mouse_filter<class_Control_property_mouse_filter>` lets the event reach it and regardless if it's currently focused or not.

\ **Note:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` doesn't affect which Control receives the notification.

See also :ref:`NOTIFICATION_MOUSE_EXIT<class_Control_constant_NOTIFICATION_MOUSE_EXIT>`.

.. _class_Control_constant_NOTIFICATION_FOCUS_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_FOCUS_ENTER** = ``43`` :ref:`🔗<class_Control_constant_NOTIFICATION_FOCUS_ENTER>`

當節點獲得焦點時發送。

.. _class_Control_constant_NOTIFICATION_FOCUS_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_FOCUS_EXIT** = ``44`` :ref:`🔗<class_Control_constant_NOTIFICATION_FOCUS_EXIT>`

Sent when the node loses focus.

This notification is sent in reversed order.

.. _class_Control_constant_NOTIFICATION_THEME_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_THEME_CHANGED** = ``45`` :ref:`🔗<class_Control_constant_NOTIFICATION_THEME_CHANGED>`

Sent when the node needs to refresh its theme items. This happens in one of the following cases:

- The :ref:`theme<class_Control_property_theme>` property is changed on this node or any of its ancestors.

- The :ref:`theme_type_variation<class_Control_property_theme_type_variation>` property is changed on this node.

- One of the node's theme property overrides is changed.

- The node enters the scene tree.

\ **Note:** As an optimization, this notification won't be sent from changes that occur while this node is outside of the scene tree. Instead, all of the theme item updates can be applied at once when the node enters the scene tree.

\ **Note:** This notification is received alongside :ref:`Node.NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>`, so if you are instantiating a scene, the child nodes will not be initialized yet. You can use it to setup theming for this node, child nodes created from script, or if you want to access child nodes added in the editor, make sure the node is ready using :ref:`Node.is_node_ready()<class_Node_method_is_node_ready>`.

::

    func _notification(what):
        if what == NOTIFICATION_THEME_CHANGED:
            if not is_node_ready():
                await ready # Wait until ready signal.
            $Label.add_theme_color_override("font_color", Color.YELLOW)

.. _class_Control_constant_NOTIFICATION_SCROLL_BEGIN:

.. rst-class:: classref-constant

**NOTIFICATION_SCROLL_BEGIN** = ``47`` :ref:`🔗<class_Control_constant_NOTIFICATION_SCROLL_BEGIN>`

Sent when this node is inside a :ref:`ScrollContainer<class_ScrollContainer>` which has begun being scrolled when dragging the scrollable area *with a touch event*. This notification is *not* sent when scrolling by dragging the scrollbar, scrolling with the mouse wheel or scrolling with keyboard/gamepad events.

\ **Note:** This signal is only emitted on Android or iOS, or on desktop/web platforms when :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` is enabled.

.. _class_Control_constant_NOTIFICATION_SCROLL_END:

.. rst-class:: classref-constant

**NOTIFICATION_SCROLL_END** = ``48`` :ref:`🔗<class_Control_constant_NOTIFICATION_SCROLL_END>`

Sent when this node is inside a :ref:`ScrollContainer<class_ScrollContainer>` which has stopped being scrolled when dragging the scrollable area *with a touch event*. This notification is *not* sent when scrolling by dragging the scrollbar, scrolling with the mouse wheel or scrolling with keyboard/gamepad events.

\ **Note:** This signal is only emitted on Android or iOS, or on desktop/web platforms when :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` is enabled.

.. _class_Control_constant_NOTIFICATION_LAYOUT_DIRECTION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_LAYOUT_DIRECTION_CHANGED** = ``49`` :ref:`🔗<class_Control_constant_NOTIFICATION_LAYOUT_DIRECTION_CHANGED>`

Sent when the control layout direction is changed from LTR or RTL or vice versa. This notification is propagated to child Control nodes as result of a change to :ref:`layout_direction<class_Control_property_layout_direction>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

屬性說明
--------

.. _class_Control_property_accessibility_controls_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_controls_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_controls_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_controls_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_controls_nodes**\ (\ )

The paths to the nodes which are controlled by this node.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_described_by_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_described_by_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_described_by_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_described_by_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_described_by_nodes**\ (\ )

The paths to the nodes which are describing this node.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **accessibility_description** = ``""`` :ref:`🔗<class_Control_property_accessibility_description>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_description**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_accessibility_description**\ (\ )

The human-readable node description that is reported to assistive apps.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_flow_to_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_flow_to_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_flow_to_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_flow_to_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_flow_to_nodes**\ (\ )

The paths to the nodes which this node flows into.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_labeled_by_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_labeled_by_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_labeled_by_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_labeled_by_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_labeled_by_nodes**\ (\ )

The paths to the nodes which label this node.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_live:

.. rst-class:: classref-property

:ref:`AccessibilityLiveMode<enum_DisplayServer_AccessibilityLiveMode>` **accessibility_live** = ``0`` :ref:`🔗<class_Control_property_accessibility_live>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_live**\ (\ value\: :ref:`AccessibilityLiveMode<enum_DisplayServer_AccessibilityLiveMode>`\ )
- :ref:`AccessibilityLiveMode<enum_DisplayServer_AccessibilityLiveMode>` **get_accessibility_live**\ (\ )

The mode with which a live region updates. A live region is a :ref:`Node<class_Node>` that is updated as a result of an external event when the user's focus may be elsewhere.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **accessibility_name** = ``""`` :ref:`🔗<class_Control_property_accessibility_name>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_accessibility_name**\ (\ )

The human-readable node name that is reported to assistive apps.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_bottom** = ``0.0`` :ref:`🔗<class_Control_property_anchor_bottom>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

將節點的底部邊緣錨定到父控制項的原點、中心或末端。會改變該節點發生移動或改變大小時底部偏移量的更新方式。方便起見，你可以使用 :ref:`Anchor<enum_Control_Anchor>` 常數。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_left** = ``0.0`` :ref:`🔗<class_Control_property_anchor_left>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

將節點的左側邊緣錨定到父控制項的原點、中心或末端。會改變該節點發生移動或改變大小時左側偏移量的更新方式。方便起見，你可以使用 :ref:`Anchor<enum_Control_Anchor>` 常數。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_right** = ``0.0`` :ref:`🔗<class_Control_property_anchor_right>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

將節點的右側邊緣錨定到父控制項的原點、中心或末端。會改變該節點發生移動或改變大小時右側偏移量的更新方式。方便起見，你可以使用 :ref:`Anchor<enum_Control_Anchor>` 常數。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_top** = ``0.0`` :ref:`🔗<class_Control_property_anchor_top>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

將節點的頂部邊緣錨定到父控制項的原點、中心或末端。會改變該節點發生移動或改變大小時頂部偏移量的更新方式。方便起見，你可以使用 :ref:`Anchor<enum_Control_Anchor>` 常數。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_auto_translate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_translate** :ref:`🔗<class_Control_property_auto_translate>`

.. rst-class:: classref-property-setget

- |void| **set_auto_translate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_translating**\ (\ )

**已棄用：** Use :ref:`Node.auto_translate_mode<class_Node_property_auto_translate_mode>` and :ref:`Node.can_auto_translate()<class_Node_method_can_auto_translate>` instead.

切換是否所有文字都應該根據目前區域設定自動變為翻譯後的版本。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_clip_contents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_contents** = ``false`` :ref:`🔗<class_Control_property_clip_contents>`

.. rst-class:: classref-property-setget

- |void| **set_clip_contents**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_clipping_contents**\ (\ )

算繪基於 :ref:`CanvasItem<class_CanvasItem>` 的子節點時，是否應剪裁到該控制項的矩形中。如果為 ``true``\ ，則子節點顯示在該控制項的矩形範圍之外的部分，不會算繪，也不會接收輸入。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_custom_minimum_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **custom_minimum_size** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_custom_minimum_size>`

.. rst-class:: classref-property-setget

- |void| **set_custom_minimum_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_custom_minimum_size**\ (\ )

The minimum size of the node's bounding rectangle. If you set it to a value greater than ``(0, 0)``, the node's bounding rectangle will always have at least this size. Note that **Control** nodes have their internal minimum size returned by :ref:`get_minimum_size()<class_Control_method_get_minimum_size>`. It depends on the control's contents, like text, textures, or style boxes. The actual minimum size is the maximum value of this property and the internal minimum size (see :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>`).

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_behavior_recursive:

.. rst-class:: classref-property

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **focus_behavior_recursive** = ``0`` :ref:`🔗<class_Control_property_focus_behavior_recursive>`

.. rst-class:: classref-property-setget

- |void| **set_focus_behavior_recursive**\ (\ value\: :ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>`\ )
- :ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **get_focus_behavior_recursive**\ (\ )

Determines which controls can be focused together with :ref:`focus_mode<class_Control_property_focus_mode>`. See :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>`. Since the default behavior is :ref:`FOCUS_BEHAVIOR_INHERITED<class_Control_constant_FOCUS_BEHAVIOR_INHERITED>`, this can be used to prevent all children controls from getting focused.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_mode:

.. rst-class:: classref-property

:ref:`FocusMode<enum_Control_FocusMode>` **focus_mode** = ``0`` :ref:`🔗<class_Control_property_focus_mode>`

.. rst-class:: classref-property-setget

- |void| **set_focus_mode**\ (\ value\: :ref:`FocusMode<enum_Control_FocusMode>`\ )
- :ref:`FocusMode<enum_Control_FocusMode>` **get_focus_mode**\ (\ )

Determines which controls can be focused. Only one control can be focused at a time, and the focused control will receive keyboard, gamepad, and mouse events in :ref:`_gui_input()<class_Control_private_method__gui_input>`. Use :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` to determine if a control can grab focus, since :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` also affects it. See also :ref:`grab_focus()<class_Control_method_grab_focus>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_bottom:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_bottom** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

告訴 Godot 當使用者按下鍵盤上的下方向鍵或遊戲手柄上的下方向鍵時，預設應該將焦點移交給哪個節點。你可以通過編輯輸入動作 :ref:`ProjectSettings.input/ui_down<class_ProjectSettings_property_input/ui_down>` 來修改具體的按鍵。該節點必須為 **Control**\ 。如果未設定這個屬性，Godot 會將焦點移交給該節點下方距離最近的 **Control**\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_left:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_left** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_left>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

告訴 Godot 當使用者按下鍵盤上的左方向鍵或遊戲手柄上的左方向鍵時，預設應該將焦點移交給哪個節點。你可以通過編輯輸入動作 :ref:`ProjectSettings.input/ui_left<class_ProjectSettings_property_input/ui_left>` 來修改具體的按鍵。該節點必須為 **Control**\ 。如果未設定這個屬性，Godot 會將焦點移交給該節點左側距離最近的 **Control**\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_right:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_right** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_right>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

告訴 Godot 當使用者按下鍵盤上的右方向鍵或遊戲手柄上的右方向鍵時，預設應該將焦點移交給哪個節點。你可以通過編輯輸入動作 :ref:`ProjectSettings.input/ui_right<class_ProjectSettings_property_input/ui_right>` 來修改具體的按鍵。該節點必須為 **Control**\ 。如果未設定這個屬性，Godot 會將焦點移交給該節點右側距離最近的 **Control**\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_top:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_top** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_top>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

告訴 Godot 當使用者按下鍵盤上的下方向鍵或遊戲手柄上的下方向鍵時，預設應該將焦點移交給哪個節點。你可以通過編輯輸入動作 :ref:`ProjectSettings.input/ui_up<class_ProjectSettings_property_input/ui_up>` 來修改具體的按鍵。該節點必須為 **Control**\ 。如果未設定這個屬性，Godot 會將焦點移交給該節點上方距離最近的 **Control**\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_next:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_next** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_next>`

.. rst-class:: classref-property-setget

- |void| **set_focus_next**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_next**\ (\ )

告訴 Godot 在預設情況下，當使用者按下鍵盤上的 :kbd:`Tab` 時，應將焦點交給哪個節點。你可以通過編輯 :ref:`ProjectSettings.input/ui_focus_next<class_ProjectSettings_property_input/ui_focus_next>` 的輸入動作來更改按鍵。

如果未設定此屬性，則 Godot 會將根據場景樹中的附近節點選擇一個“最佳猜測”。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_previous:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_previous** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_previous>`

.. rst-class:: classref-property-setget

- |void| **set_focus_previous**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_previous**\ (\ )

告訴 Godot 在預設情況下，當使用者按下鍵盤上的 :kbd:`Shift + Tab` 時，應將焦點交給哪個節點。你可以通過編輯 :ref:`ProjectSettings.input/ui_focus_prev<class_ProjectSettings_property_input/ui_focus_prev>` 的輸入動作來更改按鍵。

如果未設定此屬性，則 Godot 會將根據場景樹中的附近節點選擇一個“最佳猜測”。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** :ref:`🔗<class_Control_property_global_position>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

該節點的全域位置，相對於世界（通常為 :ref:`CanvasLayer<class_CanvasLayer>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_grow_horizontal:

.. rst-class:: classref-property

:ref:`GrowDirection<enum_Control_GrowDirection>` **grow_horizontal** = ``1`` :ref:`🔗<class_Control_property_grow_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_grow_direction**\ (\ value\: :ref:`GrowDirection<enum_Control_GrowDirection>`\ )
- :ref:`GrowDirection<enum_Control_GrowDirection>` **get_h_grow_direction**\ (\ )

控制水平軸的方向，如果控制項的水平最小尺寸更改為大於其目前尺寸，則控制項應沿水平軸增長，因為控制項始終必須至少為最小尺寸。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_grow_vertical:

.. rst-class:: classref-property

:ref:`GrowDirection<enum_Control_GrowDirection>` **grow_vertical** = ``1`` :ref:`🔗<class_Control_property_grow_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_grow_direction**\ (\ value\: :ref:`GrowDirection<enum_Control_GrowDirection>`\ )
- :ref:`GrowDirection<enum_Control_GrowDirection>` **get_v_grow_direction**\ (\ )

控制控制項在垂直軸上的方向，如果控制項的垂直最小尺寸更改為大於目前尺寸，則控制項應沿該方向增大，因為控制項始終必須至少為最小尺寸。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_layout_direction:

.. rst-class:: classref-property

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **layout_direction** = ``0`` :ref:`🔗<class_Control_property_layout_direction>`

.. rst-class:: classref-property-setget

- |void| **set_layout_direction**\ (\ value\: :ref:`LayoutDirection<enum_Control_LayoutDirection>`\ )
- :ref:`LayoutDirection<enum_Control_LayoutDirection>` **get_layout_direction**\ (\ )

Controls layout direction and text writing direction. Right-to-left layouts are necessary for certain languages (e.g. Arabic and Hebrew). See also :ref:`is_layout_rtl()<class_Control_method_is_layout_rtl>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_localize_numeral_system:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **localize_numeral_system** = ``true`` :ref:`🔗<class_Control_property_localize_numeral_system>`

.. rst-class:: classref-property-setget

- |void| **set_localize_numeral_system**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_localizing_numeral_system**\ (\ )

如果為 ``true``\ ，則會自動將程式碼行號、列表索引號、\ :ref:`SpinBox<class_SpinBox>` 和 :ref:`ProgressBar<class_ProgressBar>` 的值，從阿拉伯數字（0..9）轉換為目前區域設定所使用的記數系統。

\ **注意：**\ 不會自動轉換文字中的數位，可以使用 :ref:`TextServer.format_number()<class_TextServer_method_format_number>` 手動轉換。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_behavior_recursive:

.. rst-class:: classref-property

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **mouse_behavior_recursive** = ``0`` :ref:`🔗<class_Control_property_mouse_behavior_recursive>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_behavior_recursive**\ (\ value\: :ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>`\ )
- :ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **get_mouse_behavior_recursive**\ (\ )

Determines which controls can receive mouse input together with :ref:`mouse_filter<class_Control_property_mouse_filter>`. See :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>`. Since the default behavior is :ref:`MOUSE_BEHAVIOR_INHERITED<class_Control_constant_MOUSE_BEHAVIOR_INHERITED>`, this can be used to prevent all children controls from receiving mouse input.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_default_cursor_shape:

.. rst-class:: classref-property

:ref:`CursorShape<enum_Control_CursorShape>` **mouse_default_cursor_shape** = ``0`` :ref:`🔗<class_Control_property_mouse_default_cursor_shape>`

.. rst-class:: classref-property-setget

- |void| **set_default_cursor_shape**\ (\ value\: :ref:`CursorShape<enum_Control_CursorShape>`\ )
- :ref:`CursorShape<enum_Control_CursorShape>` **get_default_cursor_shape**\ (\ )

此控制項的預設游標形狀。對於 Godot 外掛程式和使用系統滑鼠游標的套用程式或遊戲很有用。

\ **注意：**\ 在 Linux 上，形狀可能會有所不同，具體取決於系統的游標主題。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_filter:

.. rst-class:: classref-property

:ref:`MouseFilter<enum_Control_MouseFilter>` **mouse_filter** = ``0`` :ref:`🔗<class_Control_property_mouse_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_filter**\ (\ value\: :ref:`MouseFilter<enum_Control_MouseFilter>`\ )
- :ref:`MouseFilter<enum_Control_MouseFilter>` **get_mouse_filter**\ (\ )

Determines which controls will be able to receive mouse button input events through :ref:`_gui_input()<class_Control_private_method__gui_input>` and the :ref:`mouse_entered<class_Control_signal_mouse_entered>`, and :ref:`mouse_exited<class_Control_signal_mouse_exited>` signals. Also determines how these events should be propagated. See the constants to learn what each does. Use :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>` to determine if a control can receive mouse input, since :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` also affects it.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_force_pass_scroll_events:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mouse_force_pass_scroll_events** = ``true`` :ref:`🔗<class_Control_property_mouse_force_pass_scroll_events>`

.. rst-class:: classref-property-setget

- |void| **set_force_pass_scroll_events**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_force_pass_scroll_events**\ (\ )

When enabled, scroll wheel events processed by :ref:`_gui_input()<class_Control_private_method__gui_input>` will be passed to the parent control even if :ref:`mouse_filter<class_Control_property_mouse_filter>` is set to :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>`.

You should disable it on the root of your UI if you do not want scroll events to go to the :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` processing.

\ **Note:** Because this property defaults to ``true``, this allows nested scrollable containers to work out of the box.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_bottom** = ``0.0`` :ref:`🔗<class_Control_property_offset_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

該節點底部邊緣與其父控制項之間的距離，基於 :ref:`anchor_bottom<class_Control_property_anchor_bottom>`\ 。

偏移量通常由一個或多個父 :ref:`Container<class_Container>` 節點控制，因此如果你的節點是 :ref:`Container<class_Container>` 的直接子節點，則不應進行手動修改。移動節點或調整節點大小時，偏移量會自動更新。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_left** = ``0.0`` :ref:`🔗<class_Control_property_offset_left>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

該節點左側邊緣與其父控制項之間的距離，基於 :ref:`anchor_left<class_Control_property_anchor_left>`\ 。

偏移量通常由一個或多個父 :ref:`Container<class_Container>` 節點控制，因此如果你的節點是 :ref:`Container<class_Container>` 的直接子節點，則不應進行手動修改。移動節點或調整節點大小時，偏移量會自動更新。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_right** = ``0.0`` :ref:`🔗<class_Control_property_offset_right>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

該節點右側邊緣與其父控制項之間的距離，基於 :ref:`anchor_right<class_Control_property_anchor_right>`\ 。

偏移量通常由一個或多個父 :ref:`Container<class_Container>` 節點控制，因此如果你的節點是 :ref:`Container<class_Container>` 的直接子節點，則不應進行手動修改。移動節點或調整節點大小時，偏移量會自動更新。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_top** = ``0.0`` :ref:`🔗<class_Control_property_offset_top>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

該節點頂部邊緣與其父控制項之間的距離，基於 :ref:`anchor_top<class_Control_property_anchor_top>`\ 。

偏移量通常由一個或多個父 :ref:`Container<class_Container>` 節點控制，因此如果你的節點是 :ref:`Container<class_Container>` 的直接子節點，則不應進行手動修改。移動節點或調整節點大小時，偏移量會自動更新。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_pivot_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **pivot_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_pivot_offset>`

.. rst-class:: classref-property-setget

- |void| **set_pivot_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_pivot_offset**\ (\ )

By default, the node's pivot is its top-left corner. When you change its :ref:`rotation<class_Control_property_rotation>` or :ref:`scale<class_Control_property_scale>`, it will rotate or scale around this pivot.

The actual offset is the combined value of this property and :ref:`pivot_offset_ratio<class_Control_property_pivot_offset_ratio>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_pivot_offset_ratio:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **pivot_offset_ratio** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_pivot_offset_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_pivot_offset_ratio**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_pivot_offset_ratio**\ (\ )

Same as :ref:`pivot_offset<class_Control_property_pivot_offset>`, but expressed as uniform vector, where ``Vector2(0, 0)`` is the top-left corner of this control, and ``Vector2(1, 1)`` is its bottom-right corner. Set this property to ``Vector2(0.5, 0.5)`` to pivot around this control's center.

The actual offset is the combined value of this property and :ref:`pivot_offset<class_Control_property_pivot_offset>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_position>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

該節點的位置，相對於父節點。對應的是矩形的左上角。該屬性不受 :ref:`pivot_offset<class_Control_property_pivot_offset>` 的影響。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation** = ``0.0`` :ref:`🔗<class_Control_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation**\ (\ )

節點圍繞其樞紐點的旋轉角度，以弧度為單位。請參閱 :ref:`pivot_offset<class_Control_property_pivot_offset>` 來變更樞紐點的位置。

\ **注意：** 這個屬性在屬性檢視器中是以角度編輯的。如果您想在腳本中使用角度，請使用 :ref:`rotation_degrees<class_Control_property_rotation_degrees>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_rotation_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation_degrees** :ref:`🔗<class_Control_property_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation_degrees**\ (\ )

協助以度數（而非弧度）存取 :ref:`rotation<class_Control_property_rotation>` 的屬性。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Control_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scale**\ (\ )

The node's scale, relative to its :ref:`size<class_Control_property_size>`. Change this property to scale the node around its :ref:`pivot_offset<class_Control_property_pivot_offset>`. The Control's tooltip will also scale according to this value.

\ **Note:** This property is mainly intended to be used for animation purposes. To support multiple resolutions in your project, use an appropriate viewport stretch mode as described in the :doc:`documentation <../tutorials/rendering/multiple_resolutions>` instead of scaling Controls individually.

\ **Note:** :ref:`FontFile.oversampling<class_FontFile_property_oversampling>` does *not* take **Control** :ref:`scale<class_Control_property_scale>` into account. This means that scaling up/down will cause bitmap fonts and rasterized (non-MSDF) dynamic fonts to appear blurry or pixelated. To ensure text remains crisp regardless of scale, you can enable MSDF font rendering by enabling :ref:`ProjectSettings.gui/theme/default_font_multichannel_signed_distance_field<class_ProjectSettings_property_gui/theme/default_font_multichannel_signed_distance_field>` (applies to the default project font only), or enabling **Multichannel Signed Distance Field** in the import options of a DynamicFont for custom fonts. On system fonts, :ref:`SystemFont.multichannel_signed_distance_field<class_SystemFont_property_multichannel_signed_distance_field>` can be enabled in the inspector.

\ **Note:** If the Control node is a child of a :ref:`Container<class_Container>` node, the scale will be reset to ``Vector2(1, 1)`` when the scene is instantiated. To set the Control's scale when it's instantiated, wait for one frame using ``await get_tree().process_frame`` then set its :ref:`scale<class_Control_property_scale>` property.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_shortcut_context:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **shortcut_context** :ref:`🔗<class_Control_property_shortcut_context>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut_context**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_shortcut_context**\ (\ )

該 :ref:`Node<class_Node>` 必須是被聚焦 **Control** 的父節點，才能啟動快捷方式。如果為 ``null``\ ，則可以在任何控制項獲得焦點時啟動該快捷方式（全域快捷方式）。這允許快捷方式只在使用者聚焦 GUI 的特定區域時才被接受。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_size>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

該節點的邊界矩形的大小，使用該節點的坐標系。\ :ref:`Container<class_Container>` 節點會自動更新此屬性。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_horizontal:

.. rst-class:: classref-property

|bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **size_flags_horizontal** = ``1`` :ref:`🔗<class_Control_property_size_flags_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_size_flags**\ (\ value\: |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]\ )
- |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **get_h_size_flags**\ (\ )

告訴父 :ref:`Container<class_Container>` 節點應如何調整尺寸並將其放置在 X 軸上。請使用 :ref:`SizeFlags<enum_Control_SizeFlags>` 常數的組合來更改旗標。查看常數以瞭解每個常數的作用。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_stretch_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **size_flags_stretch_ratio** = ``1.0`` :ref:`🔗<class_Control_property_size_flags_stretch_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stretch_ratio**\ (\ )

如果該節點及其至少一個鄰居節點使用 :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` 大小旗標，則父 :ref:`Container<class_Container>` 將根據該屬性讓它佔用更多或更少的空間。如果該節點的拉伸比為 2，其鄰居節點的拉伸比為 1，則該節點將佔用三分之二的可用空間。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_vertical:

.. rst-class:: classref-property

|bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **size_flags_vertical** = ``1`` :ref:`🔗<class_Control_property_size_flags_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_size_flags**\ (\ value\: |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]\ )
- |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **get_v_size_flags**\ (\ )

告訴父 :ref:`Container<class_Container>` 節點應如何調整尺寸並將其放置在 Y 軸上。請使用 :ref:`SizeFlags<enum_Control_SizeFlags>` 常數的組合來更改旗標。查看常數以瞭解每個常數的作用。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_theme:

.. rst-class:: classref-property

:ref:`Theme<class_Theme>` **theme** :ref:`🔗<class_Control_property_theme>`

.. rst-class:: classref-property-setget

- |void| **set_theme**\ (\ value\: :ref:`Theme<class_Theme>`\ )
- :ref:`Theme<class_Theme>` **get_theme**\ (\ )

該節點及其子 **Control** 和 :ref:`Window<class_Window>` 所使用的 :ref:`Theme<class_Theme>` 資源。如果子節點也設定了 :ref:`Theme<class_Theme>` 資源，則會合並主題項，子節點的定義優先順序更高。

\ **注意：**\ 除非 :ref:`Window<class_Window>` 為嵌入式，否則視窗樣式無效。

.. rst-class:: classref-item-separator

----

.. _class_Control_property_theme_type_variation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **theme_type_variation** = ``&""`` :ref:`🔗<class_Control_property_theme_type_variation>`

.. rst-class:: classref-property-setget

- |void| **set_theme_type_variation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_theme_type_variation**\ (\ )

The name of a theme type variation used by this **Control** to look up its own theme items. When empty, the class name of the node is used (e.g. ``Button`` for the :ref:`Button<class_Button>` control), as well as the class names of all parent classes (in order of inheritance).

When set, this property gives the highest priority to the type of the specified name. This type can in turn extend another type, forming a dependency chain. See :ref:`Theme.set_type_variation()<class_Theme_method_set_type_variation>`. If the theme item cannot be found using this type or its base types, lookup falls back on the class names.

\ **Note:** To look up **Control**'s own items use various ``get_theme_*`` methods without specifying ``theme_type``.

\ **Note:** Theme items are looked for in the tree order, from branch to root, where each **Control** node is checked for its :ref:`theme<class_Control_property_theme>` property. The earliest match against any type/class name is returned. The project-level Theme and the default Theme are checked last.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_tooltip_auto_translate_mode:

.. rst-class:: classref-property

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **tooltip_auto_translate_mode** = ``0`` :ref:`🔗<class_Control_property_tooltip_auto_translate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip_auto_translate_mode**\ (\ value\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ )
- :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **get_tooltip_auto_translate_mode**\ (\ )

Defines if tooltip text should automatically change to its translated version depending on the current locale. Uses the same auto translate mode as this control when set to :ref:`Node.AUTO_TRANSLATE_MODE_INHERIT<class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT>`.

\ **Note:** Tooltips customized using :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` do not use this auto translate mode automatically.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_tooltip_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **tooltip_text** = ``""`` :ref:`🔗<class_Control_property_tooltip_text>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tooltip_text**\ (\ )

The default tooltip text. The tooltip appears when the user's mouse cursor stays idle over this control for a few moments, provided that the :ref:`mouse_filter<class_Control_property_mouse_filter>` property is not :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`. The time required for the tooltip to appear can be changed with the :ref:`ProjectSettings.gui/timers/tooltip_delay_sec<class_ProjectSettings_property_gui/timers/tooltip_delay_sec>` setting.

This string is the default return value of :ref:`get_tooltip()<class_Control_method_get_tooltip>`. Override :ref:`_get_tooltip()<class_Control_private_method__get_tooltip>` to generate tooltip text dynamically. Override :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` to customize the tooltip interface and behavior.

The tooltip popup will use either a default implementation, or a custom one that you can provide by overriding :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>`. The default tooltip includes a :ref:`PopupPanel<class_PopupPanel>` and :ref:`Label<class_Label>` whose theme properties can be customized using :ref:`Theme<class_Theme>` methods with the ``"TooltipPanel"`` and ``"TooltipLabel"`` respectively. For example:


.. tabs::

 .. code-tab:: gdscript

    var style_box = StyleBoxFlat.new()
    style_box.set_bg_color(Color(1, 1, 0))
    style_box.set_border_width_all(2)
    # We assume here that the `theme` property has been assigned a custom Theme beforehand.
    theme.set_stylebox("panel", "TooltipPanel", style_box)
    theme.set_color("font_color", "TooltipLabel", Color(0, 1, 1))

 .. code-tab:: csharp

    var styleBox = new StyleBoxFlat();
    styleBox.SetBgColor(new Color(1, 1, 0));
    styleBox.SetBorderWidthAll(2);
    // We assume here that the `Theme` property has been assigned a custom Theme beforehand.
    Theme.SetStyleBox("panel", "TooltipPanel", styleBox);
    Theme.SetColor("font_color", "TooltipLabel", new Color(0, 1, 1));



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法說明
--------

.. _class_Control_private_method__accessibility_get_contextual_info:

.. rst-class:: classref-method

:ref:`String<class_String>` **_accessibility_get_contextual_info**\ (\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__accessibility_get_contextual_info>`

Return the description of the keyboard shortcuts and other contextual help for this control.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__can_drop_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_drop_data**\ (\ at_position\: :ref:`Vector2<class_Vector2>`, data\: :ref:`Variant<class_Variant>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__can_drop_data>`

Godot calls this method to test if ``data`` from a control's :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` can be dropped at ``at_position``. ``at_position`` is local to this control.

This method should only be used to test the data. Process the data in :ref:`_drop_data()<class_Control_private_method__drop_data>`.

\ **Note:** If the drag was initiated by a keyboard shortcut or :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` is set to :ref:`Vector2.INF<class_Vector2_constant_INF>`, and the currently selected item/text position should be used as the drop position.


.. tabs::

 .. code-tab:: gdscript

    func _can_drop_data(position, data):
        # Check position if it is relevant to you
        # Otherwise, just check data
        return typeof(data) == TYPE_DICTIONARY and data.has("expected")

 .. code-tab:: csharp

    public override bool _CanDropData(Vector2 atPosition, Variant data)
    {
        // Check position if it is relevant to you
        // Otherwise, just check data
        return data.VariantType == Variant.Type.Dictionary && data.AsGodotDictionary().ContainsKey("expected");
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__drop_data:

.. rst-class:: classref-method

|void| **_drop_data**\ (\ at_position\: :ref:`Vector2<class_Vector2>`, data\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_Control_private_method__drop_data>`

Godot calls this method to pass you the ``data`` from a control's :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` result. Godot first calls :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` to test if ``data`` is allowed to drop at ``at_position`` where ``at_position`` is local to this control.

\ **Note:** If the drag was initiated by a keyboard shortcut or :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` is set to :ref:`Vector2.INF<class_Vector2_constant_INF>`, and the currently selected item/text position should be used as the drop position.


.. tabs::

 .. code-tab:: gdscript

    func _can_drop_data(position, data):
        return typeof(data) == TYPE_DICTIONARY and data.has("color")

    func _drop_data(position, data):
        var color = data["color"]

 .. code-tab:: csharp

    public override bool _CanDropData(Vector2 atPosition, Variant data)
    {
        return data.VariantType == Variant.Type.Dictionary && data.AsGodotDictionary().ContainsKey("color");
    }

    public override void _DropData(Vector2 atPosition, Variant data)
    {
        Color color = data.AsGodotDictionary()["color"].AsColor();
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_accessibility_container_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_accessibility_container_name**\ (\ node\: :ref:`Node<class_Node>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_accessibility_container_name>`

Override this method to return a human-readable description of the position of the child ``node`` in the custom container, added to the :ref:`accessibility_name<class_Control_property_accessibility_name>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_drag_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_drag_data**\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| :ref:`🔗<class_Control_private_method__get_drag_data>`

Godot calls this method to get data that can be dragged and dropped onto controls that expect drop data. Returns ``null`` if there is no data to drag. Controls that want to receive drop data should implement :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` and :ref:`_drop_data()<class_Control_private_method__drop_data>`. ``at_position`` is local to this control. Drag may be forced with :ref:`force_drag()<class_Control_method_force_drag>`.

A preview that will follow the mouse that should represent the data can be set with :ref:`set_drag_preview()<class_Control_method_set_drag_preview>`. A good time to set the preview is in this method.

\ **Note:** If the drag was initiated by a keyboard shortcut or :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` is set to :ref:`Vector2.INF<class_Vector2_constant_INF>`, and the currently selected item/text position should be used as the drag position.


.. tabs::

 .. code-tab:: gdscript

    func _get_drag_data(position):
        var mydata = make_data() # This is your custom method generating the drag data.
        set_drag_preview(make_preview(mydata)) # This is your custom method generating the preview of the drag data.
        return mydata

 .. code-tab:: csharp

    public override Variant _GetDragData(Vector2 atPosition)
    {
        var myData = MakeData(); // This is your custom method generating the drag data.
        SetDragPreview(MakePreview(myData)); // This is your custom method generating the preview of the drag data.
        return myData;
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_minimum_size**\ (\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_minimum_size>`

由使用者實作的虛方法。返回此控制項的最小大小。替代 :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>`\ ，以用於通過程式碼控制最小尺寸。實際的最小尺寸將是這兩者的最大值（分別在每個軸上）。

如果未覆蓋，則預設為 :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`\ 。

\ **注意：**\ 當腳本被附加到已經覆蓋其最小大小的 **Control** 節點（例如 :ref:`Label<class_Label>`\ 、\ :ref:`Button<class_Button>`\ 、\ :ref:`PanelContainer<class_PanelContainer>` 等）時，該方法將不會被呼叫。它只能用於最基本的 GUI 節點，如 **Control**\ 、\ :ref:`Container<class_Container>`\ 、\ :ref:`Panel<class_Panel>` 等。

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_tooltip**\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_tooltip>`

Virtual method to be implemented by the user. Returns the tooltip text for the position ``at_position`` in control's local coordinates, which will typically appear when the cursor is resting over this control. See :ref:`get_tooltip()<class_Control_method_get_tooltip>`.

\ **Note:** If this method returns an empty :ref:`String<class_String>` and :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` is not overridden, no tooltip is displayed.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__gui_input:

.. rst-class:: classref-method

|void| **_gui_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Control_private_method__gui_input>`

Virtual method to be implemented by the user. Override this method to handle and accept inputs on UI elements. See also :ref:`accept_event()<class_Control_method_accept_event>`.

\ **Example:** Click on the control to print a message:


.. tabs::

 .. code-tab:: gdscript

    func _gui_input(event):
        if event is InputEventMouseButton:
            if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
                print("I've been clicked D:")

 .. code-tab:: csharp

    public override void _GuiInput(InputEvent @event)
    {
        if (@event is InputEventMouseButton mb)
        {
            if (mb.ButtonIndex == MouseButton.Left && mb.Pressed)
            {
                GD.Print("I've been clicked D:");
            }
        }
    }



If the ``event`` inherits :ref:`InputEventMouse<class_InputEventMouse>`, this method will **not** be called when:

- the control's :ref:`mouse_filter<class_Control_property_mouse_filter>` is set to :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`;

- the control is obstructed by another control on top, that doesn't have :ref:`mouse_filter<class_Control_property_mouse_filter>` set to :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`;

- the control's parent has :ref:`mouse_filter<class_Control_property_mouse_filter>` set to :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>` or has accepted the event;

- the control's parent has :ref:`clip_contents<class_Control_property_clip_contents>` enabled and the ``event``'s position is outside the parent's rectangle;

- the ``event``'s position is outside the control (see :ref:`_has_point()<class_Control_private_method__has_point>`).

\ **Note:** The ``event``'s position is relative to this control's origin.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__has_point>`

由使用者實作的虛方法。返回給定的 ``point`` 是否在該控制項內。

如果沒有被覆蓋，則預設行為是檢查該點是否在控制項的 Rect 內。

\ **注意：**\ 如果要檢查一個點是否在該控制項內部，可以使用 ``Rect2(Vector2.ZERO, size).has_point(point)``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__make_custom_tooltip:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_make_custom_tooltip**\ (\ for_text\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__make_custom_tooltip>`

Virtual method to be implemented by the user. Returns a **Control** node that should be used as a tooltip instead of the default one. ``for_text`` is the return value of :ref:`get_tooltip()<class_Control_method_get_tooltip>`.

The returned node must be of type **Control** or Control-derived. It can have child nodes of any type. It is freed when the tooltip disappears, so make sure you always provide a new instance (if you want to use a pre-existing node from your scene tree, you can duplicate it and pass the duplicated instance). When ``null`` or a non-Control node is returned, the default tooltip will be used instead.

The returned node will be added as child to a :ref:`PopupPanel<class_PopupPanel>`, so you should only provide the contents of that panel. That :ref:`PopupPanel<class_PopupPanel>` can be themed using :ref:`Theme.set_stylebox()<class_Theme_method_set_stylebox>` for the type ``"TooltipPanel"`` (see :ref:`tooltip_text<class_Control_property_tooltip_text>` for an example).

\ **Note:** The tooltip is shrunk to minimal size. If you want to ensure it's fully visible, you might want to set its :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` to some non-zero value.

\ **Note:** The node (and any relevant children) should have their :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` set to ``true`` when returned, otherwise, the viewport that instantiates it will not be able to calculate its minimum size reliably.

\ **Note:** If overridden, this method is called even if :ref:`get_tooltip()<class_Control_method_get_tooltip>` returns an empty string. When this happens with the default tooltip, it is not displayed. To copy this behavior, return ``null`` in this method when ``for_text`` is empty.

\ **Example:** Use a constructed node as a tooltip:


.. tabs::

 .. code-tab:: gdscript

    func _make_custom_tooltip(for_text):
        var label = Label.new()
        label.text = for_text
        return label

 .. code-tab:: csharp

    public override Control _MakeCustomTooltip(string forText)
    {
        var label = new Label();
        label.Text = forText;
        return label;
    }



\ **Example:** Use a scene instance as a tooltip:


.. tabs::

 .. code-tab:: gdscript

    func _make_custom_tooltip(for_text):
        var tooltip = preload("res://some_tooltip_scene.tscn").instantiate()
        tooltip.get_node("Label").text = for_text
        return tooltip

 .. code-tab:: csharp

    public override Control _MakeCustomTooltip(string forText)
    {
        Node tooltip = ResourceLoader.Load<PackedScene>("res://some_tooltip_scene.tscn").Instantiate();
        tooltip.GetNode<Label>("Label").Text = forText;
        return tooltip;
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__structured_text_parser:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **_structured_text_parser**\ (\ args\: :ref:`Array<class_Array>`, text\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__structured_text_parser>`

使用者定義的 BiDi 演算法覆蓋函式。

返回 :ref:`Vector3i<class_Vector3i>` 文字範圍和文字基礎方向的 :ref:`Array<class_Array>`\ ，順序為從左至右。這些範圍應該覆蓋完整的來源文字 ``text``\ ，不應該存在重疊。BiDi 演算法會對每個範圍單獨套用。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accept_event:

.. rst-class:: classref-method

|void| **accept_event**\ (\ ) :ref:`🔗<class_Control_method_accept_event>`

將輸入事件標記為已處理。一旦接受輸入事件，傳播就會停止，不會再傳播到正在偵聽 :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` 和 :ref:`Node._unhandled_key_input()<class_Node_private_method__unhandled_key_input>` 的節點。

\ **注意：**\ 不會影響 :ref:`Input<class_Input>` 中的方法，只會影響事件的傳播。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accessibility_drag:

.. rst-class:: classref-method

|void| **accessibility_drag**\ (\ ) :ref:`🔗<class_Control_method_accessibility_drag>`

Starts drag-and-drop operation without using a mouse.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accessibility_drop:

.. rst-class:: classref-method

|void| **accessibility_drop**\ (\ ) :ref:`🔗<class_Control_method_accessibility_drop>`

Ends drag-and-drop operation without using a mouse.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_color_override:

.. rst-class:: classref-method

|void| **add_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Control_method_add_theme_color_override>`

Creates a local override for a theme :ref:`Color<class_Color>` with the specified ``name``. Local overrides always take precedence when fetching theme items for the control. An override can be removed with :ref:`remove_theme_color_override()<class_Control_method_remove_theme_color_override>`.

See also :ref:`get_theme_color()<class_Control_method_get_theme_color>`.

\ **Example:** Override a :ref:`Label<class_Label>`'s color and reset it later:


.. tabs::

 .. code-tab:: gdscript

    # Given the child Label node "MyLabel", override its font color with a custom value.
    $MyLabel.add_theme_color_override("font_color", Color(1, 0.5, 0))
    # Reset the font color of the child label.
    $MyLabel.remove_theme_color_override("font_color")
    # Alternatively it can be overridden with the default value from the Label type.
    $MyLabel.add_theme_color_override("font_color", get_theme_color("font_color", "Label"))

 .. code-tab:: csharp

    // Given the child Label node "MyLabel", override its font color with a custom value.
    GetNode<Label>("MyLabel").AddThemeColorOverride("font_color", new Color(1, 0.5f, 0));
    // Reset the font color of the child label.
    GetNode<Label>("MyLabel").RemoveThemeColorOverride("font_color");
    // Alternatively it can be overridden with the default value from the Label type.
    GetNode<Label>("MyLabel").AddThemeColorOverride("font_color", GetThemeColor("font_color", "Label"));



.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_constant_override:

.. rst-class:: classref-method

|void| **add_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`, constant\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Control_method_add_theme_constant_override>`

為名稱為 ``name`` 的主題常數建立本地覆蓋項。為控制項獲取主題專案時，本地覆蓋項始終優先。覆蓋項可以使用 :ref:`remove_theme_constant_override()<class_Control_method_remove_theme_constant_override>` 移除。

另見 :ref:`get_theme_constant()<class_Control_method_get_theme_constant>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_font_override:

.. rst-class:: classref-method

|void| **add_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`, font\: :ref:`Font<class_Font>`\ ) :ref:`🔗<class_Control_method_add_theme_font_override>`

為名稱為 ``name`` 的主題 :ref:`Font<class_Font>` 建立本地覆蓋項。為控制項獲取主題專案時，本地覆蓋項始終優先。覆蓋項可以使用 :ref:`remove_theme_font_override()<class_Control_method_remove_theme_font_override>` 移除。

另見 :ref:`get_theme_font()<class_Control_method_get_theme_font>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_font_size_override:

.. rst-class:: classref-method

|void| **add_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`, font_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Control_method_add_theme_font_size_override>`

為名稱為 ``name`` 的主題字形大小建立本地覆蓋項。為控制項獲取主題專案時，本地覆蓋項始終優先。覆蓋項可以使用 :ref:`remove_theme_font_size_override()<class_Control_method_remove_theme_font_size_override>` 移除。

另見 :ref:`get_theme_font_size()<class_Control_method_get_theme_font_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_icon_override:

.. rst-class:: classref-method

|void| **add_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_Control_method_add_theme_icon_override>`

為名稱為 ``name`` 的主題圖示建立本地覆蓋項。為控制項獲取主題專案時，本地覆蓋項始終優先。覆蓋項可以使用 :ref:`remove_theme_icon_override()<class_Control_method_remove_theme_icon_override>` 移除。

另見 :ref:`get_theme_icon()<class_Control_method_get_theme_icon>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_stylebox_override:

.. rst-class:: classref-method

|void| **add_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`, stylebox\: :ref:`StyleBox<class_StyleBox>`\ ) :ref:`🔗<class_Control_method_add_theme_stylebox_override>`

Creates a local override for a theme :ref:`StyleBox<class_StyleBox>` with the specified ``name``. Local overrides always take precedence when fetching theme items for the control. An override can be removed with :ref:`remove_theme_stylebox_override()<class_Control_method_remove_theme_stylebox_override>`.

See also :ref:`get_theme_stylebox()<class_Control_method_get_theme_stylebox>`.

\ **Example:** Modify a property in a :ref:`StyleBox<class_StyleBox>` by duplicating it:


.. tabs::

 .. code-tab:: gdscript

    # The snippet below assumes the child node "MyButton" has a StyleBoxFlat assigned.
    # Resources are shared across instances, so we need to duplicate it
    # to avoid modifying the appearance of all other buttons.
    var new_stylebox_normal = $MyButton.get_theme_stylebox("normal").duplicate()
    new_stylebox_normal.border_width_top = 3
    new_stylebox_normal.border_color = Color(0, 1, 0.5)
    $MyButton.add_theme_stylebox_override("normal", new_stylebox_normal)
    # Remove the stylebox override.
    $MyButton.remove_theme_stylebox_override("normal")

 .. code-tab:: csharp

    // The snippet below assumes the child node "MyButton" has a StyleBoxFlat assigned.
    // Resources are shared across instances, so we need to duplicate it
    // to avoid modifying the appearance of all other buttons.
    StyleBoxFlat newStyleboxNormal = GetNode<Button>("MyButton").GetThemeStylebox("normal").Duplicate() as StyleBoxFlat;
    newStyleboxNormal.BorderWidthTop = 3;
    newStyleboxNormal.BorderColor = new Color(0, 1, 0.5f);
    GetNode<Button>("MyButton").AddThemeStyleboxOverride("normal", newStyleboxNormal);
    // Remove the stylebox override.
    GetNode<Button>("MyButton").RemoveThemeStyleboxOverride("normal");



.. rst-class:: classref-item-separator

----

.. _class_Control_method_begin_bulk_theme_override:

.. rst-class:: classref-method

|void| **begin_bulk_theme_override**\ (\ ) :ref:`🔗<class_Control_method_begin_bulk_theme_override>`

防止 ``*_theme_*_override`` 方法發出 :ref:`NOTIFICATION_THEME_CHANGED<class_Control_constant_NOTIFICATION_THEME_CHANGED>`\ ，直到 :ref:`end_bulk_theme_override()<class_Control_method_end_bulk_theme_override>` 被呼叫。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_end_bulk_theme_override:

.. rst-class:: classref-method

|void| **end_bulk_theme_override**\ (\ ) :ref:`🔗<class_Control_method_end_bulk_theme_override>`

結束批量主題覆蓋更新。見 :ref:`begin_bulk_theme_override()<class_Control_method_begin_bulk_theme_override>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_next_valid_focus:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_next_valid_focus**\ (\ ) |const| :ref:`🔗<class_Control_method_find_next_valid_focus>`

找到下一個可以接受焦點的 **Control**\ ，在樹的下方。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_prev_valid_focus:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_prev_valid_focus**\ (\ ) |const| :ref:`🔗<class_Control_method_find_prev_valid_focus>`

找到上一個可以接受焦點的 **Control**\ ，在樹的上方。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_valid_focus_neighbor:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_valid_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_find_valid_focus_neighbor>`

找出下一個可以在指定的 :ref:`Side<enum_@GlobalScope_Side>` 上接收焦點的 **Control**\ 。

\ **注意：**\ 這與\ :ref:`get_focus_neighbor()<class_Control_method_get_focus_neighbor>` 不同，後者返回指定焦點鄰居的路徑。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_force_drag:

.. rst-class:: classref-method

|void| **force_drag**\ (\ data\: :ref:`Variant<class_Variant>`, preview\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_Control_method_force_drag>`

通過傳遞 ``data`` 和 ``preview`` 強制拖動並繞過 :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` 和 :ref:`set_drag_preview()<class_Control_method_set_drag_preview>`\ 。即使滑鼠既沒有在該控制項懸停也沒有在該控制項上按下，拖動都將開始。

方法 :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` 和 :ref:`_drop_data()<class_Control_private_method__drop_data>` 必須在想要接收拖放資料的控制項上實作。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_anchor:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_anchor>`

返回指定 :ref:`Side<enum_@GlobalScope_Side>` 的錨點。用於 :ref:`anchor_bottom<class_Control_property_anchor_bottom>`\ 、\ :ref:`anchor_left<class_Control_property_anchor_left>`\ 、\ :ref:`anchor_right<class_Control_property_anchor_right>`\ 、和 :ref:`anchor_top<class_Control_property_anchor_top>` 的取值方法。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_begin:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_begin**\ (\ ) |const| :ref:`🔗<class_Control_method_get_begin>`

返回 :ref:`offset_left<class_Control_property_offset_left>` 和 :ref:`offset_top<class_Control_property_offset_top>`\ 。另請參閱 :ref:`position<class_Control_property_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_combined_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_combined_minimum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_combined_minimum_size>`

返回 :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` 和 :ref:`get_minimum_size()<class_Control_method_get_minimum_size>` 的組合最小大小。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_combined_pivot_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_combined_pivot_offset**\ (\ ) |const| :ref:`🔗<class_Control_method_get_combined_pivot_offset>`

Returns the combined value of :ref:`pivot_offset<class_Control_property_pivot_offset>` and :ref:`pivot_offset_ratio<class_Control_property_pivot_offset_ratio>`, in pixels. The ratio is multiplied by the control's size.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_cursor_shape:

.. rst-class:: classref-method

:ref:`CursorShape<enum_Control_CursorShape>` **get_cursor_shape**\ (\ position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Control_method_get_cursor_shape>`

Returns the mouse cursor shape for this control when hovered over ``position`` in local coordinates. For most controls, this is the same as :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>`, but some built-in controls implement more complex logic.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_end:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_end**\ (\ ) |const| :ref:`🔗<class_Control_method_get_end>`

返回 :ref:`offset_right<class_Control_property_offset_right>` 和 :ref:`offset_bottom<class_Control_property_offset_bottom>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_focus_mode_with_override:

.. rst-class:: classref-method

:ref:`FocusMode<enum_Control_FocusMode>` **get_focus_mode_with_override**\ (\ ) |const| :ref:`🔗<class_Control_method_get_focus_mode_with_override>`

Returns the :ref:`focus_mode<class_Control_property_focus_mode>`, but takes the :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` into account. If :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` is set to :ref:`FOCUS_BEHAVIOR_DISABLED<class_Control_constant_FOCUS_BEHAVIOR_DISABLED>`, or it is set to :ref:`FOCUS_BEHAVIOR_INHERITED<class_Control_constant_FOCUS_BEHAVIOR_INHERITED>` and its ancestor is set to :ref:`FOCUS_BEHAVIOR_DISABLED<class_Control_constant_FOCUS_BEHAVIOR_DISABLED>`, then this returns :ref:`FOCUS_NONE<class_Control_constant_FOCUS_NONE>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_focus_neighbor:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_focus_neighbor>`

返回指定 :ref:`Side<enum_@GlobalScope_Side>` 的焦點鄰居。用於 :ref:`focus_neighbor_bottom<class_Control_property_focus_neighbor_bottom>`\ 、\ :ref:`focus_neighbor_left<class_Control_property_focus_neighbor_left>`\ 、\ :ref:`focus_neighbor_right<class_Control_property_focus_neighbor_right>`\ 、和 :ref:`focus_neighbor_top<class_Control_property_focus_neighbor_top>` 的取值方法。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_global_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_global_rect**\ (\ ) |const| :ref:`🔗<class_Control_method_get_global_rect>`

返回控制項相對於所屬畫布的位置和大小。參見 :ref:`global_position<class_Control_property_global_position>` 和 :ref:`size<class_Control_property_size>`\ 。

\ **注意：**\ 如果節點本身或節點與畫布之間的任何父級 :ref:`CanvasItem<class_CanvasItem>` 具有非預設旋轉或傾斜，則生成的大小可能沒有意義。

\ **注意：**\ 將 :ref:`Viewport.gui_snap_controls_to_pixels<class_Viewport_property_gui_snap_controls_to_pixels>` 設定為 ``true`` 會導致顯示的控制項和返回的 :ref:`Rect2<class_Rect2>` 之間的四捨五入不準確。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_minimum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_minimum_size>`

返回該控制項的最小尺寸。見 :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_mouse_filter_with_override:

.. rst-class:: classref-method

:ref:`MouseFilter<enum_Control_MouseFilter>` **get_mouse_filter_with_override**\ (\ ) |const| :ref:`🔗<class_Control_method_get_mouse_filter_with_override>`

Returns the :ref:`mouse_filter<class_Control_property_mouse_filter>`, but takes the :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` into account. If :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` is set to :ref:`MOUSE_BEHAVIOR_DISABLED<class_Control_constant_MOUSE_BEHAVIOR_DISABLED>`, or it is set to :ref:`MOUSE_BEHAVIOR_INHERITED<class_Control_constant_MOUSE_BEHAVIOR_INHERITED>` and its ancestor is set to :ref:`MOUSE_BEHAVIOR_DISABLED<class_Control_constant_MOUSE_BEHAVIOR_DISABLED>`, then this returns :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_offset>`

返回指定 :ref:`Side<enum_@GlobalScope_Side>` 的偏移。這是 :ref:`offset_bottom<class_Control_property_offset_bottom>`\ 、\ :ref:`offset_left<class_Control_property_offset_left>`\ 、\ :ref:`offset_right<class_Control_property_offset_right>` 和 :ref:`offset_top<class_Control_property_offset_top>` 的 getter 方法。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_parent_area_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_parent_area_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_parent_area_size>`

返回父控制項中佔用的寬度/高度。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_parent_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_parent_control**\ (\ ) |const| :ref:`🔗<class_Control_method_get_parent_control>`

返回父控制節點。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Control_method_get_rect>`

返回控制項在包含節點的坐標系中的位置和大小。參見 :ref:`position<class_Control_property_position>`\ 、\ :ref:`scale<class_Control_property_scale>` 和 :ref:`size<class_Control_property_size>`\ 。

\ **注意：**\ 如果 :ref:`rotation<class_Control_property_rotation>` 不是預設的旋轉，那麼得到的大小是沒有意義的。

\ **注意：**\ 將 :ref:`Viewport.gui_snap_controls_to_pixels<class_Viewport_property_gui_snap_controls_to_pixels>` 設定為 ``true``\ ，會導致顯示的控制項和返回的 :ref:`Rect2<class_Rect2>` 之間的四捨五入不準確。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_screen_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_screen_position**\ (\ ) |const| :ref:`🔗<class_Control_method_get_screen_position>`

Returns the position of this **Control** in global screen coordinates (i.e. taking window position into account). Mostly useful for editor plugins.

Equivalent to ``get_screen_transform().origin`` (see :ref:`CanvasItem.get_screen_transform()<class_CanvasItem_method_get_screen_transform>`).

\ **Example:** Show a popup at the mouse position:

::

    popup_menu.position = get_screen_position() + get_screen_transform().basis_xform(get_local_mouse_position())

    # The above code is equivalent to:
    popup_menu.position = get_screen_transform() * get_local_mouse_position()

    popup_menu.reset_size()
    popup_menu.popup()

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_theme_color**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_color>`

從樹中第一個配對的 :ref:`Theme<class_Theme>` 返回 :ref:`Color<class_Color>`\ ，該 :ref:`Theme<class_Theme>` 中應存在指定名稱 ``name`` 和主題型別 ``theme_type`` 的顏色項。如果省略 ``theme_type`` 則會使用目前控制項的類別名稱，如果定義了 :ref:`theme_type_variation<class_Control_property_theme_type_variation>` 則會優先使用。如果該型別為類別名稱，則還會按照繼承順序檢查父類。如果該型別為變種，則還會按照依賴順序檢查基礎型別，然後再檢查該控制項的類別名稱及其父類。

會首先考慮目前控制項的本地覆蓋項（見 :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>`\ ），然後才是其 :ref:`theme<class_Control_property_theme>`\ 。各個父控制項及其 :ref:`theme<class_Control_property_theme>` 在目前控制項之後考慮；會跳過沒有 :ref:`theme<class_Control_property_theme>` 的控制項。如果樹中沒有配對的 :ref:`Theme<class_Theme>`\ ，則會使用自訂專案 :ref:`Theme<class_Theme>`\ （見 :ref:`ProjectSettings.gui/theme/custom<class_ProjectSettings_property_gui/theme/custom>`\ ）和預設 :ref:`Theme<class_Theme>`\ （見 :ref:`ThemeDB<class_ThemeDB>`\ ）。


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # 獲取目前 Control 類中定義的字形顏色，前提是存在。
        modulate = get_theme_color("font_color")
        # 獲取 Button 類中定義的字形顏色。
        modulate = get_theme_color("font_color", "Button")

 .. code-tab:: csharp

    public override void _Ready()
    {
        // 獲取目前 Control 類中定義的字形顏色，前提是存在。
        Modulate = GetThemeColor("font_color");
        // 獲取 Button 類中定義的字形顏色。
        Modulate = GetThemeColor("font_color", "Button");
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_constant:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_constant**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_constant>`

從樹中第一個配對的 :ref:`Theme<class_Theme>` 返回常數，該 :ref:`Theme<class_Theme>` 中應存在指定名稱 ``name`` 和主題型別 ``theme_type`` 的常數項。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_base_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_theme_default_base_scale**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_base_scale>`

從樹中第一個配對的 :ref:`Theme<class_Theme>` 返回預設基礎縮放值，該 :ref:`Theme<class_Theme>` 中應存在有效的 :ref:`Theme.default_base_scale<class_Theme_property_default_base_scale>` 值。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_font:

.. rst-class:: classref-method

:ref:`Font<class_Font>` **get_theme_default_font**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_font>`

從樹中第一個配對的 :ref:`Theme<class_Theme>` 返回預設字形，該 :ref:`Theme<class_Theme>` 中應存在有效的 :ref:`Theme.default_font<class_Theme_property_default_font>` 值。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_font_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_default_font_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_font_size>`

從樹中第一個配對的 :ref:`Theme<class_Theme>` 返回預設字形大小，該 :ref:`Theme<class_Theme>` 中應存在有效的 :ref:`Theme.default_font_size<class_Theme_property_default_font_size>` 值。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_font:

.. rst-class:: classref-method

:ref:`Font<class_Font>` **get_theme_font**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_font>`

從樹中第一個配對的 :ref:`Theme<class_Theme>` 返回 :ref:`Font<class_Font>`\ ，該 :ref:`Theme<class_Theme>` 中應存在指定名稱 ``name`` 和主題型別 ``theme_type`` 的字形項。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_font_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_font_size**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_font_size>`

從樹中第一個配對的 :ref:`Theme<class_Theme>` 返回字形大小，該 :ref:`Theme<class_Theme>` 中應存在指定名稱 ``name`` 和主題型別 ``theme_type`` 的字形大小項。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_theme_icon**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_icon>`

從樹中第一個配對的 :ref:`Theme<class_Theme>` 返回圖示，該 :ref:`Theme<class_Theme>` 中應存在指定名稱 ``name`` 和主題型別 ``theme_type`` 的圖示項。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_stylebox:

.. rst-class:: classref-method

:ref:`StyleBox<class_StyleBox>` **get_theme_stylebox**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_stylebox>`

從樹中第一個配對的 :ref:`Theme<class_Theme>` 返回 :ref:`StyleBox<class_StyleBox>`\ ，該 :ref:`Theme<class_Theme>` 中應存在指定名稱 ``name`` 和主題型別 ``theme_type`` 的樣式盒項。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tooltip**\ (\ at_position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Control_method_get_tooltip>`

Returns the tooltip text for the position ``at_position`` in control's local coordinates, which will typically appear when the cursor is resting over this control. By default, it returns :ref:`tooltip_text<class_Control_property_tooltip_text>`.

This method can be overridden to customize its behavior. See :ref:`_get_tooltip()<class_Control_private_method__get_tooltip>`.

\ **Note:** If this method returns an empty :ref:`String<class_String>` and :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` is not overridden, no tooltip is displayed.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_grab_click_focus:

.. rst-class:: classref-method

|void| **grab_click_focus**\ (\ ) :ref:`🔗<class_Control_method_grab_click_focus>`

Creates an :ref:`InputEventMouseButton<class_InputEventMouseButton>` that attempts to click the control. If the event is received, the control gains focus.


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        grab_click_focus() # When clicking another Control node, this node will be clicked instead.

 .. code-tab:: csharp

    public override void _Process(double delta)
    {
        GrabClickFocus(); // When clicking another Control node, this node will be clicked instead.
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_method_grab_focus:

.. rst-class:: classref-method

|void| **grab_focus**\ (\ hide_focus\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_grab_focus>`

Steal the focus from another control and become the focused control (see :ref:`focus_mode<class_Control_property_focus_mode>`).

If ``hide_focus`` is ``true``, the control will not visually show its focused state. Has no effect for :ref:`LineEdit<class_LineEdit>` and :ref:`TextEdit<class_TextEdit>` when :ref:`ProjectSettings.gui/common/show_focus_state_on_pointer_event<class_ProjectSettings_property_gui/common/show_focus_state_on_pointer_event>` is set to ``Control Supports Keyboard Input``, or for any control when it is set to ``Always``.

\ **Note:** Using this method together with :ref:`Callable.call_deferred()<class_Callable_method_call_deferred>` makes it more reliable, especially when called inside :ref:`Node._ready()<class_Node_private_method__ready>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_focus:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_focus**\ (\ ignore_hidden_focus\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Control_method_has_focus>`

Returns ``true`` if this is the current focused control. See :ref:`focus_mode<class_Control_property_focus_mode>`.

If ``ignore_hidden_focus`` is ``true``, controls that have their focus hidden will always return ``false``. Hidden focus happens automatically when controls gain focus via mouse input, or manually using :ref:`grab_focus()<class_Control_method_grab_focus>` with ``hide_focus`` set to ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_color**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_color>`

如果樹中存在配對的 :ref:`Theme<class_Theme>` 則返回 ``true``\ ，該 :ref:`Theme<class_Theme>` 中應存在指定名稱 ``name`` 和主題型別 ``theme_type`` 的顏色項。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_color_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_color_override>`

如果該 **Control** 節點中存在名為指定 ``name`` 的主題 :ref:`Color<class_Color>` 本地覆蓋項，則返回 ``true``\ 。

詳情請參閱 :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_constant:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_constant**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_constant>`

如果樹中存在配對的 :ref:`Theme<class_Theme>` 則返回 ``true``\ ，該 :ref:`Theme<class_Theme>` 中應存在指定名稱 ``name`` 和主題型別 ``theme_type`` 的常數項。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_constant_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_constant_override>`

如果該 **Control** 節點中存在名為指定 ``name`` 的主題常數本地覆蓋項，則返回 ``true``\ 。

詳情請參閱 :ref:`add_theme_constant_override()<class_Control_method_add_theme_constant_override>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_font>`

如果樹中存在配對的 :ref:`Theme<class_Theme>` 則返回 ``true``\ ，該 :ref:`Theme<class_Theme>` 中應存在指定名稱 ``name`` 和主題型別 ``theme_type`` 的字形項。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_override>`

如果該 **Control** 節點中存在名為指定 ``name`` 的主題 :ref:`Font<class_Font>` 本地覆蓋項，則返回 ``true``\ 。

詳情請參閱 :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_size:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_size**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_size>`

如果樹中存在配對的 :ref:`Theme<class_Theme>` 則返回 ``true``\ ，該 :ref:`Theme<class_Theme>` 中應存在指定名稱 ``name`` 和主題型別 ``theme_type`` 的字形大小項。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_size_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_size_override>`

如果該 **Control** 節點中存在名為指定 ``name`` 的主題字形大小本地覆蓋項，則返回 ``true``\ 。

詳情請參閱 :ref:`add_theme_font_size_override()<class_Control_method_add_theme_font_size_override>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_icon:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_icon**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_icon>`

如果樹中存在配對的 :ref:`Theme<class_Theme>` 則返回 ``true``\ ，該 :ref:`Theme<class_Theme>` 中應存在指定名稱 ``name`` 和主題型別 ``theme_type`` 的圖示項。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_icon_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_icon_override>`

如果該 **Control** 節點中存在名為指定 ``name`` 的主題圖示本地覆蓋項，則返回 ``true``\ 。

詳情請參閱 :ref:`add_theme_icon_override()<class_Control_method_add_theme_icon_override>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_stylebox:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_stylebox**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_stylebox>`

如果樹中存在配對的 :ref:`Theme<class_Theme>` 則返回 ``true``\ ，該 :ref:`Theme<class_Theme>` 中應存在指定名稱 ``name`` 和主題型別 ``theme_type`` 的樣式盒項。

詳情請參閱 :ref:`get_theme_color()<class_Control_method_get_theme_color>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_stylebox_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_stylebox_override>`

如果該 **Control** 節點中存在名為指定 ``name`` 的主題 :ref:`StyleBox<class_StyleBox>` 本地覆蓋項，則返回 ``true``\ 。

詳情請參閱 :ref:`add_theme_stylebox_override()<class_Control_method_add_theme_stylebox_override>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_is_drag_successful:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_drag_successful**\ (\ ) |const| :ref:`🔗<class_Control_method_is_drag_successful>`

如果拖放操作成功則返回 ``true``\ ，是 :ref:`Viewport.gui_is_drag_successful()<class_Viewport_method_gui_is_drag_successful>` 的替代方案。

建議與 :ref:`Node.NOTIFICATION_DRAG_END<class_Node_constant_NOTIFICATION_DRAG_END>` 配合使用。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_is_layout_rtl:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_layout_rtl**\ (\ ) |const| :ref:`🔗<class_Control_method_is_layout_rtl>`

Returns ``true`` if the layout is right-to-left. See also :ref:`layout_direction<class_Control_property_layout_direction>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_release_focus:

.. rst-class:: classref-method

|void| **release_focus**\ (\ ) :ref:`🔗<class_Control_method_release_focus>`

放棄焦點。不會讓其他控制項能夠接收鍵盤輸入。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_color_override:

.. rst-class:: classref-method

|void| **remove_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_color_override>`

移除先前由 :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>` 或透過屬性檢視器面板所加入，給定主題 :ref:`Color<class_Color>` 的本地覆寫，該覆寫使用指定的 ``name``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_constant_override:

.. rst-class:: classref-method

|void| **remove_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_constant_override>`

移除針對使用指定 ``name`` 的主題常數所設定的本機覆寫，該覆寫先前透過 :ref:`add_theme_constant_override()<class_Control_method_add_theme_constant_override>` 或屬性檢視器面板新增。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_font_override:

.. rst-class:: classref-method

|void| **remove_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_font_override>`

移除先前透過 :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>` 或透過屬性檢視器面板新增的、名稱為指定 ``name`` 的主題 :ref:`Font<class_Font>` 本地覆寫。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_font_size_override:

.. rst-class:: classref-method

|void| **remove_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_font_size_override>`

移除使用指定的 ``name``\ ，先前由 :ref:`add_theme_font_size_override()<class_Control_method_add_theme_font_size_override>` 或透過屬性檢視器面板新增的主題字型大小的本地覆寫。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_icon_override:

.. rst-class:: classref-method

|void| **remove_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_icon_override>`

移除先前透過 :ref:`add_theme_icon_override()<class_Control_method_add_theme_icon_override>` 或屬性檢視器面板新增的、具有指定 ``name`` 的主題圖示本地覆寫。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_stylebox_override:

.. rst-class:: classref-method

|void| **remove_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_stylebox_override>`

移除先前由 :ref:`add_theme_stylebox_override()<class_Control_method_add_theme_stylebox_override>` 或透過屬性檢視器面板新增的、具有指定 ``name`` 的主題 :ref:`StyleBox<class_StyleBox>` 本地覆寫。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_reset_size:

.. rst-class:: classref-method

|void| **reset_size**\ (\ ) :ref:`🔗<class_Control_method_reset_size>`

將大小重設為 :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>`\ 。等價於呼叫 ``set_size(Vector2())``\ （或任何小於最小值的大小）。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchor:

.. rst-class:: classref-method

|void| **set_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, keep_offset\: :ref:`bool<class_bool>` = false, push_opposite_anchor\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Control_method_set_anchor>`

將指定 :ref:`Side<enum_@GlobalScope_Side>` 的錨點設定為 ``anchor``\ 。用於 :ref:`anchor_bottom<class_Control_property_anchor_bottom>`\ 、\ :ref:`anchor_left<class_Control_property_anchor_left>`\ 、\ :ref:`anchor_right<class_Control_property_anchor_right>`\ 、和 :ref:`anchor_top<class_Control_property_anchor_top>` 的設值函數。

如果 ``keep_offset`` 為 ``true``\ ，則偏移量不會在該操作後更新。

如果 ``push_opposite_anchor`` 為 ``true``\ ，並且相對的錨點與該錨點重疊，則相對的錨點的值將被覆蓋。例如，當將左錨點設定為 1 且右錨點的值為 0.5 時，右錨點的值也將為 1。如果 ``push_opposite_anchor`` 為 ``false``\ ，則左錨點的值將為 0.5。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchor_and_offset:

.. rst-class:: classref-method

|void| **set_anchor_and_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, offset\: :ref:`float<class_float>`, push_opposite_anchor\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_anchor_and_offset>`

工作原理與 :ref:`set_anchor()<class_Control_method_set_anchor>` 相同，但取代 ``keep_offset`` 參數和自動更新的偏移，它允許你自己設定偏移量（參見 :ref:`set_offset()<class_Control_method_set_offset>`\ ）。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchors_and_offsets_preset:

.. rst-class:: classref-method

|void| **set_anchors_and_offsets_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Control_method_set_anchors_and_offsets_preset>`

設定錨點預設和偏移預設。參見 :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` 和 :ref:`set_offsets_preset()<class_Control_method_set_offsets_preset>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchors_preset:

.. rst-class:: classref-method

|void| **set_anchors_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_anchors_preset>`

將錨點設定為 :ref:`LayoutPreset<enum_Control_LayoutPreset>` 列舉中的 ``preset``\ 。這是相當於在 2D 編輯器中使用佈局功能表的程式碼。

如果 ``keep_offsets`` 為 ``true``\ ，則控制項的位置也將被更新。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_begin:

.. rst-class:: classref-method

|void| **set_begin**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Control_method_set_begin>`

同時設定 :ref:`offset_left<class_Control_property_offset_left>` 和 :ref:`offset_top<class_Control_property_offset_top>`\ 。相當於改變 :ref:`position<class_Control_property_position>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_drag_forwarding:

.. rst-class:: classref-method

|void| **set_drag_forwarding**\ (\ drag_func\: :ref:`Callable<class_Callable>`, can_drop_func\: :ref:`Callable<class_Callable>`, drop_func\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Control_method_set_drag_forwarding>`

Sets the given callables to be used instead of the control's own drag-and-drop virtual methods. If a callable is empty, its respective virtual method is used as normal.

The arguments for each callable should be exactly the same as their respective virtual methods, which would be:

- ``drag_func`` corresponds to :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` and requires a :ref:`Vector2<class_Vector2>`;

- ``can_drop_func`` corresponds to :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` and requires both a :ref:`Vector2<class_Vector2>` and a :ref:`Variant<class_Variant>`;

- ``drop_func`` corresponds to :ref:`_drop_data()<class_Control_private_method__drop_data>` and requires both a :ref:`Vector2<class_Vector2>` and a :ref:`Variant<class_Variant>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_drag_preview:

.. rst-class:: classref-method

|void| **set_drag_preview**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_Control_method_set_drag_preview>`

在滑鼠指標處顯示給定的控制項。呼叫此方法的好時機是在 :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` 中。控制項不得位於場景樹中。你不應釋放控制項，也不應在拖動持續時間之外保留對控制項的引用。拖拽結束後它會自動刪除。


.. tabs::

 .. code-tab:: gdscript

    @export var color = Color(1, 0, 0, 1)

    func _get_drag_data(position):
        #使用不在樹中的控制項
        var cpb = ColorPickerButton.new()
        cpb.color = color
        cpb.size = Vector2(50, 50)
        set_drag_preview(cpb)
        return color

 .. code-tab:: csharp

    [Export]
    private Color _color = new Color(1, 0, 0, 1);

    public override Variant _GetDragData(Vector2 atPosition)
    {
        // 使用不在樹中的控制項
        var cpb = new ColorPickerButton();
        cpb.Color = _color;
        cpb.Size = new Vector2(50, 50);
        SetDragPreview(cpb);
        return _color;
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_end:

.. rst-class:: classref-method

|void| **set_end**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Control_method_set_end>`

同時設定 :ref:`offset_right<class_Control_property_offset_right>` 和 :ref:`offset_bottom<class_Control_property_offset_bottom>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_focus_neighbor:

.. rst-class:: classref-method

|void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_Control_method_set_focus_neighbor>`

將指定 :ref:`Side<enum_@GlobalScope_Side>` 的焦點鄰居設定為節點路徑 ``neighbor`` 處的 **Control**\ 。這是 :ref:`focus_neighbor_bottom<class_Control_property_focus_neighbor_bottom>`\ 、\ :ref:`focus_neighbor_left<class_Control_property_focus_neighbor_left>`\ 、\ :ref:`focus_neighbor_right<class_Control_property_focus_neighbor_right>` 和 :ref:`focus_neighbor_top<class_Control_property_focus_neighbor_top>` 的 setter 方法。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_global_position:

.. rst-class:: classref-method

|void| **set_global_position**\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_global_position>`

將 :ref:`global_position<class_Control_property_global_position>` 設定為給定的 ``position``\ 。

如果 ``keep_offsets`` 為 ``true``\ ，則將更新控制項的錨點而不是偏移量。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_offset:

.. rst-class:: classref-method

|void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Control_method_set_offset>`

將指定 :ref:`Side<enum_@GlobalScope_Side>` 的偏移設定為 ``offset``\ 。用於 :ref:`offset_bottom<class_Control_property_offset_bottom>`\ 、\ :ref:`offset_left<class_Control_property_offset_left>`\ 、\ :ref:`offset_right<class_Control_property_offset_right>`\ 、和 :ref:`offset_top<class_Control_property_offset_top>` 的設值方法。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_offsets_preset:

.. rst-class:: classref-method

|void| **set_offsets_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Control_method_set_offsets_preset>`

將偏移設定為 :ref:`LayoutPreset<enum_Control_LayoutPreset>` 列舉中的 ``preset``\ 。這是相當於在 2D 編輯器中使用佈局功能表的程式碼。

將參數 ``resize_mode`` 與 :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` 中的常數一起使用，以更好地確定 **Control** 的最終大小。如果與更改尺寸大小的預設一起使用，則將忽略常數尺寸大小，例如 :ref:`PRESET_LEFT_WIDE<class_Control_constant_PRESET_LEFT_WIDE>`\ 。

使用參數 ``margin`` 來確定 **Control** 和邊緣之間的間隙。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_position:

.. rst-class:: classref-method

|void| **set_position**\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_position>`

將 :ref:`position<class_Control_property_position>` 設定為給定的 ``position``\ 。

如果 ``keep_offsets`` 為 ``true``\ ，則將更新控制項的錨點而不是偏移量。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_size:

.. rst-class:: classref-method

|void| **set_size**\ (\ size\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_size>`

設定大小（參見 :ref:`size<class_Control_property_size>`\ ）。

如果 ``keep_offsets`` 為 ``true``\ ，則將更新控制項的錨點而不是偏移量。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_update_minimum_size:

.. rst-class:: classref-method

|void| **update_minimum_size**\ (\ ) :ref:`🔗<class_Control_method_update_minimum_size>`

使該節點和直至頂級的父節點中的大小快取無效。旨在當返回值更改時與 :ref:`get_minimum_size()<class_Control_method_get_minimum_size>` 一起使用。直接設定 :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` 將自動呼叫該方法。

.. rst-class:: classref-item-separator

----

.. _class_Control_method_warp_mouse:

.. rst-class:: classref-method

|void| **warp_mouse**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Control_method_warp_mouse>`

將滑鼠游標移動到 ``position``\ ，相對於該 **Control** 的 :ref:`position<class_Control_property_position>`\ 。

\ **注意：**\ :ref:`warp_mouse()<class_Control_method_warp_mouse>` 僅在 Windows、macOS 和 Linux 上受支援。它在 Android、iOS 和 Web 上沒有效果。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要使用者覆寫才能生效。)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (本方法沒有副作用。不會修改該實例的任何成員變數。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了這裡描述的參數外，還可以接受任意數量的參數。)`
.. |constructor| replace:: :abbr:`constructor (本方法用於建構一個型別。)`
.. |static| replace:: :abbr:`static (本方法無需實例即可呼叫，因此可以直接使用類別名稱呼叫。)`
.. |operator| replace:: :abbr:`operator (本方法描述將本型別作為左運算元時可用的有效運算子。)`
.. |bitfield| replace:: :abbr:`BitField (此值是由下列旗標組成的位元遮罩整數。)`
.. |void| replace:: :abbr:`void (無回傳值。)`
