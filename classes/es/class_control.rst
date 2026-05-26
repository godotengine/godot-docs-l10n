:github_url: hide

.. _class_Control:

Control
=======

**Hereda:** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`BaseButton<class_BaseButton>`, :ref:`ColorRect<class_ColorRect>`, :ref:`Container<class_Container>`, :ref:`GraphEdit<class_GraphEdit>`, :ref:`ItemList<class_ItemList>`, :ref:`Label<class_Label>`, :ref:`LineEdit<class_LineEdit>`, :ref:`MenuBar<class_MenuBar>`, :ref:`NinePatchRect<class_NinePatchRect>`, :ref:`Panel<class_Panel>`, :ref:`Range<class_Range>`, :ref:`ReferenceRect<class_ReferenceRect>`, :ref:`RichTextLabel<class_RichTextLabel>`, :ref:`Separator<class_Separator>`, :ref:`TabBar<class_TabBar>`, :ref:`TextEdit<class_TextEdit>`, :ref:`TextureRect<class_TextureRect>`, :ref:`Tree<class_Tree>`, :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`, :ref:`VirtualJoystick<class_VirtualJoystick>`

Clase base para todos los controles de GUI. Adapta su posición y tamaño basándose en su control padre.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase base para todos los nodos relacionados con la interfaz de usuario. **Control** cuenta con un rectángulo delimitador que define sus extensiones, una posición de anclaje relativa a su control padre o al viewport actual, y desplazamientos relativos al anclaje. Los desplazamientos se actualizan automáticamente cuando el nodo, cualquiera de sus padres o el tamaño de la pantalla cambian.

Para más información sobre el sistema de UI de Godot, anclajes, desplazamientos y contenedores, consulta los tutoriales relacionados en el manual. Para construir interfaces de usuario flexibles, necesitarás una mezcla de elementos de UI que hereden de nodos **Control** y :ref:`Container<class_Container>`.

\ **Nota:** Dado que tanto :ref:`Node2D<class_Node2D>` como **Control** heredan de :ref:`CanvasItem<class_CanvasItem>`, comparten varios conceptos de la clase, como las propiedades :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` y :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

\ **Nodos de interfaz de usuario y entrada**\ 

Godot propaga los eventos de entrada a través de los viewports. Cada :ref:`Viewport<class_Viewport>` es responsable de propagar los :ref:`InputEvent<class_InputEvent>` a sus nodos hijos. Como :ref:`SceneTree.root<class_SceneTree_property_root>` es una :ref:`Window<class_Window>`, esto ya ocurre automáticamente para todos los elementos de UI en tu juego.

Los eventos de entrada se propagan a través del :ref:`SceneTree<class_SceneTree>` desde el nodo raíz a todos los nodos hijos llamando a :ref:`Node._input()<class_Node_private_method__input>`. Para los elementos de UI específicamente, tiene más sentido sobrescribir el método virtual :ref:`_gui_input()<class_Control_private_method__gui_input>`, que filtra los eventos de entrada no relacionados, como verificando el orden z, :ref:`mouse_filter<class_Control_property_mouse_filter>`, el foco, o si el evento estaba dentro del cuadro delimitador del control.

Llama a :ref:`accept_event()<class_Control_method_accept_event>` para que ningún otro nodo reciba el evento. Una vez que aceptas una entrada, esta se marca como manejada, por lo que :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` no la procesará.

Solo un nodo **Control** puede tener el foco. Solo el nodo con el foco recibirá eventos. Para obtener el foco, llama a :ref:`grab_focus()<class_Control_method_grab_focus>`. Los nodos **Control** pierden el foco cuando otro nodo lo toma, o si ocultas el nodo que tiene el foco. El foco no se representará visualmente si se obtiene mediante entrada de ratón/táctil, solo aparecerá con entrada de teclado/gamepad (para accesibilidad), o mediante :ref:`grab_focus()<class_Control_method_grab_focus>`.

Establece :ref:`mouse_filter<class_Control_property_mouse_filter>` en :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` para indicar a un nodo **Control** que ignore los eventos de ratón o táctiles. Lo necesitarás si colocas un icono encima de un botón.

Los recursos :ref:`Theme<class_Theme>` cambian la apariencia del control. El :ref:`theme<class_Control_property_theme>` de un nodo **Control** afecta a todos sus hijos directos e indirectos (siempre que una cadena de controles no esté interrumpida). Para anular algunos de los elementos del tema, llama a uno de los métodos ``add_theme_*_override``, como :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>`. También puedes anular elementos del tema en el Inspector.

\ **Nota:** Los elementos del tema *no* son propiedades de :ref:`Object<class_Object>`. Esto significa que no puedes acceder a sus valores usando :ref:`Object.get()<class_Object_method_get>` y :ref:`Object.set()<class_Object_method_set>`. En su lugar, usa los métodos ``get_theme_*`` y ``add_theme_*_override`` proporcionados por esta clase.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación de GUI <../tutorials/ui/index>`

- :doc:`Dibujo personalizado en 2D <../tutorials/2d/custom_drawing_in_2d>`

- :doc:`Galería de nodos de Control <../tutorials/ui/control_node_gallery>`

- :doc:`Múltiples resoluciones <../tutorials/rendering/multiple_resolutions>`

- `Todas las Demos de GUI <https://github.com/godotengine/godot-demo-projects/tree/master/gui>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_Control_signal_focus_entered:

.. rst-class:: classref-signal

**focus_entered**\ (\ ) :ref:`🔗<class_Control_signal_focus_entered>`

Emitida cuando el nodo obtiene el foco.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_focus_exited:

.. rst-class:: classref-signal

**focus_exited**\ (\ ) :ref:`🔗<class_Control_signal_focus_exited>`

Emitida cuando el nodo pierde el foco.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_gui_input:

.. rst-class:: classref-signal

**gui_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_Control_signal_gui_input>`

Emitida cuando el nodo recibe un :ref:`InputEvent<class_InputEvent>`.

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

Emitida cuando el tamaño mínimo del nodo cambia.

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

Emitida cuando el control cambia de tamaño.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_size_flags_changed:

.. rst-class:: classref-signal

**size_flags_changed**\ (\ ) :ref:`🔗<class_Control_signal_size_flags_changed>`

Emitida cuando una de las flags de tamaño cambia. Véase :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` y :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_theme_changed:

.. rst-class:: classref-signal

**theme_changed**\ (\ ) :ref:`🔗<class_Control_signal_theme_changed>`

Emitida cuando se envía la notificación :ref:`NOTIFICATION_THEME_CHANGED<class_Control_constant_NOTIFICATION_THEME_CHANGED>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Control_FocusMode:

.. rst-class:: classref-enumeration

enum **FocusMode**: :ref:`🔗<enum_Control_FocusMode>`

.. _class_Control_constant_FOCUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_NONE** = ``0``

El nodo no puede captar el foco. Usar con :ref:`focus_mode<class_Control_property_focus_mode>`.

.. _class_Control_constant_FOCUS_CLICK:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_CLICK** = ``1``

El nodo sólo puede captar el foco en los clics del ratón. Usar con :ref:`focus_mode<class_Control_property_focus_mode>`.

.. _class_Control_constant_FOCUS_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_ALL** = ``2``

El nodo puede tomar el foco al hacer clic con el ratón, usando las flechas y las teclas Tab en el teclado, o usando los botones D-pad en un gamepad. Usar con :ref:`focus_mode<class_Control_property_focus_mode>`.

.. _class_Control_constant_FOCUS_ACCESSIBILITY:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_ACCESSIBILITY** = ``3``

El nodo solo puede captar el foco cuando el lector de pantalla está activo. Usar con :ref:`focus_mode<class_Control_property_focus_mode>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_FocusBehaviorRecursive:

.. rst-class:: classref-enumeration

enum **FocusBehaviorRecursive**: :ref:`🔗<enum_Control_FocusBehaviorRecursive>`

.. _class_Control_constant_FOCUS_BEHAVIOR_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_INHERITED** = ``0``

Hereda el :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` del control padre. Si no hay un control padre, es lo mismo que :ref:`FOCUS_BEHAVIOR_ENABLED<class_Control_constant_FOCUS_BEHAVIOR_ENABLED>`.

.. _class_Control_constant_FOCUS_BEHAVIOR_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_DISABLED** = ``1``

Evita que el control reciba el foco. :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` devolverá :ref:`FOCUS_NONE<class_Control_constant_FOCUS_NONE>`.

.. _class_Control_constant_FOCUS_BEHAVIOR_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_ENABLED** = ``2``

Permite que el control reciba el foco, dependiendo del :ref:`focus_mode<class_Control_property_focus_mode>`. Esto se puede usar para ignorar el :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` del padre. :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` devolverá el :ref:`focus_mode<class_Control_property_focus_mode>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_MouseBehaviorRecursive:

.. rst-class:: classref-enumeration

enum **MouseBehaviorRecursive**: :ref:`🔗<enum_Control_MouseBehaviorRecursive>`

.. _class_Control_constant_MOUSE_BEHAVIOR_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **MOUSE_BEHAVIOR_INHERITED** = ``0``

Hereda el :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` del control padre. Si no hay un control padre, es lo mismo que :ref:`MOUSE_BEHAVIOR_ENABLED<class_Control_constant_MOUSE_BEHAVIOR_ENABLED>`.

.. _class_Control_constant_MOUSE_BEHAVIOR_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **MOUSE_BEHAVIOR_DISABLED** = ``1``

Evita que el control reciba entradas del ratón. :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>` devolverá :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`.

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

Mostrar el cursor del ratón de la flecha del sistema cuando el usuario pasa por encima del nodo. Usar con :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>`.

.. _class_Control_constant_CURSOR_IBEAM:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_IBEAM** = ``1``

Muestra el cursor del ratón del sistema I-beam cuando el usuario pasa por encima del nodo. El puntero del I-beam tiene una forma similar a la de la "I". Le dice al usuario que puede resaltar o insertar texto.

.. _class_Control_constant_CURSOR_POINTING_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_POINTING_HAND** = ``2``

Muestra el cursor del ratón de la mano del sistema cuando el usuario pasa por encima del nodo.

.. _class_Control_constant_CURSOR_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_CROSS** = ``3``

Muestra el cursor cruzado del ratón del sistema cuando el usuario pasa por encima del nodo.

.. _class_Control_constant_CURSOR_WAIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_WAIT** = ``4``

Muestra el cursor del ratón de espera del sistema cuando el usuario pasa por encima del nodo. A menudo un reloj de arena.

.. _class_Control_constant_CURSOR_BUSY:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_BUSY** = ``5``

Muestra el cursor del ratón ocupado del sistema cuando el usuario pasa por encima del nodo. A menudo una flecha con un pequeño reloj de arena.

.. _class_Control_constant_CURSOR_DRAG:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_DRAG** = ``6``

Muestra el cursor del ratón de arrastre del sistema, a menudo un puño cerrado o un símbolo de cruz, cuando el usuario pasa por encima del nodo. Le dice al usuario que está arrastrando un elemento, como un nodo en el Dock de la escena.

.. _class_Control_constant_CURSOR_CAN_DROP:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_CAN_DROP** = ``7``

Muestra el cursor del ratón del sistema cuando el usuario pasa por encima del nodo. Puede ser una mano abierta. Le dice al usuario que puede soltar un elemento que está agarrando, como un nodo en el Dock de la escena.

.. _class_Control_constant_CURSOR_FORBIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_FORBIDDEN** = ``8``

Muestra el cursor del ratón prohibido del sistema cuando el usuario pasa por encima del nodo. A menudo un círculo cruzado.

.. _class_Control_constant_CURSOR_VSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_VSIZE** = ``9``

Muestra el cursor del ratón de tamaño vertical del sistema cuando el usuario pasa por encima del nodo. Una flecha vertical de doble punta. Le dice al usuario que puede cambiar el tamaño de la ventana o del panel verticalmente.

.. _class_Control_constant_CURSOR_HSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HSIZE** = ``10``

Muestra el cursor del ratón de tamaño horizontal del sistema cuando el usuario pasa por encima del nodo. Una flecha horizontal de doble punta. Le dice al usuario que puede cambiar el tamaño de la ventana o del panel horizontalmente.

.. _class_Control_constant_CURSOR_BDIAGSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_BDIAGSIZE** = ``11``

Muestra el cursor de cambio de tamaño de la ventana del sistema del ratón cuando el usuario pasa por encima del nodo. El cursor es una flecha de doble punta que va de abajo a la izquierda a arriba a la derecha. Le dice al usuario que puede cambiar el tamaño de la ventana o del panel tanto horizontal como verticalmente.

.. _class_Control_constant_CURSOR_FDIAGSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_FDIAGSIZE** = ``12``

Muestra el cursor del cambio de tamaño de la ventana del sistema cuando el usuario pasa por encima del nodo. El cursor es una flecha de doble punta que va de arriba a la izquierda a abajo a la derecha, lo opuesto a :ref:`CURSOR_BDIAGSIZE<class_Control_constant_CURSOR_BDIAGSIZE>`. Le dice al usuario que puede cambiar el tamaño de la ventana o del panel tanto horizontal como verticalmente.

.. _class_Control_constant_CURSOR_MOVE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_MOVE** = ``13``

Muestra el cursor del ratón del sistema cuando el usuario pasa por encima del nodo. Muestra 2 flechas de doble cabeza en un ángulo de 90 grados. Le dice al usuario que puede mover libremente un elemento de la interfaz de usuario.

.. _class_Control_constant_CURSOR_VSPLIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_VSPLIT** = ``14``

Muestra el cursor del ratón dividido verticalmente del sistema cuando el usuario pasa por encima del nodo. En Windows, es lo mismo que :ref:`CURSOR_VSIZE<class_Control_constant_CURSOR_VSIZE>`.

.. _class_Control_constant_CURSOR_HSPLIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HSPLIT** = ``15``

Muestra el cursor del ratón dividido horizontalmente del sistema cuando el usuario pasa por encima del nodo. En Windows, es lo mismo que :ref:`CURSOR_HSIZE<class_Control_constant_CURSOR_HSIZE>`.

.. _class_Control_constant_CURSOR_HELP:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HELP** = ``16``

Mostrar el cursor del ratón de ayuda del sistema cuando el usuario pasa por encima del nodo, un signo de interrogación.

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutPreset:

.. rst-class:: classref-enumeration

enum **LayoutPreset**: :ref:`🔗<enum_Control_LayoutPreset>`

.. _class_Control_constant_PRESET_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_LEFT** = ``0``

Pone las cuatro anclas en la parte superior izquierda de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_TOP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_RIGHT** = ``1``

Pone las cuatro anclas en la parte superior derecha de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_BOTTOM_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_LEFT** = ``2``

Pone las cuatro anclas en la parte inferior izquierda de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_BOTTOM_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_RIGHT** = ``3``

Pone las cuatro anclas en la parte inferior derecha de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_LEFT** = ``4``

Pone las 4 anclas en el centro del borde izquierdo de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_TOP** = ``5``

Pone las 4 anclas en el centro del borde superior de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_RIGHT** = ``6``

Pone las 4 anclas en el centro del borde derecho de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_BOTTOM** = ``7``

Pone las 4 anclas en el centro del borde inferior de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER** = ``8``

Pone las cuatro anclas en el centro de los límites del control parental. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_LEFT_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_LEFT_WIDE** = ``9``

Ancla las 4 anclas al borde izquierdo del control padre. El margen izquierdo se vuelve relativo al borde izquierdo y el margen superior relativo a la esquina superior izquierda del control padre. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_TOP_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_WIDE** = ``10``

Ancla las 4 anclas al borde superior del control padre. El margen izquierdo se vuelve relativo a la esquina superior izquierda, el margen superior relativo al borde superior, y el margen derecho relativo a la esquina superior derecha del control padre. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_RIGHT_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_RIGHT_WIDE** = ``11``

Ancla las 4 anclas al borde derecho del control padre. El margen derecho se vuelve relativo al borde derecho y el margen superior relativo a la esquina superior derecha del control padre. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_BOTTOM_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_WIDE** = ``12``

Ancla las 4 anclas al borde inferior del control padre. El margen izquierdo se vuelve relativo a la esquina inferior izquierda, el margen inferior relativo al borde inferior, y el margen derecho relativo a la esquina inferior derecha del control padre. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_VCENTER_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_VCENTER_WIDE** = ``13``

Pone las 4 anclas en una línea vertical que corta el control parental por la mitad. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_HCENTER_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_HCENTER_WIDE** = ``14``

Pone las 4 anclas en una línea horizontal que corta el control parental por la mitad. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_FULL_RECT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_FULL_RECT** = ``15``

Ancla las 4 anclas a las esquinas respectivas del control padre. Establezca los 4 márgenes a 0 después de aplicar este preajuste y el **Control** se ajustará a su control padre. Usar con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutPresetMode:

.. rst-class:: classref-enumeration

enum **LayoutPresetMode**: :ref:`🔗<enum_Control_LayoutPresetMode>`

.. _class_Control_constant_PRESET_MODE_MINSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_MINSIZE** = ``0``

El control será redimensionado a su tamaño mínimo.

.. _class_Control_constant_PRESET_MODE_KEEP_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_WIDTH** = ``1``

El ancho del control no cambiará.

.. _class_Control_constant_PRESET_MODE_KEEP_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_HEIGHT** = ``2``

La altura del control no cambiará.

.. _class_Control_constant_PRESET_MODE_KEEP_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_SIZE** = ``3``

El tamaño del control no cambiará.

.. rst-class:: classref-item-separator

----

.. _enum_Control_SizeFlags:

.. rst-class:: classref-enumeration

flags **SizeFlags**: :ref:`🔗<enum_Control_SizeFlags>`

.. _class_Control_constant_SIZE_SHRINK_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_BEGIN** = ``0``

Le dice al :ref:`Container<class_Container>` padre que alinee el nodo con su inicio, ya sea el borde superior o el izquierdo. Es mutuamente exclusivo con :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` y otras flags de tamaño de encogimiento, pero puede usarse con :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` en algunos contenedores. Usar con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` y :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

\ **Nota:** Establecer esta flag es igual a no tener ninguna flag de tamaño.

.. _class_Control_constant_SIZE_FILL:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_FILL** = ``1``

Le dice al :ref:`Container<class_Container>` padre que expanda los límites de este nodo para llenar todo el espacio disponible sin empujar a ningún otro nodo. Es mutuamente exclusivo con las flags de tamaño de encogimiento. Usar con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` y :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. _class_Control_constant_SIZE_EXPAND:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_EXPAND** = ``2``

Le dice al padre :ref:`Container<class_Container>` que deje que este nodo tome todo el espacio disponible en el eje que marque. Si varios nodos vecinos están configurados para expandirse, compartirán el espacio basado en su relación de estiramiento. Véase :ref:`size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`. Utilízalo con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` y :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. _class_Control_constant_SIZE_EXPAND_FILL:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_EXPAND_FILL** = ``3``

Establece las flags de tamaño del nodo tanto para rellenar como para expandir. Véase :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` y :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` para más información.

.. _class_Control_constant_SIZE_SHRINK_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_CENTER** = ``4``

Le dice al :ref:`Container<class_Container>` padre que centre el nodo en el espacio disponible. Es mutuamente exclusivo con :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` y otras flags de tamaño de encogimiento, pero puede usarse con :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` en algunos contenedores. Usar con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` y :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. _class_Control_constant_SIZE_SHRINK_END:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_END** = ``8``

Le dice al :ref:`Container<class_Container>` padre que alinee el nodo con su final, ya sea el borde inferior o el derecho. Es mutuamente exclusivo con :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` y otras flags de tamaño de encogimiento, pero puede usarse con :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` en algunos contenedores. Usar con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` y :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_MouseFilter:

.. rst-class:: classref-enumeration

enum **MouseFilter**: :ref:`🔗<enum_Control_MouseFilter>`

.. _class_Control_constant_MOUSE_FILTER_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_STOP** = ``0``

El control recibirá los eventos de entrada de movimiento del ratón y los eventos de entrada del botón del ratón si se hace clic en él a través de :ref:`_gui_input()<class_Control_private_method__gui_input>`. El control también recibirá las señales :ref:`mouse_entered<class_Control_signal_mouse_entered>` y :ref:`mouse_exited<class_Control_signal_mouse_exited>`. Estos eventos se marcan automáticamente como manejados, y no se propagarán más a otros controles. Esto también resulta en el bloqueo de señales en otros controles.

.. _class_Control_constant_MOUSE_FILTER_PASS:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_PASS** = ``1``

The control will receive mouse movement input events and mouse button input events if clicked on through :ref:`_gui_input()<class_Control_private_method__gui_input>`. The control will also receive the :ref:`mouse_entered<class_Control_signal_mouse_entered>` and :ref:`mouse_exited<class_Control_signal_mouse_exited>` signals.

If this control does not handle the event, the event will propagate up to its parent control if it has one. The event is bubbled up the node hierarchy until it reaches a non-:ref:`CanvasItem<class_CanvasItem>`, a control with :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>`, or a :ref:`CanvasItem<class_CanvasItem>` with :ref:`CanvasItem.top_level<class_CanvasItem_property_top_level>` enabled. This will allow signals to fire in all controls it reaches. If no control handled it, the event will be passed to :ref:`Node._shortcut_input()<class_Node_private_method__shortcut_input>` for further processing.

.. _class_Control_constant_MOUSE_FILTER_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_IGNORE** = ``2``

El control no recibirá ningún evento de entrada de movimiento del ratón ni eventos de entrada del botón del ratón a través de :ref:`_gui_input()<class_Control_private_method__gui_input>`. El control tampoco recibirá las señales :ref:`mouse_entered<class_Control_signal_mouse_entered>` ni :ref:`mouse_exited<class_Control_signal_mouse_exited>`. Esto no bloqueará a otros controles para que no reciban estos eventos o para que no activen las señales. Los eventos ignorados no se manejarán automáticamente. Si un hijo tiene :ref:`MOUSE_FILTER_PASS<class_Control_constant_MOUSE_FILTER_PASS>` y se ha pasado un evento a este control, el evento se propagará aún más hasta el padre del control.

\ **Nota:** Si el control ha recibido :ref:`mouse_entered<class_Control_signal_mouse_entered>` pero no :ref:`mouse_exited<class_Control_signal_mouse_exited>`, cambiar el :ref:`mouse_filter<class_Control_property_mouse_filter>` a :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` hará que se emita :ref:`mouse_exited<class_Control_signal_mouse_exited>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_GrowDirection:

.. rst-class:: classref-enumeration

enum **GrowDirection**: :ref:`🔗<enum_Control_GrowDirection>`

.. _class_Control_constant_GROW_DIRECTION_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`GrowDirection<enum_Control_GrowDirection>` **GROW_DIRECTION_BEGIN** = ``0``

El control crecerá hacia la izquierda o hacia arriba para compensar si su tamaño mínimo se cambia para que sea mayor que su tamaño actual en el eje respectivo.

.. _class_Control_constant_GROW_DIRECTION_END:

.. rst-class:: classref-enumeration-constant

:ref:`GrowDirection<enum_Control_GrowDirection>` **GROW_DIRECTION_END** = ``1``

El control crecerá hacia la derecha o hacia abajo para compensar si su tamaño mínimo se cambia para que sea mayor que su tamaño actual en el eje respectivo.

.. _class_Control_constant_GROW_DIRECTION_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`GrowDirection<enum_Control_GrowDirection>` **GROW_DIRECTION_BOTH** = ``2``

El control crecerá en ambas direcciones por igual para compensar si su tamaño mínimo se cambia para que sea mayor que su tamaño actual.

.. rst-class:: classref-item-separator

----

.. _enum_Control_Anchor:

.. rst-class:: classref-enumeration

enum **Anchor**: :ref:`🔗<enum_Control_Anchor>`

.. _class_Control_constant_ANCHOR_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`Anchor<enum_Control_Anchor>` **ANCHOR_BEGIN** = ``0``

Encaja uno de los 4 lados del ancla en el origen del nodo ``Rect``, en la parte superior izquierda. Úsalo con una de las variables miembro ``anchor_*``, como :ref:`anchor_left<class_Control_property_anchor_left>`. Para cambiar las 4 anclas a la vez, usa :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_ANCHOR_END:

.. rst-class:: classref-enumeration-constant

:ref:`Anchor<enum_Control_Anchor>` **ANCHOR_END** = ``1``

Pone uno de los 4 lados del ancla al final del nodo ``Rect``, en la parte inferior derecha. Úsalo con una de las variables miembros ``anchor_*``, como :ref:`anchor_left<class_Control_property_anchor_left>`. Para cambiar las 4 anclas a la vez, usa :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutDirection:

.. rst-class:: classref-enumeration

enum **LayoutDirection**: :ref:`🔗<enum_Control_LayoutDirection>`

.. _class_Control_constant_LAYOUT_DIRECTION_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_INHERITED** = ``0``

Dirección de diseño automática, determinada por la dirección de diseño del control padre.

.. _class_Control_constant_LAYOUT_DIRECTION_APPLICATION_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_APPLICATION_LOCALE** = ``1``

Dirección de diseño automática, determinada por la configuración regional actual. La dirección de diseño de derecha a izquierda se utiliza automáticamente para los idiomas que lo requieren, como el árabe y el hebreo, pero solo si se carga un archivo de traducción válido para el idioma dado (a menos que dicho idioma esté configurado como alternativa en :ref:`ProjectSettings.internationalization/locale/fallback<class_ProjectSettings_property_internationalization/locale/fallback>`). Para todos los demás idiomas (o si Godot no encuentra un archivo de traducción válido), se utiliza la dirección de diseño de izquierda a derecha. Si utilizas :ref:`TextServerFallback<class_TextServerFallback>` (:ref:`ProjectSettings.internationalization/rendering/text_driver<class_ProjectSettings_property_internationalization/rendering/text_driver>`), siempre se utiliza la dirección de diseño de izquierda a derecha, independientemente del idioma. La dirección de diseño de derecha a izquierda también se puede forzar mediante :ref:`ProjectSettings.internationalization/rendering/force_right_to_left_layout_direction<class_ProjectSettings_property_internationalization/rendering/force_right_to_left_layout_direction>`.

.. _class_Control_constant_LAYOUT_DIRECTION_LTR:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_LTR** = ``2``

Dirección de diseño de izquierda a derecha.

.. _class_Control_constant_LAYOUT_DIRECTION_RTL:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_RTL** = ``3``

Dirección de diseño de derecha a izquierda.

.. _class_Control_constant_LAYOUT_DIRECTION_SYSTEM_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_SYSTEM_LOCALE** = ``4``

Dirección de diseño automática, determinada por la configuración regional del sistema. La dirección de diseño de derecha a izquierda se utiliza automáticamente para los idiomas que lo requieren, como el árabe y el hebreo, pero solo si se carga un archivo de traducción válido para el idioma dado. Para todos los demás idiomas (o si Godot no encuentra un archivo de traducción válido), se utiliza la dirección de diseño de izquierda a derecha. Si utilizas :ref:`TextServerFallback<class_TextServerFallback>` (:ref:`ProjectSettings.internationalization/rendering/text_driver<class_ProjectSettings_property_internationalization/rendering/text_driver>`), siempre se utiliza la dirección de diseño de izquierda a derecha, independientemente del idioma.

.. _class_Control_constant_LAYOUT_DIRECTION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_MAX** = ``5``

Representa el tamaño del enum :ref:`LayoutDirection<enum_Control_LayoutDirection>`.

.. _class_Control_constant_LAYOUT_DIRECTION_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_LOCALE** = ``1``

**Obsoleto:** Use :ref:`LAYOUT_DIRECTION_APPLICATION_LOCALE<class_Control_constant_LAYOUT_DIRECTION_APPLICATION_LOCALE>` instead.



.. rst-class:: classref-item-separator

----

.. _enum_Control_TextDirection:

.. rst-class:: classref-enumeration

enum **TextDirection**: :ref:`🔗<enum_Control_TextDirection>`

.. _class_Control_constant_TEXT_DIRECTION_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_INHERITED** = ``3``

La dirección de escritura del texto es la misma que la dirección del diseño.

.. _class_Control_constant_TEXT_DIRECTION_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_AUTO** = ``0``

Dirección de escritura de texto automática, determinada por la configuración regional actual y el contenido del texto.

.. _class_Control_constant_TEXT_DIRECTION_LTR:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_LTR** = ``1``

Dirección de escritura de texto de izquierda a derecha.

.. _class_Control_constant_TEXT_DIRECTION_RTL:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_RTL** = ``2``

Dirección de escritura de texto de derecha a izquierda.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Control_constant_NOTIFICATION_RESIZED:

.. rst-class:: classref-constant

**NOTIFICATION_RESIZED** = ``40`` :ref:`🔗<class_Control_constant_NOTIFICATION_RESIZED>`

Se envía cuando el nodo cambia de tamaño. Usa :ref:`size<class_Control_property_size>` para obtener el nuevo tamaño.

.. _class_Control_constant_NOTIFICATION_MOUSE_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_ENTER** = ``41`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_ENTER>`

Enviado cuando el cursor del ratón entra en el área visible del control (o de cualquier control hijo), que no está ocluida detrás de otros Controles o Ventanas, siempre que su :ref:`mouse_filter<class_Control_property_mouse_filter>` permita que el evento lo alcance e independientemente de si está actualmente enfocado o no.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` no afecta qué Control recibe la notificación.

Véase también :ref:`NOTIFICATION_MOUSE_ENTER_SELF<class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_EXIT** = ``42`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_EXIT>`

Enviado cuando el cursor del ratón sale del área visible del control (y de todos sus controles hijos), que no está ocluida detrás de otros Controles o Ventanas, siempre que su :ref:`mouse_filter<class_Control_property_mouse_filter>` permita que el evento lo alcance e independientemente de si está actualmente enfocado o no.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` no afecta qué Control recibe la notificación.

Véase también :ref:`NOTIFICATION_MOUSE_EXIT_SELF<class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_ENTER_SELF** = ``60`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF>`

**Experimental:** The reason this notification is sent may change in the future.

Enviado cuando el cursor del ratón entra en el área visible del control, que no está ocluida detrás de otros Controles o Ventanas, siempre que su :ref:`mouse_filter<class_Control_property_mouse_filter>` permita que el evento lo alcance e independientemente de si está actualmente enfocado o no.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` no afecta qué Control recibe la notificación.

Véase también :ref:`NOTIFICATION_MOUSE_ENTER<class_Control_constant_NOTIFICATION_MOUSE_ENTER>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_EXIT_SELF** = ``61`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF>`

**Experimental:** The reason this notification is sent may change in the future.

Enviado cuando el cursor del ratón sale del área visible del control, que no está ocluida detrás de otros Controles o Ventanas, siempre que su :ref:`mouse_filter<class_Control_property_mouse_filter>` permita que el evento lo alcance e independientemente de si está actualmente enfocado o no.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` no afecta qué Control recibe la notificación.

Véase también :ref:`NOTIFICATION_MOUSE_EXIT<class_Control_constant_NOTIFICATION_MOUSE_EXIT>`.

.. _class_Control_constant_NOTIFICATION_FOCUS_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_FOCUS_ENTER** = ``43`` :ref:`🔗<class_Control_constant_NOTIFICATION_FOCUS_ENTER>`

Enviado cuando el nodo agarra el foco.

.. _class_Control_constant_NOTIFICATION_FOCUS_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_FOCUS_EXIT** = ``44`` :ref:`🔗<class_Control_constant_NOTIFICATION_FOCUS_EXIT>`

Se envía cuando el nodo pierde el enfoque.

Esta notificación se envía en orden inverso.

.. _class_Control_constant_NOTIFICATION_THEME_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_THEME_CHANGED** = ``45`` :ref:`🔗<class_Control_constant_NOTIFICATION_THEME_CHANGED>`

Enviado cuando el nodo necesita refrescar sus elementos de tema. Esto sucede en uno de los siguientes casos:

- La propiedad :ref:`theme<class_Control_property_theme>` se cambia en este nodo o en cualquiera de sus ancestros.

- La propiedad :ref:`theme_type_variation<class_Control_property_theme_type_variation>` se cambia en este nodo.

- Se cambia una de las sobrescrituras de propiedades de tema del nodo.

- El nodo entra en el árbol de escenas.

\ **Nota:** Como optimización, esta notificación no se enviará por cambios que ocurran mientras este nodo esté fuera del árbol de escenas. En su lugar, todas las actualizaciones de los elementos del tema pueden aplicarse a la vez cuando el nodo entre en el árbol de escenas.

\ **Nota:** Esta notificación se recibe junto con :ref:`Node.NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>`, por lo que si estás instanciando una escena, los nodos hijos aún no estarán inicializados. Puedes usarla para configurar el tema para este nodo, para nodos hijos creados desde script, o si quieres acceder a los nodos hijos añadidos en el editor, asegúrate de que el nodo esté listo usando :ref:`Node.is_node_ready()<class_Node_method_is_node_ready>`.

::

    func _notification(what):
        if what == NOTIFICATION_THEME_CHANGED:
            if not is_node_ready():
                await ready # Espera a la señal ready.
            $Label.add_theme_color_override("font_color", Color.YELLOW)

.. _class_Control_constant_NOTIFICATION_SCROLL_BEGIN:

.. rst-class:: classref-constant

**NOTIFICATION_SCROLL_BEGIN** = ``47`` :ref:`🔗<class_Control_constant_NOTIFICATION_SCROLL_BEGIN>`

Se envía cuando este nodo está dentro de un :ref:`ScrollContainer<class_ScrollContainer>` que ha empezado a desplazarse al arrastrar el área desplazable *con un evento táctil*. Esta notificación *no* se envía al desplazar arrastrando la barra de desplazamiento, desplazando con la rueda del ratón o desplazando con eventos de teclado/gamepad.

\ **Nota:** Esta señal solo se emite en Android o iOS, o en plataformas de escritorio/web cuando :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` está habilitado.

.. _class_Control_constant_NOTIFICATION_SCROLL_END:

.. rst-class:: classref-constant

**NOTIFICATION_SCROLL_END** = ``48`` :ref:`🔗<class_Control_constant_NOTIFICATION_SCROLL_END>`

Se envía cuando este nodo está dentro de un :ref:`ScrollContainer<class_ScrollContainer>` que ha dejado de desplazarse al arrastrar el área desplazable *con un evento táctil*. Esta notificación *no* se envía al desplazar arrastrando la barra de desplazamiento, desplazando con la rueda del ratón o desplazando con eventos de teclado/gamepad.

\ **Nota:** Esta señal solo se emite en Android o iOS, o en plataformas de escritorio/web cuando :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` está habilitado.

.. _class_Control_constant_NOTIFICATION_LAYOUT_DIRECTION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_LAYOUT_DIRECTION_CHANGED** = ``49`` :ref:`🔗<class_Control_constant_NOTIFICATION_LAYOUT_DIRECTION_CHANGED>`

Enviado cuando la dirección de la disposición del control cambia de LTR o RTL o viceversa. Esta notificación se propaga a los nodos Control hijos como resultado de un cambio en :ref:`layout_direction<class_Control_property_layout_direction>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Control_property_accessibility_controls_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_controls_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_controls_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_controls_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_controls_nodes**\ (\ )

Las rutas a los nodos que están controlados por este nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_described_by_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_described_by_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_described_by_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_described_by_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_described_by_nodes**\ (\ )

Las rutas a los nodos que describen este nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **accessibility_description** = ``""`` :ref:`🔗<class_Control_property_accessibility_description>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_description**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_accessibility_description**\ (\ )

La descripción del nodo legible por humanos que se reporta a las aplicaciones de asistencia.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_flow_to_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_flow_to_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_flow_to_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_flow_to_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_flow_to_nodes**\ (\ )

Las rutas a los nodos a los que fluye este nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_labeled_by_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_labeled_by_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_labeled_by_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_labeled_by_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_labeled_by_nodes**\ (\ )

Las rutas a los nodos que etiquetan este nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_live:

.. rst-class:: classref-property

:ref:`AccessibilityLiveMode<enum_AccessibilityServer_AccessibilityLiveMode>` **accessibility_live** = ``0`` :ref:`🔗<class_Control_property_accessibility_live>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_live**\ (\ value\: :ref:`AccessibilityLiveMode<enum_AccessibilityServer_AccessibilityLiveMode>`\ )
- :ref:`AccessibilityLiveMode<enum_AccessibilityServer_AccessibilityLiveMode>` **get_accessibility_live**\ (\ )

El modo con el que se actualiza una región activa. Una región activa es un :ref:`Node<class_Node>` que se actualiza como resultado de un evento externo cuando el foco del usuario puede estar en otro lugar.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **accessibility_name** = ``""`` :ref:`🔗<class_Control_property_accessibility_name>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_accessibility_name**\ (\ )

El nombre del nodo legible por humanos que se informa a las apps de asistencia.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_bottom** = ``0.0`` :ref:`🔗<class_Control_property_anchor_bottom>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancla el borde inferior del nodo al origen, el centro o el final de su control padre. Cambia la forma en que el margen inferior se actualiza cuando el nodo se mueve o cambia de tamaño. Puedes usar una de las constantes :ref:`Anchor<enum_Control_Anchor>` para tu conveniencia.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_left** = ``0.0`` :ref:`🔗<class_Control_property_anchor_left>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancla el borde izquierdo del nodo al origen, el centro o el final de su control padre. Cambia la forma en que el margen izquierdo se actualiza cuando el nodo se mueve o cambia de tamaño. Puedes usar una de las constantes :ref:`Anchor<enum_Control_Anchor>` para tu conveniencia.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_right** = ``0.0`` :ref:`🔗<class_Control_property_anchor_right>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancla el borde derecho del nodo al origen, el centro o el final de su control padre. Cambia la forma en que el margen derecho se actualiza cuando el nodo se mueve o cambia de tamaño. Puedes usar una de las constantes :ref:`Anchor<enum_Control_Anchor>` para tu conveniencia.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_top** = ``0.0`` :ref:`🔗<class_Control_property_anchor_top>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancla el borde superior del nodo al origen, el centro o el final de su control padre. Cambia la forma en que el margen superior se actualiza cuando el nodo se mueve o cambia de tamaño. Puedes usar una de las constantes :ref:`Anchor<enum_Control_Anchor>` para tu conveniencia.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_auto_translate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_translate** :ref:`🔗<class_Control_property_auto_translate>`

.. rst-class:: classref-property-setget

- |void| **set_auto_translate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_translating**\ (\ )

**Obsoleto:** Use :ref:`Node.auto_translate_mode<class_Node_property_auto_translate_mode>` and :ref:`Node.can_auto_translate()<class_Node_method_can_auto_translate>` instead.

Activa o desactiva si algún texto debe cambiar automáticamente a su versión traducida dependiendo de la configuración regional actual.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_clip_contents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_contents** = ``false`` :ref:`🔗<class_Control_property_clip_contents>`

.. rst-class:: classref-property-setget

- |void| **set_clip_contents**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_clipping_contents**\ (\ )

Activa si el renderizado de los hijos basados en :ref:`CanvasItem<class_CanvasItem>` debe ser recortado al rectángulo de este control. Si es ``true``, las partes de un hijo que estarían visiblemente fuera del rectángulo de este control no se renderizarán y no recibirán entrada.

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

Determina qué controles se pueden enfocar junto con :ref:`focus_mode<class_Control_property_focus_mode>`. Véase :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>`. Dado que el comportamiento predeterminado es :ref:`FOCUS_BEHAVIOR_INHERITED<class_Control_constant_FOCUS_BEHAVIOR_INHERITED>`, esto se puede utilizar para evitar que todos los controles secundarios se enfoquen.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_mode:

.. rst-class:: classref-property

:ref:`FocusMode<enum_Control_FocusMode>` **focus_mode** = ``0`` :ref:`🔗<class_Control_property_focus_mode>`

.. rst-class:: classref-property-setget

- |void| **set_focus_mode**\ (\ value\: :ref:`FocusMode<enum_Control_FocusMode>`\ )
- :ref:`FocusMode<enum_Control_FocusMode>` **get_focus_mode**\ (\ )

Determina qué controles se pueden enfocar. Solo se puede enfocar un control a la vez, y el control enfocado recibirá eventos de teclado, gamepad y ratón en :ref:`_gui_input()<class_Control_private_method__gui_input>`. Utiliza :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` para determinar si un control puede tomar el foco, ya que :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` también le afecta. Véase también :ref:`grab_focus()<class_Control_method_grab_focus>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_bottom:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_bottom** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Le dice a Godot a qué nodo debe darle el foco si el usuario pulsa la flecha abajo en el teclado o abajo en un gamepad de forma predeterminada. Puedes cambiar la tecla editando la acción de entrada :ref:`ProjectSettings.input/ui_down<class_ProjectSettings_property_input/ui_down>`. El nodo debe ser un **Control**. Si esta propiedad no está establecida, Godot le dará el foco al **Control** más cercano a la parte inferior de este.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_left:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_left** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_left>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Le dice a Godot a qué nodo debe darle el foco si el usuario pulsa la flecha izquierda en el teclado o a la izquierda en un gamepad de forma predeterminada. Puedes cambiar la tecla editando la acción de entrada :ref:`ProjectSettings.input/ui_left<class_ProjectSettings_property_input/ui_left>`. El nodo debe ser un **Control**. Si esta propiedad no está establecida, Godot le dará el foco al **Control** más cercano a la izquierda de este.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_right:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_right** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_right>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Le dice a Godot a qué nodo debe darle el foco si el usuario pulsa la flecha derecha en el teclado o a la derecha en un gamepad de forma predeterminada. Puedes cambiar la tecla editando la acción de entrada :ref:`ProjectSettings.input/ui_right<class_ProjectSettings_property_input/ui_right>`. El nodo debe ser un **Control**. Si esta propiedad no está establecida, Godot le dará el foco al **Control** más cercano a la derecha de este.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_top:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_top** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_top>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Le dice a Godot a qué nodo debe darle el foco si el usuario pulsa la flecha arriba en el teclado o arriba en un gamepad de forma predeterminada. Puedes cambiar la tecla editando la acción de entrada :ref:`ProjectSettings.input/ui_up<class_ProjectSettings_property_input/ui_up>`. El nodo debe ser un **Control**. Si esta propiedad no está establecida, Godot le dará el foco al **Control** más cercano a la parte superior de este.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_next:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_next** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_next>`

.. rst-class:: classref-property-setget

- |void| **set_focus_next**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_next**\ (\ )

Tells Godot which node it should give focus to if the user presses :kbd:`Tab` on a keyboard by default. You can change the key by editing the :ref:`ProjectSettings.input/ui_focus_next<class_ProjectSettings_property_input/ui_focus_next>` input action.

If this property is not set, Godot will select a "best guess" based on surrounding nodes in the scene tree.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_previous:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_previous** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_previous>`

.. rst-class:: classref-property-setget

- |void| **set_focus_previous**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_previous**\ (\ )

Tells Godot which node it should give focus to if the user presses :kbd:`Shift + Tab` on a keyboard by default. You can change the key by editing the :ref:`ProjectSettings.input/ui_focus_prev<class_ProjectSettings_property_input/ui_focus_prev>` input action.

If this property is not set, Godot will select a "best guess" based on surrounding nodes in the scene tree.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** :ref:`🔗<class_Control_property_global_position>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

La posición global del nodo, relativa al mundo (normalmente a la :ref:`CanvasLayer<class_CanvasLayer>`).

.. rst-class:: classref-item-separator

----

.. _class_Control_property_grow_horizontal:

.. rst-class:: classref-property

:ref:`GrowDirection<enum_Control_GrowDirection>` **grow_horizontal** = ``1`` :ref:`🔗<class_Control_property_grow_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_grow_direction**\ (\ value\: :ref:`GrowDirection<enum_Control_GrowDirection>`\ )
- :ref:`GrowDirection<enum_Control_GrowDirection>` **get_h_grow_direction**\ (\ )

Controla la dirección en el eje horizontal en la que el control debe crecer si su tamaño mínimo horizontal se cambia para que sea mayor que su tamaño actual, ya que el control siempre tiene que ser al menos del tamaño mínimo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_grow_vertical:

.. rst-class:: classref-property

:ref:`GrowDirection<enum_Control_GrowDirection>` **grow_vertical** = ``1`` :ref:`🔗<class_Control_property_grow_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_grow_direction**\ (\ value\: :ref:`GrowDirection<enum_Control_GrowDirection>`\ )
- :ref:`GrowDirection<enum_Control_GrowDirection>` **get_v_grow_direction**\ (\ )

Controla la dirección en el eje vertical en la que el control debe crecer si su tamaño mínimo vertical se cambia para que sea mayor que su tamaño actual, ya que el control siempre tiene que ser al menos del tamaño mínimo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_layout_direction:

.. rst-class:: classref-property

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **layout_direction** = ``0`` :ref:`🔗<class_Control_property_layout_direction>`

.. rst-class:: classref-property-setget

- |void| **set_layout_direction**\ (\ value\: :ref:`LayoutDirection<enum_Control_LayoutDirection>`\ )
- :ref:`LayoutDirection<enum_Control_LayoutDirection>` **get_layout_direction**\ (\ )

Controla la dirección del diseño y la dirección de la escritura del texto. Los diseños de derecha a izquierda son necesarios para ciertos idiomas (por ejemplo, árabe y hebreo). Véase también :ref:`is_layout_rtl()<class_Control_method_is_layout_rtl>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_localize_numeral_system:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **localize_numeral_system** = ``true`` :ref:`🔗<class_Control_property_localize_numeral_system>`

.. rst-class:: classref-property-setget

- |void| **set_localize_numeral_system**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_localizing_numeral_system**\ (\ )

Si es ``true``, convierte automáticamente los números de línea de código, los índices de lista, los valores de :ref:`SpinBox<class_SpinBox>` y :ref:`ProgressBar<class_ProgressBar>` del árabe occidental (0..9) a los sistemas de numeración utilizados en la configuración regional actual.

\ **Nota:** Los números dentro del texto no se convierten automáticamente, se pueden hacer manualmente, usando :ref:`TextServer.format_number()<class_TextServer_method_format_number>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_behavior_recursive:

.. rst-class:: classref-property

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **mouse_behavior_recursive** = ``0`` :ref:`🔗<class_Control_property_mouse_behavior_recursive>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_behavior_recursive**\ (\ value\: :ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>`\ )
- :ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **get_mouse_behavior_recursive**\ (\ )

Determina qué controles pueden recibir entrada del ratón junto con :ref:`mouse_filter<class_Control_property_mouse_filter>`. Véase :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>`. Dado que el comportamiento predeterminado es :ref:`MOUSE_BEHAVIOR_INHERITED<class_Control_constant_MOUSE_BEHAVIOR_INHERITED>`, esto se puede utilizar para evitar que todos los controles hijos reciban entrada del ratón.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_default_cursor_shape:

.. rst-class:: classref-property

:ref:`CursorShape<enum_Control_CursorShape>` **mouse_default_cursor_shape** = ``0`` :ref:`🔗<class_Control_property_mouse_default_cursor_shape>`

.. rst-class:: classref-property-setget

- |void| **set_default_cursor_shape**\ (\ value\: :ref:`CursorShape<enum_Control_CursorShape>`\ )
- :ref:`CursorShape<enum_Control_CursorShape>` **get_default_cursor_shape**\ (\ )

La forma del cursor por defecto para este control. Útil para los plugins de Godot y las aplicaciones o juegos que utilizan los cursores del ratón del sistema.

\ **Nota:** En Linux, las formas pueden variar dependiendo del tema del cursor del sistema.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_filter:

.. rst-class:: classref-property

:ref:`MouseFilter<enum_Control_MouseFilter>` **mouse_filter** = ``0`` :ref:`🔗<class_Control_property_mouse_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_filter**\ (\ value\: :ref:`MouseFilter<enum_Control_MouseFilter>`\ )
- :ref:`MouseFilter<enum_Control_MouseFilter>` **get_mouse_filter**\ (\ )

Determina qué controles podrán recibir eventos de entrada de botón del ratón a través de :ref:`_gui_input()<class_Control_private_method__gui_input>` y las señales :ref:`mouse_entered<class_Control_signal_mouse_entered>` y :ref:`mouse_exited<class_Control_signal_mouse_exited>`. También determina cómo deben propagarse estos eventos. Véanse las constantes para saber qué hace cada una. Utiliza :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>` para determinar si un control puede recibir entrada del ratón, ya que :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` también le afecta.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_force_pass_scroll_events:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mouse_force_pass_scroll_events** = ``true`` :ref:`🔗<class_Control_property_mouse_force_pass_scroll_events>`

.. rst-class:: classref-property-setget

- |void| **set_force_pass_scroll_events**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_force_pass_scroll_events**\ (\ )

Cuando está activado, los eventos de la rueda del ratón procesados por :ref:`_gui_input()<class_Control_private_method__gui_input>` se pasarán al control padre incluso si :ref:`mouse_filter<class_Control_property_mouse_filter>` está establecido en :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>`.

Deberías desactivarlo en la raíz de tu IU si no quieres que los eventos de desplazamiento vayan al procesamiento de :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`.

\ **Nota:** Debido a que esta propiedad por defecto es ``true``, esto permite que los contenedores desplazables anidados funcionen inmediatamente.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_bottom** = ``0.0`` :ref:`🔗<class_Control_property_offset_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distancia entre el borde inferior del nodo y su control padre, basado en :ref:`anchor_bottom<class_Control_property_anchor_bottom>`.

Los márgenes son a menudo controlados por uno o varios nodos padre :ref:`Container<class_Container>`, por lo que no deberías modificarlos manualmente si tu nodo es un hijo directo de un :ref:`Container<class_Container>`. Los márgenes se actualizan automáticamente cuando mueves o cambias el tamaño del nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_left** = ``0.0`` :ref:`🔗<class_Control_property_offset_left>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distancia entre el borde izquierdo del nodo y su control padre, basado en :ref:`anchor_left<class_Control_property_anchor_left>`.

Los márgenes son a menudo controlados por uno o varios nodos padre :ref:`Container<class_Container>`, por lo que no deberías modificarlos manualmente si tu nodo es un hijo directo de un :ref:`Container<class_Container>`. Los márgenes se actualizan automáticamente cuando mueves o cambias el tamaño del nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_right** = ``0.0`` :ref:`🔗<class_Control_property_offset_right>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distancia entre el borde derecho del nodo y su control padre, basado en :ref:`anchor_right<class_Control_property_anchor_right>`.

Los márgenes son a menudo controlados por uno o varios nodos padre :ref:`Container<class_Container>`, por lo que no deberías modificarlos manualmente si tu nodo es un hijo directo de un :ref:`Container<class_Container>`. Los márgenes se actualizan automáticamente cuando mueves o cambias el tamaño del nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_top** = ``0.0`` :ref:`🔗<class_Control_property_offset_top>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distancia entre el borde superior del nodo y su control padre, basado en :ref:`anchor_top<class_Control_property_anchor_top>`.

Los márgenes a menudo están controlados por uno o varios nodos padre :ref:`Container<class_Container>`, por lo que no deberías modificarlos manualmente si tu nodo es un hijo directo de un :ref:`Container<class_Container>`. Los márgenes se actualizan automáticamente cuando mueves o cambias el tamaño del nodo.

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

Por defecto, el punto de pivote del nodo es su esquina superior izquierda. Cuando cambias su :ref:`rotation<class_Control_property_rotation>` o :ref:`scale<class_Control_property_scale>`, rotará o escalará alrededor de este pivote.

El desplazamiento real es el valor combinado de esta propiedad y :ref:`pivot_offset_ratio<class_Control_property_pivot_offset_ratio>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_pivot_offset_ratio:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **pivot_offset_ratio** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_pivot_offset_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_pivot_offset_ratio**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_pivot_offset_ratio**\ (\ )

Igual que :ref:`pivot_offset<class_Control_property_pivot_offset>`, pero expresado como un vector uniforme, donde ``Vector2(0, 0)`` es la esquina superior izquierda de este control, y ``Vector2(1, 1)`` es su esquina inferior derecha. Establece esta propiedad en ``Vector2(0.5, 0.5)`` para pivotar alrededor del centro de este control.

El desplazamiento (offset) real es el valor combinado de esta propiedad y :ref:`pivot_offset<class_Control_property_pivot_offset>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_position>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

The node's position, relative to its containing node. It corresponds to the rectangle's top-left corner. The property is not affected by :ref:`pivot_offset<class_Control_property_pivot_offset>`.

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

La rotación del nodo alrededor de su pivote, en radianes. Véase :ref:`pivot_offset<class_Control_property_pivot_offset>` para cambiar la posición del pivote.

\ **Nota:** Esta propiedad se edita en el inspector en grados. Si quieres usar grados en un script, usa :ref:`rotation_degrees<class_Control_property_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_rotation_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation_degrees** :ref:`🔗<class_Control_property_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation_degrees**\ (\ )

Propiedad auxiliar para acceder a :ref:`rotation<class_Control_property_rotation>` en grados en lugar de radianes.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Control_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scale**\ (\ )

La escala del nodo, relativa a su :ref:`size<class_Control_property_size>`. Cambia esta propiedad para escalar el nodo alrededor de su :ref:`pivot_offset<class_Control_property_pivot_offset>`. La información sobre herramienta (tooltip) del Control también se escalará según este valor.

\ **Nota:** Esta propiedad está pensada principalmente para fines de animación. Para admitir múltiples resoluciones en tu proyecto, usa un modo de estiramiento de viewport apropiado como se describe en la :doc:`documentación <../tutorials/rendering/multiple_resolutions>` en lugar de escalar los Controls individualmente.

\ **Nota:** :ref:`FontFile.oversampling<class_FontFile_property_oversampling>` *no* tiene en cuenta la :ref:`scale<class_Control_property_scale>` de **Control**. Esto significa que escalar hacia arriba o hacia abajo hará que las fuentes de mapa de bits y las fuentes dinámicas rasterizadas (no MSDF) aparezcan borrosas o pixeladas. Para asegurar que el texto permanezca nítido independientemente de la escala, puedes habilitar el renderizado de fuentes MSDF activando :ref:`ProjectSettings.gui/theme/default_font_multichannel_signed_distance_field<class_ProjectSettings_property_gui/theme/default_font_multichannel_signed_distance_field>` (se aplica solo a la fuente predeterminada del proyecto), o habilitando **Campo de Distancia Firmado Multicanal** en las opciones de importación de una DynamicFont para fuentes personalizadas. En las fuentes del sistema, se puede habilitar :ref:`SystemFont.multichannel_signed_distance_field<class_SystemFont_property_multichannel_signed_distance_field>` en el inspector.

\ **Nota:** Si el nodo Control es hijo de un nodo :ref:`Container<class_Container>`, la escala se restablecerá a ``Vector2(1, 1)`` cuando se instancie la escena. Para establecer la escala del Control cuando se instancia, espera un fotograma usando ``await get_tree().process_frame`` y luego establece su propiedad :ref:`scale<class_Control_property_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_shortcut_context:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **shortcut_context** :ref:`🔗<class_Control_property_shortcut_context>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut_context**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_shortcut_context**\ (\ )

El :ref:`Node<class_Node>` que debe ser un padre del **Control** enfocado para que el atajo se active. Si es ``null``, el atajo puede activarse cuando cualquier control esté enfocado (un atajo global). Esto permite que los atajos se acepten solo cuando el usuario tiene una cierta área de la GUI enfocada.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_size>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

El tamaño del rectángulo delimitador del nodo, en el sistema de coordenadas del nodo. Los nodos :ref:`Container<class_Container>` actualizan esta propiedad automáticamente.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_horizontal:

.. rst-class:: classref-property

|bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **size_flags_horizontal** = ``1`` :ref:`🔗<class_Control_property_size_flags_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_size_flags**\ (\ value\: |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]\ )
- |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **get_h_size_flags**\ (\ )

Le dice a los nodos padre :ref:`Container<class_Container>` cómo deben cambiar de tamaño y colocar el nodo en el eje X. Usa una combinación de las constantes :ref:`SizeFlags<enum_Control_SizeFlags>` para cambiar los flags. Véanse las constantes para saber qué hace cada una.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_stretch_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **size_flags_stretch_ratio** = ``1.0`` :ref:`🔗<class_Control_property_size_flags_stretch_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stretch_ratio**\ (\ )

Si el nodo y al menos uno de sus vecinos utiliza la bandera de tamaño :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>`, el padre :ref:`Container<class_Container>` le permitirá ocupar más o menos espacio dependiendo de esta propiedad. Si este nodo tiene una relación de estiramiento de 2 y su vecino una relación de 1, este nodo ocupará dos tercios del espacio disponible.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_vertical:

.. rst-class:: classref-property

|bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **size_flags_vertical** = ``1`` :ref:`🔗<class_Control_property_size_flags_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_size_flags**\ (\ value\: |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]\ )
- |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **get_v_size_flags**\ (\ )

Le dice a los nodos padres :ref:`Container<class_Container>` cómo deberían cambiar de tamaño y colocar el nodo en el eje Y. Usa una combinación de las constantes :ref:`SizeFlags<enum_Control_SizeFlags>` para cambiar las banderas. Mira las constantes para aprender lo que hace cada una.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_theme:

.. rst-class:: classref-property

:ref:`Theme<class_Theme>` **theme** :ref:`🔗<class_Control_property_theme>`

.. rst-class:: classref-property-setget

- |void| **set_theme**\ (\ value\: :ref:`Theme<class_Theme>`\ )
- :ref:`Theme<class_Theme>` **get_theme**\ (\ )

El recurso :ref:`Theme<class_Theme>` que este nodo y todos sus hijos **Control** y :ref:`Window<class_Window>` usan. Si un nodo hijo tiene su propio recurso :ref:`Theme<class_Theme>` establecido, los elementos del tema se fusionan con las definiciones del hijo, teniendo este mayor prioridad.

\ **Nota:** Los estilos de :ref:`Window<class_Window>` no tendrán efecto a menos que la ventana esté integrada.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_theme_type_variation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **theme_type_variation** = ``&""`` :ref:`🔗<class_Control_property_theme_type_variation>`

.. rst-class:: classref-property-setget

- |void| **set_theme_type_variation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_theme_type_variation**\ (\ )

El nombre de una variación del tipo de tema utilizada por este **Control** para buscar sus propios elementos de tema. Cuando está vacío, se utiliza el nombre de la clase del nodo (por ejemplo, ``Button`` para el control :ref:`Button<class_Button>`), así como los nombres de clase de todas las clases padre (en orden de herencia).

Cuando se establece, esta propiedad da la máxima prioridad al tipo del nombre especificado. Este tipo puede a su vez extender otro tipo, formando una cadena de dependencias. Véase :ref:`Theme.set_type_variation()<class_Theme_method_set_type_variation>`. Si el elemento del tema no se puede encontrar utilizando este tipo o sus tipos base, la búsqueda recurre a los nombres de las clases.

\ **Nota:** Para buscar los propios elementos de **Control**, utiliza varios métodos ``get_theme_*`` sin especificar ``theme_type``.

\ **Nota:** Los elementos del tema se buscan en el orden del árbol, de la rama a la raíz, donde se comprueba cada nodo **Control** por su propiedad :ref:`theme<class_Control_property_theme>`. Se devuelve la primera coincidencia con cualquier tipo/nombre de clase. El Theme a nivel de proyecto y el Theme predeterminado se comprueban en último lugar.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_tooltip_auto_translate_mode:

.. rst-class:: classref-property

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **tooltip_auto_translate_mode** = ``0`` :ref:`🔗<class_Control_property_tooltip_auto_translate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip_auto_translate_mode**\ (\ value\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ )
- :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **get_tooltip_auto_translate_mode**\ (\ )

Define si el texto de la sugerencia debe cambiar automáticamente a su versión traducida dependiendo de la configuración regional actual. Utiliza el mismo modo de traducción automática que este control cuando se establece en :ref:`Node.AUTO_TRANSLATE_MODE_INHERIT<class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT>`.

\ **Nota:** Las sugerencias personalizadas mediante :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` no utilizan este modo de traducción automática automáticamente.

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

Descripciones de Métodos
------------------------------------------------

.. _class_Control_private_method__accessibility_get_contextual_info:

.. rst-class:: classref-method

:ref:`String<class_String>` **_accessibility_get_contextual_info**\ (\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__accessibility_get_contextual_info>`

Devuelve la descripción de los atajos de teclado y otra ayuda contextual para este control.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__can_drop_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_drop_data**\ (\ at_position\: :ref:`Vector2<class_Vector2>`, data\: :ref:`Variant<class_Variant>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__can_drop_data>`

Godot llama a este método para probar si los ``data`` de :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` de un control pueden soltarse en ``at_position``. ``at_position`` es local a este control.

Este método solo debe usarse para probar los datos. Procesa los datos en :ref:`_drop_data()<class_Control_private_method__drop_data>`.

\ **Nota:** Si el arrastre fue iniciado por un atajo de teclado o :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` se establece en :ref:`Vector2.INF<class_Vector2_constant_INF>`, y se debe usar el elemento seleccionado actualmente o la posición del texto como posición de soltura.


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

Godot llama a este método para pasarte los ``data`` del resultado de :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` de un control. Godot primero llama a :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` para probar si se permite soltar los ``data`` en ``at_position``, donde ``at_position`` es local a este control.

\ **Nota:** Si el arrastre fue iniciado por un atajo de teclado o :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` se establece en :ref:`Vector2.INF<class_Vector2_constant_INF>`, y se debe usar el elemento seleccionado actualmente o la posición del texto como posición de soltura.


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

Sobrescribe este método para devolver una descripción legible por humanos de la posición del ``node`` hijo en el contenedor personalizado, la cual se añadirá a :ref:`accessibility_name<class_Control_property_accessibility_name>`.

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

Godot llama a este método para obtener datos que pueden arrastrarse y soltarse sobre controles que esperan datos de soltura. Devuelve ``null`` si no hay datos para arrastrar. Los controles que quieren recibir datos de soltura deben implementar :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` y :ref:`_drop_data()<class_Control_private_method__drop_data>`. ``at_position`` es local a este control. El arrastre puede forzarse con :ref:`force_drag()<class_Control_method_force_drag>`.

Una vista previa que seguirá al ratón y debería representar los datos puede establecerse con :ref:`set_drag_preview()<class_Control_method_set_drag_preview>`. Un buen momento para establecer la vista previa es en este método.

\ **Nota:** Si el arrastre fue iniciado por un atajo de teclado o :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` se establece en :ref:`Vector2.INF<class_Vector2_constant_INF>`, y se debe usar el elemento seleccionado actualmente o la posición del texto como posición de arrastre.


.. tabs::

 .. code-tab:: gdscript

    func _get_drag_data(position):
        var mydata = make_data() # Este es tu método personalizado que genera los datos de arrastre.
        set_drag_preview(make_preview(mydata)) # Este es tu método personalizado que genera la vista previa de los datos de arrastre.
        return mydata

 .. code-tab:: csharp

    public override Variant _GetDragData(Vector2 atPosition)
    {
        var myData = MakeData(); // Este es tu método personalizado que genera los datos de arrastre.
        SetDragPreview(MakePreview(myData)); // Este es tu método personalizado que genera la vista previa de los datos de arrastre.
        return myData;
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

Método virtual que debe ser implementado por el usuario. Devuelve el tamaño mínimo para este control. Es una alternativa a :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` para controlar el tamaño mínimo mediante código. El tamaño mínimo real será el valor máximo de estos dos (en cada eje por separado).

Si no se sobrescribe, el valor predeterminado es :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

\ **Nota:** Este método no se llamará cuando el script esté adjunto a un nodo **Control** que ya sobrescriba su tamaño mínimo (por ejemplo, :ref:`Label<class_Label>`, :ref:`Button<class_Button>`, :ref:`PanelContainer<class_PanelContainer>`, etc.). Solo puede usarse con la mayoría de los nodos GUI básicos, como **Control**, :ref:`Container<class_Container>`, :ref:`Panel<class_Panel>`, etc.

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

Método virtual que debe ser implementado por el usuario. Sobrescribe este método para manejar y aceptar entradas en elementos de la interfaz de usuario. Véase también :ref:`accept_event()<class_Control_method_accept_event>`.

\ **Ejemplo:** Haz clic en el control para imprimir un mensaje:


.. tabs::

 .. code-tab:: gdscript

    func _gui_input(event):
        if event is InputEventMouseButton:
            if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
                print("Me han hecho clic D:")

 .. code-tab:: csharp

    public override void _GuiInput(InputEvent @event)
    {
        if (@event is InputEventMouseButton mb)
        {
            if (mb.ButtonIndex == MouseButton.Left && mb.Pressed)
            {
                GD.Print("Me han hecho clic D:");
            }
        }
    }



Si el ``event`` hereda de :ref:`InputEventMouse<class_InputEventMouse>`, este método **no** se llamará cuando:

- el :ref:`mouse_filter<class_Control_property_mouse_filter>` del control esté establecido en :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`;

- el control esté obstruido por otro control encima que no tenga :ref:`mouse_filter<class_Control_property_mouse_filter>` establecido en :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`;

- el padre del control tenga :ref:`mouse_filter<class_Control_property_mouse_filter>` establecido en :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>` o haya aceptado el evento;

- el padre del control tenga :ref:`clip_contents<class_Control_property_clip_contents>` activado y la posición del ``event`` esté fuera del rectángulo del padre;

- la posición del ``event`` esté fuera del control (consulta :ref:`_has_point()<class_Control_private_method__has_point>`).

\ **Nota:** La posición del ``event`` es relativa al origen de este control.

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

Método virtual que debe ser implementado por el usuario. Devuelve un nodo **Control** que debe usarse como información sobre herramienta (tooltip) en lugar del predeterminado. ``for_text`` es el valor de retorno de :ref:`get_tooltip()<class_Control_method_get_tooltip>`.

El nodo devuelto debe ser de tipo **Control** o derivado de Control. Puede tener nodos hijos de cualquier tipo. Se libera cuando la información sobre herramienta desaparece, así que asegúrate de proporcionar siempre una nueva instancia (si quieres usar un nodo preexistente de tu árbol de escena, puedes duplicarlo y pasar la instancia duplicada). Cuando se devuelve ``null`` o un nodo que no es Control, se utilizará la información sobre herramienta predeterminada.

El nodo devuelto se añadirá como hijo a un :ref:`PopupPanel<class_PopupPanel>`, por lo que solo debes proporcionar el contenido de ese panel. Ese :ref:`PopupPanel<class_PopupPanel>` puede tematizarse usando :ref:`Theme.set_stylebox()<class_Theme_method_set_stylebox>` para el tipo ``"TooltipPanel"`` (consulta :ref:`tooltip_text<class_Control_property_tooltip_text>` para un ejemplo).

\ **Nota:** La información sobre herramienta se reduce a su tamaño mínimo. Si quieres asegurarte de que sea completamente visible, es posible que quieras establecer su :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` en algún valor distinto de cero.

\ **Nota:** El nodo (y cualquier hijo relevante) debe tener su :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` establecido en ``true`` al ser devuelto; de lo contrario, el viewport que lo instancia no podrá calcular su tamaño mínimo de forma fiable.

\ **Nota:** Si se sobrescribe, este método se llama incluso si :ref:`get_tooltip()<class_Control_method_get_tooltip>` devuelve una cadena vacía. Cuando esto ocurre con la información sobre herramienta predeterminada, no se muestra. Para copiar este comportamiento, devuelve ``null`` en este método cuando ``for_text`` esté vacío.

\ **Ejemplo:** Usa un nodo construido como información sobre herramienta:


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



\ **Ejemplo:** Usa una instancia de escena como información sobre herramienta:


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

Función de sobrescritura del algoritmo BiDi (bidireccional) definida por el usuario.

Devuelve un :ref:`Array<class_Array>` de rangos de texto :ref:`Vector3i<class_Vector3i>` y direcciones base del texto, en el orden de izquierda a derecha. Los rangos deben cubrir el ``text`` de origen completo sin solapamientos. El algoritmo BiDi se aplicará en cada rango por separado.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accept_event:

.. rst-class:: classref-method

|void| **accept_event**\ (\ ) :ref:`🔗<class_Control_method_accept_event>`

Marca un evento de entrada como manejado. Una vez que aceptas un evento de entrada, este deja de propagarse, incluso a los nodos que escuchan :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` o :ref:`Node._unhandled_key_input()<class_Node_private_method__unhandled_key_input>`.

\ **Nota:** Esto no afecta a los métodos en :ref:`Input<class_Input>`, solo a la forma en que se propagan los eventos.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accessibility_drag:

.. rst-class:: classref-method

|void| **accessibility_drag**\ (\ ) :ref:`🔗<class_Control_method_accessibility_drag>`

Inicia una operación de arrastrar y soltar (drag-and-drop) sin utilizar un ratón.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accessibility_drop:

.. rst-class:: classref-method

|void| **accessibility_drop**\ (\ ) :ref:`🔗<class_Control_method_accessibility_drop>`

Finaliza una operación de arrastrar y soltar (drag-and-drop) sin utilizar un ratón.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_color_override:

.. rst-class:: classref-method

|void| **add_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Control_method_add_theme_color_override>`

Crea una sobrescritura local para un :ref:`Color<class_Color>` de tema con el ``name`` especificado. Las sobrescrituras locales siempre tienen prioridad al obtener elementos del tema para el control. Una sobrescritura puede eliminarse con :ref:`remove_theme_color_override()<class_Control_method_remove_theme_color_override>`.

Consulta también :ref:`get_theme_color()<class_Control_method_get_theme_color>`.

\ **Ejemplo:** Sobrescribir el color de un :ref:`Label<class_Label>` y restablecerlo más tarde:


.. tabs::

 .. code-tab:: gdscript

    # Dado el nodo hijo Label "MyLabel", sobrescribe su color de fuente con un valor personalizado.
    $MyLabel.add_theme_color_override("font_color", Color(1, 0.5, 0))
    # Restablece el color de fuente del nodo Label hijo.
    $MyLabel.remove_theme_color_override("font_color")
    # Alternativamente, se puede sobrescribir con el valor por defecto del tipo Label.
    $MyLabel.add_theme_color_override("font_color", get_theme_color("font_color", "Label"))

 .. code-tab:: csharp

    // Dado el nodo hijo Label "MyLabel", sobrescribe su color de fuente con un valor personalizado.
    GetNode<Label>("MyLabel").AddThemeColorOverride("font_color", new Color(1, 0.5f, 0));
    // Restablece el color de fuente del nodo Label hijo.
    GetNode<Label>("MyLabel").RemoveThemeColorOverride("font_color");
    // Alternativamente, se puede sobrescribir con el valor por defecto del tipo Label.
    GetNode<Label>("MyLabel").AddThemeColorOverride("font_color", GetThemeColor("font_color", "Label"));



.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_constant_override:

.. rst-class:: classref-method

|void| **add_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`, constant\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Control_method_add_theme_constant_override>`

Crea una anulación local para una constante del tema con el ``name`` especificado. Las anulaciones locales siempre tienen prioridad al obtener elementos del tema para el control. Una anulación puede eliminarse con :ref:`remove_theme_constant_override()<class_Control_method_remove_theme_constant_override>`.

Véase también :ref:`get_theme_constant()<class_Control_method_get_theme_constant>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_font_override:

.. rst-class:: classref-method

|void| **add_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`, font\: :ref:`Font<class_Font>`\ ) :ref:`🔗<class_Control_method_add_theme_font_override>`

Crea una anulación local para una :ref:`Font<class_Font>` del tema con el ``name`` especificado. Las anulaciones locales siempre tienen prioridad al obtener elementos del tema para el control. Una anulación puede eliminarse con :ref:`remove_theme_font_override()<class_Control_method_remove_theme_font_override>`.

Véase también :ref:`get_theme_font()<class_Control_method_get_theme_font>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_font_size_override:

.. rst-class:: classref-method

|void| **add_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`, font_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Control_method_add_theme_font_size_override>`

Crea una anulación local para un tamaño de fuente del tema con el ``name`` especificado. Las anulaciones locales siempre tienen prioridad al obtener elementos del tema para el control. Una anulación puede eliminarse con :ref:`remove_theme_font_size_override()<class_Control_method_remove_theme_font_size_override>`.

Véase también :ref:`get_theme_font_size()<class_Control_method_get_theme_font_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_icon_override:

.. rst-class:: classref-method

|void| **add_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_Control_method_add_theme_icon_override>`

Crea una anulación local para un icono del tema con el ``name`` especificado. Las anulaciones locales siempre tienen prioridad al obtener elementos del tema para el control. Una anulación puede eliminarse con :ref:`remove_theme_icon_override()<class_Control_method_remove_theme_icon_override>`.

Véase también :ref:`get_theme_icon()<class_Control_method_get_theme_icon>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_stylebox_override:

.. rst-class:: classref-method

|void| **add_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`, stylebox\: :ref:`StyleBox<class_StyleBox>`\ ) :ref:`🔗<class_Control_method_add_theme_stylebox_override>`

Crea una sobrescritura local para un :ref:`StyleBox<class_StyleBox>` de tema con el ``name`` especificado. Las sobrescrituras locales siempre tienen prioridad al obtener elementos del tema para el control. Una sobrescritura puede eliminarse con :ref:`remove_theme_stylebox_override()<class_Control_method_remove_theme_stylebox_override>`.

Consulta también :ref:`get_theme_stylebox()<class_Control_method_get_theme_stylebox>`.

\ **Ejemplo:** Modificar una propiedad en un :ref:`StyleBox<class_StyleBox>` duplicándolo:


.. tabs::

 .. code-tab:: gdscript

    # El fragmento a continuación asume que el nodo hijo "MyButton" tiene un StyleBoxFlat asignado.
    # Los recursos se comparten entre instancias, por lo que necesitamos duplicarlo
    # para evitar modificar la apariencia de todos los demás botones.
    var new_stylebox_normal = $MyButton.get_theme_stylebox("normal").duplicate()
    new_stylebox_normal.border_width_top = 3
    new_stylebox_normal.border_color = Color(0, 1, 0.5)
    $MyButton.add_theme_stylebox_override("normal", new_stylebox_normal)
    # Elimina la sobrescritura del stylebox.
    $MyButton.remove_theme_stylebox_override("normal")

 .. code-tab:: csharp

    // El fragmento a continuación asume que el nodo hijo "MyButton" tiene un StyleBoxFlat asignado.
    // Los recursos se comparten entre instancias, por lo que necesitamos duplicarlo
    // para evitar modificar la apariencia de todos los demás botones.
    StyleBoxFlat newStyleboxNormal = GetNode<Button>("MyButton").GetThemeStylebox("normal").Duplicate() as StyleBoxFlat;
    newStyleboxNormal.BorderWidthTop = 3;
    newStyleboxNormal.BorderColor = new Color(0, 1, 0.5f);
    GetNode<Button>("MyButton").AddThemeStyleboxOverride("normal", newStyleboxNormal);
    // Elimina la sobrescritura del stylebox.
    GetNode<Button>("MyButton").RemoveThemeStyleboxOverride("normal");



.. rst-class:: classref-item-separator

----

.. _class_Control_method_begin_bulk_theme_override:

.. rst-class:: classref-method

|void| **begin_bulk_theme_override**\ (\ ) :ref:`🔗<class_Control_method_begin_bulk_theme_override>`

Evita que los métodos ``*_theme_*_override`` emitan :ref:`NOTIFICATION_THEME_CHANGED<class_Control_constant_NOTIFICATION_THEME_CHANGED>` hasta que se llame a :ref:`end_bulk_theme_override()<class_Control_method_end_bulk_theme_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_end_bulk_theme_override:

.. rst-class:: classref-method

|void| **end_bulk_theme_override**\ (\ ) :ref:`🔗<class_Control_method_end_bulk_theme_override>`

Ends a bulk theme override update. See :ref:`begin_bulk_theme_override()<class_Control_method_begin_bulk_theme_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_next_valid_focus:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_next_valid_focus**\ (\ ) |const| :ref:`🔗<class_Control_method_find_next_valid_focus>`

Encuentra el siguiente **Control** (debajo en el árbol) que puede recibir el foco.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_prev_valid_focus:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_prev_valid_focus**\ (\ ) |const| :ref:`🔗<class_Control_method_find_prev_valid_focus>`

Finds the previous (above in the tree) **Control** that can receive the focus.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_valid_focus_neighbor:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_valid_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_find_valid_focus_neighbor>`

Busca el siguiente **Control** que puede recibir el foco en el :ref:`Side<enum_@GlobalScope_Side>` especificado.

\ **Nota:** Esto es diferente de :ref:`get_focus_neighbor()<class_Control_method_get_focus_neighbor>`, que devuelve la ruta (path) de un vecino de foco especificado.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_force_drag:

.. rst-class:: classref-method

|void| **force_drag**\ (\ data\: :ref:`Variant<class_Variant>`, preview\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_Control_method_force_drag>`

Fuerza el arrastre y omite :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` y :ref:`set_drag_preview()<class_Control_method_set_drag_preview>` al pasar ``data`` y ``preview``. El arrastre comenzará incluso si el ratón no está sobre este control ni se ha pulsado en él.

Los métodos :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` y :ref:`_drop_data()<class_Control_private_method__drop_data>` deben implementarse en los controles que deseen recibir datos de soltado.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_anchor:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_anchor>`

Devuelve el anclaje para el :ref:`Side<enum_@GlobalScope_Side>` especificado. Un método getter para :ref:`anchor_bottom<class_Control_property_anchor_bottom>`, :ref:`anchor_left<class_Control_property_anchor_left>`, :ref:`anchor_right<class_Control_property_anchor_right>` y :ref:`anchor_top<class_Control_property_anchor_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_begin:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_begin**\ (\ ) |const| :ref:`🔗<class_Control_method_get_begin>`

Returns :ref:`offset_left<class_Control_property_offset_left>` and :ref:`offset_top<class_Control_property_offset_top>`. See also :ref:`position<class_Control_property_position>`.

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

Devuelve el valor combinado de :ref:`pivot_offset<class_Control_property_pivot_offset>` y :ref:`pivot_offset_ratio<class_Control_property_pivot_offset_ratio>`, en píxeles. El tamaño del control se multiplica por el ratio.

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

Devuelve :ref:`offset_right<class_Control_property_offset_right>` y :ref:`offset_bottom<class_Control_property_offset_bottom>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_focus_mode_with_override:

.. rst-class:: classref-method

:ref:`FocusMode<enum_Control_FocusMode>` **get_focus_mode_with_override**\ (\ ) |const| :ref:`🔗<class_Control_method_get_focus_mode_with_override>`

Devuelve el :ref:`focus_mode<class_Control_property_focus_mode>`, pero tiene en cuenta el :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>`. Si :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` está establecido en :ref:`FOCUS_BEHAVIOR_DISABLED<class_Control_constant_FOCUS_BEHAVIOR_DISABLED>`, o está establecido en :ref:`FOCUS_BEHAVIOR_INHERITED<class_Control_constant_FOCUS_BEHAVIOR_INHERITED>` y su antecesor está establecido en :ref:`FOCUS_BEHAVIOR_DISABLED<class_Control_constant_FOCUS_BEHAVIOR_DISABLED>`, entonces esto devuelve :ref:`FOCUS_NONE<class_Control_constant_FOCUS_NONE>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_focus_neighbor:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_focus_neighbor>`

Devuelve el vecino de foco para el :ref:`Side<enum_@GlobalScope_Side>` especificado. Un método getter para :ref:`focus_neighbor_bottom<class_Control_property_focus_neighbor_bottom>`, :ref:`focus_neighbor_left<class_Control_property_focus_neighbor_left>`, :ref:`focus_neighbor_right<class_Control_property_focus_neighbor_right>` y :ref:`focus_neighbor_top<class_Control_property_focus_neighbor_top>`.

\ **Nota:** Para encontrar el siguiente **Control** en el :ref:`Side<enum_@GlobalScope_Side>` específico, incluso si no se ha asignado un vecino, usa :ref:`find_valid_focus_neighbor()<class_Control_method_find_valid_focus_neighbor>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_global_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_global_rect**\ (\ ) |const| :ref:`🔗<class_Control_method_get_global_rect>`

Devuelve la posición y el tamaño del control en relación con el lienzo que lo contiene. Véase :ref:`global_position<class_Control_property_global_position>` y :ref:`size<class_Control_property_size>`.

\ **Nota:** Si el propio nodo o cualquier :ref:`CanvasItem<class_CanvasItem>` padre entre el nodo y el lienzo tienen una rotación o inclinación no predeterminada, el tamaño resultante probablemente no sea significativo.

\ **Nota:** Establecer :ref:`Viewport.gui_snap_controls_to_pixels<class_Viewport_property_gui_snap_controls_to_pixels>` a ``true`` puede dar lugar a imprecisiones de redondeo entre el control visualizado y el :ref:`Rect2<class_Rect2>` devuelto.

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

Devuelve el tamaño mínimo para este control. Véase :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_mouse_filter_with_override:

.. rst-class:: classref-method

:ref:`MouseFilter<enum_Control_MouseFilter>` **get_mouse_filter_with_override**\ (\ ) |const| :ref:`🔗<class_Control_method_get_mouse_filter_with_override>`

Devuelve el :ref:`mouse_filter<class_Control_property_mouse_filter>`, pero tiene en cuenta el :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>`. Si :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` está establecido en :ref:`MOUSE_BEHAVIOR_DISABLED<class_Control_constant_MOUSE_BEHAVIOR_DISABLED>`, o está establecido en :ref:`MOUSE_BEHAVIOR_INHERITED<class_Control_constant_MOUSE_BEHAVIOR_INHERITED>` y su antecesor está establecido en :ref:`MOUSE_BEHAVIOR_DISABLED<class_Control_constant_MOUSE_BEHAVIOR_DISABLED>`, entonces esto devuelve :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_offset>`

Devuelve el offset para el :ref:`Side<enum_@GlobalScope_Side>` especificado. Un método getter para :ref:`offset_bottom<class_Control_property_offset_bottom>`, :ref:`offset_left<class_Control_property_offset_left>`, :ref:`offset_right<class_Control_property_offset_right>` y :ref:`offset_top<class_Control_property_offset_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_parent_area_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_parent_area_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_parent_area_size>`

Devuelve la anchura/altura ocupada en el control parental.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_parent_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_parent_control**\ (\ ) |const| :ref:`🔗<class_Control_method_get_parent_control>`

Devuelve el nodo de control del padre.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Control_method_get_rect>`

Devuelve la posición y el tamaño del control en el sistema de coordenadas del nodo que lo contiene. Véase :ref:`position<class_Control_property_position>`, :ref:`scale<class_Control_property_scale>` y :ref:`size<class_Control_property_size>`.

\ **Nota:** Si :ref:`rotation<class_Control_property_rotation>` no es la rotación predeterminada, el tamaño resultante no es significativo.

\ **Nota:** Establecer :ref:`Viewport.gui_snap_controls_to_pixels<class_Viewport_property_gui_snap_controls_to_pixels>` a ``true`` puede provocar imprecisiones de redondeo entre el control mostrado y el :ref:`Rect2<class_Rect2>` devuelto.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_screen_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_screen_position**\ (\ ) |const| :ref:`🔗<class_Control_method_get_screen_position>`

Devuelve la posición de este **Control** en coordenadas globales de pantalla (es decir, teniendo en cuenta la posición de la ventana). Es útil principalmente para complementos (plugins) del editor.

Equivale a ``get_screen_transform().origin`` (ver :ref:`CanvasItem.get_screen_transform()<class_CanvasItem_method_get_screen_transform>`).

\ **Ejemplo:** Mostrar un menú emergente (popup) en la posición del ratón:

::

    popup_menu.position = get_screen_position() + get_screen_transform().basis_xform(get_local_mouse_position())

    # El código anterior es equivalente a:
    popup_menu.position = get_screen_transform() * get_local_mouse_position()

    popup_menu.reset_size()
    popup_menu.popup()

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_theme_color**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_color>`

Devuelve un :ref:`Color<class_Color>` del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un elemento de color con el ``name`` y ``theme_type`` especificados. Si se omite ``theme_type``, se utiliza el nombre de clase del control actual como tipo, o :ref:`theme_type_variation<class_Control_property_theme_type_variation>` si está definido. Si el tipo es un nombre de clase, también se comprueban sus clases padre, en orden de herencia. Si el tipo es una variación, se comprueban sus tipos base, en orden de dependencia, luego el nombre de clase del control y sus clases padre.

Para el control actual, primero se consideran sus sobrescrituras locales (ver :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>`), luego su :ref:`theme<class_Control_property_theme>` asignado. Después del control actual, se considera cada control padre y su :ref:`theme<class_Control_property_theme>` asignado; los controles sin un :ref:`theme<class_Control_property_theme>` asignado se omiten. Si no se encuentra ningún :ref:`Theme<class_Theme>` coincidente en el árbol, se utilizan el :ref:`Theme<class_Theme>` personalizado del proyecto (ver :ref:`ProjectSettings.gui/theme/custom<class_ProjectSettings_property_gui/theme/custom>`) y el :ref:`Theme<class_Theme>` por defecto (ver :ref:`ThemeDB<class_ThemeDB>`).


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # Obtiene el color de fuente definido para la clase del Control actual, si existe.
        modulate = get_theme_color("font_color")
        # Obtiene el color de fuente definido para la clase Button.
        modulate = get_theme_color("font_color", "Button")

 .. code-tab:: csharp

    public override void _Ready()
    {
        // Obtiene el color de fuente definido para la clase del Control actual, si existe.
        Modulate = GetThemeColor("font_color");
        // Obtiene el color de fuente definido para la clase Button.
        Modulate = GetThemeColor("font_color", "Button");
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_constant:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_constant**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_constant>`

Devuelve una constante del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un elemento constante con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_base_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_theme_default_base_scale**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_base_scale>`

Devuelve el valor de escala base predeterminado del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un valor :ref:`Theme.default_base_scale<class_Theme_property_default_base_scale>` válido.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para obtener más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_font:

.. rst-class:: classref-method

:ref:`Font<class_Font>` **get_theme_default_font**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_font>`

Devuelve la fuente predeterminada del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un valor :ref:`Theme.default_font<class_Theme_property_default_font>` válido.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para obtener más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_font_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_default_font_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_font_size>`

Devuelve el tamaño de fuente predeterminado del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un valor :ref:`Theme.default_font_size<class_Theme_property_default_font_size>` válido.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para obtener más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_font:

.. rst-class:: classref-method

:ref:`Font<class_Font>` **get_theme_font**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_font>`

Devuelve una :ref:`Font<class_Font>` del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un elemento de fuente con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para obtener más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_font_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_font_size**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_font_size>`

Devuelve un tamaño de fuente del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un elemento de tamaño de fuente con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para obtener más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_theme_icon**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_icon>`

Devuelve un icono del primer :ref:`Theme<class_Theme>` coincidente en el árbol si ese :ref:`Theme<class_Theme>` tiene un elemento de icono con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_stylebox:

.. rst-class:: classref-method

:ref:`StyleBox<class_StyleBox>` **get_theme_stylebox**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_stylebox>`

Returns a :ref:`StyleBox<class_StyleBox>` from the first matching :ref:`Theme<class_Theme>` in the tree if that :ref:`Theme<class_Theme>` has a stylebox item with the specified ``name`` and ``theme_type``.

See :ref:`get_theme_color()<class_Control_method_get_theme_color>` for details.

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

Crea un :ref:`InputEventMouseButton<class_InputEventMouseButton>` que intenta hacer clic en el control. Si el evento es recibido, el control obtiene el foco.


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        grab_click_focus() # Al hacer clic en otro nodo Control, este nodo será clicado en su lugar.

 .. code-tab:: csharp

    public override void _Process(double delta)
    {
        GrabClickFocus(); // Al hacer clic en otro nodo Control, este nodo será clicado en su lugar.
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

Devuelve ``true`` si este es el control enfocado actualmente. Consulta :ref:`focus_mode<class_Control_property_focus_mode>`.

Si ``ignore_hidden_focus`` es ``true``, los controles que tengan su foco oculto siempre devolverán ``false``. El foco oculto ocurre automáticamente cuando los controles obtienen el foco mediante la entrada del ratón, o manualmente usando :ref:`grab_focus()<class_Control_method_grab_focus>` con ``hide_focus`` establecido en ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_color**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_color>`

Devuelve ``true`` si hay un :ref:`Theme<class_Theme>` coincidente en el árbol que tiene un elemento de color con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_color_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_color_override>`

Devuelve ``true`` si hay una sobrescritura local para un :ref:`Color<class_Color>` de tema con el ``name`` especificado en este nodo **Control**.

Véase :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_constant:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_constant**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_constant>`

Devuelve ``true`` si hay un :ref:`Theme<class_Theme>` coincidente en el árbol que tiene un elemento constante con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_constant_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_constant_override>`

Devuelve ``true`` si existe una sobrescritura local para una constante de tema con el ``name`` especificado en este nodo **Control**.

Véase :ref:`add_theme_constant_override()<class_Control_method_add_theme_constant_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_font>`

Devuelve ``true`` si hay un :ref:`Theme<class_Theme>` coincidente en el árbol que tiene un elemento de fuente con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_override>`

Devuelve ``true`` si hay una sobrescritura local para una :ref:`Font<class_Font>` de tema con el ``name`` especificado en este nodo **Control**.

Véase :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_size:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_size**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_size>`

Devuelve ``true`` si hay un :ref:`Theme<class_Theme>` coincidente en el árbol que tiene un elemento de tamaño de fuente con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_size_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_size_override>`

Devuelve ``true`` si hay una sobrescritura local para un tamaño de fuente de tema con el ``name`` especificado en este nodo **Control**.

Véase :ref:`add_theme_font_size_override()<class_Control_method_add_theme_font_size_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_icon:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_icon**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_icon>`

Devuelve ``true`` si hay un :ref:`Theme<class_Theme>` coincidente en el árbol que tiene un elemento de icono con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_icon_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_icon_override>`

Devuelve ``true`` si hay una sobrescritura local para un icono de tema con el ``name`` especificado en este nodo **Control**.

Véase :ref:`add_theme_icon_override()<class_Control_method_add_theme_icon_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_stylebox:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_stylebox**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_stylebox>`

Devuelve ``true`` si hay un :ref:`Theme<class_Theme>` coincidente en el árbol que tiene un elemento de stylebox con el ``name`` y el ``theme_type`` especificados.

Véase :ref:`get_theme_color()<class_Control_method_get_theme_color>` para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_stylebox_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_stylebox_override>`

Devuelve ``true`` si hay una sobrescritura local para un :ref:`StyleBox<class_StyleBox>` de tema con el ``name`` especificado en este nodo **Control**.

Véase :ref:`add_theme_stylebox_override()<class_Control_method_add_theme_stylebox_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_is_drag_successful:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_drag_successful**\ (\ ) |const| :ref:`🔗<class_Control_method_is_drag_successful>`

Devuelve ``true`` si una operación de arrastre es exitosa. Alternativa a :ref:`Viewport.gui_is_drag_successful()<class_Viewport_method_gui_is_drag_successful>`.

Mejor usado con :ref:`Node.NOTIFICATION_DRAG_END<class_Node_constant_NOTIFICATION_DRAG_END>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_is_layout_rtl:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_layout_rtl**\ (\ ) |const| :ref:`🔗<class_Control_method_is_layout_rtl>`

Devuelve ``true`` si el diseño es de derecha a izquierda. Véase también :ref:`layout_direction<class_Control_property_layout_direction>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_release_focus:

.. rst-class:: classref-method

|void| **release_focus**\ (\ ) :ref:`🔗<class_Control_method_release_focus>`

Give up the focus. No other control will be able to receive input.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_color_override:

.. rst-class:: classref-method

|void| **remove_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_color_override>`

Elimina una anulación local para un :ref:`Color<class_Color>` del tema con el ``name`` especificado, añadido previamente mediante :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>` o a través del panel del Inspector.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_constant_override:

.. rst-class:: classref-method

|void| **remove_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_constant_override>`

Elimina una sobrescritura local para una constante de tema con el ``name`` especificado, previamente añadida por :ref:`add_theme_constant_override()<class_Control_method_add_theme_constant_override>` o a través del dock Inspector.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_font_override:

.. rst-class:: classref-method

|void| **remove_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_font_override>`

Elimina una sobrescritura local para una :ref:`Font<class_Font>` de tema con el ``name`` especificado, previamente añadida por :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>` o a través del dock Inspector.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_font_size_override:

.. rst-class:: classref-method

|void| **remove_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_font_size_override>`

Elimina una sobrescritura local para un tamaño de fuente de tema con el ``name`` especificado, previamente añadido por :ref:`add_theme_font_size_override()<class_Control_method_add_theme_font_size_override>` o a través del dock Inspector.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_icon_override:

.. rst-class:: classref-method

|void| **remove_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_icon_override>`

Removes a local override for a theme icon with the specified ``name`` previously added by :ref:`add_theme_icon_override()<class_Control_method_add_theme_icon_override>` or via the Inspector dock.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_stylebox_override:

.. rst-class:: classref-method

|void| **remove_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_stylebox_override>`

Elimina una sobrescritura local para un :ref:`StyleBox<class_StyleBox>` de tema con el ``name`` especificado, previamente añadido por :ref:`add_theme_stylebox_override()<class_Control_method_add_theme_stylebox_override>` o a través del dock Inspector.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_reset_size:

.. rst-class:: classref-method

|void| **reset_size**\ (\ ) :ref:`🔗<class_Control_method_reset_size>`

Restablece el tamaño a :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>`. Esto equivale a llamar a ``set_size(Vector2())`` (o cualquier tamaño por debajo del mínimo).

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchor:

.. rst-class:: classref-method

|void| **set_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, keep_offset\: :ref:`bool<class_bool>` = false, push_opposite_anchor\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Control_method_set_anchor>`

Establece el anclaje para el :ref:`Side<enum_@GlobalScope_Side>` especificado en ``anchor``. Un método setter para :ref:`anchor_bottom<class_Control_property_anchor_bottom>`, :ref:`anchor_left<class_Control_property_anchor_left>`, :ref:`anchor_right<class_Control_property_anchor_right>` y :ref:`anchor_top<class_Control_property_anchor_top>`.

Si ``keep_offset`` es ``true``, los offsets no se actualizarán después de esta operación.

Si ``push_opposite_anchor`` es ``true`` y el anclaje opuesto se superpone a este anclaje, el opuesto tendrá su valor sobrescrito. Por ejemplo, al establecer el anclaje izquierdo en 1 y el anclaje derecho tiene un valor de 0.5, el anclaje derecho también obtendrá un valor de 1. Si ``push_opposite_anchor`` fuera ``false``, el anclaje izquierdo obtendría el valor 0.5.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchor_and_offset:

.. rst-class:: classref-method

|void| **set_anchor_and_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, offset\: :ref:`float<class_float>`, push_opposite_anchor\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_anchor_and_offset>`

Funciona igual que :ref:`set_anchor()<class_Control_method_set_anchor>`, pero en lugar del argumento ``keep_offset`` y la actualización automática del dessplazamiento, te permite establecer el desplazamiento tú mismo (véase :ref:`set_offset()<class_Control_method_set_offset>`).

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchors_and_offsets_preset:

.. rst-class:: classref-method

|void| **set_anchors_and_offsets_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Control_method_set_anchors_and_offsets_preset>`

Establece tanto el preset del ancla como el preset del desplazamiento. Véase :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` y :ref:`set_offsets_preset()<class_Control_method_set_offsets_preset>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchors_preset:

.. rst-class:: classref-method

|void| **set_anchors_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_anchors_preset>`

Establece los anclajes a un ``preset`` del enum :ref:`LayoutPreset<enum_Control_LayoutPreset>`. Esto es el equivalente en código a usar el menú de Layout en el editor 2D.

Si ``keep_offsets`` es ``true``, la posición del control también se actualizará.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_begin:

.. rst-class:: classref-method

|void| **set_begin**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Control_method_set_begin>`

Establece :ref:`offset_left<class_Control_property_offset_left>` y :ref:`offset_top<class_Control_property_offset_top>` al mismo tiempo. Equivale a cambiar :ref:`position<class_Control_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_drag_forwarding:

.. rst-class:: classref-method

|void| **set_drag_forwarding**\ (\ drag_func\: :ref:`Callable<class_Callable>`, can_drop_func\: :ref:`Callable<class_Callable>`, drop_func\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Control_method_set_drag_forwarding>`

Establece los callables dados para ser usados en lugar de los métodos virtuales de arrastrar y soltar propios del control. Si un callable está vacío, su respectivo método virtual se usa de forma normal.

Los argumentos para cada callable deben ser exactamente los mismos que sus respectivos métodos virtuales, que serían:

- ``drag_func`` corresponde a :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` y requiere un :ref:`Vector2<class_Vector2>`;

- ``can_drop_func`` corresponde a :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` y requiere tanto un :ref:`Vector2<class_Vector2>` como un :ref:`Variant<class_Variant>`;

- ``drop_func`` corresponde a :ref:`_drop_data()<class_Control_private_method__drop_data>` y requiere tanto un :ref:`Vector2<class_Vector2>` como un :ref:`Variant<class_Variant>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_drag_preview:

.. rst-class:: classref-method

|void| **set_drag_preview**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_Control_method_set_drag_preview>`

Muestra el control dado en la posición del puntero del ratón. Un buen momento para llamar a este método es en :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>`. El control no debe estar en el árbol de escenas. No debes liberar (free) el control, y no debes mantener una referencia al mismo más allá de la duración del arrastre. Se eliminará automáticamente una vez que el arrastre haya terminado.


.. tabs::

 .. code-tab:: gdscript

    @export var color = Color(1, 0, 0, 1)

    func _get_drag_data(position):
        # Use un control que no esté en el árbol
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
        // Use un control que no esté en el árbol
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

Establece :ref:`offset_right<class_Control_property_offset_right>` y :ref:`offset_bottom<class_Control_property_offset_bottom>` al mismo tiempo.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_focus_neighbor:

.. rst-class:: classref-method

|void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_Control_method_set_focus_neighbor>`

Establece el vecino de enfoque para el :ref:`Side<enum_@GlobalScope_Side>` especificado en la ruta de nodo ``neighbor`` del **Control**. Es un método setter para :ref:`focus_neighbor_bottom<class_Control_property_focus_neighbor_bottom>`, :ref:`focus_neighbor_left<class_Control_property_focus_neighbor_left>`, :ref:`focus_neighbor_right<class_Control_property_focus_neighbor_right>` y :ref:`focus_neighbor_top<class_Control_property_focus_neighbor_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_global_position:

.. rst-class:: classref-method

|void| **set_global_position**\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_global_position>`

Establece la :ref:`global_position<class_Control_property_global_position>` a la ``position`` dada.

Si ``keep_offsets`` es ``true``, los anclajes del control se actualizarán en lugar de los desplazamientos.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_offset:

.. rst-class:: classref-method

|void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Control_method_set_offset>`

Establece el offset para el :ref:`Side<enum_@GlobalScope_Side>` especificado en ``offset``. Un método setter para :ref:`offset_bottom<class_Control_property_offset_bottom>`, :ref:`offset_left<class_Control_property_offset_left>`, :ref:`offset_right<class_Control_property_offset_right>` y :ref:`offset_top<class_Control_property_offset_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_offsets_preset:

.. rst-class:: classref-method

|void| **set_offsets_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Control_method_set_offsets_preset>`

Establece los offsets a un ``preset`` del enum :ref:`LayoutPreset<enum_Control_LayoutPreset>`. Esto es el equivalente en código a usar el menú de Layout en el editor 2D.

Usa el parámetro ``resize_mode`` con constantes del enum :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` para determinar mejor el tamaño resultante del **Control**. El tamaño constante será ignorado si se usa con presets que cambian el tamaño, p. ej. :ref:`PRESET_LEFT_WIDE<class_Control_constant_PRESET_LEFT_WIDE>`.

Usa el parámetro ``margin`` para determinar el espacio entre el **Control** y los bordes.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_position:

.. rst-class:: classref-method

|void| **set_position**\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_position>`

Establece la :ref:`position<class_Control_property_position>` a la ``position`` dada.

Si ``keep_offsets`` es ``true``, los anclajes del control se actualizarán en lugar de los desplazamientos.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_size:

.. rst-class:: classref-method

|void| **set_size**\ (\ size\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_size>`

Establece el tamaño (véase :ref:`size<class_Control_property_size>`).

Si ``keep_offsets`` es ``true``, los anclajes del control se actualizarán en lugar de los desplazamientos.

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

Mueve el cursor del ratón a ``position``, relativo a :ref:`position<class_Control_property_position>` de este **Control**.

\ **Nota:** :ref:`warp_mouse()<class_Control_method_warp_mouse>` solo es compatible con Windows, macOS y Linux. No tiene ningún efecto en Android, iOS y Web.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
