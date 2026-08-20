:github_url: hide

.. _class_Control:

Control
=======

**Eredita:** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`BaseButton<class_BaseButton>`, :ref:`ColorRect<class_ColorRect>`, :ref:`Container<class_Container>`, :ref:`GraphEdit<class_GraphEdit>`, :ref:`ItemList<class_ItemList>`, :ref:`Label<class_Label>`, :ref:`LineEdit<class_LineEdit>`, :ref:`MenuBar<class_MenuBar>`, :ref:`NinePatchRect<class_NinePatchRect>`, :ref:`Panel<class_Panel>`, :ref:`Range<class_Range>`, :ref:`ReferenceRect<class_ReferenceRect>`, :ref:`RichTextLabel<class_RichTextLabel>`, :ref:`Separator<class_Separator>`, :ref:`TabBar<class_TabBar>`, :ref:`TextEdit<class_TextEdit>`, :ref:`TextureRect<class_TextureRect>`, :ref:`Tree<class_Tree>`, :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`, :ref:`VirtualJoystick<class_VirtualJoystick>`

Classe di base per tutti i controlli della GUI. Adatta la sua posizione e dimensioni in base al suo controllo padre.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Classe base per tutti i nodi riguardanti l'interfaccia utente. **Control** presenta un rettangolo di delimitazione che definisce le sue estensioni, una posizione di ancoraggio relativa al suo controllo padre o alla viewport attuale e offset relativi all'ancoraggio. Gli offset si aggiornano automaticamente quando il nodo, uno qualsiasi dei suoi genitori o le dimensioni dello schermo cambiano.

Per ulteriori informazioni sul sistema di interfaccia utente di Godot, ancore, offset e contenitori, consulta i tutorial al riguardo nel manuale. Per creare interfacce utente flessibili, avrai bisogno di un misto di elementi dell'UI che ereditano dai nodi **Control** e :ref:`Container<class_Container>`.

\ **Nota:** Poiché sia :ref:`Node2D<class_Node2D>` sia **Control** ereditano da :ref:`CanvasItem<class_CanvasItem>`, essi condividono diversi concetti della classe come le proprietà :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` e :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

\ **Nodi e input per l'interfaccia utente**\ 

Godot propaga gli eventi di input tramite le viewport. Ogni :ref:`Viewport<class_Viewport>` è responsabile della propagazione degli :ref:`InputEvent<class_InputEvent>` ai propri nodi figlio. Poiché :ref:`SceneTree.root<class_SceneTree_property_root>` è una :ref:`Window<class_Window>`, ciò avviene automaticamente per tutti gli elementi dell'UI nel tuo gioco.

Gli eventi di input vengono propagati tramite :ref:`SceneTree<class_SceneTree>` dal nodo radice a tutti i nodi figlio chiamando :ref:`Node._input()<class_Node_private_method__input>`. Per gli elementi UI in particolare, ha più senso sovrascrivere il metodo virtuale :ref:`_gui_input()<class_Control_private_method__gui_input>`, che filtra gli eventi di input non correlati, ad esempio verificando l'ordine z, :ref:`mouse_filter<class_Control_property_mouse_filter>`, focus o se l'evento era all'interno del riquadro di delimitazione del controllo.

Chiama :ref:`accept_event()<class_Control_method_accept_event>` in modo che nessun altro nodo riceva l'evento. Una volta accettato un input, questo viene gestito in modo che :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` non lo elabori.

Solo un nodo **Control** può essere in focus. Solo il nodo in focus riceverà gli eventi. Per ottenere il focus, chiama :ref:`grab_focus()<class_Control_method_grab_focus>`. I nodi **Control** perdono il focus quando un altro nodo lo ottiene o se nascondi il nodo in focus. Imposta :ref:`mouse_filter<class_Control_property_mouse_filter>` su :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` per dire a un nodo **Control** di ignorare gli eventi del mouse o di tocco. Ne avrai bisogno se posizioni un'icona sopra un pulsante.

Imposta :ref:`mouse_filter<class_Control_property_mouse_filter>` su :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` per dire a un nodo **Control** di ignorare gli eventi del mouse o di tocco. Sarà necessario se si posiziona un'icona sopra un pulsante.

Le risorse :ref:`Theme<class_Theme>` cambiano l'aspetto del Control. Il :ref:`theme<class_Control_property_theme>` di un **Control** influisce su tutti i suoi figli diretti e indiretti (purché una catena di controlli non sia interrotta). Per sovrascrivere alcuni elementi del tema, chiama uno dei metodi ``add_theme_*_override``, come :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>`. È possibile anche sovrascrivere elementi del tema nell'Ispettore.

\ **Nota:** Gli elementi del tema *non* sono proprietà :ref:`Object<class_Object>`. Ciò significa che non è possibile accedere ai loro valori attraverso :ref:`Object.get()<class_Object_method_get>` e :ref:`Object.set()<class_Object_method_set>`. Invece, usa i metodi ``get_theme_*`` e ``add_theme_*_override`` forniti da questa classe.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice di documentazione GUI <../tutorials/ui/index>`

- :doc:`Disegno personalizzato in 2D <../tutorials/2d/custom_drawing_in_2d>`

- :doc:`Galleria dei nodi di controllo <../tutorials/ui/control_node_gallery>`

- :doc:`Risoluzioni multiple <../tutorials/rendering/multiple_resolutions>`

- `Tutte le demo d'interfaccia grafica <https://github.com/godotengine/godot-demo-projects/tree/master/gui>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
------------

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

Segnali
--------------

.. _class_Control_signal_focus_entered:

.. rst-class:: classref-signal

**focus_entered**\ (\ ) :ref:`🔗<class_Control_signal_focus_entered>`

Emesso quando il nodo ottiene il focus.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_focus_exited:

.. rst-class:: classref-signal

**focus_exited**\ (\ ) :ref:`🔗<class_Control_signal_focus_exited>`

Emesso quando il nodo perde il focus.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_gui_input:

.. rst-class:: classref-signal

**gui_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_Control_signal_gui_input>`

Emesso quando il nodo riceve un :ref:`InputEvent<class_InputEvent>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_maximum_size_changed:

.. rst-class:: classref-signal

**maximum_size_changed**\ (\ ) :ref:`🔗<class_Control_signal_maximum_size_changed>`

Emesso quando le dimensioni massime del nodo cambiano.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_minimum_size_changed:

.. rst-class:: classref-signal

**minimum_size_changed**\ (\ ) :ref:`🔗<class_Control_signal_minimum_size_changed>`

Emesso quando le dimensioni minime del nodo cambiano.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_mouse_entered:

.. rst-class:: classref-signal

**mouse_entered**\ (\ ) :ref:`🔗<class_Control_signal_mouse_entered>`

Emesso quando il cursore del mouse entra nell'area visibile del controllo (o di qualsiasi controllo figlio), che non è coperta dietro altri controlli o finestre, a condizione che il suo :ref:`mouse_filter<class_Control_property_mouse_filter>` consenta all'evento di raggiungerlo e a prescindere dal fatto che sia attualmente focalizzato o meno.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` non influisce sul controllo che riceve il segnale.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_mouse_exited:

.. rst-class:: classref-signal

**mouse_exited**\ (\ ) :ref:`🔗<class_Control_signal_mouse_exited>`

Emesso quando il cursore del mouse esce dall'area visibile del controllo (o di qualsiasi controllo figlio), che non è coperta dietro altri controlli o finestre, a condizione che il suo :ref:`mouse_filter<class_Control_property_mouse_filter>` consenta all'evento di raggiungerlo e a prescindere dal fatto che sia attualmente focalizzato o meno.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` non influenza quale Controllo riceve il segnale.

\ **Nota:** Se vuoi verificare se il mouse ha davvero lasciato l'area, ignorando tutti i nodi superiori, puoi usare codice come questo:

::

    func _on_mouse_exited():
        if not Rect2(Vector2(), size).has_point(get_local_mouse_position()):
            # Non sta passando su quest'area.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_resized:

.. rst-class:: classref-signal

**resized**\ (\ ) :ref:`🔗<class_Control_signal_resized>`

Emesso quando il controllo cambia di dimensioni.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_size_flags_changed:

.. rst-class:: classref-signal

**size_flags_changed**\ (\ ) :ref:`🔗<class_Control_signal_size_flags_changed>`

Emesso quando cambia uno dei flag di dimensione. Vedi :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` e :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_signal_theme_changed:

.. rst-class:: classref-signal

**theme_changed**\ (\ ) :ref:`🔗<class_Control_signal_theme_changed>`

Emesso quando la notifica :ref:`NOTIFICATION_THEME_CHANGED<class_Control_constant_NOTIFICATION_THEME_CHANGED>` viene inviata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Control_FocusMode:

.. rst-class:: classref-enumeration

enum **FocusMode**: :ref:`🔗<enum_Control_FocusMode>`

.. _class_Control_constant_FOCUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_NONE** = ``0``

Il nodo non può catturare il focus. Da utilizzare con :ref:`focus_mode<class_Control_property_focus_mode>`.

.. _class_Control_constant_FOCUS_CLICK:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_CLICK** = ``1``

Il nodo può catturare il focus solo tramite i clic del mouse. Da utilizzare con :ref:`focus_mode<class_Control_property_focus_mode>`.

.. _class_Control_constant_FOCUS_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_ALL** = ``2``

Il nodo può catturare il focus con un clic del mouse, usando le frecce e i tasti Tab sulla tastiera, o usando i pulsanti del D-pad su un gamepad. Da usare con :ref:`focus_mode<class_Control_property_focus_mode>`.

.. _class_Control_constant_FOCUS_ACCESSIBILITY:

.. rst-class:: classref-enumeration-constant

:ref:`FocusMode<enum_Control_FocusMode>` **FOCUS_ACCESSIBILITY** = ``3``

Il nodo può catturare il focus solo quando il lettore dello schermo è attivo. Da utilizzare con :ref:`focus_mode<class_Control_property_focus_mode>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_FocusBehaviorRecursive:

.. rst-class:: classref-enumeration

enum **FocusBehaviorRecursive**: :ref:`🔗<enum_Control_FocusBehaviorRecursive>`

.. _class_Control_constant_FOCUS_BEHAVIOR_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_INHERITED** = ``0``

Eredita il :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` dal controllo padre. Se nessun controllo padre è presente, è uguale a :ref:`FOCUS_BEHAVIOR_ENABLED<class_Control_constant_FOCUS_BEHAVIOR_ENABLED>`.

.. _class_Control_constant_FOCUS_BEHAVIOR_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_DISABLED** = ``1``

Impedisce al controllo di ottenere il focus. :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` restituirà :ref:`FOCUS_NONE<class_Control_constant_FOCUS_NONE>`.

.. _class_Control_constant_FOCUS_BEHAVIOR_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **FOCUS_BEHAVIOR_ENABLED** = ``2``

Consente al controllo di ottenere il focus, a seconda di :ref:`focus_mode<class_Control_property_focus_mode>`. Si può utilizzare per ignorare il :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` del padre. :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` restituirà :ref:`focus_mode<class_Control_property_focus_mode>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_MouseBehaviorRecursive:

.. rst-class:: classref-enumeration

enum **MouseBehaviorRecursive**: :ref:`🔗<enum_Control_MouseBehaviorRecursive>`

.. _class_Control_constant_MOUSE_BEHAVIOR_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **MOUSE_BEHAVIOR_INHERITED** = ``0``

Eredita il :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` dal controllo padre. Se nessun controllo padre è presente, è uguale a :ref:`MOUSE_BEHAVIOR_ENABLED<class_Control_constant_MOUSE_BEHAVIOR_ENABLED>`.

.. _class_Control_constant_MOUSE_BEHAVIOR_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **MOUSE_BEHAVIOR_DISABLED** = ``1``

Impedisce al controllo di ricevere gli input del mouse. :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>` restituirà :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`.

.. _class_Control_constant_MOUSE_BEHAVIOR_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **MOUSE_BEHAVIOR_ENABLED** = ``2``

Consente al controllo di ricevere gli input del mouse, a seconda di :ref:`mouse_filter<class_Control_property_mouse_filter>`. Può servire per ignorare il :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` del padre. :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>` restituirà :ref:`mouse_filter<class_Control_property_mouse_filter>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_CursorShape:

.. rst-class:: classref-enumeration

enum **CursorShape**: :ref:`🔗<enum_Control_CursorShape>`

.. _class_Control_constant_CURSOR_ARROW:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_ARROW** = ``0``

Mostra il cursore del mouse del sistema a forma di freccia quando l'utente passa il mouse sul nodo. Da utilizzare con :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>`.

.. _class_Control_constant_CURSOR_IBEAM:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_IBEAM** = ``1``

Mostra il cursore del mouse del sistema a forma di I del sistema quando l'utente passa il mouse sul nodo. Il puntatore a I ha una forma simile a "I". Indica all'utente che può evidenziare o inserire testo.

.. _class_Control_constant_CURSOR_POINTING_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_POINTING_HAND** = ``2``

Mostra il cursore del mouse del sistema a forma di mano che punta quando l'utente passa il mouse sul nodo.

.. _class_Control_constant_CURSOR_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_CROSS** = ``3``

Mostra il cursore del mouse del sistema a forma di croce quando l'utente passa il mouse sul nodo.

.. _class_Control_constant_CURSOR_WAIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_WAIT** = ``4``

Mostra il cursore del mouse del sistema di attesa quando l'utente passa il mouse sul nodo. Spesso una clessidra.

.. _class_Control_constant_CURSOR_BUSY:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_BUSY** = ``5``

Mostra il cursore del mouse del sistema occupato quando l'utente passa il mouse sul nodo. Spesso una freccia con una piccola clessidra.

.. _class_Control_constant_CURSOR_DRAG:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_DRAG** = ``6``

Mostra il cursore del mouse del sistema di trascinamento, spesso un pugno chiuso o un simbolo a croce, quando l'utente passa il mouse sul nodo. Comunica all'utente che sta trascinando un elemento, come un nodo nel pannello Scena.

.. _class_Control_constant_CURSOR_CAN_DROP:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_CAN_DROP** = ``7``

Mostra il cursore del mouse del sistema di rilascio quando l'utente passa il mouse sul nodo. Può essere una mano aperta. Indica all'utente che può rilasciare un oggetto che sta afferrando, come un nodo nel pannello Scena.

.. _class_Control_constant_CURSOR_FORBIDDEN:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_FORBIDDEN** = ``8``

Mostra il cursore del mouse del sistema proibito quando l'utente passa il mouse sul nodo. Spesso un cerchio barrato.

.. _class_Control_constant_CURSOR_VSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_VSIZE** = ``9``

Mostra il cursore del mouse del sistema per il ridimensionamento verticale quando l'utente passa il mouse sul nodo. Una freccia verticale a due punte. Indica all'utente che può ridimensionare la finestra o il pannello verticalmente.

.. _class_Control_constant_CURSOR_HSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HSIZE** = ``10``

Mostra il cursore del mouse del sistema per il ridimensionamento orizzontale quando l'utente passa il mouse sul nodo. Una freccia orizzontale a due punte. Indica all'utente che può ridimensionare la finestra o il pannello orizzontale.

.. _class_Control_constant_CURSOR_BDIAGSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_BDIAGSIZE** = ``11``

Mostra il cursore del mouse del sistema per ridimensionare la finestra quando l'utente passa il mouse sul nodo. Il cursore è una freccia a due punte che va dal basso a sinistra all'alto a destra. Indica all'utente che può ridimensionare la finestra o il pannello sia orizzontalmente sia verticalmente.

.. _class_Control_constant_CURSOR_FDIAGSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_FDIAGSIZE** = ``12``

Mostra il cursore del mouse del sistema per ridimensionare la finestra quando l'utente passa il mouse sul nodo. Il cursore è una freccia a due punte che va dall'alto a sinistra al basso a destra. Indica all'utente che può ridimensionare la finestra o il pannello sia orizzontalmente sia verticalmente.

.. _class_Control_constant_CURSOR_MOVE:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_MOVE** = ``13``

Mostra il cursore del mouse del sistema di movimento quando l'utente passa il mouse sul nodo. Mostra 2 frecce a doppia punta a un angolo di 90 gradi. Indica all'utente che può spostare liberamente un elemento dell'interfaccia utente.

.. _class_Control_constant_CURSOR_VSPLIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_VSPLIT** = ``14``

Mostra il cursore del mouse del sistema con un separatore verticale quando l'utente passa il mouse sul nodo. Su Windows, è uguale a :ref:`CURSOR_VSIZE<class_Control_constant_CURSOR_VSIZE>`.

.. _class_Control_constant_CURSOR_HSPLIT:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HSPLIT** = ``15``

Mostra il cursore del mouse del sistema con un separatore orizzontale quando l'utente passa il mouse sul nodo. Su Windows, è uguale a :ref:`CURSOR_HSIZE<class_Control_constant_CURSOR_HSIZE>`.

.. _class_Control_constant_CURSOR_HELP:

.. rst-class:: classref-enumeration-constant

:ref:`CursorShape<enum_Control_CursorShape>` **CURSOR_HELP** = ``16``

Mostra il cursore del mouse del sistema di guida quando l'utente passa il mouse sul nodo, un punto interrogativo.

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutPreset:

.. rst-class:: classref-enumeration

enum **LayoutPreset**: :ref:`🔗<enum_Control_LayoutPreset>`

.. _class_Control_constant_PRESET_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_LEFT** = ``0``

Aggancia tutti e 4 gli ancoraggi in alto a sinistra dei limiti del controllo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_TOP_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_RIGHT** = ``1``

Aggancia tutti e 4 gli ancoraggi in alto a destra dei limiti del controllo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_BOTTOM_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_LEFT** = ``2``

Aggancia tutti e 4 gli ancoraggi in basso a sinistra dei limiti del controllo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_BOTTOM_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_RIGHT** = ``3``

Aggancia tutti e 4 gli ancoraggi in basso a destra dei limiti del controllo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_LEFT** = ``4``

Aggancia tutti e 4 gli ancoraggi al centro del bordo sinistro dei limiti del controllo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_TOP** = ``5``

Aggancia tutti e 4 gli ancoraggi al centro del bordo superiore dei limiti del controllo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_RIGHT** = ``6``

Aggancia tutti e 4 gli ancoraggi al centro del bordo destro dei limiti del controllo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER_BOTTOM** = ``7``

Aggancia tutti e 4 gli ancoraggi al centro del bordo inferiore dei limiti del controllo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_CENTER** = ``8``

Aggancia tutti e 4 gli ancoraggi al centro dei limiti del controllo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_LEFT_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_LEFT_WIDE** = ``9``

Aggancia tutti e 4 gli ancoraggi al lato sinistro del controllo padre. L'offset sinistro diventa relativo al bordo sinistro e l'offset superiore relativo all'angolo in alto a sinistra del nodo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_TOP_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_TOP_WIDE** = ``10``

Aggancia tutti e 4 gli ancoraggi al lato superiore del controllo padre. L'offset sinistro diventa relativo all'angolo superiore sinistro, l'offset superiore relativo al bordo superiore, e l'offset destro relativo all'angolo superiore destro del nodo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_RIGHT_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_RIGHT_WIDE** = ``11``

Aggancia tutti e 4 gli ancoraggi al lato destro del controllo padre. L'offset destro diventa relativo al bordo destro e l'offset superiore relativo all'angolo superiore destro del nodo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_BOTTOM_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_BOTTOM_WIDE** = ``12``

Aggancia tutti e 4 gli ancoraggi al lato superiore del controllo padre. L'offset sinistro diventa relativo all'angolo inferiore sinistro, l'offset inferiore relativo al bordo inferiore, e l'offset destro relativo all'angolo inferiore destro del nodo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_VCENTER_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_VCENTER_WIDE** = ``13``

Aggancia tutti e 4 gli ancoraggi su una linea verticale che taglia a metà il controllo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_HCENTER_WIDE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_HCENTER_WIDE** = ``14``

Aggancia tutti e 4 gli ancoraggi su una linea orizzontale che taglia a metà il controllo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_PRESET_FULL_RECT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPreset<enum_Control_LayoutPreset>` **PRESET_FULL_RECT** = ``15``

Aggancia tutti e 4 gli ancoraggi ai rispettivi angoli del controllo padre. Imposta tutti e 4 gli offset a 0 dopo aver applicato questo preset e il **Control** si adatterà al suo controllo padre. Da utilizzare con :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutPresetMode:

.. rst-class:: classref-enumeration

enum **LayoutPresetMode**: :ref:`🔗<enum_Control_LayoutPresetMode>`

.. _class_Control_constant_PRESET_MODE_MINSIZE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_MINSIZE** = ``0``

Il controllo sarà ridimensionato alla sua dimensione minima.

.. _class_Control_constant_PRESET_MODE_KEEP_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_WIDTH** = ``1``

La larghezza del controllo non cambierà.

.. _class_Control_constant_PRESET_MODE_KEEP_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_HEIGHT** = ``2``

L'altezza del controllo non cambierà.

.. _class_Control_constant_PRESET_MODE_KEEP_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` **PRESET_MODE_KEEP_SIZE** = ``3``

Le dimensioni del controllo non cambieranno.

.. rst-class:: classref-item-separator

----

.. _enum_Control_SizeFlags:

.. rst-class:: classref-enumeration

flags **SizeFlags**: :ref:`🔗<enum_Control_SizeFlags>`

.. _class_Control_constant_SIZE_SHRINK_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_BEGIN** = ``0``

Indica al :ref:`Container<class_Container>` genitore di allineare il nodo con il suo inizio, ossia sul bordo superiore oppure sinistro. È mutuamente esclusivo con :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` e altri flag di restringimento delle dimensioni, ma può essere usato con :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` in alcuni contenitori. Da utilizzare con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` e :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

\ **Nota:** Impostare questo flag equivale a non avere alcun flag di dimensione.

.. _class_Control_constant_SIZE_FILL:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_FILL** = ``1``

Indica al :ref:`Container<class_Container>` genitore di espandere i limiti di questo nodo per riempire tutto lo spazio disponibile senza spingere nessun altro nodo. È mutuamente esclusivo con i flag di riduzione delle dimensioni. Da utilizzare con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` e :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. _class_Control_constant_SIZE_EXPAND:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_EXPAND** = ``2``

Indica al :ref:`Container<class_Container>` genitore di lasciare che questo nodo occupi tutto lo spazio disponibile sull'asse indicato. Se più nodi adiacenti sono impostati per espandersi, condivideranno lo spazio in base al loro rapporto di allungamento. Vedi :ref:`size_flags_stretch_ratio<class_Control_property_size_flags_stretch_ratio>`. Da utilizzare con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` e :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. _class_Control_constant_SIZE_EXPAND_FILL:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_EXPAND_FILL** = ``3``

Imposta i flag di dimensione del nodo su sia "fill" sia "expand". Vedi :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` e :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` per ulteriori informazioni.

.. _class_Control_constant_SIZE_SHRINK_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_CENTER** = ``4``

Indica al :ref:`Container<class_Container>` genitore di centrare il nodo nello spazio disponibile. È mutuamente esclusivo con :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` e altri flag di restringimento delle dimensioni, ma può essere usato con :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` in alcuni contenitori. Da utilizzare con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` e :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. _class_Control_constant_SIZE_SHRINK_END:

.. rst-class:: classref-enumeration-constant

:ref:`SizeFlags<enum_Control_SizeFlags>` **SIZE_SHRINK_END** = ``8``

Indica al :ref:`Container<class_Container>` genitore di allineare il nodo con la sua fine, ossia il bordo inferiore oppure destro. È mutuamente esclusivo con :ref:`SIZE_FILL<class_Control_constant_SIZE_FILL>` e altri flag di restringimento delle dimensioni, ma può essere usato con :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>` in alcuni contenitori. Da utilizzare con :ref:`size_flags_horizontal<class_Control_property_size_flags_horizontal>` e :ref:`size_flags_vertical<class_Control_property_size_flags_vertical>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_MouseFilter:

.. rst-class:: classref-enumeration

enum **MouseFilter**: :ref:`🔗<enum_Control_MouseFilter>`

.. _class_Control_constant_MOUSE_FILTER_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_STOP** = ``0``

Il controllo riceverà eventi di input del movimento del mouse ed eventi di input del pulsante del mouse se cliccato tramite :ref:`_gui_input()<class_Control_private_method__gui_input>`. Il controllo riceverà inoltre i segnali :ref:`mouse_entered<class_Control_signal_mouse_entered>` e :ref:`mouse_exited<class_Control_signal_mouse_exited>`. Questi eventi sono automaticamente contrassegnati come gestiti e non si propagheranno ulteriormente ad altri controlli. Ciò comporta anche al blocco dei segnali in altri controlli.

.. _class_Control_constant_MOUSE_FILTER_PASS:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_PASS** = ``1``

Il controllo riceverà eventi di input del movimento del mouse ed eventi di input del pulsante del mouse se cliccato, attraverso :ref:`_gui_input()<class_Control_private_method__gui_input>`. Il controllo riceverà inoltre i segnali :ref:`mouse_entered<class_Control_signal_mouse_entered>` e :ref:`mouse_exited<class_Control_signal_mouse_exited>`.

Se questo controllo non gestisce l'evento, l'evento verrà propagato al suo controllo genitore, se ne ha uno. L'evento viene propagato verso l'alto nella gerarchia dei nodi finché non raggiunge un nodo che non è :ref:`CanvasItem<class_CanvasItem>`, un controllo con :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>` o un :ref:`CanvasItem<class_CanvasItem>` con :ref:`CanvasItem.top_level<class_CanvasItem_property_top_level>` abilitato. Ciò consentirà l'invio di segnali a tutti i controlli che l'evento raggiunge. Se nessun controllo lo ha gestito, l'evento sarà passato a :ref:`Node._shortcut_input()<class_Node_private_method__shortcut_input>` per un'ulteriore elaborazione.

.. _class_Control_constant_MOUSE_FILTER_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`MouseFilter<enum_Control_MouseFilter>` **MOUSE_FILTER_IGNORE** = ``2``

Il controllo non riceverà eventi di input del movimento del mouse ed eventi di input del pulsante del mouse se cliccato tramite :ref:`_gui_input()<class_Control_private_method__gui_input>`. Il controllo non riceverà nemmeno i segnali :ref:`mouse_entered<class_Control_signal_mouse_entered>` né :ref:`mouse_exited<class_Control_signal_mouse_exited>`. Ciò non impedirà ad altri controlli di ricevere questi eventi o di attivare i lori segnali. Gli eventi ignorati non saranno gestiti automaticamente. Se un figlio ha :ref:`MOUSE_FILTER_PASS<class_Control_constant_MOUSE_FILTER_PASS>` e un evento è stato passato a questo controllo, l'evento verrà ulteriormente propagato fino al genitore del controllo .

\ **Nota:** Se il controllo ha ricevuto :ref:`mouse_entered<class_Control_signal_mouse_entered>` ma non :ref:`mouse_exited<class_Control_signal_mouse_exited>`, la modifica di :ref:`mouse_filter<class_Control_property_mouse_filter>` in :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>` causerà l'emissione di :ref:`mouse_exited<class_Control_signal_mouse_exited>`.

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

Aggancia uno dei 4 lati di ancoraggio all'origine del ``Rect`` del nodo, in alto a sinistra. Usalo con una delle variabili membro ``anchor_*``, come :ref:`anchor_left<class_Control_property_anchor_left>`. Per cambiare tutti e 4 gli ancoraggi alla volta, usa :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. _class_Control_constant_ANCHOR_END:

.. rst-class:: classref-enumeration-constant

:ref:`Anchor<enum_Control_Anchor>` **ANCHOR_END** = ``1``

Aggancia uno dei 4 lati di ancoraggio alla fine del ``Rect`` del nodo, in basso a destra. Usalo con una delle variabili membro ``anchor_*``, come :ref:`anchor_left<class_Control_property_anchor_left>`. Per cambiare tutti e 4 gli ancoraggi alla volta, usa :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>`.

.. rst-class:: classref-item-separator

----

.. _enum_Control_LayoutDirection:

.. rst-class:: classref-enumeration

enum **LayoutDirection**: :ref:`🔗<enum_Control_LayoutDirection>`

.. _class_Control_constant_LAYOUT_DIRECTION_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_INHERITED** = ``0``

Direzione di layout automatica, determinata dalla direzione di layout del controllo padre.

.. _class_Control_constant_LAYOUT_DIRECTION_APPLICATION_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_APPLICATION_LOCALE** = ``1``

Direzione del layout automatica, determinata dalla lingua attuale. La direzione di layout da destra a sinistra viene utilizzata automaticamente per le lingue che la richiedono, come l'arabo e l'ebraico, ma solo se viene caricato un file di traduzione valido per la lingua specificata (a meno che detta lingua non sia configurata come riserva in :ref:`ProjectSettings.internationalization/locale/fallback<class_ProjectSettings_property_internationalization/locale/fallback>`). Per tutte le altre lingue (o se Godot non trova alcun file di traduzione valido), è utilizzata la direzione di layout da sinistra a destra. Se si sta utilizzando :ref:`TextServerFallback<class_TextServerFallback>` (:ref:`ProjectSettings.internationalization/rendering/text_driver<class_ProjectSettings_property_internationalization/rendering/text_driver>`), la direzione di layout da sinistra a destra è sempre utilizzata a prescindere dalla lingua. La direzione di layout da destra a sinistra può anche essere forzata tramite :ref:`ProjectSettings.internationalization/rendering/force_right_to_left_layout_direction<class_ProjectSettings_property_internationalization/rendering/force_right_to_left_layout_direction>`.

.. _class_Control_constant_LAYOUT_DIRECTION_LTR:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_LTR** = ``2``

Direzione di layout da sinistra a destra.

.. _class_Control_constant_LAYOUT_DIRECTION_RTL:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_RTL** = ``3``

Direzione di layout da destra a sinistra.

.. _class_Control_constant_LAYOUT_DIRECTION_SYSTEM_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_SYSTEM_LOCALE** = ``4``

Direzione del layout automatica, determinata dalle impostazioni locali del sistema. La direzione di layout da destra a sinistra è utilizzata automaticamente per le lingue che la richiedono, come l'arabo e l'ebraico, ma solo se è stato caricato un file di traduzione valido per la lingua specificata. Per tutte le altre lingue (o se Godot non trova un file di traduzione valido), è utilizzata la direzione di layout da sinistra a destra. Se si utilizza :ref:`TextServerFallback<class_TextServerFallback>` (:ref:`ProjectSettings.internationalization/rendering/text_driver<class_ProjectSettings_property_internationalization/rendering/text_driver>`), la direzione di layout da sinistra a destra è sempre utilizzata a prescindere dalla lingua.

.. _class_Control_constant_LAYOUT_DIRECTION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_MAX** = ``5``

Rappresenta la dimensione dell'enumerazione :ref:`LayoutDirection<enum_Control_LayoutDirection>`.

.. _class_Control_constant_LAYOUT_DIRECTION_LOCALE:

.. rst-class:: classref-enumeration-constant

:ref:`LayoutDirection<enum_Control_LayoutDirection>` **LAYOUT_DIRECTION_LOCALE** = ``1``

**Deprecato:** Use :ref:`LAYOUT_DIRECTION_APPLICATION_LOCALE<class_Control_constant_LAYOUT_DIRECTION_APPLICATION_LOCALE>` instead.



.. rst-class:: classref-item-separator

----

.. _enum_Control_TextDirection:

.. rst-class:: classref-enumeration

enum **TextDirection**: :ref:`🔗<enum_Control_TextDirection>`

.. _class_Control_constant_TEXT_DIRECTION_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_INHERITED** = ``3``

La direzione di scrittura del testo è la stessa della direzione del layout.

.. _class_Control_constant_TEXT_DIRECTION_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_AUTO** = ``0``

Direzione automatica di scrittura del testo, determinata in base alla lingua attuale e al contenuto del testo.

.. _class_Control_constant_TEXT_DIRECTION_LTR:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_LTR** = ``1``

Direzione di scrittura del testo da sinistra a destra.

.. _class_Control_constant_TEXT_DIRECTION_RTL:

.. rst-class:: classref-enumeration-constant

:ref:`TextDirection<enum_Control_TextDirection>` **TEXT_DIRECTION_RTL** = ``2``

Direzione di scrittura del testo da destra a sinistra.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_Control_constant_NOTIFICATION_RESIZED:

.. rst-class:: classref-constant

**NOTIFICATION_RESIZED** = ``40`` :ref:`🔗<class_Control_constant_NOTIFICATION_RESIZED>`

Inviato quando il nodo cambia dimensioni. Usa :ref:`size<class_Control_property_size>` per ottenere le nuove dimensioni.

.. _class_Control_constant_NOTIFICATION_MOUSE_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_ENTER** = ``41`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_ENTER>`

Inviato quando il cursore del mouse entra nell'area visibile del controllo (o di qualsiasi controllo figlio), che non è coperta dietro altri controlli o finestre, a condizione che il suo :ref:`mouse_filter<class_Control_property_mouse_filter>` consenta all'evento di raggiungerlo e a prescindere dal fatto che sia attualmente focalizzato o meno.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` non influisce sul controllo che riceve il segnale.

Vedi anche :ref:`NOTIFICATION_MOUSE_ENTER_SELF<class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_EXIT** = ``42`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_EXIT>`

Inviato quando il cursore del mouse esce dall'area visibile del controllo (o di qualsiasi controllo figlio), che non è coperta dietro altri controlli o finestre, a condizione che il suo :ref:`mouse_filter<class_Control_property_mouse_filter>` consenta all'evento di raggiungerlo e a prescindere dal fatto che sia attualmente focalizzato o meno.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` non influisce sul controllo che riceve il segnale.

Vedi anche :ref:`NOTIFICATION_MOUSE_EXIT_SELF<class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_ENTER_SELF** = ``60`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_ENTER_SELF>`

**Sperimentale:** The reason this notification is sent may change in the future.

Inviato quando il cursore del mouse entra nell'area visibile del controllo, che non è coperta dietro altri controlli o finestre, a condizione che il suo :ref:`mouse_filter<class_Control_property_mouse_filter>` consenta all'evento di raggiungerlo e a prescindere dal fatto che sia attualmente focalizzato o meno.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` non influisce sul controllo che riceve il segnale.

Vedi anche :ref:`NOTIFICATION_MOUSE_ENTER<class_Control_constant_NOTIFICATION_MOUSE_ENTER>`.

.. _class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF:

.. rst-class:: classref-constant

**NOTIFICATION_MOUSE_EXIT_SELF** = ``61`` :ref:`🔗<class_Control_constant_NOTIFICATION_MOUSE_EXIT_SELF>`

**Sperimentale:** The reason this notification is sent may change in the future.

Inviato quando il cursore del mouse esce dall'area visibile del controllo, che non è coperta dietro altri controlli o finestre, a condizione che il suo :ref:`mouse_filter<class_Control_property_mouse_filter>` consenta all'evento di raggiungerlo e a prescindere dal fatto che sia attualmente focalizzato o meno.

\ **Nota:** :ref:`CanvasItem.z_index<class_CanvasItem_property_z_index>` non influisce sul controllo che riceve il segnale.

Vedi anche :ref:`NOTIFICATION_MOUSE_EXIT<class_Control_constant_NOTIFICATION_MOUSE_EXIT>`.

.. _class_Control_constant_NOTIFICATION_FOCUS_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_FOCUS_ENTER** = ``43`` :ref:`🔗<class_Control_constant_NOTIFICATION_FOCUS_ENTER>`

Inviato quando il nodo cattura il focus.

.. _class_Control_constant_NOTIFICATION_FOCUS_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_FOCUS_EXIT** = ``44`` :ref:`🔗<class_Control_constant_NOTIFICATION_FOCUS_EXIT>`

Inviata quando il nodo perde il focus.

Questa notifica è inviata in ordine inverso.

.. _class_Control_constant_NOTIFICATION_THEME_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_THEME_CHANGED** = ``45`` :ref:`🔗<class_Control_constant_NOTIFICATION_THEME_CHANGED>`

Inviata quando il nodo ha bisogno di aggiornare i suoi elementi di tema. Ciò avviene in uno dei seguenti casi:

- La proprietà :ref:`theme<class_Control_property_theme>` è cambiata su questo nodo o su uno dei suoi antenati.

- La proprietà :ref:`theme_type_variation<class_Control_property_theme_type_variation>` è cambiata su questo nodo.

- Una delle sostituzioni della proprietà del tema del nodo è cambiata.

- Il nodo entra nell'albero di scene.

\ **Nota:** Per un ottimizzazione, questa notifica non verrà inviata da modifiche che si verificano mentre questo nodo è al di fuori dell'albero di scene. Invece, tutti gli aggiornamenti degli elementi del tema possono essere applicati subito quando il nodo entra nell'albero di scene.

\ **Nota:** Questa notifica è ricevuta insieme a :ref:`Node.NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>`, quindi se stai istanziando una scena, i nodi figlio non saranno ancora inizializzati. Puoi usare ciò per impostare il tema per questo nodo, i nodi figlio creati dallo script o, se vuoi accedere ai nodi figlio aggiunti nell'editor, assicurarti che il nodo sia pronto usando :ref:`Node.is_node_ready()<class_Node_method_is_node_ready>`.

::

    func _notification(what):
        if what == NOTIFICATION_THEME_CHANGED:
            if not is_node_ready():
                await ready # Aspetta per il segnale ready.
            $Label.add_theme_color_override("font_color", Color.YELLOW)

.. _class_Control_constant_NOTIFICATION_SCROLL_BEGIN:

.. rst-class:: classref-constant

**NOTIFICATION_SCROLL_BEGIN** = ``47`` :ref:`🔗<class_Control_constant_NOTIFICATION_SCROLL_BEGIN>`

Inviato quando questo nodo si trova all'interno di uno :ref:`ScrollContainer<class_ScrollContainer>` che ha iniziato a scorrere trascinando l'area scorrevole *con un evento di tocco*. Questa notifica *non* viene inviata quando si scorre trascinando la barra di scorrimento, scorrendo con la rotellina del mouse o scorrendo con eventi da tastiera o da gamepad.

\ **Nota:** Questo segnale è emesso solo su Android o iOS, o su piattaforme desktop o web quando :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` è abilitato.

.. _class_Control_constant_NOTIFICATION_SCROLL_END:

.. rst-class:: classref-constant

**NOTIFICATION_SCROLL_END** = ``48`` :ref:`🔗<class_Control_constant_NOTIFICATION_SCROLL_END>`

Inviato quando questo nodo si trova all'interno di uno :ref:`ScrollContainer<class_ScrollContainer>` che ha smesso di scorrere trascinando l'area scorrevole *con un evento di tocco*. Questa notifica *non* viene inviata quando si scorre trascinando la barra di scorrimento, scorrendo con la rotellina del mouse o scorrendo con eventi da tastiera o da gamepad.

\ **Nota:** Questo segnale è emesso solo su Android o iOS, o su piattaforme desktop o web quando :ref:`ProjectSettings.input_devices/pointing/emulate_touch_from_mouse<class_ProjectSettings_property_input_devices/pointing/emulate_touch_from_mouse>` è abilitato.

.. _class_Control_constant_NOTIFICATION_LAYOUT_DIRECTION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_LAYOUT_DIRECTION_CHANGED** = ``49`` :ref:`🔗<class_Control_constant_NOTIFICATION_LAYOUT_DIRECTION_CHANGED>`

Inviata quando la direzione del layout del controllo viene modificata da LTR o RTL, o viceversa. Questa notifica viene propagata ai nodi di controllo figlio come risultato di una modifica a :ref:`layout_direction<class_Control_property_layout_direction>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Control_property_accessibility_controls_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_controls_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_controls_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_controls_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_controls_nodes**\ (\ )

I percorsi ai nodi controllati da questo nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_described_by_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_described_by_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_described_by_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_described_by_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_described_by_nodes**\ (\ )

I percorsi ai nodi che descrivono questo nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **accessibility_description** = ``""`` :ref:`🔗<class_Control_property_accessibility_description>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_description**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_accessibility_description**\ (\ )

La descrizione del nodo leggibile in chiaro che è riportata alle applicazioni assistive.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_flow_to_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_flow_to_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_flow_to_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_flow_to_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_flow_to_nodes**\ (\ )

I percorsi ai nodi in cui fluisce questo nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_labeled_by_nodes:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **accessibility_labeled_by_nodes** = ``[]`` :ref:`🔗<class_Control_property_accessibility_labeled_by_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_labeled_by_nodes**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`NodePath<class_NodePath>`\] **get_accessibility_labeled_by_nodes**\ (\ )

I percorsi ai nodi che etichettano questo nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_live:

.. rst-class:: classref-property

:ref:`AccessibilityLiveMode<enum_AccessibilityServer_AccessibilityLiveMode>` **accessibility_live** = ``0`` :ref:`🔗<class_Control_property_accessibility_live>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_live**\ (\ value\: :ref:`AccessibilityLiveMode<enum_AccessibilityServer_AccessibilityLiveMode>`\ )
- :ref:`AccessibilityLiveMode<enum_AccessibilityServer_AccessibilityLiveMode>` **get_accessibility_live**\ (\ )

La modalità con cui una regione attiva si aggiorna. Una regione attiva è un :ref:`Node<class_Node>` che viene aggiornato in seguito a un evento esterno quando l'attenzione dell'utente potrebbe essere rivolta altrove.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_accessibility_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **accessibility_name** = ``""`` :ref:`🔗<class_Control_property_accessibility_name>`

.. rst-class:: classref-property-setget

- |void| **set_accessibility_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_accessibility_name**\ (\ )

Il nome del nodo leggibile in chiaro che è riportato alle applicazioni assistive.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_bottom** = ``0.0`` :ref:`🔗<class_Control_property_anchor_bottom>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancora il bordo inferiore del nodo all'origine, al centro o alla fine del suo controllo padre. Cambia il modo in cui l'offset inferiore si aggiorna quando il nodo si sposta o cambia dimensione. È possibile usare una delle costanti di :ref:`Anchor<enum_Control_Anchor>` per comodità.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_left** = ``0.0`` :ref:`🔗<class_Control_property_anchor_left>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancora il bordo sinistro del nodo all'origine, al centro o alla fine del suo controllo padre. Cambia il modo in cui l'offset sinistro si aggiorna quando il nodo si sposta o cambia dimensione. È possibile usare una delle costanti di :ref:`Anchor<enum_Control_Anchor>` per comodità.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_right** = ``0.0`` :ref:`🔗<class_Control_property_anchor_right>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancora il bordo destro del nodo all'origine, al centro o alla fine del suo controllo padre. Cambia il modo in cui l'offset destro si aggiorna quando il nodo si sposta o cambia dimensione. È possibile usare una delle costanti di :ref:`Anchor<enum_Control_Anchor>` per comodità.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_anchor_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **anchor_top** = ``0.0`` :ref:`🔗<class_Control_property_anchor_top>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Ancora il bordo superiore del nodo all'origine, al centro o alla fine del suo controllo padre. Cambia il modo in cui l'offset superiore si aggiorna quando il nodo si sposta o cambia dimensione. È possibile usare una delle costanti di :ref:`Anchor<enum_Control_Anchor>` per comodità.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_auto_translate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_translate** :ref:`🔗<class_Control_property_auto_translate>`

.. rst-class:: classref-property-setget

- |void| **set_auto_translate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_translating**\ (\ )

**Deprecato:** Use :ref:`Node.auto_translate_mode<class_Node_property_auto_translate_mode>` and :ref:`Node.can_auto_translate()<class_Node_method_can_auto_translate>` instead.

Commuta la conversione automatica del testo nella sua versione tradotta, a seconda delle impostazioni locali attuali.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_clip_contents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **clip_contents** = ``false`` :ref:`🔗<class_Control_property_clip_contents>`

.. rst-class:: classref-property-setget

- |void| **set_clip_contents**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_clipping_contents**\ (\ )

Abilita se il rendering dei figli basati su :ref:`CanvasItem<class_CanvasItem>` debba essere ritagliato nel rettangolo di questo controllo. Se ``true``, le parti di un figlio che sarebbero visibili al di fuori del rettangolo di questo controllo non saranno renderizzate e non riceveranno gli input.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_custom_maximum_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **custom_maximum_size** = ``Vector2(-1, -1)`` :ref:`🔗<class_Control_property_custom_maximum_size>`

.. rst-class:: classref-property-setget

- |void| **set_custom_maximum_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_custom_maximum_size**\ (\ )

Le dimensioni massime del rettangolo di delimitazione di questo Control. Se impostate su un valore maggiore o uguale a ``(0, 0)``, il rettangolo di delimitazione del nodo non supererà mai queste dimensioni. Un valore inferiore a ``(0, 0)`` indica che ci sono dimensioni massime.

\ **Nota:** Le dimensioni massime effettive finale possono essere soggette alle dimensioni del Container padre e alle dimensioni massime propagate. Vedi anche: :ref:`get_combined_maximum_size()<class_Control_method_get_combined_maximum_size>`.

\ **Nota:** Non tutti i sottotipi di **Control** gestiscono correttamente le dimensioni massime personalizzate, il che potrebbe portare a comportamenti imprevisti se il contenuto del controllo supera queste dimensioni.

\ **Nota:** Questo valore ha la priorità su :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>`. Ad esempio, se si imposta :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` su ``(100, 100)`` e :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` su ``(200, 200)``, le dimensioni risultanti saranno ``(100, 100)``.

\ **Nota:** Si consiglia di usare :ref:`get_bound_minimum_size()<class_Control_method_get_bound_minimum_size>` anziché :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>` quando si usa questa proprietà, poiché il primo rispetta i limiti delle dimensioni massime per calcolare le dimensioni minime, mentre il secondo no.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_custom_minimum_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **custom_minimum_size** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_custom_minimum_size>`

.. rst-class:: classref-property-setget

- |void| **set_custom_minimum_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_custom_minimum_size**\ (\ )

Le dimensioni minime del rettangolo di delimitazione del nodo. Se impostate su un valore maggiore di ``(0, 0)``, il rettangolo di delimitazione del nodo avrà sempre almeno questa dimensioni. Nota che i nodi **Control** hanno le loro dimensioni minime interne restituite da :ref:`get_minimum_size()<class_Control_method_get_minimum_size>`. Dipende dal contenuto del controllo, come testo, texture o stylebox. Le dimensioni minime effettive sono il valore massimo di questa proprietà e le dimensioni minime interne (vedi :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>`).

\ **Nota:** :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` ha la priorità su questa proprietà. Ad esempio, se si imposta :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` su ``(200, 200)`` e :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` su ``(100, 100)``, le dimensioni risultanti saranno ``(100, 100)``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_behavior_recursive:

.. rst-class:: classref-property

:ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **focus_behavior_recursive** = ``0`` :ref:`🔗<class_Control_property_focus_behavior_recursive>`

.. rst-class:: classref-property-setget

- |void| **set_focus_behavior_recursive**\ (\ value\: :ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>`\ )
- :ref:`FocusBehaviorRecursive<enum_Control_FocusBehaviorRecursive>` **get_focus_behavior_recursive**\ (\ )

Determina quali controlli si possono focalizzare insieme a :ref:`focus_mode<class_Control_property_focus_mode>`. Vedi :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>`. Poiché il comportamento predefinito è :ref:`FOCUS_BEHAVIOR_INHERITED<class_Control_constant_FOCUS_BEHAVIOR_INHERITED>`, questo si può utilizzare per impedire a tutti i controlli figlio di avere il focus.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_mode:

.. rst-class:: classref-property

:ref:`FocusMode<enum_Control_FocusMode>` **focus_mode** = ``0`` :ref:`🔗<class_Control_property_focus_mode>`

.. rst-class:: classref-property-setget

- |void| **set_focus_mode**\ (\ value\: :ref:`FocusMode<enum_Control_FocusMode>`\ )
- :ref:`FocusMode<enum_Control_FocusMode>` **get_focus_mode**\ (\ )

Determina quali controlli si possono focalizzare. È possibile focalizzare un solo controllo alla volta e il controllo focalizzato riceverà eventi da tastiera, gamepad e mouse in :ref:`_gui_input()<class_Control_private_method__gui_input>`. Usa :ref:`get_focus_mode_with_override()<class_Control_method_get_focus_mode_with_override>` per determinare se un controllo può ottenere il focus, poiché anche :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` lo influenza. Vedi anche :ref:`grab_focus()<class_Control_method_grab_focus>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_bottom:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_bottom** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Indica a Godot a quale nodo bisogna dare il focus se l'utente preme (come predefinito) la freccia giù sulla tastiera o giù su un gamepad. È possibile cambiare il tasto modificando l'azione di input :ref:`ProjectSettings.input/ui_down<class_ProjectSettings_property_input/ui_down>`. Il nodo deve essere un **Control**. Se questa proprietà non è impostata, Godot darà il focus al **Control** più vicino alla parte inferiore di questo controllo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_left:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_left** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_left>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Indica a Godot a quale nodo bisogna dare il focus se l'utente preme (come predefinito) la freccia sinistra sulla tastiera o sinistra su un gamepad. È possibile cambiare il tasto modificando l'azione di input :ref:`ProjectSettings.input/ui_left<class_ProjectSettings_property_input/ui_left>`. Il nodo deve essere un **Control**. Se questa proprietà non è impostata, Godot darà il focus al **Control** più vicino alla parte sinistra di questo controllo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_right:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_right** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_right>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Indica a Godot a quale nodo bisogna dare il focus se l'utente preme (come predefinito) la freccia destra sulla tastiera o destra su un gamepad. È possibile cambiare il tasto modificando l'azione di input :ref:`ProjectSettings.input/ui_right<class_ProjectSettings_property_input/ui_right>`. Il nodo deve essere un **Control**. Se questa proprietà non è impostata, Godot darà il focus al **Control** più vicino alla parte destra di questo controllo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_neighbor_top:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_neighbor_top** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_neighbor_top>`

.. rst-class:: classref-property-setget

- |void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Indica a Godot a quale nodo bisogna dare il focus se l'utente preme (come predefinito) la freccia su sulla tastiera o su su un gamepad. È possibile cambiare il tasto modificando l'azione di input :ref:`ProjectSettings.input/ui_up<class_ProjectSettings_property_input/ui_up>`. Il nodo deve essere un **Control**. Se questa proprietà non è impostata, Godot darà il focus al **Control** più vicino alla parte superiore di questo controllo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_next:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_next** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_next>`

.. rst-class:: classref-property-setget

- |void| **set_focus_next**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_next**\ (\ )

Indica a Godot a quale nodo bisogna dare il focus se l'utente preme (come predefinito) :kbd:`Tab` su una tastiera. È possibile modificare il tasto modificando l'azione di input :ref:`ProjectSettings.input/ui_focus_next<class_ProjectSettings_property_input/ui_focus_next>`.

Se questa proprietà non è impostata, Godot selezionerà una "migliore ipotesi" in base ai nodi circostanti nell'albero di scene.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_focus_previous:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **focus_previous** = ``NodePath("")`` :ref:`🔗<class_Control_property_focus_previous>`

.. rst-class:: classref-property-setget

- |void| **set_focus_previous**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_focus_previous**\ (\ )

Indica a Godot a quale nodo bisogna dare il focus se l'utente preme (come predefinito) :kbd:`Shift + Tab` su una tastiera. È possibile modificare il tasto modificando l'azione di input :ref:`ProjectSettings.input/ui_focus_prev<class_ProjectSettings_property_input/ui_focus_prev>`.

Se questa proprietà non è impostata, Godot selezionerà una "migliore ipotesi" in base ai nodi circostanti nell'albero di scene.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_global_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **global_position** :ref:`🔗<class_Control_property_global_position>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_global_position**\ (\ )

Posizione globale del nodo, relativa al mondo (solitamente relativa al :ref:`CanvasLayer<class_CanvasLayer>`).

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

Controlla la direzione del layout e la direzione della scrittura del testo. I layout da destra a sinistra sono necessari per alcune lingue (ad esempio, arabo ed ebraico). Vedi anche :ref:`is_layout_rtl()<class_Control_method_is_layout_rtl>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_localize_numeral_system:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **localize_numeral_system** = ``true`` :ref:`🔗<class_Control_property_localize_numeral_system>`

.. rst-class:: classref-property-setget

- |void| **set_localize_numeral_system**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_localizing_numeral_system**\ (\ )

Se ``true``, converte automaticamente i numeri di riga del codice, gli indici di elenco, i valori di :ref:`SpinBox<class_SpinBox>` e :ref:`ProgressBar<class_ProgressBar>` dall'arabo occidentale (0..9) ai sistemi numerici utilizzati nella lingua attuale.

\ **Nota:** I numeri all'interno di testo non sono convertiti automaticamente, è possibile farlo manualmente, tramite :ref:`TextServer.format_number()<class_TextServer_method_format_number>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_behavior_recursive:

.. rst-class:: classref-property

:ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **mouse_behavior_recursive** = ``0`` :ref:`🔗<class_Control_property_mouse_behavior_recursive>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_behavior_recursive**\ (\ value\: :ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>`\ )
- :ref:`MouseBehaviorRecursive<enum_Control_MouseBehaviorRecursive>` **get_mouse_behavior_recursive**\ (\ )

Determina quali controlli possono ricevere input del mouse insieme a :ref:`mouse_filter<class_Control_property_mouse_filter>`. Vedi :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>`. Poiché il comportamento predefinito è :ref:`MOUSE_BEHAVIOR_INHERITED<class_Control_constant_MOUSE_BEHAVIOR_INHERITED>`, questo si può utilizzare per impedire a tutti i controlli figlio di ricevere input del mouse.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_default_cursor_shape:

.. rst-class:: classref-property

:ref:`CursorShape<enum_Control_CursorShape>` **mouse_default_cursor_shape** = ``0`` :ref:`🔗<class_Control_property_mouse_default_cursor_shape>`

.. rst-class:: classref-property-setget

- |void| **set_default_cursor_shape**\ (\ value\: :ref:`CursorShape<enum_Control_CursorShape>`\ )
- :ref:`CursorShape<enum_Control_CursorShape>` **get_default_cursor_shape**\ (\ )

La forma predefinita del cursore per questo controllo. Utile per le estensioni di Godot e le applicazioni o i giochi che utilizzano i cursori del mouse del sistema.

\ **Nota:** Su Linux, le forme potrebbero variare a seconda del tema del cursore del sistema.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_filter:

.. rst-class:: classref-property

:ref:`MouseFilter<enum_Control_MouseFilter>` **mouse_filter** = ``0`` :ref:`🔗<class_Control_property_mouse_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mouse_filter**\ (\ value\: :ref:`MouseFilter<enum_Control_MouseFilter>`\ )
- :ref:`MouseFilter<enum_Control_MouseFilter>` **get_mouse_filter**\ (\ )

Determina quali controlli saranno in grado di ricevere eventi di input dei pulsanti del mouse tramite :ref:`_gui_input()<class_Control_private_method__gui_input>` e i segnali :ref:`mouse_entered<class_Control_signal_mouse_entered>` e :ref:`mouse_exited<class_Control_signal_mouse_exited>`. Determina inoltre come questi eventi si devono propagare. Consulta le costanti per scoprire a cosa serve ciascuna di esse. Usa :ref:`get_mouse_filter_with_override()<class_Control_method_get_mouse_filter_with_override>` per determinare se un controllo può ricevere input del mouse, poiché anche :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` lo influenza.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_mouse_force_pass_scroll_events:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mouse_force_pass_scroll_events** = ``true`` :ref:`🔗<class_Control_property_mouse_force_pass_scroll_events>`

.. rst-class:: classref-property-setget

- |void| **set_force_pass_scroll_events**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_force_pass_scroll_events**\ (\ )

Se abilitato, gli eventi della rotellina di scorrimento elaborati da :ref:`_gui_input()<class_Control_private_method__gui_input>` saranno passati al controllo genitore anche se :ref:`mouse_filter<class_Control_property_mouse_filter>` è impostato su :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>`.

Dovresti disabilitarlo nel controllo radice della tua interfaccia utente se non vuoi che gli eventi di scorrimento vengano elaborati in :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`.

\ **Nota:** Poiché questa proprietà è predefinita su ``true``, ciò consente ai contenitori scorrevoli annidati di funzionare senza aver bisogno di modifiche.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_bottom** = ``0.0`` :ref:`🔗<class_Control_property_offset_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distanza tra il bordo inferiore del nodo e il suo controllo padre, in base a :ref:`anchor_bottom<class_Control_property_anchor_bottom>`.

Gli offset sono spesso gestiti da uno o più nodi :ref:`Container<class_Container>` genitori, quindi non dovresti modificarli manualmente se il tuo nodo è un figlio diretto di un :ref:`Container<class_Container>`. Gli offset si aggiornano automaticamente quando sposti o ridimensioni il nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_left** = ``0.0`` :ref:`🔗<class_Control_property_offset_left>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distanza tra il bordo sinistro del nodo e il suo controllo padre, in base a :ref:`anchor_left<class_Control_property_anchor_left>`.

Gli offset sono spesso gestiti da uno o più nodi :ref:`Container<class_Container>` genitori, quindi non dovresti modificarli manualmente se il tuo nodo è un figlio diretto di un :ref:`Container<class_Container>`. Gli offset si aggiornano automaticamente quando sposti o ridimensioni il nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_right** = ``0.0`` :ref:`🔗<class_Control_property_offset_right>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distanza tra il bordo destro del nodo e il suo controllo padre, in base a :ref:`anchor_right<class_Control_property_anchor_right>`.

Gli offset sono spesso gestiti da uno o più nodi :ref:`Container<class_Container>` genitori, quindi non dovresti modificarli manualmente se il tuo nodo è un figlio diretto di un :ref:`Container<class_Container>`. Gli offset si aggiornano automaticamente quando sposti o ridimensioni il nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_top** = ``0.0`` :ref:`🔗<class_Control_property_offset_top>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Distanza tra il bordo superiore del nodo e il suo controllo padre, in base a :ref:`anchor_top<class_Control_property_anchor_top>`.

Gli offset sono spesso gestiti da uno o più nodi :ref:`Container<class_Container>` genitori, quindi non dovresti modificarli manualmente se il tuo nodo è un figlio diretto di un :ref:`Container<class_Container>`. Gli offset si aggiornano automaticamente quando sposti o ridimensioni il nodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **offset_transform_enabled** = ``false`` :ref:`🔗<class_Control_property_offset_transform_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_offset_transform_enabled**\ (\ )

Se ``true``, sono applicate tutte le proprietà di trasformazione di offset. Se non, nessuna trasformazione di offset è applicata e le proprietà non hanno alcun effetto.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_pivot:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset_transform_pivot** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_offset_transform_pivot>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_pivot**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset_transform_pivot**\ (\ )

Il perno, o punto di rotazione, utilizzato da :ref:`offset_transform_rotation<class_Control_property_offset_transform_rotation>` e :ref:`offset_transform_scale<class_Control_property_offset_transform_scale>`, in unità assolute.

La posizione finale del perno è il valore combinato di questa proprietà e di :ref:`offset_transform_pivot_ratio<class_Control_property_offset_transform_pivot_ratio>`.

Non ha effetto a meno che :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` non sia ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_pivot_ratio:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset_transform_pivot_ratio** = ``Vector2(0.5, 0.5)`` :ref:`🔗<class_Control_property_offset_transform_pivot_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_pivot_ratio**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset_transform_pivot_ratio**\ (\ )

Come :ref:`offset_transform_pivot<class_Control_property_offset_transform_pivot>`, ma espresso in unità relative alle dimensioni del **Control**, dove ``Vector2(0, 0)`` rappresenta l'angolo superiore sinistro di questo controllo e ``Vector2(1, 1)`` il suo angolo inferiore destro.

La posizione finale del perno è il valore combinato di questa proprietà e di :ref:`offset_transform_pivot_ratio<class_Control_property_offset_transform_pivot_ratio>`.

Non ha effetto a meno che :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` non sia impostato su ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset_transform_position** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_offset_transform_position>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset_transform_position**\ (\ )

Offset di posizione in unità assolute. L'offset finale è il valore combinato di questa proprietà e di :ref:`offset_transform_position_ratio<class_Control_property_offset_transform_position_ratio>`.

Non ha effetto a meno che :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` non sia ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_position_ratio:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset_transform_position_ratio** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_offset_transform_position_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_position_ratio**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset_transform_position_ratio**\ (\ )

Come :ref:`offset_transform_position<class_Control_property_offset_transform_position>`, ma espresso in unità relative alle dimensioni del **Control**, dove ``Vector2(0, 0)`` rappresenta l'angolo superiore sinistro di questo controllo e ``Vector2(1, 1)`` il suo angolo inferiore destro.

L'offset effettivo è il valore combinato di questa proprietà e di :ref:`pivot_offset<class_Control_property_pivot_offset>`.

Non ha effetto a meno che :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` non sia impostato su ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **offset_transform_rotation** = ``0.0`` :ref:`🔗<class_Control_property_offset_transform_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_offset_transform_rotation**\ (\ )

Offset di rotazione. Il perno di rotazione è definito da :ref:`offset_transform_pivot<class_Control_property_offset_transform_pivot>` e :ref:`offset_transform_pivot_ratio<class_Control_property_offset_transform_pivot_ratio>`.

Non ha effetto a meno che :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` non sia ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset_transform_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Control_property_offset_transform_scale>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset_transform_scale**\ (\ )

Offset di scala. Il perno della scala è definito da :ref:`offset_transform_pivot<class_Control_property_offset_transform_pivot>` e :ref:`offset_transform_pivot_ratio<class_Control_property_offset_transform_pivot_ratio>`.

Non ha effetto a meno che :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` non sia ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_offset_transform_visual_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **offset_transform_visual_only** = ``true`` :ref:`🔗<class_Control_property_offset_transform_visual_only>`

.. rst-class:: classref-property-setget

- |void| **set_offset_transform_visual_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_offset_transform_visual_only**\ (\ )

Se ``true``, la trasformazione di offset è applicata solo visivamente e non influirà sull'input. In altre parole, questo Control continuerà a ricevere gli eventi di input nella sua posizione originale prima di aver applicato la trasformazione di offset.

Se impostato su ``false``, l'intera trasformazione di questo Control è influenzata e gli eventi di input saranno registrati dove si trova visivamente il Control.

Non ha alcun effetto a meno che :ref:`offset_transform_enabled<class_Control_property_offset_transform_enabled>` non sia impostato su ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_pivot_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **pivot_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_pivot_offset>`

.. rst-class:: classref-property-setget

- |void| **set_pivot_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_pivot_offset**\ (\ )

Normalmente, il perno del nodo è il suo angolo in alto a sinistra. Quando modifichi :ref:`rotation<class_Control_property_rotation>` o :ref:`scale<class_Control_property_scale>`, ruoterà o si scalerà attorno a questo perno.

L'offset effettivo è il valore combinato di questa proprietà e di :ref:`pivot_offset_ratio<class_Control_property_pivot_offset_ratio>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_pivot_offset_ratio:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **pivot_offset_ratio** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_pivot_offset_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_pivot_offset_ratio**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_pivot_offset_ratio**\ (\ )

Come :ref:`pivot_offset<class_Control_property_pivot_offset>`, ma espresso come vettore uniforme, dove ``Vector2(0, 0)`` rappresenta l'angolo superiore sinistro di questo controllo e ``Vector2(1, 1)`` il suo angolo inferiore destro. Imposta questa proprietà su ``Vector2(0.5, 0.5)`` per ruotare attorno al centro di questo controllo.

L'offset effettivo è il valore combinato di questa proprietà e di :ref:`pivot_offset<class_Control_property_pivot_offset>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_position>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

La posizione del nodo, relativa al nodo che lo contiene. Corrisponde all'angolo in alto a sinistra del rettangolo. Questa proprietà non è influenzata da :ref:`pivot_offset<class_Control_property_pivot_offset>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_propagate_maximum_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **propagate_maximum_size** = ``false`` :ref:`🔗<class_Control_property_propagate_maximum_size>`

.. rst-class:: classref-property-setget

- |void| **set_propagate_maximum_size**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_propagating_maximum_size**\ (\ )

Se ``true``, i figli di questo Control utilizzeranno il valore restituito da :ref:`get_combined_maximum_size()<class_Control_method_get_combined_maximum_size>` nei propri calcoli di dimensioni.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_rotation:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation** = ``0.0`` :ref:`🔗<class_Control_property_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_rotation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation**\ (\ )

La rotazione del nodo attorno al suo perno, in radianti. Vedi :ref:`pivot_offset<class_Control_property_pivot_offset>` per modificare la posizione del perno.

\ **Nota:** Questa proprietà è modificata in gradi nell'ispettore. Se si desidera usare i gradi in uno script, usa invece :ref:`rotation_degrees<class_Control_property_rotation_degrees>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_rotation_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation_degrees** :ref:`🔗<class_Control_property_rotation_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation_degrees**\ (\ )

Proprietà di supporto per accedere al :ref:`rotation<class_Control_property_rotation>` in gradi anziché in radianti.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Control_property_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scale**\ (\ )

La scala del nodo, relativa alle sue dimensioni (:ref:`size<class_Control_property_size>`). Modifica questa proprietà per ridimensionare il nodo attorno al suo :ref:`pivot_offset<class_Control_property_pivot_offset>`. Anche il :ref:`tooltip_text<class_Control_property_tooltip_text>` del Control sarà ridimensionato in base a questo valore.

\ **Nota:** Questa proprietà è principalmente progettata per le animazioni. Per supportare più risoluzioni nel tuo progetto, usa una modalità appropriata di stiramento della viewport come descritto nella :doc:`documentazione <../tutorials/rendering/multiple_resolutions>`, invece di ridimensionare i controlli individualmente.

\ **Nota:** :ref:`FontFile.oversampling<class_FontFile_property_oversampling>` *non* tiene conto della scala del **Control**. Ciò significa che ingrandire o rimpicciolire il controllo renderà sfocati o pixelati i font bitmap e i font dinamici rasterizzati (non MSDF). Per garantire che il testo rimanga nitido a prescindere dalla scala, è possibile abilitare il rendering dei font MSDF abilitando :ref:`ProjectSettings.gui/theme/default_font_multichannel_signed_distance_field<class_ProjectSettings_property_gui/theme/default_font_multichannel_signed_distance_field>` (si applica solo al font predefinito del progetto) o abilitando **Multichannel Signed Distance Field** nelle opzioni di importazione di un DynamicFont per font personalizzati. Sui font di sistema, è possibile abilitare :ref:`SystemFont.multichannel_signed_distance_field<class_SystemFont_property_multichannel_signed_distance_field>` nell'Ispettore.

\ **Nota:** Se il nodo Control è un figlio di un nodo :ref:`Container<class_Container>`, la scala sarà reimpostata su ``Vector(1, 1)`` quando la scena viene istanziata. Per impostare la scala del Control quando viene istanziato, attendi un frame usando ``await get_tree().process_frame`` quindi imposta la sua proprietà :ref:`scale<class_Control_property_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_shortcut_context:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **shortcut_context** :ref:`🔗<class_Control_property_shortcut_context>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut_context**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_shortcut_context**\ (\ )

Il :ref:`Node<class_Node>` che deve essere un genitore del **Control** focalizzato affinché la scorciatoia sia attivata. Se ``null``, la scorciatoia può essere attivata quando un controllo qualsiasi è focalizzato (una scorciatoia globale). Ciò consente che le scorciatoie siano accettate solo quando l'utente ha focalizzato una determinata area della GUI.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_Control_property_size>`

.. rst-class:: classref-property-setget

- :ref:`Vector2<class_Vector2>` **get_size**\ (\ )

La dimensione del rettangolo di delimitazione del nodo, nel sistema di coordinate del nodo. I nodi :ref:`Container<class_Container>` aggiornano questa proprietà automaticamente.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_horizontal:

.. rst-class:: classref-property

|bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **size_flags_horizontal** = ``1`` :ref:`🔗<class_Control_property_size_flags_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_size_flags**\ (\ value\: |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]\ )
- |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **get_h_size_flags**\ (\ )

Indica ai nodi :ref:`Container<class_Container>` genitori come ridimensionare e posizionare il nodo sull'asse X. Usa una combinazione delle costanti di :ref:`SizeFlags<enum_Control_SizeFlags>` per modificare i flag. Vedi le costanti per scoprire cosa fa ciascuna.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_stretch_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **size_flags_stretch_ratio** = ``1.0`` :ref:`🔗<class_Control_property_size_flags_stretch_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_stretch_ratio**\ (\ )

Se il nodo e almeno uno dei suoi vicini utilizzano il flag di dimensione :ref:`SIZE_EXPAND<class_Control_constant_SIZE_EXPAND>`, il :ref:`Container<class_Container>` genitore gli consentirà di occupare più o meno spazio a seconda di questa proprietà. Se questo nodo ha un rapporto di allungamento di 2 e il suo vicino un rapporto di 1, questo nodo occuperà due terzi dello spazio disponibile.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_size_flags_vertical:

.. rst-class:: classref-property

|bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **size_flags_vertical** = ``1`` :ref:`🔗<class_Control_property_size_flags_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_size_flags**\ (\ value\: |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\]\ )
- |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] **get_v_size_flags**\ (\ )

Indica ai nodi :ref:`Container<class_Container>` genitori come ridimensionare e posizionare il nodo sull'asse Y. Usa una combinazione delle costanti di :ref:`SizeFlags<enum_Control_SizeFlags>` per modificare i flag. Vedi le costanti per scoprire cosa fa ciascuna.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_theme:

.. rst-class:: classref-property

:ref:`Theme<class_Theme>` **theme** :ref:`🔗<class_Control_property_theme>`

.. rst-class:: classref-property-setget

- |void| **set_theme**\ (\ value\: :ref:`Theme<class_Theme>`\ )
- :ref:`Theme<class_Theme>` **get_theme**\ (\ )

La risorsa :ref:`Theme<class_Theme>` utilizzata da questo nodo e da tutti i suoi figli **Control** e :ref:`Window<class_Window>`. Se un nodo figlio ha la sua risorsa :ref:`Theme<class_Theme>` impostata, gli elementi del tema sono uniti, con definizioni del figlio aventi priorità maggiori.

\ **Nota:** Gli stili di :ref:`Window<class_Window>` non avranno effetto a meno che la finestra non sia incorporata.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_theme_type_variation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **theme_type_variation** = ``&""`` :ref:`🔗<class_Control_property_theme_type_variation>`

.. rst-class:: classref-property-setget

- |void| **set_theme_type_variation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_theme_type_variation**\ (\ )

Il nome di una variazione di tipo del tema, utilizzato da questo **Control** per cercare i propri elementi del tema. Quando è vuoto, viene utilizzato il nome della classe del nodo (ad esempio ``Button`` per il controllo :ref:`Button<class_Button>`), oltre che i nomi di tutte le classi padre (in ordine di ereditarietà).

Quando è impostata, questa proprietà assegna la priorità più alta al tipo del nome specificato. Questo tipo può a sua volta estendere un altro tipo, formando una catena di dipendenze. Vedi :ref:`Theme.set_type_variation()<class_Theme_method_set_type_variation>`. Se non è possibile trovare l'elemento del tema usando questo tipo o i suoi tipi di base, la ricerca ricorre ai nomi delle classi.

\ **Nota:** Per cercare gli elementi del **Control** stesso, utilizza i vari metodi ``get_theme_*`` senza specificare ``theme_type``.

\ **Nota:** Gli elementi del tema sono cercati in ordine ad albero, dal ramo alla radice, dove ogni nodo **Control** è verificato per la sua proprietà del :ref:`theme<class_Control_property_theme>`. Sarà restituita la prima corrispondenza con qualsiasi nome di tipo o di classe. Il tema a livello del progetto e il tema predefinito saranno verificati per ultimi.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_tooltip_auto_translate_mode:

.. rst-class:: classref-property

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **tooltip_auto_translate_mode** = ``0`` :ref:`🔗<class_Control_property_tooltip_auto_translate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip_auto_translate_mode**\ (\ value\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ )
- :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **get_tooltip_auto_translate_mode**\ (\ )

Definisce se il testo del tooltip deve passare automaticamente alla sua versione tradotta a seconda della localizzazione attuale. Utilizza la stessa modalità di traduzione automatica di questo controllo quando impostato su :ref:`Node.AUTO_TRANSLATE_MODE_INHERIT<class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT>`.

\ **Nota:** I tooltip personalizzati tramite :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` non utilizzano automaticamente questa modalità di traduzione automatica.

.. rst-class:: classref-item-separator

----

.. _class_Control_property_tooltip_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **tooltip_text** = ``""`` :ref:`🔗<class_Control_property_tooltip_text>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tooltip_text**\ (\ )

Il testo predefinito del tooltip. Il tooltip appare quando il cursore del mouse rimane inattivo su questo controllo per qualche momento, a condizione che la proprietà :ref:`mouse_filter<class_Control_property_mouse_filter>` non sia :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`. È possibile modificare il tempo necessario per far apparire il tooltip con l'opzione :ref:`ProjectSettings.gui/timers/tooltip_delay_sec<class_ProjectSettings_property_gui/timers/tooltip_delay_sec>`. Vedi anche :ref:`get_tooltip()<class_Control_method_get_tooltip>`.

Questa stringa è il valore di ritorno predefinito di :ref:`get_tooltip()<class_Control_method_get_tooltip>`. Sovrascrivi :ref:`_get_tooltip()<class_Control_private_method__get_tooltip>` per generare dinamicamente il testo del tooltip. Sostituisci :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` per personalizzare l'interfaccia e il comportamento del tooltip.

Il popup del tooltip utilizzerà un'implementazione predefinita o una personalizzata, la quale è possibile fornire sovrascrivendo :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>`. Il tooltip predefinito include un :ref:`PopupPanel<class_PopupPanel>` e un :ref:`Label<class_Label>`, le cui proprietà del tema possono essere personalizzate attraverso i metodi di :ref:`Theme<class_Theme>` con ``"TooltipPanel"`` e ``"TooltipLabel"`` rispettivamente. Ad esempio:


.. tabs::

 .. code-tab:: gdscript

    var style_box = StyleBoxFlat.new()
    style_box.set_bg_color(Color(1, 1, 0))
    style_box.set_border_width_all(2)
    # Qui supponiamo che alla proprietà `theme` sia stata assegnata in precedenza un tema personalizzato.
    theme.set_stylebox("panel", "TooltipPanel", style_box)
    theme.set_color("font_color", "TooltipLabel", Color(0, 1, 1))

 .. code-tab:: csharp

    var styleBox = new StyleBoxFlat();
    styleBox.SetBgColor(new Color(1, 1, 0));
    styleBox.SetBorderWidthAll(2);
    // Qui supponiamo che alla proprietà `theme` sia stata assegnata in precedenza un tema personalizzato.
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

Il contesto di traduzione utilizzato per tradurre il testo visualizzato da questo controllo, se presente. Serve anche per generare i modelli di traduzione.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Control_private_method__accessibility_get_contextual_info:

.. rst-class:: classref-method

:ref:`String<class_String>` **_accessibility_get_contextual_info**\ (\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__accessibility_get_contextual_info>`

Restituisce la descrizione delle scorciatoie da tastiera e altre informazioni contestuali per questo controllo.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__can_drop_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_drop_data**\ (\ at_position\: :ref:`Vector2<class_Vector2>`, data\: :ref:`Variant<class_Variant>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__can_drop_data>`

Godot chiama questo metodo per verificare se ``data`` da un :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` di un controllo può essere rilasciato nella posizione ``at_position``. ``at_position`` è locale a questo controllo.

Questo metodo dovrebbe essere utilizzato solo per verificare i dati. Elabora i dati in :ref:`_drop_data()<class_Control_private_method__drop_data>`.

\ **Nota:** Se il trascinamento è stato avviato tramite una scorciatoia da tastiera o :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` è impostato su :ref:`Vector2.INF<class_Vector2_constant_INF>` e si dovrebbe utilizzare la posizione dell'elemento/testo attualmente selezionato come posizione di rilascio.


.. tabs::

 .. code-tab:: gdscript

    func _can_drop_data(position, data):
        # Verifica la posizione se ti interessa
        # Altrimenti, verifica solo i dati
        return typeof(data) == TYPE_DICTIONARY and data.has("previsto")

 .. code-tab:: csharp

    public override bool _CanDropData(Vector2 atPosition, Variant data)
    {
        // Verifica la posizione se ti interessa
        // Altrimenti, verifica solo i dati
        return data.VariantType == Variant.Type.Dictionary && data.AsGodotDictionary().ContainsKey("previsto");
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__drop_data:

.. rst-class:: classref-method

|void| **_drop_data**\ (\ at_position\: :ref:`Vector2<class_Vector2>`, data\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_Control_private_method__drop_data>`

Godot chiama questo metodo per passare ``data`` dal risultato di :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` di un controllo. Godot chiama prima :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` per verificare se ``data`` può essere rilasciato nella posizione ``at_position``, dove ``at_position`` è locale a questo controllo.

\ **Nota:** Se il trascinamento è stato avviato tramite una scorciatoia da tastiera o :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` è impostato su :ref:`Vector2.INF<class_Vector2_constant_INF>` e si dovrebbe utilizzare la posizione dell'elemento/testo attualmente selezionato come posizione di rilascio.


.. tabs::

 .. code-tab:: gdscript

    func _can_drop_data(position, data):
        return typeof(data) == TYPE_DICTIONARY and data.has("colore")

    func _drop_data(position, data):
        var colore= data["colore"]

 .. code-tab:: csharp

    public override bool _CanDropData(Vector2 atPosition, Variant data)
    {
        return data.VariantType == Variant.Type.Dictionary && dict.AsGodotDictionary().ContainsKey("colore");
    }

    public override void _DropData(Vector2 atPosition, Variant data)
    {
        Color colore = data.AsGodotDictionary()["colore"].AsColor();
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_accessibility_container_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_accessibility_container_name**\ (\ node\: :ref:`Node<class_Node>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_accessibility_container_name>`

Sovrascrivi questo metodo per restituire una descrizione leggibile in chiaro dalla posizione del nodo figlio ``node`` nel contenitore personalizzato, aggiunto a :ref:`accessibility_name<class_Control_property_accessibility_name>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_cursor_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_cursor_shape**\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_cursor_shape>`

Metodo virtuale da implementare dall'utente. Restituisce la forma del cursore per la posizione ``at_position`` nelle coordinate locali del controllo, che servirà tipicamente al passaggio del cursore sopra questo controllo. Vedi :ref:`get_cursor_shape()<class_Control_method_get_cursor_shape>`.

Se non sovrascritto, il valore predefinito è derivato da :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_drag_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_drag_data**\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| :ref:`🔗<class_Control_private_method__get_drag_data>`

Godot chiama questo metodo per ottenere dati che possono essere trascinati e rilasciati su controlli che prevedono dati di rilascio. Restituisce ``null`` se non ci sono dati da trascinare. I controlli che vogliono ricevere dati di rilascio devono implementare :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` e :ref:`_drop_data()<class_Control_private_method__drop_data>`. La posizione ``at_position`` è locale a questo controllo. Il trascinamento può essere forzato con :ref:`force_drag()<class_Control_method_force_drag>`.

Un'anteprima che seguirà il mouse che dovrebbe rappresentare i dati può essere impostata con :ref:`set_drag_preview()<class_Control_method_set_drag_preview>`. Un buon momento per impostare l'anteprima è in questo metodo.

\ **Nota:** Se il trascinamento è stato avviato tramite una scorciatoia da tastiera o :ref:`accessibility_drag()<class_Control_method_accessibility_drag>`, ``at_position`` è impostato su :ref:`Vector2.INF<class_Vector2_constant_INF>` e si dovrebbe utilizzare la posizione dell'elemento/testo attualmente selezionato come posizione di rilascio.


.. tabs::

 .. code-tab:: gdscript

    func _get_drag_data(position):
        var mydata = make_data() # Questo è il tuo metodo personalizzato che genera i dati di trascinamento.
        set_drag_preview(make_preview(mydata)) # Questo è il tuo metodo personalizzato che genera l'anteprima dei dati di trascinamento.
        return mydata

 .. code-tab:: csharp

    public override Variant _GetDragData(Vector2 atPosition)
    {
        var myData = MakeData(); // Questo è il tuo metodo personalizzato che genera i dati di trascinamento.
        SetDragPreview(MakePreview(myData)); // Questo è il tuo metodo personalizzato che genera l'anteprima dei dati di trascinamento.
        return myData;
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_maximum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_maximum_size**\ (\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_maximum_size>`

Metodo virtuale da implementare dall'utente. Restituisce le dimensioni massime per questo controllo. Alternativa a :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` per regolare le dimensioni massime tramite codice. Le dimensioni massime effettive saranno il valore più alto tra i due (in ogni asse separatamente).

Se non sovrascritto, il valore predefinito è :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

\ **Nota:** Questo metodo non verrà chiamato quando lo script è allegato a un nodo **Control** che sovrascrive già le sue dimensioni massime (ad esempio :ref:`ScrollContainer<class_ScrollContainer>`).

\ **Nota:** Si consiglia di utilizzare :ref:`get_bound_minimum_size()<class_Control_method_get_bound_minimum_size>` anziché :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>` quando si implementa questo metodo, poiché il primo rispetta i limiti di dimensioni massime per calcolare la dimensione minima, mentre il secondo no.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_minimum_size**\ (\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_minimum_size>`

Metodo virtuale da implementare dall'utente. Restituisce le dimensioni minime per questo controllo. Alternativa a :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` per regolare le dimensioni minime tramite codice. Le dimensioni minime effettive saranno il valore più alto tra i due (in ogni asse separatamente).

Se non sovrascritto, il valore predefinito è :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

\ **Nota:** Questo metodo non verrà chiamato quando lo script è allegato a un nodo **Control** che sovrascrive già le sue dimensioni minime (ad esempio :ref:`Label<class_Label>`, :ref:`Button<class_Button>`, :ref:`PanelContainer<class_PanelContainer>`, ecc.). Si può utilizzare soltanto con la maggior parte dei nodi GUI basilari, come **Control**, :ref:`Container<class_Container>`, :ref:`Panel<class_Panel>`, ecc.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_tooltip**\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_tooltip>`

Metodo virtuale da implementare dall'utente. Restituisce il testo del tooltip per la posizione ``at_position`` nelle coordinate locali del controllo, che in genere apparirà quando il cursore si trova su questo controllo. Vedi :ref:`get_tooltip()<class_Control_method_get_tooltip>`.

\ **Nota:** Se questo metodo restituisce una :ref:`String<class_String>` vuota e :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` non è sovrascritto, nessun tooltip viene visualizzato.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__get_tooltip_auto_translate_mode_at:

.. rst-class:: classref-method

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **_get_tooltip_auto_translate_mode_at**\ (\ at_position\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__get_tooltip_auto_translate_mode_at>`

Restituisce la modalità di traduzione automatica nella posizione specificata da ``at_position``. Se non implementato, verrà utilizzata la proprietà :ref:`tooltip_auto_translate_mode<class_Control_property_tooltip_auto_translate_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__gui_input:

.. rst-class:: classref-method

|void| **_gui_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Control_private_method__gui_input>`

Metodo virtuale da implementare dall'utente. Sovrascrivi questo metodo per gestire e accettare gli input sugli elementi dell'UI. Vedi anche :ref:`accept_event()<class_Control_method_accept_event>`.

\ **Esempio:** Clicca sul controllo per stampare un messaggio.


.. tabs::

 .. code-tab:: gdscript

    func _gui_input(event):
        if event is InputEventMouseButton:
            if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
                print("Sono stato cliccato! D:")

 .. code-tab:: csharp

    public override void _GuiInput(InputEvent @event)
    {
        if (@event is InputEventMouseButton mb)
        {
            if (mb.ButtonIndex == MouseButton.Left && mb.Pressed)
            {
                GD.Print("Sono stato cliccato! D:");
            }
        }
    }



Se ``event`` eredita :ref:`InputEventMouse<class_InputEventMouse>`, questo metodo **non** verrà chiamato quando:

- il :ref:`mouse_filter<class_Control_property_mouse_filter>` del controllo è impostato su :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`;

- il controllo è ostruito da un altro controllo sopra di esso, che non ha :ref:`mouse_filter<class_Control_property_mouse_filter>` impostato su :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`;

- il genitore del controllo ha :ref:`mouse_filter<class_Control_property_mouse_filter>` impostato su :ref:`MOUSE_FILTER_STOP<class_Control_constant_MOUSE_FILTER_STOP>` o ha accettato l'evento;

- il genitore del controllo ha :ref:`clip_contents<class_Control_property_clip_contents>` abilitato e la posizione del ``event`` è all'esterno del rettangolo del genitore;

- la posizione di ``event`` è all'esterno del controllo (vedi :ref:`_has_point()<class_Control_private_method__has_point>`).

\ **Nota:** La posizione di ``event`` è relativa all'origine di questo controllo.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__has_point>`

Metodo virtuale da implementare dall'utente. Restituisce se il punto ``point`` è all'interno di questo controllo.

Se non sovrascritto, il comportamento predefinito è verificare se il punto è all'interno del rettangolo del controllo.

\ **Nota:** Se vuoi verificare se un punto è all'interno del controllo, puoi usare ``Rect2(Vector2.ZERO, size).has_point(point)``.

.. rst-class:: classref-item-separator

----

.. _class_Control_private_method__make_custom_tooltip:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_make_custom_tooltip**\ (\ for_text\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_Control_private_method__make_custom_tooltip>`

Metodo virtuale da implementare dall'utente. Restituisce un nodo **Control** che dovrebbe essere usato come tooltip invece di quello predefinito. ``for_text`` è il valore restituito da :ref:`get_tooltip()<class_Control_method_get_tooltip>`.

Il nodo restituito deve essere di tipo **Control** o derivato da Control. Può avere nodi figlio di qualsiasi tipo. Viene liberato quando il tooltip scompare, quindi assicurati di fornire sempre una nuova istanza (se vuoi usare un nodo già esistente dal tuo albero di scene, puoi duplicarlo e passare l'istanza duplicata). Quando viene restituito ``null`` o un nodo non-Control, verrà usato il tooltip predefinito.

Il nodo restituito sarà aggiunto come figlio a un :ref:`PopupPanel<class_PopupPanel>`, quindi dovresti fornire solo il contenuto di quel pannello. Tale :ref:`PopupPanel<class_PopupPanel>` può essere tematizzato tramite :ref:`Theme.set_stylebox()<class_Theme_method_set_stylebox>` per il tipo ``"TooltipPanel"`` (vedi :ref:`tooltip_text<class_Control_property_tooltip_text>` per un esempio).

\ **Nota:** Il tooltip è ridotto alle sue dimensioni minime. Se vuoi assicurarti che sia completamente visibile, potresti voler impostare il suo :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` su un valore diverso da zero.

\ **Nota:** Il nodo (e tutti i figli relativi) dovrebbero avere :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` impostato su ``true`` quando restituito, altrimenti, la viewport che lo istanzia non sarà in grado di calcolare la sue dimensioni minime in modo affidabile.

\ **Nota:** Se sovrascritto, questo metodo viene chiamato anche se :ref:`get_tooltip()<class_Control_method_get_tooltip>` restituisce una stringa vuota. Quando ciò accade con il tooltip predefinito, esso non viene visualizzato. Per copiare questo comportamento, restituisci ``null`` in questo metodo quando ``for_text`` è vuoto.

\ **Esempio:** Utilizza un nodo costruito come tooltip:


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



\ **Esempio:** Utilizza un'istanza di una scena come tooltip:


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

Funzione di sostituzione dell'algoritmo BiDi definita dall'utente.

Restituisce un :ref:`Array<class_Array>` di :ref:`Vector3i<class_Vector3i>` che rappresentano gli intervalli del testo e direzioni di base del testo, ordinati da sinistra a destra. Gli intervalli devono coprire l'intera sorgente ``text`` senza sovrapposizioni. L'algoritmo BiDi verrà utilizzato su ciascun intervallo separatamente.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accept_event:

.. rst-class:: classref-method

|void| **accept_event**\ (\ ) :ref:`🔗<class_Control_method_accept_event>`

Contrassegna un evento di input come gestito. Una volta accettato un evento di input, la propagazione è interrotta, anche ai nodi in ascolto di :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>` o :ref:`Node._unhandled_key_input()<class_Node_private_method__unhandled_key_input>`.

\ **Nota:** Questo non influisce sui metodi in :ref:`Input<class_Input>`, ma solo sul modo in cui sono propagati gli eventi.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accessibility_drag:

.. rst-class:: classref-method

|void| **accessibility_drag**\ (\ ) :ref:`🔗<class_Control_method_accessibility_drag>`

Avvia un'operazione di trascinamento senza l'utilizzo del mouse.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_accessibility_drop:

.. rst-class:: classref-method

|void| **accessibility_drop**\ (\ ) :ref:`🔗<class_Control_method_accessibility_drop>`

Termina un'operazione di trascinamento senza l'utilizzo del mouse.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_color_override:

.. rst-class:: classref-method

|void| **add_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_Control_method_add_theme_color_override>`

Crea una sostituzione locale per un :ref:`Color<class_Color>` di tema con il nome ``name``. Le sostituzioni locali hanno sempre la precedenza quando si recuperano elementi del tema per il controllo. Una sostituzione può essere rimossa con :ref:`remove_theme_color_override()<class_Control_method_remove_theme_color_override>`.

Vedi anche :ref:`get_theme_color()<class_Control_method_get_theme_color>`.

\ **Esempio:** Sostituisci il colore di un :ref:`Label<class_Label>` e reimpostalo in seguito:


.. tabs::

 .. code-tab:: gdscript

    # Specificato il nodo Label "MyLabel" figlio, sovrascrivi il suo colore del font con un valore personalizzato.
    $MyLabel.add_theme_color_override("font_color", Color(1, 0.5, 0))
    # Reimposta il colore del font dell'etichetta figlio.
    $MyLabel.remove_theme_color_override("font_color")
    # In alternativa, è possibile sovrascriverlo con il valore predefinito dal tipo Label.
    $MyLabel.add_theme_color_override("font_color", get_theme_color("font_color", "Label"))

 .. code-tab:: csharp

    // Specificato il nodo Label "MyLabel" figlio, sovrascrivi il suo colore del font con un valore personalizzato.
    GetNode<Label>("MyLabel").AddThemeColorOverride("font_color", new Color(1, 0.5f, 0));
    // Reimposta il colore del font dell'etichetta figlio.
    GetNode<Label>("MyLabel").RemoveThemeColorOverride("font_color");
    In alternativa, è possibile sovrascriverlo con il valore predefinito dal tipo Label.
    GetNode<Label>("MyLabel").AddThemeColorOverride("font_color", GetThemeColor("font_color", "Label"));



.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_constant_override:

.. rst-class:: classref-method

|void| **add_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`, constant\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Control_method_add_theme_constant_override>`

Crea una sostituzione locale per una costante di tema con il nome ``name``. Le sostituzioni locali hanno sempre la precedenza quando si recuperano elementi del tema per il controllo. Una sostituzione può essere rimossa con :ref:`remove_theme_constant_override()<class_Control_method_remove_theme_constant_override>`.

Vedi anche :ref:`get_theme_constant()<class_Control_method_get_theme_constant>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_font_override:

.. rst-class:: classref-method

|void| **add_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`, font\: :ref:`Font<class_Font>`\ ) :ref:`🔗<class_Control_method_add_theme_font_override>`

Crea una sostituzione locale per un :ref:`Font<class_Font>` di tema con il nome ``name``. Le sostituzioni locali hanno sempre la precedenza quando si recuperano elementi del tema per il controllo. Una sostituzione può essere rimossa con :ref:`remove_theme_font_override()<class_Control_method_remove_theme_font_override>`.

Vedi anche :ref:`get_theme_font()<class_Control_method_get_theme_font>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_font_size_override:

.. rst-class:: classref-method

|void| **add_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`, font_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Control_method_add_theme_font_size_override>`

Crea una sostituzione locale per una dimensione di :ref:`Font<class_Font>` di tema con il nome ``name``. Le sostituzioni locali hanno sempre la precedenza quando si recuperano elementi del tema per il controllo. Una sostituzione può essere rimossa con :ref:`remove_theme_font_size_override()<class_Control_method_remove_theme_font_size_override>`.

Vedi anche :ref:`get_theme_font_size()<class_Control_method_get_theme_font_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_icon_override:

.. rst-class:: classref-method

|void| **add_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_Control_method_add_theme_icon_override>`

Crea una sostituzione locale per un'icona di tema con il nome ``name``. Le sostituzioni locali hanno sempre la precedenza quando si recuperano elementi del tema per il controllo. Una sostituzione può essere rimossa con :ref:`remove_theme_icon_override()<class_Control_method_remove_theme_icon_override>`.

Vedi anche :ref:`get_theme_icon()<class_Control_method_get_theme_icon>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_add_theme_stylebox_override:

.. rst-class:: classref-method

|void| **add_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`, stylebox\: :ref:`StyleBox<class_StyleBox>`\ ) :ref:`🔗<class_Control_method_add_theme_stylebox_override>`

Crea una sostituzione locale per lo :ref:`StyleBox<class_StyleBox>` di tema con il nome ``name``. Le sostituzioni locali hanno sempre la precedenza quando si recuperano elementi del tema per il controllo. Una sostituzione può essere rimossa con :ref:`remove_theme_stylebox_override()<class_Control_method_remove_theme_stylebox_override>`.

Vedi anche :ref:`get_theme_stylebox()<class_Control_method_get_theme_stylebox>`.

\ **Esempio:** Modifica una proprietà in uno :ref:`StyleBox<class_StyleBox>` duplicandola:


.. tabs::

 .. code-tab:: gdscript

    # Lo snippet seguente assume che al nodo figlio "MyButton" sia assegnato uno StyleBoxFlat.
    # Le risorse sono condivise tra le istanze, quindi dobbiamo duplicarle
    # per evitare di modificare l'aspetto di tutti gli altri pulsanti.
    var new_stylebox_normal = $MyButton.get_theme_stylebox("normal").duplicate()
    new_stylebox_normal.border_width_top = 3
    new_stylebox_normal.border_color = Color(0, 1, 0.5)
    $MyButton.add_theme_stylebox_override("normal", new_stylebox_normal)
    # Rimuovi la sostituzione dello stylebox.
    $MyButton.remove_theme_stylebox_override("normal")

 .. code-tab:: csharp

    // Lo snippet seguente assume che al nodo figlio "MyButton" sia assegnato uno StyleBoxFlat.
    // Le risorse sono condivise tra le istanze, quindi dobbiamo duplicarle
    // per evitare di modificare l'aspetto di tutti gli altri pulsanti.
    StyleBoxFlat newStyleboxNormal = GetNode<Button>("MyButton").GetThemeStylebox("normal").Duplicate() as StyleBoxFlat;
    newStyleboxNormal.BorderWidthTop = 3;
    newStyleboxNormal.BorderColor = new Color(0, 1, 0.5f);
    GetNode<Button>("MyButton").AddThemeStyleboxOverride("normal", newStyleboxNormal);
    // Rimuovi la sostituzione dello stylebox.
    GetNode<Button>("MyButton").RemoveThemeStyleboxOverride("normal");



.. rst-class:: classref-item-separator

----

.. _class_Control_method_begin_bulk_theme_override:

.. rst-class:: classref-method

|void| **begin_bulk_theme_override**\ (\ ) :ref:`🔗<class_Control_method_begin_bulk_theme_override>`

Impedisce ai metodi ``*_theme_*_override`` di emettere :ref:`NOTIFICATION_THEME_CHANGED<class_Control_constant_NOTIFICATION_THEME_CHANGED>` finché non viene chiamato :ref:`end_bulk_theme_override()<class_Control_method_end_bulk_theme_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_end_bulk_theme_override:

.. rst-class:: classref-method

|void| **end_bulk_theme_override**\ (\ ) :ref:`🔗<class_Control_method_end_bulk_theme_override>`

Termina un aggiornamento di sostituzioni del tema in massa. Vedi :ref:`begin_bulk_theme_override()<class_Control_method_begin_bulk_theme_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_next_valid_focus:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_next_valid_focus**\ (\ ) |const| :ref:`🔗<class_Control_method_find_next_valid_focus>`

Trova il **Control** successivo (in basso nell'albero) che può ricevere il focus.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_prev_valid_focus:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_prev_valid_focus**\ (\ ) |const| :ref:`🔗<class_Control_method_find_prev_valid_focus>`

Trova il **Control** precedente (in alto nell'albero) che può ricevere il focus.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_find_valid_focus_neighbor:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **find_valid_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_find_valid_focus_neighbor>`

Trova il **Control** successivo che può ricevere il focus sul lato (:ref:`Side<enum_@GlobalScope_Side>`) specificato.

\ **Nota:** Questo è diverso da :ref:`get_focus_neighbor()<class_Control_method_get_focus_neighbor>`, che restituisce il percorso di un vicino di focus specificato.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_force_drag:

.. rst-class:: classref-method

|void| **force_drag**\ (\ data\: :ref:`Variant<class_Variant>`, preview\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_Control_method_force_drag>`

Forza il trascinamento e ignora :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` e :ref:`set_drag_preview()<class_Control_method_set_drag_preview>` passando ``data`` e ``preview``. Il trascinamento inizierà anche se il mouse non è né sopra né premuto su questo controllo.

I metodi :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` e :ref:`_drop_data()<class_Control_private_method__drop_data>` devono essere implementati sui controlli che vogliono ricevere dati di rilascio.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_anchor:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_anchor>`

Restituisce l'ancora per il lato (:ref:`Side<enum_@GlobalScope_Side>`) specificato. Un metodo getter per :ref:`anchor_bottom<class_Control_property_anchor_bottom>`, :ref:`anchor_left<class_Control_property_anchor_left>`, :ref:`anchor_right<class_Control_property_anchor_right>` e :ref:`anchor_top<class_Control_property_anchor_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_begin:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_begin**\ (\ ) |const| :ref:`🔗<class_Control_method_get_begin>`

Restituisce :ref:`offset_left<class_Control_property_offset_left>` e :ref:`offset_top<class_Control_property_offset_top>`. Vedi anche :ref:`position<class_Control_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_bound_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_bound_minimum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_bound_minimum_size>`

Restituisce il valore limitato di :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>` per :ref:`get_combined_maximum_size()<class_Control_method_get_combined_maximum_size>`.

Questo valore rappresenta la dimensione minima effettiva del contenitore, poiché la dimensione massima ha la priorità sulla dimensione minima.

Ad esempio, se la dimensione minima combinata è (100, 100) e la dimensione massima combinata è (50, 150), la dimensione minima limite sarà (50, 100).

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_combined_maximum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_combined_maximum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_combined_maximum_size>`

Restituisce la dimensione massima combinata da :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` e :ref:`get_maximum_size()<class_Control_method_get_maximum_size>`, nonché la :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` del genitore di questo nodo se è un nodo Control con :ref:`propagate_maximum_size<class_Control_property_propagate_maximum_size>` impostato su ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_combined_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_combined_minimum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_combined_minimum_size>`

Restituisce le dimensioni minime combinate da :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` e :ref:`get_minimum_size()<class_Control_method_get_minimum_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_combined_pivot_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_combined_pivot_offset**\ (\ ) |const| :ref:`🔗<class_Control_method_get_combined_pivot_offset>`

Restituisce il valore combinato di :ref:`pivot_offset<class_Control_property_pivot_offset>` e :ref:`pivot_offset_ratio<class_Control_property_pivot_offset_ratio>`, in pixel. Il rapporto è moltiplicato per le dimensioni del controllo.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_cursor_shape:

.. rst-class:: classref-method

:ref:`CursorShape<enum_Control_CursorShape>` **get_cursor_shape**\ (\ at_position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Control_method_get_cursor_shape>`

Restituisce la forma del cursore del mouse per questo controllo quando si passa il mouse sulla posizione ``at_position`` in coordinate locali. Per la maggior parte dei controlli, questo è uguale a :ref:`mouse_default_cursor_shape<class_Control_property_mouse_default_cursor_shape>`, ma alcuni controlli integrati implementano una logica più complessa.

È possibile sovrascrivere :ref:`_get_cursor_shape()<class_Control_private_method__get_cursor_shape>` per implementare un comportamento personalizzato per questo metodo.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_end:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_end**\ (\ ) |const| :ref:`🔗<class_Control_method_get_end>`

Restituisce :ref:`offset_right<class_Control_property_offset_right>` e :ref:`offset_bottom<class_Control_property_offset_bottom>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_focus_mode_with_override:

.. rst-class:: classref-method

:ref:`FocusMode<enum_Control_FocusMode>` **get_focus_mode_with_override**\ (\ ) |const| :ref:`🔗<class_Control_method_get_focus_mode_with_override>`

Restituisce :ref:`focus_mode<class_Control_property_focus_mode>`, ma tiene conto di :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>`. Se :ref:`focus_behavior_recursive<class_Control_property_focus_behavior_recursive>` è impostato su :ref:`FOCUS_BEHAVIOR_DISABLED<class_Control_constant_FOCUS_BEHAVIOR_DISABLED>`, oppure è impostato su :ref:`FOCUS_BEHAVIOR_INHERITED<class_Control_constant_FOCUS_BEHAVIOR_INHERITED>` e il suo antenato è impostato su :ref:`FOCUS_BEHAVIOR_DISABLED<class_Control_constant_FOCUS_BEHAVIOR_DISABLED>`, allora restituisce :ref:`FOCUS_NONE<class_Control_constant_FOCUS_NONE>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_focus_neighbor:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_focus_neighbor>`

Restituisce il vicino di focus per il lato (:ref:`Side<enum_@GlobalScope_Side>`) specificato. Un metodo getter per :ref:`focus_neighbor_bottom<class_Control_property_focus_neighbor_bottom>`, :ref:`focus_neighbor_left<class_Control_property_focus_neighbor_left>`, :ref:`focus_neighbor_right<class_Control_property_focus_neighbor_right>` e :ref:`focus_neighbor_top<class_Control_property_focus_neighbor_top>`.

\ **Nota:** Per trovare il **Control** successivo sul :ref:`Side<enum_@GlobalScope_Side>` specifico, anche se non è assegnato un vicino, usa :ref:`find_valid_focus_neighbor()<class_Control_method_find_valid_focus_neighbor>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_global_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_global_rect**\ (\ ) |const| :ref:`🔗<class_Control_method_get_global_rect>`

Restituisce la posizione e la dimensione del controllo relativamente al canvas che lo contiene. Vedi :ref:`global_position<class_Control_property_global_position>` e :ref:`size<class_Control_property_size>`.

\ **Nota:** Se il nodo stesso o qualsiasi :ref:`CanvasItem<class_CanvasItem>` padre tra il nodo e il canvas hanno una rotazione o un'inclinazione non predefinita, la dimensione risultante è probabilmente inutile.

\ **Nota:** Impostare :ref:`Viewport.gui_snap_controls_to_pixels<class_Viewport_property_gui_snap_controls_to_pixels>` su ``true`` può causare imprecisioni di arrotondamento tra il controllo visualizzato e il :ref:`Rect2<class_Rect2>` restituito.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_maximum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_maximum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_maximum_size>`

Restituisce le dimensioni massime per questo controllo. Vedi :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_minimum_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_minimum_size>`

Restituisce le dimensioni minime per questo controllo. Vedi :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_mouse_filter_with_override:

.. rst-class:: classref-method

:ref:`MouseFilter<enum_Control_MouseFilter>` **get_mouse_filter_with_override**\ (\ ) |const| :ref:`🔗<class_Control_method_get_mouse_filter_with_override>`

Restituisce :ref:`mouse_filter<class_Control_property_mouse_filter>`, ma tiene conto di :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>`. Se :ref:`mouse_behavior_recursive<class_Control_property_mouse_behavior_recursive>` è impostato su :ref:`MOUSE_BEHAVIOR_DISABLED<class_Control_constant_MOUSE_BEHAVIOR_DISABLED>`, oppure è impostato su :ref:`MOUSE_BEHAVIOR_INHERITED<class_Control_constant_MOUSE_BEHAVIOR_INHERITED>` e il suo antenato è impostato su :ref:`MOUSE_BEHAVIOR_DISABLED<class_Control_constant_MOUSE_BEHAVIOR_DISABLED>`, allora restituisce :ref:`MOUSE_FILTER_IGNORE<class_Control_constant_MOUSE_FILTER_IGNORE>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_offset:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_offset**\ (\ offset\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Control_method_get_offset>`

Restituisce l'offset per il lato specificato (:ref:`Side<enum_@GlobalScope_Side>`). Un metodo getter per :ref:`offset_bottom<class_Control_property_offset_bottom>`, :ref:`offset_left<class_Control_property_offset_left>`, :ref:`offset_right<class_Control_property_offset_right>`, e :ref:`offset_top<class_Control_property_offset_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_parent_area_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_parent_area_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_parent_area_size>`

Restituisce la larghezza/altezza occupata nel controllo padre.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_parent_control:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **get_parent_control**\ (\ ) |const| :ref:`🔗<class_Control_method_get_parent_control>`

Restituisce il nodo di controllo padre.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Control_method_get_rect>`

Restituisce la posizione e la dimensione del controllo nel sistema di coordinate del nodo contenitore. Vedi :ref:`position<class_Control_property_position>`, :ref:`scale<class_Control_property_scale>` e :ref:`size<class_Control_property_size>`.

\ **Nota:** Se :ref:`rotation<class_Control_property_rotation>` non è la rotazione predefinita, la dimensione risultante è inutile.

\ **Nota:** Impostare :ref:`Viewport.gui_snap_controls_to_pixels<class_Viewport_property_gui_snap_controls_to_pixels>` su ``true`` può causare imprecisioni di arrotondamento tra il controllo visualizzato e il :ref:`Rect2<class_Rect2>` restituito.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_screen_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_screen_position**\ (\ ) |const| :ref:`🔗<class_Control_method_get_screen_position>`

Restituisce la posizione di questo **Control** nelle coordinate globali dello schermo (ossia tenendo conto della posizione della finestra). Utile soprattutto per le estensioni dell'editor.

Equivalente a ``get_screen_transform().origin`` (vedi :ref:`CanvasItem.get_screen_transform()<class_CanvasItem_method_get_screen_transform>`).

\ **Esempio:** Mostra un popup alla posizione del mouse:

::

    popup_menu.position = get_screen_position() + get_screen_transform().basis_xform(get_local_mouse_position())

    # Il codice precedente è equivalente a:
    popup_menu.position = get_screen_transform() * get_local_mouse_position()

    popup_menu.reset_size()
    popup_menu.popup()

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_theme_color**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_color>`

Restituisce un :ref:`Color<class_Color>` dal primo :ref:`Theme<class_Theme>` corrispondente nell'albero se quel :ref:`Theme<class_Theme>` ha un elemento di colore con il nome ``name`` e il tipo ``theme_type`` specificati. Se ``theme_type`` è omesso, il nome della classe del controllo attuale viene utilizzato come tipo, oppure :ref:`theme_type_variation<class_Control_property_theme_type_variation>` se è definito. Se il tipo è un nome di classe, anche le sue classi padre sono verificate, in ordine di ereditarietà. Se il tipo è una variazione, i suoi tipi di base sono verificati, in ordine di dipendenza, quindi il nome della classe del controllo e le sue classi padre sono verificati.

Per il controllo attuale, sono considerati prima le sue sostituzioni locali (vedi :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>`), poi il suo :ref:`theme<class_Control_property_theme>` assegnato. Dopo il controllo attuale, sono considerati ogni controllo padre e il suo :ref:`theme<class_Control_property_theme>` assegnato; i controlli senza un :ref:`theme<class_Control_property_theme>` assegnato sono ignorati. Se nessun :ref:`Theme<class_Theme>` corrispondente nell'albero è trovato, sono utilizzati il :ref:`Theme<class_Theme>` personalizzato del progetto (vedi :ref:`ProjectSettings.gui/theme/custom<class_ProjectSettings_property_gui/theme/custom>`) e il :ref:`Theme<class_Theme>` predefinito (vedi :ref:`ThemeDB<class_ThemeDB>`).


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # Ottieni il colore del font definito per la classe del controllo attuale, se esiste.
        modulate = get_theme_color("font_color")
        # Ottieni il colore del font definito per la classe Button.
        modulate = get_theme_color("font_color", "Button")

 .. code-tab:: csharp

    public override void _Ready()
    {
        // Ottieni il colore del font definito per la classe del controllo attuale, se esiste.
        Modulate = GetThemeColor("font_color");
        // Ottieni il colore del font definito per la classe Button.
        Modulate = GetThemeColor("font_color", "Button"); }
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_constant:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_constant**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_constant>`

Restituisce una costante dal primo :ref:`Theme<class_Theme>` corrispondente nell'albero se quel :ref:`Theme<class_Theme>` ha un elemento di costante con il nome ``name`` e il tipo ``theme_type`` specificati.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_base_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_theme_default_base_scale**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_base_scale>`

Restituisce il valore di scala di base predefinito dal primo :ref:`Theme<class_Theme>` corrispondente nell'albero se quel :ref:`Theme<class_Theme>` ha un valore :ref:`Theme.default_base_scale<class_Theme_property_default_base_scale>` valido.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_font:

.. rst-class:: classref-method

:ref:`Font<class_Font>` **get_theme_default_font**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_font>`

Restituisce il font predefinito dal primo :ref:`Theme<class_Theme>` corrispondente nell'albero se quel :ref:`Theme<class_Theme>` ha un valore :ref:`Theme.default_font<class_Theme_property_default_font>` valido.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_default_font_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_default_font_size**\ (\ ) |const| :ref:`🔗<class_Control_method_get_theme_default_font_size>`

Restituisce la dimensione di font predefinito dal primo :ref:`Theme<class_Theme>` corrispondente nell'albero se quel :ref:`Theme<class_Theme>` ha un valore :ref:`Theme.default_font_size<class_Theme_property_default_font_size>` valido.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_font:

.. rst-class:: classref-method

:ref:`Font<class_Font>` **get_theme_font**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_font>`

Restituisce un :ref:`Font<class_Font>` dal primo :ref:`Theme<class_Theme>` corrispondente nell'albero se quel :ref:`Theme<class_Theme>` ha un elemento di font con il nome ``name`` e il tipo ``theme_type`` specificati.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_font_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_theme_font_size**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_font_size>`

Restituisce una dimensione di :ref:`Font<class_Font>` dal primo :ref:`Theme<class_Theme>` corrispondente nell'albero se quel :ref:`Theme<class_Theme>` ha un elemento di dimensione di font con il nome ``name`` e il tipo ``theme_type`` specificati.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_icon:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_theme_icon**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_icon>`

Restituisce un'icona dal primo :ref:`Theme<class_Theme>` corrispondente nell'albero se quel :ref:`Theme<class_Theme>` ha un elemento di icona con il nome ``name`` e il tipo ``theme_type`` specificati.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_theme_stylebox:

.. rst-class:: classref-method

:ref:`StyleBox<class_StyleBox>` **get_theme_stylebox**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_get_theme_stylebox>`

Restituisce uno :ref:`StyleBox<class_StyleBox>` dal primo :ref:`Theme<class_Theme>` corrispondente nell'albero se quel :ref:`Theme<class_Theme>` ha un elemento di stylebox con il nome ``name`` e il tipo ``theme_type`` specificati.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_get_tooltip:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tooltip**\ (\ at_position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Control_method_get_tooltip>`

Restituisce il testo del tooltip per la posizione ``at_position`` nelle coordinate locali del controllo, che in genere appare quando il cursore del mouse si trova su questo controllo. Come predefinito, restituisce :ref:`tooltip_text<class_Control_property_tooltip_text>`.

È possibile sovrascrivere :ref:`_get_tooltip()<class_Control_private_method__get_tooltip>` per personalizzare il comportamento di questo metodo.

\ **Nota:** Se questo metodo restituisce una :ref:`String<class_String>` vuota e :ref:`_make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>` non è sovrascritto, non viene visualizzato alcun tooltip.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_grab_click_focus:

.. rst-class:: classref-method

|void| **grab_click_focus**\ (\ ) :ref:`🔗<class_Control_method_grab_click_focus>`

Crea un :ref:`InputEventMouseButton<class_InputEventMouseButton>` che tenta di cliccare sul controllo. Se l'evento viene ricevuto, il controllo acquisisce il focus.


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        grab_click_focus() # Quando si clicca su un altro nodo Control, questo nodo verrà invece cliccato.

 .. code-tab:: csharp

    public override void _Process(double delta)
    {
        GrabClickFocus(); // Quando si clicca su un altro nodo Control, questo nodo verrà invece cliccato.
    }



.. rst-class:: classref-item-separator

----

.. _class_Control_method_grab_focus:

.. rst-class:: classref-method

|void| **grab_focus**\ (\ hide_focus\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_grab_focus>`

Ruba il focus da un altro controllo e diventa il controllo focalizzato (vedi :ref:`focus_mode<class_Control_property_focus_mode>`).

Se ``hide_focus`` è ``true``, il controllo non mostrerà visivamente il suo stato focalizzato. Non ha effetto su :ref:`LineEdit<class_LineEdit>` e :ref:`TextEdit<class_TextEdit>` quando :ref:`ProjectSettings.gui/common/show_focus_state_on_pointer_event<class_ProjectSettings_property_gui/common/show_focus_state_on_pointer_event>` è impostato su ``Text Input Controls``, né su qualsiasi controllo quando è impostato su ``Always``.

\ **Nota:** L'utilizzo di questo metodo insieme a :ref:`Callable.call_deferred()<class_Callable_method_call_deferred>` lo rende più affidabile, soprattutto quando viene chiamato all'interno di :ref:`Node._ready()<class_Node_private_method__ready>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_focus:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_focus**\ (\ ignore_hidden_focus\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Control_method_has_focus>`

Restituisce ``true`` se questo è il controllo attualmente attivo. Vedi :ref:`focus_mode<class_Control_property_focus_mode>`.

Se ``ignore_hidden_focus`` è ``true``, i controlli il cui focus è nascosto restituiranno sempre ``false``. Il focus nascosto avviene automaticamente quando i controlli acquisiscono il focus tramite input del mouse, oppure manualmente tramite :ref:`grab_focus()<class_Control_method_grab_focus>` con ``hide_focus`` impostato su ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_color**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_color>`

Restituisce ``true`` se nell'albero è presente un :ref:`Theme<class_Theme>` corrispondente che ha un elemento colore con il nome ``name`` e il tipo ``theme_type`` specificati.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_color_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_color_override>`

Restituisce ``true`` se è presente una sostituzione locale per un :ref:`Color<class_Color>` di tema con il nome specificato (``name``) in questo nodo **Control**.

Vedi :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_constant:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_constant**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_constant>`

Restituisce ``true`` se nell'albero è presente un :ref:`Theme<class_Theme>` corrispondente che ha un elemento costante con il nome ``name`` e il tipo ``theme_type`` specificati.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_constant_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_constant_override>`

Restituisce ``true`` se è presente una sostituzione locale per una costante di tema con il nome specificato (``name``) in questo nodo **Control**.

Vedi :ref:`add_theme_constant_override()<class_Control_method_add_theme_constant_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_font>`

Restituisce ``true`` se nell'albero è presente un :ref:`Theme<class_Theme>` corrispondente che ha un elemento di :ref:`Font<class_Font>` con il nome ``name`` e il tipo ``theme_type`` specificati.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_override>`

Restituisce ``true`` se è presente una sostituzione locale per un :ref:`Font<class_Font>` di tema con il nome specificato (``name``) in questo nodo **Control**.

Vedi :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_size:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_size**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_size>`

Restituisce ``true`` se nell'albero è presente un :ref:`Theme<class_Theme>` corrispondente che ha un elemento di dimensione di :ref:`Font<class_Font>` con il nome ``name`` e il tipo ``theme_type`` specificati.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_font_size_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_font_size_override>`

Restituisce ``true`` se è presente una sostituzione locale per una dimensione di font di tema con il nome specificato (``name``) in questo nodo **Control**.

Vedi :ref:`add_theme_font_size_override()<class_Control_method_add_theme_font_size_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_icon:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_icon**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_icon>`

Restituisce ``true`` se nell'albero è presente un :ref:`Theme<class_Theme>` corrispondente che ha un elemento icona con il nome ``name`` e il tipo ``theme_type`` specificati.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_icon_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_icon_override>`

Restituisce ``true`` se è presente una sostituzione locale per un'icona di tema con il nome specificato (``name``) in questo nodo **Control**.

Vedi :ref:`add_theme_icon_override()<class_Control_method_add_theme_icon_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_stylebox:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_stylebox**\ (\ name\: :ref:`StringName<class_StringName>`, theme_type\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Control_method_has_theme_stylebox>`

Restituisce ``true`` se nell'albero è presente un :ref:`Theme<class_Theme>` corrispondente che ha un elemento :ref:`StyleBox<class_StyleBox>` con il nome ``name`` e il tipo ``theme_type`` specificati.

Vedi :ref:`get_theme_color()<class_Control_method_get_theme_color>` per i dettagli.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_has_theme_stylebox_override:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Control_method_has_theme_stylebox_override>`

Restituisce ``true`` se è presente una sostituzione locale per una :ref:`StyleBox<class_StyleBox>` di tema con il nome specificato (``name``) in questo nodo **Control**.

Vedi :ref:`add_theme_stylebox_override()<class_Control_method_add_theme_stylebox_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_is_drag_successful:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_drag_successful**\ (\ ) |const| :ref:`🔗<class_Control_method_is_drag_successful>`

Restituisce ``true`` se un'operazione di trascinamento è avvenuta con successo. Alternativa a :ref:`Viewport.gui_is_drag_successful()<class_Viewport_method_gui_is_drag_successful>`.

Meglio usata con :ref:`Node.NOTIFICATION_DRAG_END<class_Node_constant_NOTIFICATION_DRAG_END>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_is_layout_rtl:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_layout_rtl**\ (\ ) |const| :ref:`🔗<class_Control_method_is_layout_rtl>`

Restituisce ``true`` se il layout è da destra a sinistra. Vedi anche :ref:`layout_direction<class_Control_property_layout_direction>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_release_focus:

.. rst-class:: classref-method

|void| **release_focus**\ (\ ) :ref:`🔗<class_Control_method_release_focus>`

Rilascia il focus. Nessun altro controllo sarà in grado di ricevere input.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_color_override:

.. rst-class:: classref-method

|void| **remove_theme_color_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_color_override>`

Rimuove una sostituzione locale per un :ref:`Color<class_Color>` di tema, con il nome ``name``, precedentemente aggiunto da :ref:`add_theme_color_override()<class_Control_method_add_theme_color_override>` o tramite il pannello Ispettore.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_constant_override:

.. rst-class:: classref-method

|void| **remove_theme_constant_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_constant_override>`

Rimuove una sostituzione locale per una costante di tema, con il nome ``name``, precedentemente aggiunta da :ref:`add_theme_constant_override()<class_Control_method_add_theme_constant_override>` o tramite il pannello Ispettore.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_font_override:

.. rst-class:: classref-method

|void| **remove_theme_font_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_font_override>`

Rimuove una sostituzione locale per un :ref:`Font<class_Font>` di tema, con il nome ``name``, precedentemente aggiunto da :ref:`add_theme_font_override()<class_Control_method_add_theme_font_override>` o tramite il pannello Ispettore.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_font_size_override:

.. rst-class:: classref-method

|void| **remove_theme_font_size_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_font_size_override>`

Rimuove una sostituzione locale per una dimensione di font :ref:`Font<class_Font>` di tema, con il nome ``name``, precedentemente aggiunta da :ref:`add_theme_font_size_override()<class_Control_method_add_theme_font_size_override>` o tramite il pannello Ispettore.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_icon_override:

.. rst-class:: classref-method

|void| **remove_theme_icon_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_icon_override>`

Rimuove una sostituzione locale per un'icona di tema, con il nome ``name``, precedentemente aggiunta da :ref:`add_theme_icon_override()<class_Control_method_add_theme_icon_override>` o tramite il pannello Ispettore.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_remove_theme_stylebox_override:

.. rst-class:: classref-method

|void| **remove_theme_stylebox_override**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Control_method_remove_theme_stylebox_override>`

Rimuove una sostituzione locale per uno :ref:`StyleBox<class_StyleBox>` di tema, con il nome ``name``, precedentemente aggiunto da :ref:`add_theme_stylebox_override()<class_Control_method_add_theme_stylebox_override>` o tramite il pannello Ispettore.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_reset_size:

.. rst-class:: classref-method

|void| **reset_size**\ (\ ) :ref:`🔗<class_Control_method_reset_size>`

Reimposta le dimensioni a :ref:`get_combined_minimum_size()<class_Control_method_get_combined_minimum_size>`. Ciò equivale a chiamare ``set_size(Vector2())`` (o qualsiasi dimensioni al di sotto delle minime).

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchor:

.. rst-class:: classref-method

|void| **set_anchor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, keep_offset\: :ref:`bool<class_bool>` = false, push_opposite_anchor\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Control_method_set_anchor>`

Imposta l'ancora per il lato specificato (:ref:`Side<enum_@GlobalScope_Side>`) a ``anchor``. Un metodo setter per :ref:`anchor_bottom<class_Control_property_anchor_bottom>`, :ref:`anchor_left<class_Control_property_anchor_left>`, :ref:`anchor_right<class_Control_property_anchor_right>`, e :ref:`anchor_top<class_Control_property_anchor_top>`.

Se ``keep_offset`` è ``true``, gli offset non sono aggiornati dopo questa operazione.

Se ``push_opposite_anchor`` è ``true`` e l'ancora opposta si sovrappone a questa ancora, quella opposta avrà il suo valore sovrascritto. Ad esempio, quando si imposta l'ancora sinistra su 1 e l'ancora destra ha un valore di 0,5, anche l'ancora destra otterrà il valore di 1. Se ``push_opposite_anchor`` fosse ``false``, l'ancora sinistra otterrebbe il valore 0,5.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchor_and_offset:

.. rst-class:: classref-method

|void| **set_anchor_and_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, anchor\: :ref:`float<class_float>`, offset\: :ref:`float<class_float>`, push_opposite_anchor\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_anchor_and_offset>`

Funziona come :ref:`set_anchor()<class_Control_method_set_anchor>`, ma invece dell'argomento ``keep_offset`` e dell'aggiornamento automatico dell'offset, consente di impostare l'offset autonomamente (vedi :ref:`set_offset()<class_Control_method_set_offset>`).

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchors_and_offsets_preset:

.. rst-class:: classref-method

|void| **set_anchors_and_offsets_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Control_method_set_anchors_and_offsets_preset>`

Imposta sia il preset di ancore sia il preset di offset. Vedi :ref:`set_anchors_preset()<class_Control_method_set_anchors_preset>` e :ref:`set_offsets_preset()<class_Control_method_set_offsets_preset>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_anchors_preset:

.. rst-class:: classref-method

|void| **set_anchors_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_anchors_preset>`

Imposta gli ancoraggi a ``preset``, come costante di :ref:`LayoutPreset<enum_Control_LayoutPreset>`. Questo è il codice equivalente all'utilizzo del menu Layout nell'editor 2D.

Se ``keep_offsets`` è ``true``, sarà aggiornata anche la posizione del controllo.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_begin:

.. rst-class:: classref-method

|void| **set_begin**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Control_method_set_begin>`

Imposta :ref:`offset_left<class_Control_property_offset_left>` e :ref:`offset_top<class_Control_property_offset_top>` contemporaneamente. Equivale a modificare :ref:`position<class_Control_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_drag_forwarding:

.. rst-class:: classref-method

|void| **set_drag_forwarding**\ (\ drag_func\: :ref:`Callable<class_Callable>`, can_drop_func\: :ref:`Callable<class_Callable>`, drop_func\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Control_method_set_drag_forwarding>`

Imposta i chiamabili specificati da utilizzare al posto dei metodi virtuali drag-and-drop del controllo. Se un chiamabile è vuoto, il suo rispettivo metodo virtuale viene utilizzato normalmente.

Gli argomenti per ogni chiamabile devono essere esattamente gli stessi dei rispettivi metodi virtuali, che sarebbero:

- ``drag_func`` corrisponde a :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>` e richiede un :ref:`Vector2<class_Vector2>`;

- ``can_drop_func`` corrisponde a :ref:`_can_drop_data()<class_Control_private_method__can_drop_data>` e richiede sia un :ref:`Vector2<class_Vector2>` sia un :ref:`Variant<class_Variant>`;

- ``drop_func`` corrisponde a :ref:`_drop_data()<class_Control_private_method__drop_data>` e richiede sia un :ref:`Vector2<class_Vector2>` sia un :ref:`Variant<class_Variant>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_drag_preview:

.. rst-class:: classref-method

|void| **set_drag_preview**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_Control_method_set_drag_preview>`

Mostra il controllo specificato al puntatore del mouse. Un buon momento per chiamare questo metodo è in :ref:`_get_drag_data()<class_Control_private_method__get_drag_data>`. Il controllo non deve essere nell'albero di scene. Non dovresti liberare il controllo e non dovresti mantenere un riferimento al controllo oltre la durata del trascinamento. Sarà eliminato automaticamente al termine del trascinamento.


.. tabs::

 .. code-tab:: gdscript

    @export var color = Color(1, 0, 0, 1)

    func _get_drag_data(position):
        # Usa un controllo che non è nell'albero
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
        // Usa un controllo che non è nell'albero
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

Imposta :ref:`offset_right<class_Control_property_offset_right>` e :ref:`offset_bottom<class_Control_property_offset_bottom>` contemporaneamente.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_focus_neighbor:

.. rst-class:: classref-method

|void| **set_focus_neighbor**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, neighbor\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_Control_method_set_focus_neighbor>`

Imposta il vicino di focus per il lato (:ref:`Side<enum_@GlobalScope_Side>`) specificato sul **Control** nel percorso di nodo ``neighbor``. Un metodo setter per :ref:`focus_neighbor_bottom<class_Control_property_focus_neighbor_bottom>`, :ref:`focus_neighbor_left<class_Control_property_focus_neighbor_left>`, :ref:`focus_neighbor_right<class_Control_property_focus_neighbor_right>` e :ref:`focus_neighbor_top<class_Control_property_focus_neighbor_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_global_position:

.. rst-class:: classref-method

|void| **set_global_position**\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_global_position>`

Imposta :ref:`global_position<class_Control_property_global_position>` sul ``position`` specificato.

Se ``keep_offsets`` è ``true``, gli ancoraggi del controllo saranno aggiornati al posto degli offset.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_offset:

.. rst-class:: classref-method

|void| **set_offset**\ (\ side\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Control_method_set_offset>`

Imposta l'offset per il lato (:ref:`Side<enum_@GlobalScope_Side>`) specificato a ``offset``. Un metodo setter per :ref:`offset_bottom<class_Control_property_offset_bottom>`, :ref:`offset_left<class_Control_property_offset_left>`, :ref:`offset_right<class_Control_property_offset_right>` e :ref:`offset_top<class_Control_property_offset_top>`.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_offsets_preset:

.. rst-class:: classref-method

|void| **set_offsets_preset**\ (\ preset\: :ref:`LayoutPreset<enum_Control_LayoutPreset>`, resize_mode\: :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` = 0, margin\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Control_method_set_offsets_preset>`

Imposta gli offset su un ``preset`` dall'enumerazione :ref:`LayoutPreset<enum_Control_LayoutPreset>`. Questo è l'equivalente in codice all'utilizzo del menu Layout nell'editor 2D.

Utilizza il parametro ``resize_mode`` con le costanti da :ref:`LayoutPresetMode<enum_Control_LayoutPresetMode>` per determinare meglio la dimensione risultante del **Control**. La dimensione costante sarà ignorata se utilizzata con i preset che cambiano dimensione, ad esempio :ref:`PRESET_LEFT_WIDE<class_Control_constant_PRESET_LEFT_WIDE>`.

Utilizza il parametro ``margin`` per determinare lo spazio tra il **Control** e i bordi.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_position:

.. rst-class:: classref-method

|void| **set_position**\ (\ position\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_position>`

Imposta :ref:`position<class_Control_property_position>` sul ``position`` specificato.

Se ``keep_offsets`` è ``true``, gli ancoraggi del controllo saranno aggiornati al posto degli offset.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_set_size:

.. rst-class:: classref-method

|void| **set_size**\ (\ size\: :ref:`Vector2<class_Vector2>`, keep_offsets\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Control_method_set_size>`

Imposta le dimensioni (vedi :ref:`size<class_Control_property_size>`).

Se ``keep_offsets`` è ``true``, gli ancoraggi del controllo saranno aggiornati al posto degli offset.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_update_maximum_size:

.. rst-class:: classref-method

|void| **update_maximum_size**\ (\ ) :ref:`🔗<class_Control_method_update_maximum_size>`

Invalida la cache delle dimensioni massime in questo nodo e nei nodi padre fino al livello superiore. Pensato per essere utilizzato con :ref:`get_maximum_size()<class_Control_method_get_maximum_size>` quando il valore restituito viene modificato. Impostare :ref:`custom_maximum_size<class_Control_property_custom_maximum_size>` richiama questo metodo automaticamente.

\ **Nota:** Chiamare questo metodo richiama anche :ref:`update_minimum_size()<class_Control_method_update_minimum_size>` poiché le dimensioni minime combinate potrebbero essere influenzate dalla modifica delle dimensioni massime.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_update_minimum_size:

.. rst-class:: classref-method

|void| **update_minimum_size**\ (\ ) :ref:`🔗<class_Control_method_update_minimum_size>`

Invalida la cache delle dimensioni minime in questo nodo e nei nodi padre fino al livello superiore. Pensato per essere utilizzato con :ref:`get_minimum_size()<class_Control_method_get_minimum_size>` quando il valore restituito viene modificato. Impostare :ref:`custom_minimum_size<class_Control_property_custom_minimum_size>` richiama questo metodo automaticamente.

.. rst-class:: classref-item-separator

----

.. _class_Control_method_warp_mouse:

.. rst-class:: classref-method

|void| **warp_mouse**\ (\ position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Control_method_warp_mouse>`

Sposta il cursore del mouse sulla posizione ``position``, che è relativa alla posizione (:ref:`position<class_Control_property_position>`) di questo **Control**.

\ **Nota:** :ref:`warp_mouse()<class_Control_method_warp_mouse>` è supportato solo su Windows, macOS, e Linux. Non ha effetto su Android, iOS e Web.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo serve per costruire un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
