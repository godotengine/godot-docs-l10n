:github_url: hide

.. _class_Control:

Control
=======

**Hérite de :** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`BaseButton<class_BaseButton>`, :ref:`ColorRect<class_ColorRect>`, :ref:`Container<class_Container>`, :ref:`GraphEdit<class_GraphEdit>`, :ref:`ItemList<class_ItemList>`, :ref:`Label<class_Label>`, :ref:`LineEdit<class_LineEdit>`, :ref:`MenuBar<class_MenuBar>`, :ref:`NinePatchRect<class_NinePatchRect>`, :ref:`Panel<class_Panel>`, :ref:`Range<class_Range>`, :ref:`ReferenceRect<class_ReferenceRect>`, :ref:`RichTextLabel<class_RichTextLabel>`, :ref:`Separator<class_Separator>`, :ref:`TabBar<class_TabBar>`, :ref:`TextEdit<class_TextEdit>`, :ref:`TextureRect<class_TextureRect>`, :ref:`Tree<class_Tree>`, :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`, :ref:`VirtualJoystick<class_VirtualJoystick>`

Classe de base pour tous les contrôles GUI. Adapte sa position et sa taille en fonction de son contrôle parent.

.. rst-class:: classref-introduction-group

Description
-----------

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

Tutoriels
------------------

- :doc:`Index de la documentation sur les GUI <../tutorials/ui/index>`

- :doc:`Dessin personnalisé en 2D <../tutorials/2d/custom_drawing_in_2d>`

- :doc:`Galerie des nœuds de contrôle <../tutorials/ui/control_node_gallery>`

- :doc:`Résolutions multiples <../tutorials/rendering/multiple_resolutions>`

- `Toutes les démos d'interface graphique <https://github.com/godotengine/godot-demo-projects/tree/master/gui>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]                 | :ref:`accessibility_controls_nodes<class_Control_property_accessibility_controls_nodes>`         | ``[]``                                                                        |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]                 | :ref:`accessibility_described_by_nodes<class_Control_property_accessibility_described_by_nodes>` | ``[]``                                                                        |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                  | :ref:`accessibility_description<class_Control_property_accessibility_description>`               | ``""``                                                                        |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]                 | :ref:`accessibility_flow_to_nodes<class_Control_property_accessibility_flow_to_nodes>`           | ``[]``                                                                        |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]                 | :ref:`accessibility_labeled_by_nodes<class_Control_property_accessibility_labeled_by_nodes>`     | ``[]``                                                                        |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`AccessibilityLiveMode<enum_AccessibilityServer_AccessibilityLiveMode>` | :ref:`accessibility_live<class_Control_property_accessibility_live>`                             | ``0``                                                                         |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                  | :ref:`accessibility_name<class_Control_property_accessibility_name>`                             | ``""``                                                                        |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                    | :ref:`anchor_bottom<class_Control_property_anchor_bottom>`                                       | ``0.0``                                                                       |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                    | :ref:`anchor_left<class_Control_property_anchor_left>`                                           | ``0.0``                                                                       |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                    | :ref:`anchor_right<class_Control_property_anchor_right>`                                         | ``0.0``                                                                       |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                    | :ref:`anchor_top<class_Control_property_anchor_top>`                                             | ``0.0``                                                                       |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                      | :ref:`auto_translate<class_Control_property_auto_translate>`                                     |                                                                               |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                      | :ref:`clip_contents<class_Control_property_clip_contents>`                                       | ``false``                                                                     |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                | :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>`                           | ``Vector2(-1, -1)``                                                           |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                | :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>`                           | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>`           | :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>`                 | ``0``                                                                         |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                                     | :ref:`focus_mode<class_Control_property_focus_mode>`                                             | ``0``                                                                         |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                              | :ref:`focus_neighbor_bottom<class_Control_property_focus_neighbor_bottom>`                       | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                              | :ref:`focus_neighbor_left<class_Control_property_focus_neighbor_left>`                           | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                              | :ref:`focus_neighbor_right<class_Control_property_focus_neighbor_right>`                         | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                              | :ref:`focus_neighbor_top<class_Control_property_focus_neighbor_top>`                             | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                              | :ref:`focus_next<class_Control_property_focus_next>`                                             | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                              | :ref:`focus_previous<class_Control_property_focus_previous>`                                     | ``NodePath("")``                                                              |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                | :ref:`global_position<class_Control_property_global_position>`                                   |                                                                               |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`GrowDirection<enum_Control_GrowDirection>`                             | :ref:`grow_horizontal<class_Control_property_grow_horizontal>`                                   | ``1``                                                                         |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`GrowDirection<enum_Control_GrowDirection>`                             | :ref:`grow_vertical<class_Control_property_grow_vertical>`                                       | ``1``                                                                         |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`LayoutDirection<enum_Control_LayoutDirection>`                         | :ref:`layout_direction<class_Control_property_layout_direction>`                                 | ``0``                                                                         |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                      | :ref:`localize_numeral_system<class_Control_property_localize_numeral_system>`                   | ``true``                                                                      |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>`           | :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>`                 | ``0``                                                                         |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`CursorShape<enum_Control_CursorShape>`                                 | :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>`             | ``0``                                                                         |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`                                 | :ref:`mouse_filter<class_Control_property_mouse_filter>`                                         | ``0``                                                                         |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                      | :ref:`mouse_force_pass_scroll_events<class_Control_property_mouse_force_pass_scroll_events>`     | ``true``                                                                      |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                    | :ref:`offset_bottom<class_Control_property_offset_bottom>`                                       | ``0.0``                                                                       |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                    | :ref:`offset_left<class_Control_property_offset_left>`                                           | ``0.0``                                                                       |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                    | :ref:`offset_right<class_Control_property_offset_right>`                                         | ``0.0``                                                                       |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                    | :ref:`offset_top<class_Control_property_offset_top>`                                             | ``0.0``                                                                       |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                      | :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>`                 | ``false``                                                                     |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                | :ref:`offset_transform_pivot<class_Control_property_offset_transform_pivot>`                     | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                | :ref:`offset_transform_pivot_ratio<class_Control_property_offset_transform_pivot_ratio>`         | ``Vector2(0.5, 0.5)``                                                         |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                | :ref:`offset_transform_position<class_Control_property_offset_transform_position>`               | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                | :ref:`offset_transform_position_ratio<class_Control_property_offset_transform_position_ratio>`   | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                    | :ref:`offset_transform_rotation<class_Control_property_offset_transform_rotation>`               | ``0.0``                                                                       |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                | :ref:`offset_transform_scale<class_Control_property_offset_transform_scale>`                     | ``Vector2(1, 1)``                                                             |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                      | :ref:`offset_transform_visual_only<class_Control_property_offset_transform_visual_only>`         | ``true``                                                                      |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>`          | physics_interpolation_mode                                                                       | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                | :ref:`pivot_offset<class_Control_property_pivot_offset>`                                         | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                | :ref:`pivot_offset_ratio<class_Control_property_pivot_offset_ratio>`                             | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                | :ref:`position<class_Control_property_position>`                                                 | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                      | :ref:`propagate_maximum_size<class_Control_property_propagate_maximum_size>`                     | ``false``                                                                     |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                    | :ref:`rotation<class_Control_property_rotation>`                                                 | ``0.0``                                                                       |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                    | :ref:`rotation_degrees<class_Control_property_rotation_degrees>`                                 |                                                                               |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                | :ref:`scale<class_Control_property_scale>`                                                       | ``Vector2(1, 1)``                                                             |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                                      | :ref:`shortcut_context<class_Control_property_shortcut_context>`                                 |                                                                               |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                | :ref:`size<class_Control_property_size>`                                                         | ``Vector2(0, 0)``                                                             |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]                       | :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>`                       | ``1``                                                                         |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                    | :ref:`size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`                 | ``1.0``                                                                       |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]                       | :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`                           | ``1``                                                                         |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Theme<class_Theme>`                                                    | :ref:`theme<class_Control_property_theme>`                                                       |                                                                               |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                          | :ref:`theme_type_variation<class_Control_property_theme_type_variation>`                         | ``&""``                                                                       |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`                        | :ref:`tooltip_auto_translate_mode<class_Control_property_tooltip_auto_translate_mode>`           | ``0``                                                                         |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                                  | :ref:`tooltip_text<class_Control_property_tooltip_text>`                                         | ``""``                                                                        |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                          | :ref:`translation_context<class_Control_property_translation_context>`                           | ``&""``                                                                       |
   +------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

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
   | :ref:`int<class_int>`                                        | :ref:`_get_cursor_shape<class_Control_private_method__get_cursor_shape>`\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const|                                                                                                                           |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                | :ref:`_get_drag_data<class_Control_private_method__get_drag_data>`\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual|                                                                                                                                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`_get_maximum_size<class_Control_private_method__get_maximum_size>`\ (\ ) |virtual| |const|                                                                                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`_get_minimum_size<class_Control_private_method__get_minimum_size>`\ (\ ) |virtual| |const|                                                                                                                                                                        |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                  | :ref:`_get_tooltip<class_Control_private_method__get_tooltip>`\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const|                                                                                                                                     |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`        | :ref:`_get_tooltip_auto_translate_mode_at<class_Control_private_method__get_tooltip_auto_translate_mode_at>`\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const|                                                                                       |
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
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_bound_minimum_size<class_Control_method_get_bound_minimum_size>`\ (\ ) |const|                                                                                                                                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_combined_maximum_size<class_Control_method_get_combined_maximum_size>`\ (\ ) |const|                                                                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_combined_minimum_size<class_Control_method_get_combined_minimum_size>`\ (\ ) |const|                                                                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_combined_pivot_offset<class_Control_method_get_combined_pivot_offset>`\ (\ ) |const|                                                                                                                                                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CursorShape<enum_Control_CursorShape>`                 | :ref:`get_cursor_shape<class_Control_method_get_cursor_shape>`\ (\ at_position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                                                                                                               |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_end<class_Control_method_get_end>`\ (\ ) |const|                                                                                                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                     | :ref:`get_focus_mode_with_override<class_Control_method_get_focus_mode_with_override>`\ (\ ) |const|                                                                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                              | :ref:`get_focus_neighbor<class_Control_method_get_focus_neighbor>`\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                    | :ref:`get_global_rect<class_Control_method_get_global_rect>`\ (\ ) |const|                                                                                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                | :ref:`get_maximum_size<class_Control_method_get_maximum_size>`\ (\ ) |const|                                                                                                                                                                                            |
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
   | |void|                                                       | :ref:`update_maximum_size<class_Control_method_update_maximum_size>`\ (\ )                                                                                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`update_minimum_size<class_Control_method_update_minimum_size>`\ (\ )                                                                                                                                                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`warp_mouse<class_Control_method_warp_mouse>`\ (\ position\: :ref:`Vector2<class_Vector2>`\ )                                                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Control_signal_focus_entered:

.. rst-class:: classref-signal

**focus_entered**\ (\ ) :ref:`🔗<class_Control_signal_focus_entered>`

Émis lorsque le nœud gagne le focus.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_focus_exited:

.. rst-class:: classref-signal

**focus_exited**\ (\ ) :ref:`🔗<class_Control_signal_focus_exited>`

Émis lorsque le nœud perd le focus.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_gui_input:

.. rst-class:: classref-signal

**gui_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_Control_signal_gui_input>`

Émis quand le nœud reçoit un :ref:`InputEvent<class_InputEvent>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_maximum_size_changed:

.. rst-class:: classref-signal

**maximum_size_changed**\ (\ ) :ref:`🔗<class_Control_signal_maximum_size_changed>`

Emitted when the node's maximum size changes.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_minimum_size_changed:

.. rst-class:: classref-signal

**minimum_size_changed**\ (\ ) :ref:`🔗<class_Control_signal_minimum_size_changed>`

Émis quand la taille minimale du nœud change.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_mouse_entered:

.. rst-class:: classref-signal

**mouse_entered**\ (\ ) :ref:`🔗<class_Control_signal_mouse_entered>`

Émis quand le curseur de la souris entre dans la zone visible du contrôle (ou un de ses enfants), qui n'est pas masqué derrière d'autres Contrôles ou Fenêtres, fourni son :ref:`mouse_filter<class_Control_property_mouse_filter>`, laisse l’événement l'atteindre, et peu importe s’il est actuellement ciblé ou non.

\ **Note :** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` n'affecte pas quel Contrôle reçoit le signal.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_mouse_exited:

.. rst-class:: classref-signal

**mouse_exited**\ (\ ) :ref:`🔗<class_Control_signal_mouse_exited>`

Émis lorsque le curseur de la souris quitte la zone visible du contrôle (et de tout contrôle enfant), qui n'est pas occlus derrière d'autres Controls ou Windows, à condition que son :ref:`mouse_filter<class_Control_property_mouse_filter>` permette à l'événement de l'atteindre et peu importe de s'il a le focus ou non.

\ **Note :** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` n'a pas d'incidence sur quel Control reçoit le signal.

\ **Note :** Si vous voulez vérifier si la souris a vraiment quitté la zone, en ignorant les nœuds supérieurs, vous pouvez utiliser un code comme ceci :

::

    func on_mouse_exited():
        if not Rect2(Vector2(), rect_size).has_point(get_local_mouse_position()):
            # Ne survole pas la zone.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_resized:

.. rst-class:: classref-signal

**resized**\ (\ ) :ref:`🔗<class_Control_signal_resized>`

Émis lorsque le contrôle change de taille.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_size_flags_changed:

.. rst-class:: classref-signal

**size_flags_changed**\ (\ ) :ref:`🔗<class_Control_signal_size_flags_changed>`

Émis lorsque l'un des drapeaux de taille change. Voir :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` et :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_theme_changed:

.. rst-class:: classref-signal

**theme_changed**\ (\ ) :ref:`🔗<class_Control_signal_theme_changed>`

Émis lorsque la notification :ref:`NOTIFICATION_THEME_CHANGED<class_Control_constant_NOTIFICATION_THEME_CHANGED>` est envoyée.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Control_FocusMode:

.. rst-class:: classref-enumeration

enum **FocusMode**: :ref:`🔗<enum_Control_FocusMode>`

.. _class_Control_constant_FOCUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_NONE** = ``0``

Le nœud ne peut récupérer le focus. À utiliser avec :ref:`focus_mode<class_Control_property_focus_mode>`.

.. _class_Control_constant_FOCUS_CLICK:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_CLICK** = ``1``

Le nœud ne reçoit le focus que pour les clics de la souris. À utiliser avec :ref:`focus_mode<class_Control_property_focus_mode>`.

.. _class_Control_constant_FOCUS_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_ALL** = ``2``

Le nœud peut obtenir le focus lors d'un clic de souris, en utilisant les flèches et la touche de tabulation du clavier ou en utilisant les boutons de la croix directionnelle d'une manette. À utiliser avec :ref:`focus_mode<class_Control_property_focus_mode>`.

.. _class_Control_constant_FOCUS_ACCESSIBILITY:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_ACCESSIBILITY** = ``3``

Le nœud ne reçoit le focus que lorsqu'un lecteur d'écran est actif. À utiliser avec :ref:`focus_mode<class_Control_property_focus_mode>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_FocusBehaviorRecursive:

.. rst-class:: classref-enumeration

enum **FocusBehaviorRecursive**: :ref:`🔗<enum_Control_FocusBehaviorRecursive>`

.. _class_Control_constant_FOCUS_BEHAVIOR_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_INHERITED** = ``0``

Hérite du :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` du contrôle parent. S'il n'y a pas de contrôle parent, cela revient à :ref:`FOCUS_BEHAVIOR_ENABLED<class_Control_constant_FOCUS_BEHAVIOR_ENABLED>`.

.. _class_Control_constant_FOCUS_BEHAVIOR_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_DISABLED** = ``1``

Empêche au contrôle d'obtenir le focus. :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` renverra :ref:`FOCUS_NONE<class_Control_constant_FOCUS_NONE>`.

.. _class_Control_constant_FOCUS_BEHAVIOR_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_ENABLED** = ``2``

Permet au contrôle d'obtenir le focus, en fonction de :ref:`focus_mode<class_Control_property_focus_mode>`. Cela peut être utilisé pour ignorer le :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` du parent. :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` renverra le :ref:`focus_mode<class_Control_property_focus_mode>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_MouseBehaviorRecursive:

.. rst-class:: classref-enumeration

enum **MouseBehaviorRecursive**: :ref:`🔗<enum_Control_MouseBehaviorRecursive>`

.. _class_Control_constant_MOUSE_BEHAVIOR_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **MOUSE_BEHAVIOR_INHERITED** = ``0``

Hérite du :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` du contrôle parent. S'il n'y a pas de contrôle parent, cela renvient à :ref:`MOUSE_BEHAVIOR_ENABLED<class_Control_constant_MOUSE_BEHAVIOR_ENABLED>`.

.. _class_Control_constant_MOUSE_BEHAVIOR_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **MOUSE_BEHAVIOR_DISABLED** = ``1``

Empêche le contrôle de recevoir l'entrée de la souris. :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>` renverra :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`.

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

Affiche le curseur système de la souris quand l'utilisateur survole le nœud. À utiliser avec :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>`.

.. _class_Control_constant_CURSOR_IBEAM:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_IBEAM** = ``1``

Affiche le curseur de la souris en forme de I lorsque l'utilisateur survole le nœud. Le pointeur en I a une forme semblable à un "I". Il signale à l'utilisateur qu'il peut insérer ou surligner du texte.

.. _class_Control_constant_CURSOR_POINTING_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_POINTING_HAND** = ``2``

Afficher le curseur de la main qui pointe quand il passe sur ce nœud.

.. _class_Control_constant_CURSOR_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_CROSS** = ``3``

Affiche le curseur en croix du système quand l'utilisateur survole ce nœud.

.. _class_Control_constant_CURSOR_WAIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_WAIT** = ``4``

Affiche le curseur d'attente du système quand l'utilisateur survole ce nœud. Souvent un sablier.

.. _class_Control_constant_CURSOR_BUSY:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_BUSY** = ``5``

Affiche le curseur d'occupation du système quand l'utilisateur survole ce nœud. Souvent une flèche avec un petit sablier.

.. _class_Control_constant_CURSOR_DRAG:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_DRAG** = ``6``

Affiche le curseur de la souris de déposé-glissé, souvent un poing fermé ou un symbole de croix, lorsque l'utilisateur survole le nœud. Ça précise à l'utilisateur qu'il déplace actuellement un objet, comme un nœud dans le dock de Scene.

.. _class_Control_constant_CURSOR_CAN_DROP:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_CAN_DROP** = ``7``

Affiche le curseur de la souris lorsque l'utilisateur survole le nœud. Ça peut être une main ouverte. Ça précise à l'utilisateur qu'il peut déposer un élément qu'il était en traint de déplacer, comme un nœud dans le dock de Scene.

.. _class_Control_constant_CURSOR_FORBIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_FORBIDDEN** = ``8``

Affiche le curseur de souris d'interdition système lorsque l'utilisateur survole le nœud. C'est souvent un cercle barré.

.. _class_Control_constant_CURSOR_VSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_VSIZE** = ``9``

Afficher le curseur de souris de redimensionnement vertical lorsque l'utilisateur survole le nœud. Une flèche verticale à double tête. Ça précise à l'utilisateur qu'il peut redimensionner la fenêtre ou le panneau verticalement.

.. _class_Control_constant_CURSOR_HSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HSIZE** = ``10``

Affiche le curseur de la souris de redimensionnement horizontal lorsque l'utilisateur survole le nœud. Une flèche horizontale à double tête. Ça précise à l'utilisateur qu'il peut redimensionner la fenêtre ou le panneau horizontalement.

.. _class_Control_constant_CURSOR_BDIAGSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_BDIAGSIZE** = ``11``

Affiche le curseur de la souris de redimensionnement de la fenêtre lorsque l'utilisateur survole le nœud. Le curseur est une flèche à double tête qui va du bas à gauche au sommet à droite. Ça précise à l'utilisateur qu'il peut redimensionner la fenêtre ou le panneau à la fois horizontalement et verticalement.

.. _class_Control_constant_CURSOR_FDIAGSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_FDIAGSIZE** = ``12``

Affiche le curseur de la souris de redimensionnement de la fenêtre lorsque l'utilisateur survole le nœud. Le curseur est une flèche à double tête qui va du haut à gauche au bas à droite, le contraire de :ref:`CURSOR_BDIAGSIZE<class_Control_constant_CURSOR_BDIAGSIZE>`. Ça précise à l'utilisateur qu'il peut redimensionner la fenêtre ou le panneau à la fois horizontalement et verticalement.

.. _class_Control_constant_CURSOR_MOVE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_MOVE** = ``13``

Affiche le curseur de la souris de déplacement lorsque l'utilisateur survole le nœud. Il montre 2 flèches doubles à un angle de 90 degrés. Ça précise à l'utilisateur qu'il peut déplacer un élément d'interface librement.

.. _class_Control_constant_CURSOR_VSPLIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_VSPLIT** = ``14``

Affiche le curseur système de la souris avec un séparateur vertical lorsque l'utilisateur survole le nœud. Sur Windows, il est identique à :ref:`CURSOR_VSIZE<class_Control_constant_CURSOR_VSIZE>`.

.. _class_Control_constant_CURSOR_HSPLIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HSPLIT** = ``15``

Affiche le curseur système de la souris avec un séparateur horizontal lorsque l'utilisateur survole le nœud. Sur Windows, il est identique à :ref:`CURSOR_HSIZE<class_Control_constant_CURSOR_HSIZE>`.

.. _class_Control_constant_CURSOR_HELP:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HELP** = ``16``

Affiche le curseur système de la souris pour l'aide lorsque l'utilisateur survole le nœud, avec un point d'interrogation.

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutPreset:

.. rst-class:: classref-enumeration

enum **LayoutPreset**: :ref:`🔗<enum_Control_LayoutPreset>`

.. _class_Control_constant_PRESET_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_LEFT** = ``0``

Magnétise toutes les 4 ancres jusqu'au coin gauche supérieur du rectangle délimitant du contrôle parent. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_TOP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_RIGHT** = ``1``

Magnétise toutes les 4 ancres au coin droit du rectangle délimitant du contrôle parent. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_BOTTOM_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_LEFT** = ``2``

Magnétise toutes les 4 ancres au coin bas-gauche du rectangle délimitant du contrôle parent. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_BOTTOM_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_RIGHT** = ``3``

Magnétise toutes les 4 ancres au coin bas-droit du rectangle délimitant du contrôle parent. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_LEFT** = ``4``

Magnétise toutes les 4 ancres au centre du bord gauche du rectangle délimitant du contrôle parent. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_TOP** = ``5``

Magnétise toutes les 4 ancres au centre du bord supérieur du rectangle délimitant du contrôle parent. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_RIGHT** = ``6``

Magnétise toutes les 4 ancres au centre du bord droit du rectangle délimitant du contrôle parent. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_BOTTOM** = ``7``

Magnétise toutes les 4 ancres au centre du bord du bas du rectangle délimitant du contrôle parent. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER** = ``8``

Magnétise les 4 ancres au centre du rectangle délimitant du contrôle parent. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_LEFT_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_LEFT_WIDE** = ``9``

Magnétise les 4 ancres au bord gauche du contrôle parent. La marge gauche devient alors relative au bord gauche et à la marge supérieure relative au coin supérieur gauche du nœud parent. Utilisez avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_TOP_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_WIDE** = ``10``

Aimante les 4 ancres au bord supérieur du contrôle parent. Le décalage gauche devient alors relatif au coin supérieur gauche, le décalage du haut relatif au bord supérieur, et le décalage droit relatif au coin supérieur droit du nœud parent. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_RIGHT_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_RIGHT_WIDE** = ``11``

Aimante les 4 ancres au bord droit du contrôle parent. Le décalage droit devient alors relatif au bord droit et le décalage du haut relatif au coin supérieur droit. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_BOTTOM_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_WIDE** = ``12``

Magnétise les 4 ancres au bord inférieur du contrôle parent. La marge gauche devient alors relative au coin inférieur gauche, à la marge inférieure relative au bord inférieur, et à la marge droite relative au coin inférieur droit du nœud parent. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_VCENTER_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_VCENTER_WIDE** = ``13``

Magnétise les 4 ancres sur une ligne verticale qui coupe le contrôle parent en deux. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_HCENTER_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_HCENTER_WIDE** = ``14``

Magnétise les 4 ancres sur une ligne horizontale qui coupe le contrôle parent en deux. À utiliser avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_FULL_RECT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_FULL_RECT** = ``15``

Magnétise toutes les 4 ancres aux angles respectifs du contrôle parent. Définissez les 4 marges à 0 après avoir appliqué ce préréglage et le **Control** s'adaptera à son contrôle parent. Utilisez avec :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutPresetMode:

.. rst-class:: classref-enumeration

enum **LayoutPresetMode**: :ref:`🔗<enum_Control_LayoutPresetMode>`

.. _class_Control_constant_PRESET_MODE_MINSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_MINSIZE** = ``0``

Le contrôle sera redimensionné à sa taille minimale.

.. _class_Control_constant_PRESET_MODE_KEEP_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_WIDTH** = ``1``

La largeur du contrôle ne changera pas.

.. _class_Control_constant_PRESET_MODE_KEEP_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_HEIGHT** = ``2``

La hauteur du contrôle ne changera pas.

.. _class_Control_constant_PRESET_MODE_KEEP_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_SIZE** = ``3``

La taille du contrôle ne changera pas.

.. rst-class:: classref-item-separator

----

.. _enum_Control_SizeFlags:

.. rst-class:: classref-enumeration

flags **SizeFlags**: :ref:`🔗<enum_Control_SizeFlags>`

.. _class_Control_constant_SIZE_SHRINK_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_BEGIN** = ``0``

Indique au :ref:`Container<class_Container>` parent d'aligner le nœud sur son début, soit au bord supérieur soit au bord gauche. Il est mutuellement exclusif avec :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` et les autres drapeaux de rétrécissement de la taille, mais peut être utilisé avec :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` dans quelques conteneurs. À utiliser avec :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` et :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

\ **Note :** Définir ce drapeau est égal à ne pas avoir de drapeau de taille.

.. _class_Control_constant_SIZE_FILL:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_FILL** = ``1``

Indique au :ref:`Container<class_Container>` parent d'étendre les limites de ce nœud pour remplir tout l'espace disponible sans pousser d'autre nœuds. Il est mutuellement exclusif avec les autres drapeaux de rétrécissement de la taille. À utiliser avec :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` et :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. _class_Control_constant_SIZE_EXPAND:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_EXPAND** = ``2``

Signale au :ref:`Container<class_Container>` parent de laisser ce nœud prendre tout l'espace disponible sur l'axe spécifié. Si plusieurs nœuds voisins sont prêts à s'étendre, ils partagent l'espace en fonction de leur rapport d'étirement. Voir :ref:`size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`. À utiliser avec :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` et :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. _class_Control_constant_SIZE_EXPAND_FILL:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_EXPAND_FILL** = ``3``

Définit les drapeaux de taille du nœud pour à la fois remplir et s'étendre. Voir :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` et :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` pour plus d'informations.

.. _class_Control_constant_SIZE_SHRINK_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_CENTER** = ``4``

Indique au :ref:`Container<class_Container>` parent de centrer le nœud dans l'espace disponible. Il est mutuellement exclusif avec :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` et les autres drapeau de rétrécissement de la taille, mais peut être utilisé avec :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` dans quelques conteneurs. À utiliser avec :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` et :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. _class_Control_constant_SIZE_SHRINK_END:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_END** = ``8``

Indique au :ref:`Container<class_Container>` parent d'aligner le nœud sur sa fin, soit en bas, soit sur le bord droit. Il est mutuellement exclusif avec :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` et les autres drapeau de rétrécissement de la taille, mais peut être utilisé avec :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` dans quelques conteneurs. À utiliser avec :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` et :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_MouseFilter:

.. rst-class:: classref-enumeration

enum **MouseFilter**: :ref:`🔗<enum_Control_MouseFilter>`

.. _class_Control_constant_MOUSE_FILTER_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_STOP** = ``0``

Le contrôle recevra les événements d'entrée de mouvement de la souris et les événements d'entrée de bouton de la souris via :ref:`_gui_input()<class_Control_private_method__gui_input>` si vous cliquez dessus. Le contrôle recevra également les signaux :ref:`mouse_entered<class_Control_signal_mouse_entered>` et :ref:`mouse_exited<class_Control_signal_mouse_exited>`. Ces événements sont automatiquement marqués comme traités, et ils ne se propagent pas vers d'autres contrôles. Cela permet également de bloquer les signaux dans d'autres contrôles.

.. _class_Control_constant_MOUSE_FILTER_PASS:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_PASS** = ``1``

The control will receive mouse movement input events and mouse button input events if clicked on through :ref:`_gui_input()<class_Control_private_method__gui_input>`. The control will also receive the :ref:`mouse_entered<class_Control_signal_mouse_entered>` and :ref:`mouse_exited<class_Control_signal_mouse_exited>` signals.

If this control does not handle the event, the event will propagate up to its parent control if it has one. The event is bubbled up the node hierarchy until it reaches a non-:ref:`CanvasItem<class_CanvasItem>`, a control with :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>`, or a :ref:`CanvasItem<class_CanvasItem>` with :ref:`CanvasItem.top_level<class_CanvasItem_property_top_level>` enabled. This will allow signals to fire in all controls it reaches. If no control handled it, the event will be passed to :ref:`Node._shortcut_input()<class_Node_private_method__shortcut_input>` for further processing.

.. _class_Control_constant_MOUSE_FILTER_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_IGNORE** = ``2``

La contrôle ne recevra aucun événement d'entrée de la souris ou d'évènement de bouton de la souris si cliqué via :ref:`_gui_input()<class_Control_private_method__gui_input>`. Le contrôle ne recevra aussi pas les signaux :ref:`mouse_entered<class_Control_signal_mouse_entered>` et :ref:`mouse_exited<class_Control_signal_mouse_exited>`. Ceci ne bloquera pas d'autres contrôles de recevoir ces événements ou de déclencher les signaux. Les événements ignorés ne seront pas gérés automatiquement. Si un enfant a :ref:`MOUSE_FILTER_PASS<class_Control_constant_MOUSE_FILTER_PASS>` et qu'un événement a été transmis à ce contrôle, l'événement se propagera vers le haut vers le parent du contrôle.

\ **Note :** Si le contrôle a reçu :ref:`mouse_entered<class_Control_signal_mouse_entered>` mais pas :ref:`mouse_exited<class_Control_signal_mouse_exited>`, changer :ref:`mouse_filter<class_Control_property_mouse_filter>` à :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` causera l'émission de :ref:`mouse_exited<class_Control_signal_mouse_exited>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_GrowDirection:

.. rst-class:: classref-enumeration

enum **GrowDirection**: :ref:`🔗<enum_Control_GrowDirection>`

.. _class_Control_constant_GROW_DIRECTION_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`GrowDirection<enum_Control_GrowDirection>` **GROW_DIRECTION_BEGIN** = ``0``

The control will grow to the left or top to make up if its minimum size is changed to be greater than its current size on the respective axis.

.. _class_Control_constant_GROW_DIRECTION_END:

.. rst-class:: classref-enumeration-constant

:ref:`GrowDirection<enum_Control_GrowDirection>` **GROW_DIRECTION_END** = ``1``

The control will grow to the right or bottom to make up if its minimum size is changed to be greater than its current size on the respective axis.

.. _class_Control_constant_GROW_DIRECTION_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`GrowDirection<enum_Control_GrowDirection>` **GROW_DIRECTION_BOTH** = ``2``

The control will grow in both directions equally to make up if its minimum size is changed to be greater than its current size.

.. rst-class:: classref-item-separator

----

.. _enum_Control_Anchor:

.. rst-class:: classref-enumeration

enum **Anchor**: :ref:`🔗<enum_Control_Anchor>`

.. _class_Control_constant_ANCHOR_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`Anchor<enum_Control_Anchor>` **ANCHOR_BEGIN** = ``0``

Magnétise l'un des 4 côtés d'ancrage à l'origine de l'ancrage ``Rect``, en haut à gauche. Utilisez-le avec l'une des variables membres ``anchor_*``, comme :ref:`anchor_left<class_Control_property_anchor_left>`. Pour modifier les 4 ancres à la fois, utilisez :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_ANCHOR_END:

.. rst-class:: classref-enumeration-constant

:ref:`Anchor<enum_Control_Anchor>` **ANCHOR_END** = ``1``

Magnétise l'un des 4 côtés d'ancrage à l'extrémité de l'extrémité ``Rect``, en bas à droite. Utilisez-le avec l'une des variables membres ``anchor_*``, comme :ref:`anchor_left<class_Control_property_anchor_left>`. Pour modifier les 4 ancres à la fois, utilisez :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutDirection:

.. rst-class:: classref-enumeration

enum **LayoutDirection**: :ref:`🔗<enum_Control_LayoutDirection>`

.. _class_Control_constant_LAYOUT_DIRECTION_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_INHERITED** = ``0``

Direction de mise en page automatique, déterminée à partir de la direction de mise en page du contrôle parent.

.. _class_Control_constant_LAYOUT_DIRECTION_APPLICATION_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_APPLICATION_LOCALE** = ``1``

Direction de mise en page automatique, déterminée à partir de la langue actuelle. La direction de mise en page de droite à gauche est automatiquement utilisée pour les langues qui l'exigent comme l'arabe et l'hébreu, mais seulement si un fichier de traduction valide est chargé pour la langue donnée (sauf si la-dite langue est configurée comme un repli dans :ref:`ProjectSettings.internationalization/locale/fallback<class_ProjectSettings_property_internationalization/locale/fallback>`). Pour toutes les autres langues (ou si aucun fichier de traduction valide n'est trouvé par Godot), la direction de mise en page de gauche à droite est utilisée. Si vous utilisez :ref:`TextServerFallback<class_TextServerFallback>` (:ref:`ProjectSettings.internationalization/rendering/text_driver<class_ProjectSettings_property_internationalization/rendering/text_driver>`), la direction de mise en page de gauche à droite est toujours utilisée peu importe la langue. La direction de mise en page de droite à gauche peut aussi être forcée en utilisant :ref:`ProjectSettings.internationalization/rendering/force_right_to_left_layout_direction<class_ProjectSettings_property_internationalization/rendering/force_right_to_left_layout_direction>`.

.. _class_Control_constant_LAYOUT_DIRECTION_LTR:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_LTR** = ``2``

Direction de disposition de gauche à droite.

.. _class_Control_constant_LAYOUT_DIRECTION_RTL:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_RTL** = ``3``

Disposition de direction de droite à gauche.

.. _class_Control_constant_LAYOUT_DIRECTION_SYSTEM_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_SYSTEM_LOCALE** = ``4``

Direction de mise en page automatique, déterminée à partir de la langue du système. La direction de mise en page de droite à gauche est automatiquement utilisée pour les langues qui l'exigent comme l'arabe et l'hébreu, mais seulement si un fichier de traduction valide est chargé pour la langue donnée. Pour toutes les autres langues (ou si aucun fichier de traduction valide n'est trouvé par Godot), la direction de mise en page de gauche à droite est utilisée. Si vous utilisez :ref:`TextServerFallback<class_TextServerFallback>` (:ref:`ProjectSettings.internationalization/rendering/text_driver<class_ProjectSettings_property_internationalization/rendering/text_driver>`), la direction de mise en page de gauche à droite est toujours utilisée peu importe la langue.

.. _class_Control_constant_LAYOUT_DIRECTION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_MAX** = ``5``

Représente la taille de l'énumération :ref:`LayoutDirection<enum_Control_LayoutDirection>`.

.. _class_Control_constant_LAYOUT_DIRECTION_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_LOCALE** = ``1``

**Obsolète :** Use :ref:`LAYOUT_DIRECTION_APPLICATION_LOCALE<class_Control_constant_LAYOUT_DIRECTION_APPLICATION_LOCALE>` instead.



.. rst-class:: classref-item-separator

----

.. _enum_Control_TextDirection:

.. rst-class:: classref-enumeration

enum **TextDirection**: :ref:`🔗<enum_Control_TextDirection>`

.. _class_Control_constant_TEXT_DIRECTION_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_INHERITED** = ``3``

La direction d'écriture du texte est la même que la direction de mise en page.

.. _class_Control_constant_TEXT_DIRECTION_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_AUTO** = ``0``

Direction d'écriture de texte automatique, déterminée à partir de la langue actuelle et du contenu du texte.

.. _class_Control_constant_TEXT_DIRECTION_LTR:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_LTR** = ``1``

Direction d'écriture de texte de gauche à droite.

.. _class_Control_constant_TEXT_DIRECTION_RTL:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_RTL** = ``2``

Direction d'écriture de texte de droite à gauche.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Control_constant_NOTIFICATION_RESIZED:

.. rst-class:: classref-constant

**NOTIFICATION_RESIZED** = ``40`` :ref:`🔗<class_Control_constant_NOTIFICATION_RESIZED>`

Envoyé quand le nœud change de taille. Utilisez :ref:`size<class_Control_property_size>` pour obtenir la nouvelle taille.

.. _class_Control_constant_NOTIFICATION_MOUSE_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_ENTER** = ``41`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_ENTER>`

Envoyé quand le curseur de la souris entre dans la zone visible du contrôle (ou un de ses enfants), qui n'est pas masqué derrière d'autres Contrôles ou Fenêtres, fourni son :ref:`mouse_filter<class_Control_property_mouse_filter>`, laisse l’événement l'atteindre, et peu importe s’il est actuellement ciblé ou non.

\ **Note :** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` n'affecte pas quel Contrôle reçoit la notification.

Voir aussi :ref:`NOTIFICATION_MOUSE_ENTER_SELF<class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_EXIT** = ``42`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_EXIT>`

Envoyé quand le curseur de la souris sort de la zone visible du contrôle (ou un de ses enfants), qui n'est pas masqué derrière d'autres Contrôles ou Fenêtres, fourni son :ref:`mouse_filter<class_Control_property_mouse_filter>`, laisse l’événement l'atteindre, et peu importe s’il est actuellement ciblé ou non.

\ **Note :** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` n'affecte pas quel Contrôle reçoit la notification.

Voir aussi :ref:`NOTIFICATION_MOUSE_EXIT_SELF<class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_ENTER_SELF** = ``60`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF>`

**Expérimental :** The reason this notification is sent may change in the future.

Envoyé quand le curseur de la souris entre dans la zone visible du contrôle, qui n'est pas masqué derrière d'autres Contrôles ou Fenêtres, fourni son :ref:`mouse_filter<class_Control_property_mouse_filter>`, laisse l’événement l'atteindre, et peu importe s’il est actuellement ciblé ou non.

\ **Note :** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` n'affecte pas quel Contrôle reçoit la notification.

Voir aussi :ref:`NOTIFICATION_MOUSE_ENTER<class_Control_constant_NOTIFICATION_MOUSE_ENTER>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_EXIT_SELF** = ``61`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF>`

**Expérimental :** The reason this notification is sent may change in the future.

Envoyé quand le curseur de la souris sort de la zone visible du contrôle, qui n'est pas masqué derrière d'autres Contrôles ou Fenêtres, fourni son :ref:`mouse_filter<class_Control_property_mouse_filter>`, laisse l’événement l'atteindre, et peu importe s’il est actuellement ciblé ou non.

\ **Note :** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` n'affecte pas quel Contrôle reçoit la notification.

Voir aussi :ref:`NOTIFICATION_MOUSE_EXIT<class_Control_constant_NOTIFICATION_MOUSE_EXIT>`.

.. _class_Control_constant_NOTIFICATION_FOCUS_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_FOCUS_ENTER** = ``43`` :ref:`🔗<class_Control_constant_NOTIFICATION_FOCUS_ENTER>`

Envoyé lorsque le nœud reçoit le focus.

.. _class_Control_constant_NOTIFICATION_FOCUS_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_FOCUS_EXIT** = ``44`` :ref:`🔗<class_Control_constant_NOTIFICATION_FOCUS_EXIT>`

Sent when the node loses focus.

This notification is sent in reversed order.

.. _class_Control_constant_NOTIFICATION_THEME_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_THEME_CHANGED** = ``45`` :ref:`🔗<class_Control_constant_NOTIFICATION_THEME_CHANGED>`

Envoyé si le nœud a besoin de rafraîchir ses éléments de thème. Cela arrive dans l'un des cas suivants :

- La propriété :ref:`theme<class_Control_property_theme>` est changée sur ce nœud ou sur un de ses ancêtres.

- La propriété :ref:`theme_type_variation<class_Control_property_theme_type_variation>` est changée sur ce nœud.

- Une des redéfinitions d'une des propriétés du thème du nœud est changée.

- Le nœud entre dans l'arborescence de la scène.

\ **Note :** Pour plus d'optimisation, cette notification ne sera pas envoyée pour les changements qui se passent pendant que ce nœud est en dehors de l'arborescence de la scène. À la place, toues les mises à jour d'éléments de thème peuvent être appliqués en une fois dès que le nœud entre dans la hiérarchie de la scène.

\ **Note :** Cette notification est reçue aux côtés de :ref:`Node.NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>`, donc si vous instanciez une scène, les nœuds enfants ne seront pas encore initialisés. Vous pouvez l'utiliser pour configurer les thèmes pour ce nœud, les nœuds d'enfants créés à partir de script, ou si vous voulez accéder aux nœuds enfants ajoutés dans l'éditeur, assurez-vous que le nœud est prêt en utilisant :ref:`Node.is_node_ready()<class_Node_method_is_node_ready>`.

::

    func _notification(quoi):
        if quoi == NOTIFICATION_THEME_CHANGED:
            if not is_node_ready():
                await ready # Attendre jusqu'au signal ready (prêt)
            $Label.add_theme_color_override("font_color", Color.YELLOW)

.. _class_Control_constant_NOTIFICATION_SCROLL_BEGIN:

.. rst-class:: classref-constant

**NOTIFICATION_SCROLL_BEGIN** = ``47`` :ref:`🔗<class_Control_constant_NOTIFICATION_SCROLL_BEGIN>`

Envoyé lorsque ce nœud est à l'intérieur d'un :ref:`ScrollContainer<class_ScrollContainer>` qui a commencé à être défilé lors du glissement de la zone défilante *avec un événement tactile*. Cette notification n'est *pas* envoyée lors du défilement en glissant la barre de défilement, en défilant avec la molette de la souris ou en défilant avec des événements clavier/manette.

\ **Note :** Ce signal n'est émis que sur Android ou iOS, ou sur les plateformes de bureau/web lorsque :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` est activé.

.. _class_Control_constant_NOTIFICATION_SCROLL_END:

.. rst-class:: classref-constant

**NOTIFICATION_SCROLL_END** = ``48`` :ref:`🔗<class_Control_constant_NOTIFICATION_SCROLL_END>`

Envoyé lorsque ce nœud est à l'intérieur d'un :ref:`ScrollContainer<class_ScrollContainer>` qui a arrêté d'être défilé lors du glissement de la zone défilante *avec un événement tactile*. Cette notification n'est *pas* envoyée lors du défilement en glissant la barre de défilement, en défilant avec la molette de la souris ou en défilant avec des événements clavier/manette.

\ **Note :** Ce signal n'est émis que sur Android ou iOS, ou sur les plateformes de bureau/web lorsque :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` est activé.

.. _class_Control_constant_NOTIFICATION_LAYOUT_DIRECTION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_LAYOUT_DIRECTION_CHANGED** = ``49`` :ref:`🔗<class_Control_constant_NOTIFICATION_LAYOUT_DIRECTION_CHANGED>`

Envoyée lorsque la direction de mise en page du contrôle est changée de LTR ou RTL ou vice versa. Cette notification est propagée aux nœuds Control enfants suite à une modification de :ref:`layout_direction<class_Control_property_layout_direction>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Control_property_accessibility_controls_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_controls_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_controls_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_controls_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_controls_nodes**\ (\ )

Les chemins vers les nœuds qui sont contrôlés par ce nœud.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_described_by_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_described_by_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_described_by_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_described_by_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_described_by_nodes**\ (\ )

Les chemins vers les nœuds qui décrivent ce noeud.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **accessibility_description** = ``""`` :ref:`🔗<class_Control_property_accessibility_description>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_description**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_accessibility_description**\ (\ )

La description facilement lisible du nœud qui est rapportée aux applications d'assistance.

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

Les chemins vers les nœuds qui étiquettent ce nœud.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_live:

.. rst-class:: classref-property

:ref:`AccessibilityLiveMode<enum_AccessibilityServer_AccessibilityLiveMode>` **accessibility_live** = ``0`` :ref:`🔗<class_Control_property_accessibility_live>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_live**\ (\ value\: :ref:`AccessibilityLiveMode<enum_AccessibilityServer_AccessibilityLiveMode>`\ )
- :ref:`AccessibilityLiveMode<enum_AccessibilityServer_AccessibilityLiveMode>` **get_accessibility_live**\ (\ )

Le mode avec lequel une région dynamique se met à jour. Une région dynamique est un :ref:`Node<class_Node>` qui est mis à jour à la suite d'un événement externe lorsque le focus de l'utilisateur peut être ailleurs.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **accessibility_name** = ``""`` :ref:`🔗<class_Control_property_accessibility_name>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_accessibility_name**\ (\ )

Le nom facilement lisible du nœud qui est rapporté aux applications d'assistance.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_bottom** = ``0.0`` :ref:`🔗<class_Control_property_anchor_bottom>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancre le bord inférieur du nœud à l'origine, le centre ou la fin de son contrôle parent. Cela modifie comment le décalage du bas se met à jour lorsque le nœud se déplace ou change de taille. Vous pouvez utiliser une des constantes :ref:`Anchor<enum_Control_Anchor>` pour plus de facilité.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_left** = ``0.0`` :ref:`🔗<class_Control_property_anchor_left>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancre le bord gauche du nœud à l'origine, le centre ou la fin de son contrôle parent. Cela modifie comment le décalage gauche se met à jour lorsque le nœud se déplace ou change de taille. Vous pouvez utiliser une des constantes :ref:`Anchor<enum_Control_Anchor>` pour plus de facilité.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_right** = ``0.0`` :ref:`🔗<class_Control_property_anchor_right>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancre le bord droit du nœud à l'origine, le centre ou la fin de son contrôle parent. Cela modifie comment le décalage droit se met à jour lorsque le nœud se déplace ou change de taille. Vous pouvez utiliser une des constantes :ref:`Anchor<enum_Control_Anchor>` pour plus de facilité.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_top** = ``0.0`` :ref:`🔗<class_Control_property_anchor_top>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancre le bord supérieur du nœud à l'origine, le centre ou la fin de son contrôle parent. Cela modifie comment le décalage du haut se met à jour lorsque le nœud se déplace ou change de taille. Vous pouvez utiliser une des constantes :ref:`Anchor<enum_Control_Anchor>` pour plus de facilité.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_auto_translate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_translate** :ref:`🔗<class_Control_property_auto_translate>`

.. rst-class:: classref-property-setget

- |void| **set_auto_translate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_translating**\ (\ )

**Obsolète :** Use :ref:`Node.auto_translate_mode<class_Node_property_auto_translate_mode>` and :ref:`Node.can_auto_translate()<class_Node_method_can_auto_translate>` instead.

Active/désactive si du texte devrait automatiquement changer en sa version traduite selon la langue actuelle.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_clip_contents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_contents** = ``false`` :ref:`🔗<class_Control_property_clip_contents>`

.. rst-class:: classref-property-setget

- |void| **set_clip_contents**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_clipping_contents**\ (\ )

Active si le rendu des nœuds basés sur :ref:`CanvasItem<class_CanvasItem>` enfants doit être limité au rectangle de ce contrôle. Si ``true``, les parties des enfants qui seraient normalement visibles en-dehors du rectangle de ce contrôle ne seront pas rendues et ne recevront pas d'entrées.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_custom_maximum_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **custom_maximum_size** = ``Vector2(-1, -1)`` :ref:`🔗<class_Control_property_custom_maximum_size>`

.. rst-class:: classref-property-setget

- |void| **set_custom_maximum_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_custom_maximum_size**\ (\ )

The maximum size of this Control's bounding rectangle. If set to a value greater than or equal to ``(0, 0)``, the node's bounding rectangle will never exceed this size. A value below ``(0, 0)`` means there is no maximum size.

\ **Note:** The final effective maximum size may be subject to parent Container sizing and propagated maximum sizes. See also: :ref:`get_combined_maximum_size()<class_Control_method_get_combined_maximum_size>`.

\ **Note:** Not all **Control** subtypes handle a custom maximum size gracefully, which may lead to unexpected behavior if the control's contents exceed this size.

\ **Note:** This value has priority over :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>`. For example, if you set :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` to ``(100, 100)`` and :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` to ``(200, 200)``, the resulting size will be ``(100, 100)``.

\ **Note:** It is recommended to use :ref:`get_bound_minimum_size()<class_Control_method_get_bound_minimum_size>` instead of :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>` when using this property, as the former respects maximum size limits when calculating the minimum size, while the latter does not.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_custom_minimum_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **custom_minimum_size** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_custom_minimum_size>`

.. rst-class:: classref-property-setget

- |void| **set_custom_minimum_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_custom_minimum_size**\ (\ )

The minimum size of the node's bounding rectangle. If you set it to a value greater than ``(0, 0)``, the node's bounding rectangle will always have at least this size. Note that **Control** nodes have their internal minimum size returned by :ref:`get_minimum_size()<class_Control_method_get_minimum_size>`. It depends on the control's contents, like text, textures, or style boxes. The actual minimum size is the maximum value of this property and the internal minimum size (see :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>`).

\ **Note:** :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` has priority over this property. For example, if you set :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` to ``(200, 200)`` and :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` to ``(100, 100)``, the resulting size will be ``(100, 100)``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_behavior_recursive:

.. rst-class:: classref-property

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **focus_behavior_recursive** = ``0`` :ref:`🔗<class_Control_property_focus_behavior_recursive>`

.. rst-class:: classref-property-setget

- |void| **set_focus_behavior_recursive**\ (\ value\: :ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>`\ )
- :ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **get_focus_behavior_recursive**\ (\ )

Détermine quels contrôles peuvent avoir le focus ensemble avec :ref:`focus_mode<class_Control_property_focus_mode>`. Voir :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>`. Comme le comportement par défaut est :ref:`FOCUS_BEHAVIOR_INHERITED<class_Control_constant_FOCUS_BEHAVIOR_INHERITED>`, cela peut être utilisé pour empêcher tous les contrôles enfants d'avoir le focus.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_mode:

.. rst-class:: classref-property

:ref:`FocusMode<enum_Control_FocusMode>` **focus_mode** = ``0`` :ref:`🔗<class_Control_property_focus_mode>`

.. rst-class:: classref-property-setget

- |void| **set_focus_mode**\ (\ value\: :ref:`FocusMode<enum_Control_FocusMode>`\ )
- :ref:`FocusMode<enum_Control_FocusMode>` **get_focus_mode**\ (\ )

Détermine quels contrôles peuvent recevoir le focus. Celui-ci ne peut être fait que sur un seul contrôle à la fois, ce contrôle recevra alors les événements de clavier, de manette et de souris dans :ref:`_gui_input()<class_Control_private_method__gui_input>`. Utilisez :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` pour déterminer si un contrôle peut capturer le focus, car :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` l'affecte également. Voir aussi :ref:`grab_focus()<class_Control_method_grab_focus>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_bottom:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_bottom** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Indique à Godot à quel nœud il devrait donner le focus si l'utilisateur appuie sur la flèche bas sur le clavier ou bas sur une manette par défaut. Vous pouvez modifier la touche en éditant l'action d'entrée :ref:`ProjectSettings.input/ui_down<class_ProjectSettings_property_input/ui_down>`. Le nœud doit être un **Control**. Si cette propriété n'est pas définie, Godot donnera le focus au **Control** le plus proche en-dessous de celui-ci.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_left:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_left** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_left>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Indique à Godot à quel nœud il devrait donner le focus si l'utilisateur appuie sur la flèche gauche sur le clavier ou gauche sur une manette par défaut. Vous pouvez modifier la touche en éditant l'action d'entrée :ref:`ProjectSettings.input/ui_left<class_ProjectSettings_property_input/ui_left>`. Le nœud doit être un **Control**. Si cette propriété n'est pas définie, Godot donnera le focus au **Control** le plus proche à gauche de celui-ci.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_right:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_right** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_right>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Indique à Godot à quel nœud il devrait donner le focus si l'utilisateur appuie sur la flèche droite sur le clavier ou droite sur une manette par défaut. Vous pouvez modifier la touche en éditant l'action d'entrée :ref:`ProjectSettings.input/ui_right<class_ProjectSettings_property_input/ui_right>`. Le nœud doit être un **Control**. Si cette propriété n'est pas définie, Godot donnera le focus au **Control** le plus proche à droite de celui-ci.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_top:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_top** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_top>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Indique à Godot à quel nœud il devrait donner le focus si l'utilisateur appuie sur la flèche haut sur le clavier ou haut sur une manette par défaut. Vous pouvez modifier la touche en éditant l'action d'entrée :ref:`ProjectSettings.input/ui_up<class_ProjectSettings_property_input/ui_up>`. Le nœud doit être un **Control**. Si cette propriété n'est pas définie, Godot donnera le focus au **Control** le plus proche au-dessus de celui-ci.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_next:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_next** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_next>`

.. rst-class:: classref-property-setget

- |void| **set_focus_next**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_next**\ (\ )

Indique à Godot à quel nœud il devrait donner le focus si l'utilisateur appuie sur :kbd:`Tab` sur un clavier par défaut. Vous pouvez modifier la touche en éditant l'action d'entrée :ref:`ProjectSettings.input/ui_focus_next<class_ProjectSettings_property_input/ui_focus_next>`.

Si cette propriété n'est pas définie, Godot choisira la « meilleure solution » basée sur les nœuds environnants dans l'arborescence.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_previous:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_previous** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_previous>`

.. rst-class:: classref-property-setget

- |void| **set_focus_previous**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_previous**\ (\ )

Indique à Godot à quel nœud il devrait donner le focus si l'utilisateur appuie sur :kbd:`Shift+Tab` sur un clavier par défaut. Vous pouvez modifier la touche en éditant l'action d'entrée :ref:`ProjectSettings.input/ui_focus_prev<class_ProjectSettings_property_input/ui_focus_prev>`.

Si cette propriété n'est pas définie, Godot choisira la « meilleure solution » basée sur les nœuds environnants dans l'arborescence.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** :ref:`🔗<class_Control_property_global_position>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

La position globale du nœud, par rapport au monde (généralement par rapport au :ref:`CanvasLayer<class_CanvasLayer>`).

.. rst-class:: classref-item-separator

----

.. _class_Control_property_grow_horizontal:

.. rst-class:: classref-property

:ref:`GrowDirection<enum_Control_GrowDirection>` **grow_horizontal** = ``1`` :ref:`🔗<class_Control_property_grow_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_grow_direction**\ (\ value\: :ref:`GrowDirection<enum_Control_GrowDirection>`\ )
- :ref:`GrowDirection<enum_Control_GrowDirection>` **get_h_grow_direction**\ (\ )

Controls the direction on the horizontal axis in which the control should grow if its horizontal minimum size is changed to be greater than its current size, as the control always has to be at least the minimum size.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_grow_vertical:

.. rst-class:: classref-property

:ref:`GrowDirection<enum_Control_GrowDirection>` **grow_vertical** = ``1`` :ref:`🔗<class_Control_property_grow_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_grow_direction**\ (\ value\: :ref:`GrowDirection<enum_Control_GrowDirection>`\ )
- :ref:`GrowDirection<enum_Control_GrowDirection>` **get_v_grow_direction**\ (\ )

Controls the direction on the vertical axis in which the control should grow if its vertical minimum size is changed to be greater than its current size, as the control always has to be at least the minimum size.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_layout_direction:

.. rst-class:: classref-property

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **layout_direction** = ``0`` :ref:`🔗<class_Control_property_layout_direction>`

.. rst-class:: classref-property-setget

- |void| **set_layout_direction**\ (\ value\: :ref:`LayoutDirection<enum_Control_LayoutDirection>`\ )
- :ref:`LayoutDirection<enum_Control_LayoutDirection>` **get_layout_direction**\ (\ )

Contrôle la direction de mise en page et la direction d'écriture du texte. Les mises en page de droite à gauche sont nécessaires pour certaines langues (par exemple, arabe et hébreu). Voir aussi :ref:`is_layout_rtl()<class_Control_method_is_layout_rtl>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_localize_numeral_system:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **localize_numeral_system** = ``true`` :ref:`🔗<class_Control_property_localize_numeral_system>`

.. rst-class:: classref-property-setget

- |void| **set_localize_numeral_system**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_localizing_numeral_system**\ (\ )

Si ``true``, convertit automatiquement les numéros de ligne de code, les indices de liste, les valeurs de :ref:`SpinBox<class_SpinBox>` et de :ref:`ProgressBar<class_ProgressBar>` de l'arabe occidental (0..9) aux systèmes numériques utilisés dans la langue actuelle.

\ **Note :** Les nombres dans le texte ne sont pas automatiquement convertis, cela peut être fait manuellement, en utilisant :ref:`TextServer.format_number()<class_TextServer_method_format_number>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_behavior_recursive:

.. rst-class:: classref-property

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **mouse_behavior_recursive** = ``0`` :ref:`🔗<class_Control_property_mouse_behavior_recursive>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_behavior_recursive**\ (\ value\: :ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>`\ )
- :ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **get_mouse_behavior_recursive**\ (\ )

Détermine quels contrôles peuvent recevoir les entrées de la souris ensemble avec :ref:`mouse_filter<class_Control_property_mouse_filter>`. Voir :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>`. Comme le comportement par défaut est :ref:`MOUSE_BEHAVIOR_INHERITED<class_Control_constant_MOUSE_BEHAVIOR_INHERITED>`, cela peut être utilisé pour empêcher tous les contrôles enfants de recevoir les entrées de la souris.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_default_cursor_shape:

.. rst-class:: classref-property

:ref:`CursorShape<enum_Control_CursorShape>` **mouse_default_cursor_shape** = ``0`` :ref:`🔗<class_Control_property_mouse_default_cursor_shape>`

.. rst-class:: classref-property-setget

- |void| **set_default_cursor_shape**\ (\ value\: :ref:`CursorShape<enum_Control_CursorShape>`\ )
- :ref:`CursorShape<enum_Control_CursorShape>` **get_default_cursor_shape**\ (\ )

La forme par défaut du curseur pour ce contrôle. Utile pour les greffons de Godot et applications ou jeux qui utilisent les curseurs de souris du système.

\ **Note :** Sur Linux, les formes peuvent varier selon le thème du curseur du système.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_filter:

.. rst-class:: classref-property

:ref:`MouseFilter<enum_Control_MouseFilter>` **mouse_filter** = ``0`` :ref:`🔗<class_Control_property_mouse_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_filter**\ (\ value\: :ref:`MouseFilter<enum_Control_MouseFilter>`\ )
- :ref:`MouseFilter<enum_Control_MouseFilter>` **get_mouse_filter**\ (\ )

Détermine quels contrôles pourront recevoir les événements d'entrée de bouton de la souris via :ref:`_gui_input()<class_Control_private_method__gui_input>` et les signaux :ref:`mouse_entered<class_Control_signal_mouse_entered>`, et :ref:`mouse_exited<class_Control_signal_mouse_exited>`. Détermine également comment ces événements devraient être propagés. Voir les constantes pour apprendre ce que chacune fait. Utilisez :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>` pour déterminer si un contrôle peut recevoir l'entrée de la souris, puisque :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` l'affecte également.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_force_pass_scroll_events:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mouse_force_pass_scroll_events** = ``true`` :ref:`🔗<class_Control_property_mouse_force_pass_scroll_events>`

.. rst-class:: classref-property-setget

- |void| **set_force_pass_scroll_events**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_force_pass_scroll_events**\ (\ )

Lorsque activé, les événements de la molette de défilement traités par :ref:`_gui_input()<class_Control_private_method__gui_input>` seront passés au contrôle parent même si :ref:`mouse_filter<class_Control_property_mouse_filter>` est défini à :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>`.

Vous devriez le désactiver sur la racine de votre interface utilisateur si vous ne voulez pas que les événements de défilement aillent dans le traitement de :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`.

\ **Note :** Parce que cette propriété vaut par défaut ``true``, cela permet aux conteneurs défilables imbriqués de fonctionner directement.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_bottom** = ``0.0`` :ref:`🔗<class_Control_property_offset_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distance entre le bord du bas du nœud et son contrôle parent, basé sur :ref:`anchor_bottom<class_Control_property_anchor_bottom>`.

Les décalages sont souvent contrôlés par un ou plusieurs nœuds :ref:`Container<class_Container>` parents, de sorte que vous ne devriez pas les modifier manuellement si votre nœud est un enfant direct d'un :ref:`Container<class_Container>`. Les décalages se mettent à jour automatiquement lorsque vous déplacez ou redimensionnez le nœud.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_left** = ``0.0`` :ref:`🔗<class_Control_property_offset_left>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distance entre le bord gauche du nœud et son contrôle parent, basé sur :ref:`anchor_left<class_Control_property_anchor_left>`.

Les décalages sont souvent contrôlés par un ou plusieurs nœuds :ref:`Container<class_Container>` parents, de sorte que vous ne devriez pas les modifier manuellement si votre nœud est un enfant direct d'un :ref:`Container<class_Container>`. Les décalages se mettent à jour automatiquement lorsque vous déplacez ou redimensionnez le nœud.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_right** = ``0.0`` :ref:`🔗<class_Control_property_offset_right>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distance entre le bord droit du nœud et son contrôle parent, basé sur :ref:`anchor_right<class_Control_property_anchor_right>`.

Les décalages sont souvent contrôlés par un ou plusieurs nœuds :ref:`Container<class_Container>` parents, de sorte que vous ne devriez pas les modifier manuellement si votre nœud est un enfant direct d'un :ref:`Container<class_Container>`. Les décalages se mettent à jour automatiquement lorsque vous déplacez ou redimensionnez le nœud.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_top** = ``0.0`` :ref:`🔗<class_Control_property_offset_top>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distance entre le bord du haut du nœud et son contrôle parent, basé sur :ref:`anchor_top<class_Control_property_anchor_top>`.

Les décalages sont souvent contrôlés par un ou plusieurs nœuds :ref:`Container<class_Container>` parents, de sorte que vous ne devriez pas les modifier manuellement si votre nœud est un enfant direct d'un :ref:`Container<class_Container>`. Les décalages se mettent à jour automatiquement lorsque vous déplacez ou redimensionnez le nœud.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **offset_transform_enabled** = ``false`` :ref:`🔗<class_Control_property_offset_transform_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_offset_transform_enabled**\ (\ )

If ``true``, applies all offset transform properties. Otherwise, no offset transform is applied and the properties have no effect.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_pivot:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset_transform_pivot** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_offset_transform_pivot>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_pivot**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset_transform_pivot**\ (\ )

Pivot used by :ref:`offset_transform_rotation<class_Control_property_offset_transform_rotation>` and :ref:`offset_transform_scale<class_Control_property_offset_transform_scale>` in absolute units.

The final pivot position is the combined value of this property and :ref:`offset_transform_pivot_ratio<class_Control_property_offset_transform_pivot_ratio>`.

Has no effect unless :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_pivot_ratio:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset_transform_pivot_ratio** = ``Vector2(0.5, 0.5)`` :ref:`🔗<class_Control_property_offset_transform_pivot_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_pivot_ratio**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset_transform_pivot_ratio**\ (\ )

Same as :ref:`offset_transform_pivot<class_Control_property_offset_transform_pivot>` but expressed in units relative to the **Control** :ref:`size<class_Control_property_size>` where ``Vector2(0, 0)`` is the top-left corner of this control, and ``Vector2(1, 1)`` is its bottom-right corner.

The final pivot position is the combined value of this property and :ref:`offset_transform_pivot<class_Control_property_offset_transform_pivot>`.

Has no effect unless :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset_transform_position** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_offset_transform_position>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset_transform_position**\ (\ )

Position offset in absolute units. The final offset is the combined value of this property and :ref:`offset_transform_position_ratio<class_Control_property_offset_transform_position_ratio>`.

Has no effect unless :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_position_ratio:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset_transform_position_ratio** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_offset_transform_position_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_position_ratio**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset_transform_position_ratio**\ (\ )

Same as :ref:`offset_transform_position<class_Control_property_offset_transform_position>` but expressed in units relative to the **Control** :ref:`size<class_Control_property_size>` where ``Vector2(0, 0)`` is the top-left corner of this control, and ``Vector2(1, 1)`` is its bottom-right corner.

The final offset is the combined value of this property and :ref:`offset_transform_position<class_Control_property_offset_transform_position>`.

Has no effect unless :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_transform_rotation** = ``0.0`` :ref:`🔗<class_Control_property_offset_transform_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset_transform_rotation**\ (\ )

Rotation offset. The rotation pivot is defined by :ref:`offset_transform_pivot<class_Control_property_offset_transform_pivot>` and :ref:`offset_transform_pivot_ratio<class_Control_property_offset_transform_pivot_ratio>`.

Has no effect unless :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset_transform_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Control_property_offset_transform_scale>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset_transform_scale**\ (\ )

Scale offset. The scale pivot is defined by :ref:`offset_transform_pivot<class_Control_property_offset_transform_pivot>` and :ref:`offset_transform_pivot_ratio<class_Control_property_offset_transform_pivot_ratio>`.

Has no effect unless :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_visual_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **offset_transform_visual_only** = ``true`` :ref:`🔗<class_Control_property_offset_transform_visual_only>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_visual_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_offset_transform_visual_only**\ (\ )

If ``true``, the offset transforms is only applied visually and does not affect input. In other words, this Control will still receive input events at its original location before the offset transform is applied.

If ``false``, the entire transform of this Control is affected and input events will register where the Control is visually.

Has no effect unless :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` is ``true``.

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

La position du nœud, par rapport au nœud le contenant. Elle correspond au coin supérieur gauche du rectangle. La propriété n'est pas affectée par :ref:`pivot_offset<class_Control_property_pivot_offset>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_propagate_maximum_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **propagate_maximum_size** = ``false`` :ref:`🔗<class_Control_property_propagate_maximum_size>`

.. rst-class:: classref-property-setget

- |void| **set_propagate_maximum_size**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_propagating_maximum_size**\ (\ )

If ``true``, this Control's children will use the value returned by :ref:`get_combined_maximum_size()<class_Control_method_get_combined_maximum_size>` in their own size calculations.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation** = ``0.0`` :ref:`🔗<class_Control_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation**\ (\ )

La rotation du nœud autour de son pivot, en radians. Voir :ref:`pivot_offset<class_Control_property_pivot_offset>` pour modifier la position du pivot.

\ **Note :** Cette propriété est modifiée en degrés dans l'inspecteur. Si vous voulez utiliser des degrés dans un script, utilisez :ref:`rotation_degrees<class_Control_property_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_rotation_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation_degrees** :ref:`🔗<class_Control_property_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation_degrees**\ (\ )

Propriété d'aide pour accéder à la :ref:`rotation<class_Control_property_rotation>` en degrés au lieu de radians.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Control_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scale**\ (\ )

L'échelle du nœud, relative à :ref:`size<class_Control_property_size>`. Changez cette propriété pour changer l'échelle du nœud autour de :ref:`pivot_offset<class_Control_property_pivot_offset>`. L'info-bulle du Control sera également échelonnée en fonction de cette valeur.

\ **Note :** Cette propriété est principalement destinée à être utilisée pour des animations. Pour supporter plusieurs résolutions dans votre projet, utilisez un mode d'étirement approprié comme décrit dans la :doc:`documentation <../tutorials/rendering/multiple_resolutions>` au lieu de dimensionner chaque Control individuellement.

\ **Note :** :ref:`FontFile.oversampling<class_FontFile_property_oversampling>` ne prend *pas* la :ref:`scale<class_Control_property_scale>` du **Control** en compte. Cela signifie que l'agrandissement/rétrécissement causera un aspect flou et pixelisé aux polices bitmap et des polices dynamiques rasterisées (non-MSDF). Pour garantir que le texte reste net indépendamment de l'échelle, vous pouvez activer le rendu de police MSDF en activant :ref:`ProjectSettings.gui/theme/default_font_multichannel_signed_distance_field<class_ProjectSettings_property_gui/theme/default_font_multichannel_signed_distance_field>` (s'applique uniquement à la police du projet par défaut), ou en activant **Champ de Distance Signé Multicanal** dans les options d'import d'une DynamicFont pour les polices personnalisées. Sur les polices système, :ref:`SystemFont.multichannel_signed_distance_field<class_SystemFont_property_multichannel_signed_distance_field>` peut être activé dans l'inspecteur.

\ **Note :** Si le nœud Control est un enfant d'un nœud :ref:`Container<class_Container>`, l'échelle sera réinitialisée à ``Vector2(1, 1)`` lorsque la scène est instanciée. Pour définir l'échelle du Control lors de son instanciation, attendez une trame avec ``await get_tree().process_frame`` puis définissez sa propriété :ref:`scale<class_Control_property_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_shortcut_context:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **shortcut_context** :ref:`🔗<class_Control_property_shortcut_context>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut_context**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_shortcut_context**\ (\ )

Le :ref:`Node<class_Node>` qui doit être un parent du **Control** ayant le focus pour que le raccourci soit activé. Si ``null``, le raccourci peut être activé lorsque n'importe quel contrôle a le focus (un raccourci global). Cela permet aux raccourcis d'être acceptés seulement lorsque l'utilisateur a le focus sur une zone précise de l'interface.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_size>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

La taille du rectangle délimitant du nœud, dans le système de coordonnées du nœud. Les nœuds :ref:`Container<class_Container>` mettent à jour cette propriété automatiquement.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_horizontal:

.. rst-class:: classref-property

|bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **size_flags_horizontal** = ``1`` :ref:`🔗<class_Control_property_size_flags_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_size_flags**\ (\ value\: |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]\ )
- |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **get_h_size_flags**\ (\ )

Signale au :ref:`Container<class_Container>` parent qu'il devrait redimensionner et placer le nœud sur l'axe X. Utilisez une combinaison des constantes :ref:`SizeFlags<enum_Control_SizeFlags>` pour changer les drapeaux. Regardez les constantes pour apprendre ce que chacune fait.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_stretch_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **size_flags_stretch_ratio** = ``1.0`` :ref:`🔗<class_Control_property_size_flags_stretch_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stretch_ratio**\ (\ )

Si le nœud et au moins un de ses voisins utilisent le drapeau de taille :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>`, le :ref:`Container<class_Container>` parent le laissera prendre plus ou moins d'espace selon cette propriété. Si ce nœud a un rapport d'étirement de 2 et son voisin un rapport de 1, ce nœud prendra les deux tiers de l'espace disponible.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_vertical:

.. rst-class:: classref-property

|bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **size_flags_vertical** = ``1`` :ref:`🔗<class_Control_property_size_flags_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_size_flags**\ (\ value\: |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]\ )
- |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **get_v_size_flags**\ (\ )

Signale au :ref:`Container<class_Container>` parent qu'il devrait redimensionner et placer le nœud sur l'axe Y. Utilisez une combinaison des constantes :ref:`SizeFlags<enum_Control_SizeFlags>` pour changer les drapeaux. Regardez les constantes pour apprendre ce que chacune fait.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_theme:

.. rst-class:: classref-property

:ref:`Theme<class_Theme>` **theme** :ref:`🔗<class_Control_property_theme>`

.. rst-class:: classref-property-setget

- |void| **set_theme**\ (\ value\: :ref:`Theme<class_Theme>`\ )
- :ref:`Theme<class_Theme>` **get_theme**\ (\ )

La ressource :ref:`Theme<class_Theme>` que ce nœud et tous ses enfants **Control** et :ref:`Window<class_Window>` utilisent. Si un nœud enfant a son propre ensemble de ressources :ref:`Theme<class_Theme>`, les éléments de thème sont fusionnés avec les définitions de l'enfant ayant une priorité plus élevée.

\ **Note :** Les styles de :ref:`Window<class_Window>` n'auront aucun effet à moins que la fenêtre ne soit intégrée.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_theme_type_variation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **theme_type_variation** = ``&""`` :ref:`🔗<class_Control_property_theme_type_variation>`

.. rst-class:: classref-property-setget

- |void| **set_theme_type_variation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_theme_type_variation**\ (\ )

Le nom d'une variation de type d'un thème utilisée par ce **Control** pour rechercher ses propres éléments de thème. Lorsque vide, le nom de classe du nœud est utilisé (par exemple ``Button`` pour le contrôle :ref:`Button<class_Button>`), ainsi que les noms de classe de toutes les classes parentes (dans l'ordre d'héritage).

Lorsque définie, cette propriété donne la plus haute priorité au type du nom spécifié. Ce type peut ensuite étendre un autre type, formant une chaîne de dépendances. Voir :ref:`Theme.set_type_variation()<class_Theme_method_set_type_variation>`. Si l'élément de thème n'est pas trouvé en utilisant ce type ou ses types de base, la recherche se replie alors sur les noms de classe.

\ **Note :** Pour rechercher les propres éléments d'un **Control**, utilisez les diverses méthodes ``get_theme_*`` sans spécifier ``theme_type``.

\ **Note :** Les éléments de thème sont recherchés dans l'ordre de l'arborescence, depuis la branche jusqu'à la racine, où chaque nœud **Control** est vérifié suivant sa propriété :ref:`theme<class_Control_property_theme>`. Le premier résultat trouvé sur n'importe quel type ou classe est renvoyé. Le thème du projet et celui par défaut sont vérifiés en dernier.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_tooltip_auto_translate_mode:

.. rst-class:: classref-property

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **tooltip_auto_translate_mode** = ``0`` :ref:`🔗<class_Control_property_tooltip_auto_translate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip_auto_translate_mode**\ (\ value\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ )
- :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **get_tooltip_auto_translate_mode**\ (\ )

Définit si le texte de l'info-bulle doit automatiquement changer à sa version traduite en fonction de la langue actuelle. Utilise le même mode de traduction automatique que ce contrôle lorsque défini à :ref:`Node.AUTO_TRANSLATE_MODE_INHERIT<class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT>`.

\ **Note :** Les info-bulles personnalisées utilisant :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` n'utilisent pas ce mode de traduction automatique automatiquement.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_tooltip_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **tooltip_text** = ``""`` :ref:`🔗<class_Control_property_tooltip_text>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tooltip_text**\ (\ )

Le texte de l'info-bulle par défaut. L'info-bulle apparaît lorsque le curseur de la souris reste sur ce contrôle durant quelques instants, à condition que la propriété :ref:`mouse_filter<class_Control_property_mouse_filter>` ne vaille pas :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`. Vous pouvez modifier le temps nécessaire avant que l'info-bulle n'apparaisse avec le paramètre :ref:`ProjectSettings.gui/timers/tooltip_delay_sec<class_ProjectSettings_property_gui/timers/tooltip_delay_sec>`.

Cette chaîne est la valeur de renvoi par défaut de :ref:`get_tooltip()<class_Control_method_get_tooltip>`. Redéfinissez :ref:`_get_tooltip()<class_Control_private_method__get_tooltip>` pour générer le texte de l'info-bulle dynamiquement. Redéfinissez :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` pour personnaliser l'interface et le comportement de l'info-bulle.

La popup de l'info-bulle utilisera soit l'implémentation par défaut, soit une que vous pouvez personnaliser en redéfinissant :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>`. L'info-bulle par défaut comprend un :ref:`PopupPanel<class_PopupPanel>` et un :ref:`Label<class_Label>` dont les propriétés de thème peuvent être personnalisées en utilisant des méthodes de :ref:`Theme<class_Theme>` pour ``"TooltipPanel"`` et ``"TooltipLabel"`` respectivement. Par exemple :


.. tabs::

 .. code-tab:: gdscript

    var style_box = StyleBoxFlat.new()
    style_box.set_bg_color(Color(1, 1, 0))
    style_box.set_border_width_all(2)
    # On part du principe ici que la propriété `theme` a déjà été assignée avec un Theme personnalisé.
    theme.set_stylebox("panel", "TooltipPanel", style_box)
    theme.set_color("font_color", "TooltipLabel", Color(0, 1, 1))

 .. code-tab:: csharp

    var styleBox = new StyleBoxFlat();
    styleBox.SetBgColor(new Color(1, 1, 0));
    styleBox.SetBorderWidthAll(2);
    // On part du principe ici que la propriété `Theme` a déjà été assignée avec un Theme personnalisé.
    Theme.SetStyleBox("panel", "TooltipPanel", styleBox);
    Theme.SetColor("font_color", "TooltipLabel", new Color(0, 1, 1));



.. rst-class:: classref-item-separator

----

.. _class_Control_property_translation_context:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **translation_context** = ``&""`` :ref:`🔗<class_Control_property_translation_context>`

.. rst-class:: classref-property-setget

- |void| **set_translation_context**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_translation_context**\ (\ )

The translation context used when translating this control's displayed text, if it has any. Also used when generating translation templates.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Control_private_method__accessibility_get_contextual_info:

.. rst-class:: classref-method

:ref:`String<class_String>` **_accessibility_get_contextual_info**\ (\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__accessibility_get_contextual_info>`

Renvoie la description des raccourcis clavier et des autres aides contextuelles pour ce contrôle.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__can_drop_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_drop_data**\ (\ at_position\: :ref:`Vector2<class_Vector2>`, data\: :ref:`Variant<class_Variant>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__can_drop_data>`

Godot appelle cette méthode pour vérifier si les ``data`` de la méthode :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` d'un contrôle peuvent être déposées à la position ``at_position``. ``at_position`` est locale à ce contrôle.

Cette méthode ne devrait être utilisée uniquement que pour tester les données. Traitez les données dans :ref:`_drop_data()<class_Control_private_method__drop_data>`.

\ **Note :** Si le glissement a été lancé par un raccourci clavier ou :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` est définie à :ref:`Vector2.INF<class_Vector2_constant_INF>`, et la position de l'objet/texte actuellement sélectionné doit être utilisée comme position de dépôt.


.. tabs::

 .. code-tab:: gdscript

    func _can_drop_data(position, data):
        # Vérifiez la position si c'est important pour vous
        # Sinon, vérifiez juste les données
        return typeof(data) == TYPE_DICTIONARY and data.has("attendu")

 .. code-tab:: csharp

    public override bool _CanDropData(Vector2 atPosition, Variant data)
    {
        // Vérifiez la position si c'est important pour vous
        // Sinon, vérifiez juste les données
        return data.VariantType == Variant.Type.Dictionary && data.AsGodotDictionary().ContainsKey("attendu");
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__drop_data:

.. rst-class:: classref-method

|void| **_drop_data**\ (\ at_position\: :ref:`Vector2<class_Vector2>`, data\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_Control_private_method__drop_data>`

Godot appelle cette méthode pour vous transmettre les ``data`` du résultat de :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` d'un contrôle. Godot appelle d'abord :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` pour vérifier si ``data`` est autorisé à être déposé à la position ``at_position`` où ``at_position`` est locale à ce contrôle.

\ **Note :** Si le glissement a été lancé par un raccourci clavier ou :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` est définie à :ref:`Vector2.INF<class_Vector2_constant_INF>`, et la position de l'objet/texte actuellement sélectionné doit être utilisée comme position de dépôt.


.. tabs::

 .. code-tab:: gdscript

    func _can_drop_data(position, data):
        return typeof(data) == TYPE_DICTIONARY and data.has("couleur")

    func _drop_data(position, data):
        var color = data["couleur"]

 .. code-tab:: csharp

    public override bool _CanDropData(Vector2 atPosition, Variant data)
    {
        return data.VariantType == Variant.Type.Dictionary && data.AsGodotDictionary().ContainsKey("couleur");
    }

    public override void _DropData(Vector2 atPosition, Variant data)
    {
        Color color = data.AsGodotDictionary()["couleur"].AsColor();
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_accessibility_container_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_accessibility_container_name**\ (\ node\: :ref:`Node<class_Node>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_accessibility_container_name>`

Redéfinissez cette méthode pour renvoyer une description facilement lisible de la position du nœud enfant ``node`` dans le conteneur personnalisé, ajouté à :ref:`accessibility_name<class_Control_property_accessibility_name>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_cursor_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_cursor_shape**\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_cursor_shape>`

Virtual method to be implemented by the user. Returns the cursor shape for the position ``at_position`` in the control's local coordinates, which will typically be used while hovering over this control. See :ref:`get_cursor_shape()<class_Control_method_get_cursor_shape>`.

If not overridden, defaults to :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_drag_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_drag_data**\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| :ref:`🔗<class_Control_private_method__get_drag_data>`

Godot appelle cette méthode pour obtenir des données qui peuvent être glissées et déposées sur des contrôles qui attendent des données de glisser-déposer. Renvoie ``null`` s'il n'y a pas de données à glisser. Les contrôles qui veulent recevoir des données de glisser-déposer doivent implémenter :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` et :ref:`_drop_data()<class_Control_private_method__drop_data>`. ``at_position`` est locale à ce contrôle. Le glissement peut être forcé avec :ref:`force_drag()<class_Control_method_force_drag>`.

Un aperçu suivant la souris représentant les données peut être défini avec :ref:`set_drag_preview()<class_Control_method_set_drag_preview>`. L'appel à cette méthode est un bon moment définir cet aperçu.

\ **Note :** Si le glissement a été lancé par un raccourci clavier ou :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` est définie à :ref:`Vector2.INF<class_Vector2_constant_INF>`, et la position de l'objet/texte actuellement sélectionné doit être utilisée comme position de dépôt.


.. tabs::

 .. code-tab:: gdscript

    func _get_drag_data(position):
        var mesdonnees = creer_donnees() # Ceci est votre méthode personnalisées générant les données du glissement.
        set_drag_preview(creer_apercu(mesdonnees)) # Ceci est votre méthode personnalisée générant l'aperçu des données du glissement.
        return mesdonnees

 .. code-tab:: csharp

    public override Variant _GetDragData(Vector2 atPosition)
    {
        var mesDonnees = CreerDonnees(); // Ceci est votre méthode personnalisées générant les données du glissement.
        SetDragPreview(CreerApercu(mesDonnees)); // Ceci est votre méthode personnalisée générant l'aperçu des données du glissement.
        return mesDonnees;
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_maximum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_maximum_size**\ (\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_maximum_size>`

Virtual method to be implemented by the user. Returns the maximum size for this control. Alternative to :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` for controlling maximum size via code. The actual maximum size will be the max value of these two (in each axis separately).

If not overridden, defaults to :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

\ **Note:** This method will not be called when the script is attached to a **Control** node that already overrides its maximum size (e.g. :ref:`ScrollContainer<class_ScrollContainer>`).

\ **Note:** It is recommended to use :ref:`get_bound_minimum_size()<class_Control_method_get_bound_minimum_size>` instead of :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>` when implementing this method, as the former respects maximum size limits when calculating the minimum size, while the latter does not.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_minimum_size**\ (\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_minimum_size>`

Méthode virtuelle à implémenter par l'utilisateur. Renvoie la taille minimale de ce contrôle. Cette taille peut aussi être contrôlée avec :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` via le code. L'actuelle taille minimale sera le maximum de ces deux valeurs (sur chaque axe séparément).

Si non redéfinie, la valeur par défaut est :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

\ **Note :** Cette méthode n'est pas appelée quand le script est attaché à un nœud **Control** qui définit depuis lui-même sa taille minimale (ex. :ref:`Label<class_Label>`, :ref:`Button<class_Button>`, :ref:`PanelContainer<class_PanelContainer>`, etc.). Elle ne peut être utilisée qu'avec les éléments d'interface les plus basiques, comme les **Control**, :ref:`Container<class_Container>`, :ref:`Panel<class_Panel>`, etc.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_tooltip**\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_tooltip>`

Virtual method to be implemented by the user. Returns the tooltip text for the position ``at_position`` in the control's local coordinates, which will typically appear when the cursor is resting over this control. See :ref:`get_tooltip()<class_Control_method_get_tooltip>`.

\ **Note:** If this method returns an empty :ref:`String<class_String>` and :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` is not overridden, no tooltip is displayed.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_tooltip_auto_translate_mode_at:

.. rst-class:: classref-method

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **_get_tooltip_auto_translate_mode_at**\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_tooltip_auto_translate_mode_at>`

Return the auto-translation mode at the given ``at_position``. If not implemented, the :ref:`tooltip_auto_translate_mode<class_Control_property_tooltip_auto_translate_mode>` property will be used instead.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__gui_input:

.. rst-class:: classref-method

|void| **_gui_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Control_private_method__gui_input>`

Méthode virtuelle à implémenter par l'utilisateur. Redéfinissez cette méthode pour gérer et accepter des entrées sur des éléments d'interface utilisateur. Voir aussi :ref:`accept_event()<class_Control_method_accept_event>`.

\ **Exemple :** Cliquer sur un contrôle pour afficher un message :


.. tabs::

 .. code-tab:: gdscript

    func _gui_input(event):
        if event is InputEventMouseButton:
            if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
                print("J'ai été cliqué ! :D")

 .. code-tab:: csharp

    public override void _GuiInput(InputEvent @event)
    {
        if (@event is InputEventMouseButton mb)
        {
            if (mb.ButtonIndex == MouseButton.Left && mb.Pressed)
            {
                GD.Print("J'ai été cliqué ! :D");
            }
        }
    }



Si l'évènement ``event`` hérite de :ref:`InputEventMouse<class_InputEventMouse>`, cette méthode ne sera **pas** appelée lorsque :

- le :ref:`mouse_filter<class_Control_property_mouse_filter>` du contrôle est défini à :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`\  ;

- le contrôle est recouvert par un autre **Control**, qui n'a pas :ref:`mouse_filter<class_Control_property_mouse_filter>` défini à :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`\  ;

- le parent de ce contrôle a :ref:`mouse_filter<class_Control_property_mouse_filter>` défini à :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>` ou a accepté l'événement ;

- le parent du contrôle a :ref:`clip_contents<class_Control_property_clip_contents>` activé et la position de ``event`` est en dehors du rectangle du parent;

- la position d'``event`` est en dehors du contrôle (voir :ref:`_has_point()<class_Control_private_method__has_point>`).

\ **Note :** La position d'``event`` est relative à l'origine du contrôle.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__has_point>`

Virtual method to be implemented by the user. Returns whether the given ``point`` is inside this control.

If not overridden, default behavior is checking if the point is within the control's Rect.

\ **Note:** If you want to check if a point is inside the control, you can use ``Rect2(Vector2.ZERO, size).has_point(point)``.

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

Fonction de redéfinition de l'algorithme BiDi définie par l'utilisateur.

Renvoie un :ref:`Array<class_Array>` de :ref:`Vector3i<class_Vector3i>` de plages de texte et directions de base de texte, dans l'ordre gauche à droite. Les plages devraient couvrir le texte source complet ``text`` sans chevauchements. L'algorithme BiDi sera utilisé sur chaque plage séparément.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accept_event:

.. rst-class:: classref-method

|void| **accept_event**\ (\ ) :ref:`🔗<class_Control_method_accept_event>`

Marque un événement d'entrée comme traité. Une fois un événement accepté, il arrête de se propager, même aux nœuds écoutant :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` ou :ref:`Node._unhandled_key_input()<class_Node_private_method__unhandled_key_input>`.

\ **Note :** Cela n'affecte pas les méthodes dans :ref:`Input<class_Input>`, seulement la façon dont les événements sont propagés.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accessibility_drag:

.. rst-class:: classref-method

|void| **accessibility_drag**\ (\ ) :ref:`🔗<class_Control_method_accessibility_drag>`

Commence une opération de glisser-déposer sans utiliser de souris.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accessibility_drop:

.. rst-class:: classref-method

|void| **accessibility_drop**\ (\ ) :ref:`🔗<class_Control_method_accessibility_drop>`

Termine une opération de glisser-déposer sans utiliser de souris.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_color_override:

.. rst-class:: classref-method

|void| **add_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Control_method_add_theme_color_override>`

Crée une redéfinition locale pour une :ref:`Color<class_Color>` de thème nommée ``name``. Les redéfinitions locales ont toujours la priorité lors de la récupération d'éléments de thème pour le contrôle. Une redéfinie peut être retirée avec :ref:`remove_theme_color_override()<class_Control_method_remove_theme_color_override>`.

Voir aussi :ref:`get_theme_color()<class_Control_method_get_theme_color>`.

\ **Exemple :** Redéfinir la couleur d'un :ref:`Label<class_Label>` et la réinitialiser plus tard :


.. tabs::

 .. code-tab:: gdscript

    # Compte tenu du nœud enfant Label "MonLabel", remplace sa couleur de police par une valeur personnalisée.
    $MonLabel.add_theme_color_override("font_color", Color(1, 0.5, 0))
    # Réinitialise la couleur de police du Label enfant.
    $MonLabel.remove_theme_color_override("font_color")
    # Alternativement, elle peut être redéfinie avec la valeur par défaut du type Label.
    $MonLabel.add_theme_color_override("font_color", get_theme_color("font_color", "Label"))

 .. code-tab:: csharp

    // Compte tenu du nœud enfant Label "MonLabel", remplace sa couleur de police par une valeur personnalisée.
    GetNode<Label>("MonLabel").AddThemeColorOverride("font_color", new Color(1, 0.5f, 0));
    // Réinitialise la couleur de police du Label enfant.
    GetNode<Label>("MonLabel").RemoveThemeColorOverride("font_color");
    // Alternativement, elle peut être redéfinie avec la valeur par défaut du type Label.
    GetNode<Label>("MonLabel").AddThemeColorOverride("font_color", GetThemeColor("font_color", "Label"));



.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_constant_override:

.. rst-class:: classref-method

|void| **add_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`, constant\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Control_method_add_theme_constant_override>`

Crée une redéfinition locale pour une constante de thème nommée ``name``. Les redéfinitions locales ont toujours la priorité lors de la récupération des éléments de thème pour le contrôle. Une surcharge peut être supprimée avec la méthode :ref:`remove_theme_constant_override()<class_Control_method_remove_theme_constant_override>`.

Voir aussi :ref:`get_theme_constant()<class_Control_method_get_theme_constant>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_font_override:

.. rst-class:: classref-method

|void| **add_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`, font\: :ref:`Font<class_Font>`\ ) :ref:`🔗<class_Control_method_add_theme_font_override>`

Crée une redéfinition locale pour une :ref:`Font<class_Font>` de thème nommée ``name``. Les redéfinitions locales ont toujours la priorité lors de la récupération des éléments de thème pour le contrôle. Une redéfinition peut être supprimée avec la valeur :ref:`remove_theme_font_override()<class_Control_method_remove_theme_font_override>`.

Voir aussi :ref:`get_theme_font()<class_Control_method_get_theme_font>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_font_size_override:

.. rst-class:: classref-method

|void| **add_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`, font_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Control_method_add_theme_font_size_override>`

Crée une redéfinition locale pour une taille de police de thème nommée ``name``. Les redéfinitions locales ont toujours la priorité lors de la récupération des éléments de thème pour le contrôle. Une redéfinition peut être supprimée avec la valeur :ref:`remove_theme_font_size_override()<class_Control_method_remove_theme_font_size_override>`.

Voir aussi :ref:`get_theme_font_size()<class_Control_method_get_theme_font_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_icon_override:

.. rst-class:: classref-method

|void| **add_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_Control_method_add_theme_icon_override>`

Crée une redéfinition locale pour une icône de thème nommée ``name``. Les redéfinitions locales ont toujours la priorité lors de la récupération des éléments de thème pour le contrôle. Une redéfinition peut être supprimée avec la valeur :ref:`remove_theme_icon_override()<class_Control_method_remove_theme_icon_override>`.

Voir aussi :ref:`get_theme_icon()<class_Control_method_get_theme_icon>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_stylebox_override:

.. rst-class:: classref-method

|void| **add_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`, stylebox\: :ref:`StyleBox<class_StyleBox>`\ ) :ref:`🔗<class_Control_method_add_theme_stylebox_override>`

Crée une redéfinition locale pour une :ref:`StyleBox<class_StyleBox>` de thème nommée ``name``. Les redéfinitions locales ont toujours la priorité lors de la récupération d'éléments de thème pour le contrôle. Une redéfinie peut être retirée avec :ref:`remove_theme_stylebox_override()<class_Control_method_remove_theme_stylebox_override>`.

Voir aussi :ref:`get_theme_stylebox()<class_Control_method_get_theme_stylebox>`.

\ **Exemple :** Modifier une propriété dans une :ref:`StyleBox<class_StyleBox>` en la dupliquant :


.. tabs::

 .. code-tab:: gdscript

    # Le code ci-dessous part du principe que le nœud enfant "MonBouton" a une StyleBoxFlat qui lui est assignée.
    # Les ressources sont partagées entre les instances, il est donc nécessaire de les dupliquer
    # pour éviter que les modifications ne se répercutent sur tous les autres boutons.
    var nouvelle_stylebox_normal = $MyButton.get_stylebox("normal").duplicate()
    nouvelle_stylebox_normal.border_width_top = 3
    nouvelle_stylebox_normal.border_color = Color(0, 1, 0.5)
    $MonBouton.add_stylebox_override("normal", nouvelle_stylebox_normal)
    # Retirer la redéfinition de la stylebox.
    $MonBouton.add_stylebox_override("normal", null)

 .. code-tab:: csharp

    // Le code ci-dessous part du principe que le nœud enfant "MonBouton" a une StyleBoxFlat qui lui est assignée.
    // Les ressources sont partagées entre les instances, il est donc nécessaire de les dupliquer
    // pour éviter que les modifications ne se répercutent sur tous les autres boutons.
    StyleBoxFlat nouvelleStyleboxNomal = GetNode<Button>("MonBouton").GetThemeStylebox("normal").Duplicate() as StyleBoxFlat;
    nouvelleStyleboxNomal.BorderWidthTop = 3;
    nouvelleStyleboxNomal.BorderColor = new Color(0, 1, 0.5f);
    GetNode<Button>("MonBouton").AddThemeStyleboxOverride("normal", nouvelleStyleboxNomal);
    // Retirer la redéfinition de la stylebox.
    GetNode<Button>("MonBouton").RemoveThemeStyleboxOverride("normal");



.. rst-class:: classref-item-separator

----

.. _class_Control_method_begin_bulk_theme_override:

.. rst-class:: classref-method

|void| **begin_bulk_theme_override**\ (\ ) :ref:`🔗<class_Control_method_begin_bulk_theme_override>`

Empêche les méthodes ``*_theme_*_override`` d'émettre :ref:`NOTIFICATION_THEME_CHANGED<class_Control_constant_NOTIFICATION_THEME_CHANGED>` jusqu'à ce que :ref:`end_bulk_theme_override()<class_Control_method_end_bulk_theme_override>` soit appelée.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_end_bulk_theme_override:

.. rst-class:: classref-method

|void| **end_bulk_theme_override**\ (\ ) :ref:`🔗<class_Control_method_end_bulk_theme_override>`

Termine une mise à jour de masse de redéfinition du thème. Voir :ref:`begin_bulk_theme_override()<class_Control_method_begin_bulk_theme_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_next_valid_focus:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_next_valid_focus**\ (\ ) |const| :ref:`🔗<class_Control_method_find_next_valid_focus>`

Cherche le prochain (en-dessous dans l'arborescence) **Control** qui peut prendre le focus.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_prev_valid_focus:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_prev_valid_focus**\ (\ ) |const| :ref:`🔗<class_Control_method_find_prev_valid_focus>`

Trouve (et renvoie) le **Control** précédent (au-dessus dans l'arbre) qui peut recevoir le focus.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_valid_focus_neighbor:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_valid_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_find_valid_focus_neighbor>`

Trouve le prochain **Control** qui peut recevoir le focus du côté :ref:`Side<enum_@GlobalScope_Side>` spécifié.

\ **Note :** Ceci est différent de :ref:`get_focus_neighbor()<class_Control_method_get_focus_neighbor>`, qui renvoie le chemin d'un voisin de focus spécifié.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_force_drag:

.. rst-class:: classref-method

|void| **force_drag**\ (\ data\: :ref:`Variant<class_Variant>`, preview\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_Control_method_force_drag>`

Force le glissement et contourne :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` et :ref:`set_drag_preview()<class_Control_method_set_drag_preview>` en passant ``data`` et ``preview``. Le glissement va commencer même si la souris n'est ni sur, ni appuyée sur ce contrôle.

Les méthodes :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` et :ref:`_drop_data()<class_Control_private_method__drop_data>` doivent être implémentées pour les contrôles qui veulent recevoir des données de glissement.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_anchor:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_anchor>`

Renvoie l'ancre du côté :ref:`Side<enum_@GlobalScope_Side>` spécifié. Une méthode getter pour :ref:`anchor_bottom<class_Control_property_anchor_bottom>`, :ref:`anchor_left<class_Control_property_anchor_left>`, :ref:`anchor_right<class_Control_property_anchor_right>` et :ref:`anchor_top<class_Control_property_anchor_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_begin:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_begin**\ (\ ) |const| :ref:`🔗<class_Control_method_get_begin>`

Renvoie :ref:`offset_left<class_Control_property_offset_left>` et :ref:`offset_top<class_Control_property_offset_top>`. Voir aussi :ref:`position<class_Control_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_bound_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_bound_minimum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_bound_minimum_size>`

Returns the bound value of :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>` by :ref:`get_combined_maximum_size()<class_Control_method_get_combined_maximum_size>`.

This value is the true minimum size of the container, as the maximum size has priority over the minimum size.

For example, if the combined minimum size is (100, 100) and the combined maximum size is (50, 150), the bound minimum size will be (50, 100).

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_combined_maximum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_combined_maximum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_combined_maximum_size>`

Returns the combined maximum size from :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` and :ref:`get_maximum_size()<class_Control_method_get_maximum_size>`, as well as the :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` of this node's parent if it is a Control node with :ref:`propagate_maximum_size<class_Control_property_propagate_maximum_size>` set to ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_combined_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_combined_minimum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_combined_minimum_size>`

Returns the combined minimum size from :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` and :ref:`get_minimum_size()<class_Control_method_get_minimum_size>`.

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

:ref:`CursorShape<enum_Control_CursorShape>` **get_cursor_shape**\ (\ at_position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Control_method_get_cursor_shape>`

Returns the mouse cursor shape for this control when hovered over ``at_position`` in local coordinates. For most controls, this is the same as :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>`, but some built-in controls implement more complex logic.

You can override :ref:`_get_cursor_shape()<class_Control_private_method__get_cursor_shape>` to implement custom behavior for this method.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_end:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_end**\ (\ ) |const| :ref:`🔗<class_Control_method_get_end>`

Renvoie :ref:`offset_right<class_Control_property_offset_right>` et :ref:`offset_bottom<class_Control_property_offset_bottom>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_focus_mode_with_override:

.. rst-class:: classref-method

:ref:`FocusMode<enum_Control_FocusMode>` **get_focus_mode_with_override**\ (\ ) |const| :ref:`🔗<class_Control_method_get_focus_mode_with_override>`

Renvoie le :ref:`focus_mode<class_Control_property_focus_mode>`, mais prend en compte le :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>`. Si :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` est défini à :ref:`FOCUS_BEHAVIOR_DISABLED<class_Control_constant_FOCUS_BEHAVIOR_DISABLED>`, ou est défini à :ref:`FOCUS_BEHAVIOR_INHERITED<class_Control_constant_FOCUS_BEHAVIOR_INHERITED>` et son ancêtre est défini à :ref:`FOCUS_BEHAVIOR_DISABLED<class_Control_constant_FOCUS_BEHAVIOR_DISABLED>`, alors ceci renvoie :ref:`FOCUS_NONE<class_Control_constant_FOCUS_NONE>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_focus_neighbor:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_focus_neighbor>`

Renvoie le voisin de focus pour le côte :ref:`Side<enum_@GlobalScope_Side>` spécifié. Une méthode getter pour :ref:`focus_neighbor_bottom<class_Control_property_focus_neighbor_bottom>`, :ref:`focus_neighbor_left<class_Control_property_focus_neighbor_left>`, :ref:`focus_neighbor_right<class_Control_property_focus_neighbor_right>` et :ref:`focus_neighbor_top<class_Control_property_focus_neighbor_top>`.

\ **Note :** Pour trouver le prochain **Control** sur le :ref:`Side<enum_@GlobalScope_Side>` spécifique, même si un voisin n'est pas assigné, utilisez :ref:`find_valid_focus_neighbor()<class_Control_method_find_valid_focus_neighbor>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_global_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_global_rect**\ (\ ) |const| :ref:`🔗<class_Control_method_get_global_rect>`

Renvoie la position et la taille du contrôle relativement au canevas le contenant. Voir :ref:`global_position<class_Control_property_global_position>` et :ref:`size<class_Control_property_size>`.

\ **Note :** Si le nœud lui-même ou tout parent :ref:`CanvasItem<class_CanvasItem>` entre le nœud et le canevas ont une rotation ou un cisaillement non par défaut, la taille résultante n'est probablement pas significative.

\ **Note :** Définir :ref:`Viewport.gui_snap_controls_to_pixels<class_Viewport_property_gui_snap_controls_to_pixels>` à ``true`` peut conduire à des erreurs d'arrondi entre le contrôle affiché et le :ref:`Rect2<class_Rect2>` renvoyé.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_maximum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_maximum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_maximum_size>`

Returns the maximum size for this control. See :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_minimum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_minimum_size>`

Renvoie la taille minimale pour ce contrôle. Voir :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_mouse_filter_with_override:

.. rst-class:: classref-method

:ref:`MouseFilter<enum_Control_MouseFilter>` **get_mouse_filter_with_override**\ (\ ) |const| :ref:`🔗<class_Control_method_get_mouse_filter_with_override>`

Renvoie le :ref:`mouse_filter<class_Control_property_mouse_filter>`, mais prend en compte le :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>`. Si :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` est défini à :ref:`MOUSE_BEHAVIOR_DISABLED<class_Control_constant_MOUSE_BEHAVIOR_DISABLED>`, ou il est défini à :ref:`MOUSE_BEHAVIOR_INHERITED<class_Control_constant_MOUSE_BEHAVIOR_INHERITED>` et son ancêtre est défini à :ref:`MOUSE_BEHAVIOR_DISABLED<class_Control_constant_MOUSE_BEHAVIOR_DISABLED>`, alors cela renvoie :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_offset>`

Renvoie le décalage pour le côté :ref:`Side<enum_@GlobalScope_Side>` spécifié. Une méthode getter pour :ref:`offset_bottom<class_Control_property_offset_bottom>`, :ref:`offset_left<class_Control_property_offset_left>`, :ref:`offset_right<class_Control_property_offset_right>` et :ref:`offset_top<class_Control_property_offset_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_parent_area_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_parent_area_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_parent_area_size>`

Renvoie la largeur / hauteur occupée dans le contrôle parent.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_parent_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_parent_control**\ (\ ) |const| :ref:`🔗<class_Control_method_get_parent_control>`

Renvoie le nœud de contrôle parent.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Control_method_get_rect>`

Renvoie la position et la taille du contrôle dans le système de coordonnées du nœud le contenant. Voir :ref:`position<class_Control_property_position>`, :ref:`scale<class_Control_property_scale>` et :ref:`size<class_Control_property_size>`.

\ **Note :** Si :ref:`rotation<class_Control_property_rotation>` n'est pas la rotation par défaut, la taille résultante n'est pas significative.

\ **Note :** Définir :ref:`Viewport.gui_snap_controls_to_pixels<class_Viewport_property_gui_snap_controls_to_pixels>` à ``true`` peut conduire à des erreurs d'arrondi entre le contrôle affiché et le :ref:`Rect2<class_Rect2>` renvoyé.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_screen_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_screen_position**\ (\ ) |const| :ref:`🔗<class_Control_method_get_screen_position>`

Renvoie la position de ce **Control** dans les coordonnées globales de l'écran (c.-à-d. en tenant compte de la position de la fenêtre). Généralement utile pour les plugins éditeur.

Équivalent à ``get_screen_transform().origin`` (voir :ref:`CanvasItem.get_screen_transform()<class_CanvasItem_method_get_screen_transform>`).

\ **Exemple :** Afficher une popup à la position de la souris :

::

    menu_popup.position = get_screen_position() + get_screen_transform().basis_xform(get_local_mouse_position())

    # Le code au dessus est équivalent à :
    menu_popup.position = get_screen_transform() * get_local_mouse_position()

    menu_popup.reset_size()
    menu_popup.popup()

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_theme_color**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_color>`

Renvoie une :ref:`Color<class_Color>` du premier :ref:`Theme<class_Theme>` correspondant dans l'arborescence si ce :ref:`Theme<class_Theme>` a un élément de couleur avec le nom ``name`` et le type ``theme_type`` spécifiés. Si ``theme_type`` n'est pas précisé, le nom de classe du contrôle actuel sera utilisé pour le type, ou :ref:`theme_type_variation<class_Control_property_theme_type_variation>` si défini. Si le type est un nom de classe, ses classes parentes sont également testées, par ordre d'héritage. Si le type est une variation, ses types de bases sont vérifiés, dans l'ordre des dépendances, et enfin le nom de la classe du contrôle et ses classes parentes sont vérifiées.

Pour le contrôle actuel, ses redéfinitions locales sont considérées en premier (voir :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>`), puis son :ref:`theme<class_Control_property_theme>` assigné. Après le contrôle actuel, chaque contrôle parent et son :ref:`theme<class_Control_property_theme>` assigné seront pris en considération, les contrôles sans de :ref:`theme<class_Control_property_theme>` assigné sont ignorés. Si aucune correspondance de :ref:`Theme<class_Theme>` n'est trouvée dans l'arborescence, le :ref:`Theme<class_Theme>` personnalisé du projet (voir :ref:`ProjectSettings.gui/theme/custom<class_ProjectSettings_property_gui/theme/custom>`) et le :ref:`Theme<class_Theme>` par défaut seront utilisés (voir :ref:`ThemeDB<class_ThemeDB>`).


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # Obtenir la couleur de police définie pour la classe du Control actuel, si elle existe.
        modulate = get_theme_color("font_color")
        # Obtenir la couleur de police définie pour la classe Button.
        modulate = get_theme_color("font_color", "Button")

 .. code-tab:: csharp

    public override void _Ready()
    {
        // Obtenir la couleur de police définie pour la classe du Control actuel, si elle existe.
        Modulate = GetThemeColor("font_color");
        // Obtenir la couleur de police définie pour la classe Button.
        Modulate = GetThemeColor("font_color", "Button");
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_constant:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_constant**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_constant>`

Renvoie une constante du premier :ref:`Theme<class_Theme>` correspondant dans l'arborescence si ce :ref:`Theme<class_Theme>` a un élément constant avec le nom ``name`` et le type ``theme_type`` spécifiés.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_base_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_theme_default_base_scale**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_base_scale>`

Renvoie la valeur d'échelle de base par défaut du premier :ref:`Theme<class_Theme>` correspondant dans l'arborescence si ce :ref:`Theme<class_Theme>` a une valeur :ref:`Theme.default_base_scale<class_Theme_property_default_base_scale>` valide.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_font:

.. rst-class:: classref-method

:ref:`Font<class_Font>` **get_theme_default_font**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_font>`

Renvoie la police par défaut du premier :ref:`Theme<class_Theme>` correspondant dans l'arborescence si ce :ref:`Theme<class_Theme>` a une valeur :ref:`Theme.default_font<class_Theme_property_default_font>` valide.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_font_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_default_font_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_font_size>`

Renvoie la taille de police par défaut du premier :ref:`Theme<class_Theme>` correspondant dans l'arborescence si ce :ref:`Theme<class_Theme>` a une valeur :ref:`Theme.default_font_size<class_Theme_property_default_font_size>` valide.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_font:

.. rst-class:: classref-method

:ref:`Font<class_Font>` **get_theme_font**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_font>`

Renvoie une :ref:`Font<class_Font>` du premier :ref:`Theme<class_Theme>` correspondant dans l'arborescence si ce :ref:`Theme<class_Theme>` a un élément de police nommé ``name`` et du type de thème ``theme_type``.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_font_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_font_size**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_font_size>`

Renvoie une :ref:`Font<class_Font>` du premier :ref:`Theme<class_Theme>` correspondant dans l'arborescence si ce :ref:`Theme<class_Theme>` a un élément de taille de police nommé ``name`` et du type de thème ``theme_type``.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_theme_icon**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_icon>`

Renvoie une icône du premier :ref:`Theme<class_Theme>` correspondant dans l'arborescence si ce :ref:`Theme<class_Theme>` a une propriété d'icône nommée ``name`` et du type de thème ``theme_type``.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_stylebox:

.. rst-class:: classref-method

:ref:`StyleBox<class_StyleBox>` **get_theme_stylebox**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_stylebox>`

Renvoie une :ref:`StyleBox<class_StyleBox>` du premier :ref:`Theme<class_Theme>` correspondant dans l'arborescence si ce :ref:`Theme<class_Theme>` a une propriété de boîte de style nommée ``name`` et du type de thème ``theme_type``.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tooltip**\ (\ at_position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Control_method_get_tooltip>`

Returns the tooltip text for the position ``at_position`` in the control's local coordinates, which will typically appear when the cursor is resting over this control. By default, it returns :ref:`tooltip_text<class_Control_property_tooltip_text>`.

You can override :ref:`_get_tooltip()<class_Control_private_method__get_tooltip>` to implement custom behavior for this method.

\ **Note:** If this method returns an empty :ref:`String<class_String>` and :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` is not overridden, no tooltip is displayed.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_grab_click_focus:

.. rst-class:: classref-method

|void| **grab_click_focus**\ (\ ) :ref:`🔗<class_Control_method_grab_click_focus>`

Crée un :ref:`InputEventMouseButton<class_InputEventMouseButton>` qui tente de cliquer sur le contrôle. Si l'événement est reçu, le contrôle reçoit le focus.


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        grab_click_focus() # Lorsque vous cliquez sur un autre contrôle, ce nœud sera cliqué à la place.

 .. code-tab:: csharp

    public override void _Process(double delta)
    {
        GrabClickFocus(); // Lorsque vous cliquez sur un autre contrôle, ce nœud sera cliqué à la place.
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_method_grab_focus:

.. rst-class:: classref-method

|void| **grab_focus**\ (\ hide_focus\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_grab_focus>`

Steal the focus from another control and become the focused control (see :ref:`focus_mode<class_Control_property_focus_mode>`).

If ``hide_focus`` is ``true``, the control will not visually show its focused state. Has no effect for :ref:`LineEdit<class_LineEdit>` and :ref:`TextEdit<class_TextEdit>` when :ref:`ProjectSettings.gui/common/show_focus_state_on_pointer_event<class_ProjectSettings_property_gui/common/show_focus_state_on_pointer_event>` is set to ``Text Input Controls``, or for any control when it is set to ``Always``.

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

Renvoie ``true`` s'il y a un :ref:`Theme<class_Theme>` correspondant dans l'arborescence qui a une propriété de couleur nommée ``name`` et du type de thème ``theme_type``.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_color_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_color_override>`

Renvoie ``true`` s'il y a une redéfinition locale pour une :ref:`Color<class_Color>` de thème nommée ``name`` dans ce nœud **Control**.

Voir :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_constant:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_constant**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_constant>`

Renvoie ``true`` s'il y a un :ref:`Theme<class_Theme>` correspondant dans l'arborescence qui a un élément constant avec le nom ``name`` et type de thème ``theme_type`` spécifiés.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_constant_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_constant_override>`

Renvoie ``true`` s'il y a une redéfinition locale pour une constante de thème nommée ``name`` dans ce nœud **Control**.

Voir :ref:`add_theme_constant_override()<class_Control_method_add_theme_constant_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_font>`

Renvoie ``true`` s'il existe un :ref:`Theme<class_Theme>` correspondant dans l’arborescence qui a un élément de police nommé ``name`` et de type de thème ``theme_type`` spécifiés.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_override>`

Renvoie ``true`` s'il y a une redéfinition pour une :ref:`Font<class_Font>` de thème nommée ``name`` dans ce nœud **Control**.

Voir :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_size:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_size**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_size>`

Renvoie ``true`` s'il existe un :ref:`Theme<class_Theme>` correspondant dans l’arborescence qui a un élément de taille de police avec le nom ``name`` et le type de thème ``theme_type`` spécifiés.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour les détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_size_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_size_override>`

Renvoie ``true`` s'il y a une redéfinition locale pour une taille de police de thème nommée ``name`` dans ce nœud **Control**.

Voir :ref:`add_theme_font_size_override()<class_Control_method_add_theme_font_size_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_icon:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_icon**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_icon>`

Renvoie ``true`` s'il existe un :ref:`Theme<class_Theme>` correspondant dans l’arborescence qui a un élément d'icône nommé ``name`` et de type de thème ``theme_type`` spécifiés.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_icon_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_icon_override>`

Renvoie ``true`` s'il y a une redéfinition locale pour une icône de thème nommée ``name`` dans ce nœud **Control**.

Voir :ref:`add_theme_icon_override()<class_Control_method_add_theme_icon_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_stylebox:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_stylebox**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_stylebox>`

Renvoie ``true`` s'il existe un :ref:`Theme<class_Theme>` correspondant dans l’arborescence qui a un élément de stylebox nommé ``name`` et de type de thème ``theme_type`` spécifiés.

Voir :ref:`get_theme_color()<class_Control_method_get_theme_color>` pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_stylebox_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_stylebox_override>`

Renvoie ``true`` s'il y a une redéfinition locale pour une :ref:`StyleBox<class_StyleBox>` de thème nommée ``name`` dans ce nœud **Control**.

Voir :ref:`add_theme_stylebox_override()<class_Control_method_add_theme_stylebox_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_is_drag_successful:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_drag_successful**\ (\ ) |const| :ref:`🔗<class_Control_method_is_drag_successful>`

Renvoie ``true`` si l'opération de glisser-deposer a réussi. Alternative à :ref:`Viewport.gui_is_drag_successful()<class_Viewport_method_gui_is_drag_successful>`.

Généralement utilisé avec :ref:`Node.NOTIFICATION_DRAG_END<class_Node_constant_NOTIFICATION_DRAG_END>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_is_layout_rtl:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_layout_rtl**\ (\ ) |const| :ref:`🔗<class_Control_method_is_layout_rtl>`

Renvoie ``true`` si la mise en page est de droite à gauche. Voir aussi :ref:`layout_direction<class_Control_property_layout_direction>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_release_focus:

.. rst-class:: classref-method

|void| **release_focus**\ (\ ) :ref:`🔗<class_Control_method_release_focus>`

Relâche le focus. Aucun autre contrôle ne pourra recevoir d'entrées.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_color_override:

.. rst-class:: classref-method

|void| **remove_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_color_override>`

Retire une redéfinition locale pour une :ref:`Color<class_Color>` de thème nommée ``name`` ajoutée précédemment par :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>` ou via le dock Inspecteur.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_constant_override:

.. rst-class:: classref-method

|void| **remove_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_constant_override>`

Supprime une redéfinition locale pour une constante de thème nommée ``name`` ajoutée précédemment par :ref:`add_theme_constant_override()<class_Control_method_add_theme_constant_override>` ou via le dock Inspecteur.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_font_override:

.. rst-class:: classref-method

|void| **remove_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_font_override>`

Retire une redéfinition locale pour une :ref:`Font<class_Font>` de thème nommée ``name`` ajoutée précédemment par :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>` ou via le dock Inspecteur.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_font_size_override:

.. rst-class:: classref-method

|void| **remove_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_font_size_override>`

Retire une redéfinition locale pour une taille de police de thème nommée ``name`` ajoutée précédemment par :ref:`add_theme_font_size_override()<class_Control_method_add_theme_font_size_override>` ou via le dock Inspecteur.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_icon_override:

.. rst-class:: classref-method

|void| **remove_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_icon_override>`

Retire une redéfinition locale pour une icône de thème nommée ``name`` ajoutée précédemment par :ref:`add_theme_icon_override()<class_Control_method_add_theme_icon_override>` ou via le dock Inspecteur.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_stylebox_override:

.. rst-class:: classref-method

|void| **remove_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_stylebox_override>`

Retire une redéfinition locale pour une :ref:`StyleBox<class_StyleBox>` de thème nommée ``name`` ajoutée précédemment par :ref:`add_theme_stylebox_override()<class_Control_method_add_theme_stylebox_override>` ou via le dock Inspecteur.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_reset_size:

.. rst-class:: classref-method

|void| **reset_size**\ (\ ) :ref:`🔗<class_Control_method_reset_size>`

Réinitialise la taille à :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>`. Ceci équivaut à appeler ``set_size(Vector2())`` (ou toute taille inférieure au minimum).

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchor:

.. rst-class:: classref-method

|void| **set_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, keep_offset\: :ref:`bool<class_bool>` = false, push_opposite_anchor\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Control_method_set_anchor>`

Définit l'ancre pour le côté :ref:`Side<enum_@GlobalScope_Side>` spécifié à ``anchor``. Une méthode setter pour :ref:`anchor_bottom<class_Control_property_anchor_bottom>`, :ref:`anchor_left<class_Control_property_anchor_left>`, :ref:`anchor_right<class_Control_property_anchor_right>` et :ref:`anchor_top<class_Control_property_anchor_top>`.

Si ``keep_offset`` vaut ``true``, les décalages ne seront pas mises à jour après cette opération.

Si ``push_opposite_anchor`` vaut ``true`` et que l'ancre opposée recouvre cette ancre, l'ancre opposée aura sa valeur redéfinie. Par exemple, lorsque l'ancre gauche est fixée à 1 et que l'ancre droite a une valeur de 0.5, l'ancre droite aura également une valeur de 1. Si ``push_opposite_anchor`` valait ``false``, l'ancre gauche aurait alors une valeur de 0.5.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchor_and_offset:

.. rst-class:: classref-method

|void| **set_anchor_and_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, offset\: :ref:`float<class_float>`, push_opposite_anchor\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_anchor_and_offset>`

Fonctionne comme :ref:`set_anchor()<class_Control_method_set_anchor>`, mais au lieu de l'argument ``keep_offset`` et de la mise à jour automatique du décalage, elle vous permet de définir le décalage vous-même (voir :ref:`set_offset()<class_Control_method_set_offset>`).

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchors_and_offsets_preset:

.. rst-class:: classref-method

|void| **set_anchors_and_offsets_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Control_method_set_anchors_and_offsets_preset>`

Définit à la fois le préréglage de l'ancre et le préréglage du décalage. Voir :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` et :ref:`set_offsets_preset()<class_Control_method_set_offsets_preset>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchors_preset:

.. rst-class:: classref-method

|void| **set_anchors_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_anchors_preset>`

Définit les ancres à un préréglage ``preset`` de l'énumeration :ref:`LayoutPreset<enum_Control_LayoutPreset>`. C'est le code équivalent à l'utilisation du menu Disposition dans l'éditeur 2D.

Si ``keep_offsets`` vaut ``true``, la position du contrôle sera également mise à jour.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_begin:

.. rst-class:: classref-method

|void| **set_begin**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Control_method_set_begin>`

Définit à la fois :ref:`offset_left<class_Control_property_offset_left>` et :ref:`offset_top<class_Control_property_offset_top>`. Équivalent à changer :ref:`position<class_Control_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_drag_forwarding:

.. rst-class:: classref-method

|void| **set_drag_forwarding**\ (\ drag_func\: :ref:`Callable<class_Callable>`, can_drop_func\: :ref:`Callable<class_Callable>`, drop_func\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Control_method_set_drag_forwarding>`

Définit les callables donnés à être utilisés au lieu des propres méthodes virtuelles de glisser-déposer du contrôle. Si un callable est vide, sa méthode virtuelle respective est utilisée comme habituellement.

Les arguments pour chaque appelable devraient être exactement les mêmes que leurs méthodes virtuelles respectives, ce qui serait :

- ``drag_func`` correspond à :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` et nécessite un :ref:`Vector2<class_Vector2>`;

- ``can_drop_func`` correspond à :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` et nécessite à la fois un :ref:`Vector2<class_Vector2>` et un :ref:`Variant<class_Variant>`;

- ``drop_func`` correspond à :ref:`_drop_data()<class_Control_private_method__drop_data>` et nécessite à la fois un :ref:`Vector2<class_Vector2>` et un :ref:`Variant<class_Variant>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_drag_preview:

.. rst-class:: classref-method

|void| **set_drag_preview**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_Control_method_set_drag_preview>`

Affiche le contrôle donné comme curseur de la souris. Un bon moment pour appeler cette méthode est dans :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>`. Le contrôle doit ne pas être dans l'arborescence de la scène. Vous ne devriez pas libérer le contrôle, et vous ne devriez pas garder une référence vers le contrôle en-dehors de la durée du glissement. Il sera supprimé automatiquement après que le glissement soit terminé.


.. tabs::

 .. code-tab:: gdscript

    @export var couleur = Color(1, 0, 0, 1)

    func _get_drag_data(position):
        # Utiliser un contrôle qui n'est pas dans l'arborescence
        var cpb = ColorPickerButton.new()
        cpb.color = couleur
        cpb.rect_size = Vector2(50, 50)
        set_drag_preview(cpb)
        return couleur

 .. code-tab:: csharp

    [Export]
    private Color _couleur = new Color(1, 0, 0, 1);

    public override Variant _GetDragData(Vector2 atPosition)
    {
        // Utiliser un contrôle qui n'est pas dans l'arborescence
        var cpb = new ColorPickerButton();
        cpb.Color = _couleur;
        cpb.Size = new Vector2(50, 50);
        SetDragPreview(cpb);
        return _couleur;
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_end:

.. rst-class:: classref-method

|void| **set_end**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Control_method_set_end>`

Définit à la fois :ref:`offset_right<class_Control_property_offset_right>` et :ref:`offset_bottom<class_Control_property_offset_bottom>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_focus_neighbor:

.. rst-class:: classref-method

|void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_Control_method_set_focus_neighbor>`

Définit le voisin de focus pour le côté :ref:`Side<enum_@GlobalScope_Side>` spécifié au **Control** au chemin de nœud ``neighbor``. Une méthode setter pour :ref:`focus_neighbor_bottom<class_Control_property_focus_neighbor_bottom>`, :ref:`focus_neighbor_left<class_Control_property_focus_neighbor_left>`, :ref:`focus_neighbor_right<class_Control_property_focus_neighbor_right>` et :ref:`focus_neighbor_top<class_Control_property_focus_neighbor_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_global_position:

.. rst-class:: classref-method

|void| **set_global_position**\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_global_position>`

Définit le :ref:`global_position<class_Control_property_global_position>` à la ``position`` spécifiée.

Si ``keep_offsets`` vaut ``true``, les ancrages de contrôle seront changés à la place des marges.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_offset:

.. rst-class:: classref-method

|void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Control_method_set_offset>`

Définit le décalage pour le côté :ref:`Side<enum_@GlobalScope_Side>` spécifié à ``offset``. Une méthode setter pour :ref:`offset_bottom<class_Control_property_offset_bottom>`, :ref:`offset_left<class_Control_property_offset_left>`, :ref:`offset_right<class_Control_property_offset_right>` et :ref:`offset_top<class_Control_property_offset_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_offsets_preset:

.. rst-class:: classref-method

|void| **set_offsets_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Control_method_set_offsets_preset>`

Définit les décalages à un préréglage ``preset`` de l'énumeration :ref:`LayoutPreset<enum_Control_LayoutPreset>`. Il s'agit de l'équivalent en code de l'utilisation du menu Disposition dans l'éditeur 2D.

Utilisez le paramètre ``resize_mode`` avec des constantes de :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` pour mieux déterminer la taille résultante du **Control**. La taille constante sera ignorée si elle est utilisée avec des préréglages qui changent la taille, par exemple :ref:`PRESET_LEFT_WIDE<class_Control_constant_PRESET_LEFT_WIDE>`.

Utilisez le paramètre ``margin`` pour déterminer l'écart entre le **Control** et les bords.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_position:

.. rst-class:: classref-method

|void| **set_position**\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_position>`

Défini la :ref:`position<class_Control_property_position>` à la ``position`` donnée.

Si ``keep_offsets`` vaut ``true``, les ancres du contrôle sont mis à jour au lieu des décalages.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_size:

.. rst-class:: classref-method

|void| **set_size**\ (\ size\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_size>`

Définit la taille (voir :ref:`size<class_Control_property_size>`).

Si ``keep_offsets`` vaut ``true``, les ancres du contrôle sont mis à jour au lieu des décalages.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_update_maximum_size:

.. rst-class:: classref-method

|void| **update_maximum_size**\ (\ ) :ref:`🔗<class_Control_method_update_maximum_size>`

Invalidates the maximum size cache in this node and in parent nodes up to top level. Intended to be used with :ref:`get_maximum_size()<class_Control_method_get_maximum_size>` when the return value is changed. Setting :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` directly calls this method automatically.

\ **Note:** Calling this method also calls :ref:`update_minimum_size()<class_Control_method_update_minimum_size>` since the combined minimum size may be affected by the maximum size change.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_update_minimum_size:

.. rst-class:: classref-method

|void| **update_minimum_size**\ (\ ) :ref:`🔗<class_Control_method_update_minimum_size>`

Invalidates the minimum size cache in this node and in parent nodes up to top level. Intended to be used with :ref:`get_minimum_size()<class_Control_method_get_minimum_size>` when the return value is changed. Setting :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` directly calls this method automatically.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_warp_mouse:

.. rst-class:: classref-method

|void| **warp_mouse**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Control_method_warp_mouse>`

Déplace le curseur de la souris vers ``position``, relative à :ref:`position<class_Control_property_position>` de ce **Control**.

\ **Note :** :ref:`warp_mouse()<class_Control_method_warp_mouse>` n'est supportée que sous Windows, macOS et Linux. Elle n'a aucun effet sur Android, iOS et Web.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
