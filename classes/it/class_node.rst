:github_url: hide

.. _class_Node:

Node
====

**Eredita:** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`AnimationMixer<class_AnimationMixer>`, :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, :ref:`CanvasItem<class_CanvasItem>`, :ref:`CanvasLayer<class_CanvasLayer>`, :ref:`EditorFileSystem<class_EditorFileSystem>`, :ref:`EditorPlugin<class_EditorPlugin>`, :ref:`EditorResourcePreview<class_EditorResourcePreview>`, :ref:`HTTPRequest<class_HTTPRequest>`, :ref:`InstancePlaceholder<class_InstancePlaceholder>`, :ref:`MissingNode<class_MissingNode>`, :ref:`MultiplayerSpawner<class_MultiplayerSpawner>`, :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`, :ref:`NavigationAgent2D<class_NavigationAgent2D>`, :ref:`NavigationAgent3D<class_NavigationAgent3D>`, :ref:`Node3D<class_Node3D>`, :ref:`ResourcePreloader<class_ResourcePreloader>`, :ref:`ShaderGlobalsOverride<class_ShaderGlobalsOverride>`, :ref:`StatusIndicator<class_StatusIndicator>`, :ref:`Timer<class_Timer>`, :ref:`Viewport<class_Viewport>`, :ref:`WorldEnvironment<class_WorldEnvironment>`

Classe di base per tutti gli oggetti della scena.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

I nodi sono i mattoni di Godot. Possono essere assegnati come figli di un altro nodo, risultando in una disposizione ad albero. Un determinato nodo può contenere un numero qualsiasi di nodi come figli con il requisito che tutti i fratelli (figli diretti di un nodo) debbano avere nomi univoci.

Un albero di nodi è chiamato *scena*. Le scene possono essere salvate su disco e quindi istanziate in altre scene. Ciò consente un'elevata flessibilità nell'architettura e nel modello di dati dei progetti Godot.

\ **Albero di scene:** il :ref:`SceneTree<class_SceneTree>` contiene l'albero attivo dei nodi. Quando un nodo viene aggiunto all'albero di scene, riceve la notifica :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>` e il suo callback :ref:`_enter_tree()<class_Node_private_method__enter_tree>` viene attivato. I nodi figli vengono sempre aggiunti *dopo* il loro nodo padre, ovvero il callback :ref:`_enter_tree()<class_Node_private_method__enter_tree>` di un nodo padre verrà attivato prima di quello del suo figlio.

Una volta che tutti i nodi sono stati aggiunti nell'albero di scene, ricevono la notifica :ref:`NOTIFICATION_READY<class_Node_constant_NOTIFICATION_READY>` e i rispettivi callback :ref:`_ready()<class_Node_private_method__ready>` vengono attivati. Per un insieme di nodi, il callback :ref:`_ready()<class_Node_private_method__ready>` viene chiamato in ordine inverso, partendo dai figli e risalendo ai nodi padre.

Ciò significa che quando viene aggiunto un nodo all'albero di scene, per i callback sarà utilizzato l'ordine seguente: :ref:`_enter_tree()<class_Node_private_method__enter_tree>` del genitore, :ref:`_enter_tree()<class_Node_private_method__enter_tree>` dei figli, :ref:`_ready()<class_Node_private_method__ready>` dei figli e infine :ref:`_ready()<class_Node_private_method__ready>` del genitore (ricorsivamente per l'intero albero di scene).

\ **Elaborazione:** i nodi possono sovrascrivere lo stato di "processo", in modo da ricevere un callback su ogni frame che richiede loro di elaborare (fare qualcosa). L'elaborazione normale (callback :ref:`_process()<class_Node_private_method__process>`, attivato con :ref:`set_process()<class_Node_method_set_process>`) avviene il più velocemente possibile e dipende dal frame rate, con il tempo di elaborazione *delta* (in secondi) passato come argomento. L'elaborazione della fisica (callback :ref:`_physics_process()<class_Node_private_method__physics_process>`, attivato con :ref:`set_physics_process()<class_Node_method_set_physics_process>`) avviene un numero fisso di volte al secondo (60 come predefinito) ed è utile per il codice che riguarda il motore della fisica.

I nodi possono anche elaborare gli eventi di input. Quando presente, la funzione :ref:`_input()<class_Node_private_method__input>` sarà chiamata per ogni input ricevuto dal programma. In molti casi, questo può essere eccessivo (a meno che non sia utilizzato per progetti semplici) e potrebbe essere preferibile la funzione :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>`; essa è chiamata quando l'evento di input non è stato gestito da nessun altro (in genere, dai nodi :ref:`Control<class_Control>`), assicurando che il nodo riceva solo gli eventi destinati a esso.

Per tenere traccia della gerarchia delle scene (specialmente quando si istanziano scene in altre scene), è possibile impostare un "proprietario" per il nodo con la proprietà :ref:`owner<class_Node_property_owner>`. Ciò tiene traccia di chi ha istanziato cosa. È utile soprattutto quando si scrivono strumenti per l'editor.

Infine, quando un nodo viene liberato con :ref:`Object.free()<class_Object_method_free>` o :ref:`queue_free()<class_Node_method_queue_free>`, libererà anche tutti i suoi figli.

\ **Gruppi:** È possibile aggiungere i nodi a quanti più gruppi vuoi per facilitarne la gestione. Potresti creare gruppi come "nemici" o "oggetti da collezione" ad esempio, a seconda del tuo gioco. Vedi :ref:`add_to_group()<class_Node_method_add_to_group>`, :ref:`is_in_group()<class_Node_method_is_in_group>` e :ref:`remove_from_group()<class_Node_method_remove_from_group>`. Puoi successivamente recuperare tutti i nodi in questi gruppi, iterarli e persino chiamare metodi sui gruppi tramite i metodi su :ref:`SceneTree<class_SceneTree>`.

\ **Connessione in rete con nodi:** Dopo essersi connessi a un server (o averne creato uno, vedi :ref:`ENetMultiplayerPeer<class_ENetMultiplayerPeer>`), è possibile utilizzare il sistema di RPC ("Remote Procedure Call") integrato per comunicare in rete. Chiamando :ref:`rpc()<class_Node_method_rpc>` con il nome di un metodo, verrà chiamato localmente e in tutti i peer connessi (peer = client e il server che accetta le connessioni). Per identificare quale nodo riceve la chiamata RPC, Godot utilizzerà il suo :ref:`NodePath<class_NodePath>` (assicurati che i nomi dei nodi siano gli stessi su tutti i peer). Inoltre, dai un'occhiata al tutorial di rete di alto livello e alle demo corrispondenti.

\ **Nota:** La proprietà ``script`` fa parte della classe :ref:`Object<class_Object>`, non **Node**. Non è esposta come la maggior parte delle proprietà, ma ha un setter e un getter (vedere :ref:`Object.set_script()<class_Object_method_set_script>` e :ref:`Object.get_script()<class_Object_method_get_script>`).

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Nodi e scene <../getting_started/step_by_step/nodes_and_scenes>`

- `Tutte le demo <https://github.com/godotengine/godot-demo-projects/>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`                       | :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>`               | ``0``     |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                                 | :ref:`editor_description<class_Node_property_editor_description>`                 | ``""``    |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`MultiplayerAPI<class_MultiplayerAPI>`                                 | :ref:`multiplayer<class_Node_property_multiplayer>`                               |           |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>`                                         | :ref:`name<class_Node_property_name>`                                             |           |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`Node<class_Node>`                                                     | :ref:`owner<class_Node_property_owner>`                                           |           |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>`         | :ref:`physics_interpolation_mode<class_Node_property_physics_interpolation_mode>` | ``0``     |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`ProcessMode<enum_Node_ProcessMode>`                                   | :ref:`process_mode<class_Node_property_process_mode>`                             | ``0``     |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                       | :ref:`process_physics_priority<class_Node_property_process_physics_priority>`     | ``0``     |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                       | :ref:`process_priority<class_Node_property_process_priority>`                     | ``0``     |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>`                     | :ref:`process_thread_group<class_Node_property_process_thread_group>`             | ``0``     |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                       | :ref:`process_thread_group_order<class_Node_property_process_thread_group_order>` |           |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>`\] | :ref:`process_thread_messages<class_Node_property_process_thread_messages>`       |           |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                                 | :ref:`scene_file_path<class_Node_property_scene_file_path>`                       |           |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                     | :ref:`unique_name_in_owner<class_Node_property_unique_name_in_owner>`             | ``false`` |
   +-----------------------------------------------------------------------------+-----------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_enter_tree<class_Node_private_method__enter_tree>`\ (\ ) |virtual|                                                                                                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_exit_tree<class_Node_private_method__exit_tree>`\ (\ ) |virtual|                                                                                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_accessibility_configuration_warnings<class_Node_private_method__get_accessibility_configuration_warnings>`\ (\ ) |virtual| |const|                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`_get_configuration_warnings<class_Node_private_method__get_configuration_warnings>`\ (\ ) |virtual| |const|                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                            | :ref:`_get_focused_accessibility_element<class_Node_private_method__get_focused_accessibility_element>`\ (\ ) |virtual| |const|                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_input<class_Node_private_method__input>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual|                                                                                                                            |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_physics_process<class_Node_private_method__physics_process>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                                                                                                                  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_process<class_Node_private_method__process>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                                                                                                                                  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_ready<class_Node_private_method__ready>`\ (\ ) |virtual|                                                                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_shortcut_input<class_Node_private_method__shortcut_input>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual|                                                                                                          |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_unhandled_input<class_Node_private_method__unhandled_input>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual|                                                                                                        |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`_unhandled_key_input<class_Node_private_method__unhandled_key_input>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual|                                                                                                |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_child<class_Node_method_add_child>`\ (\ node\: :ref:`Node<class_Node>`, force_readable_name\: :ref:`bool<class_bool>` = false, internal\: :ref:`InternalMode<enum_Node_InternalMode>` = 0\ )                                  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_sibling<class_Node_method_add_sibling>`\ (\ sibling\: :ref:`Node<class_Node>`, force_readable_name\: :ref:`bool<class_bool>` = false\ )                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_to_group<class_Node_method_add_to_group>`\ (\ group\: :ref:`StringName<class_StringName>`, persistent\: :ref:`bool<class_bool>` = false\ )                                                                                    |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`atr<class_Node_method_atr>`\ (\ message\: :ref:`String<class_String>`, context\: :ref:`StringName<class_StringName>` = ""\ ) |const|                                                                                              |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`atr_n<class_Node_method_atr_n>`\ (\ message\: :ref:`String<class_String>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = ""\ ) |const|         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`call_deferred_thread_group<class_Node_method_call_deferred_thread_group>`\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`call_thread_safe<class_Node_method_call_thread_safe>`\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_auto_translate<class_Node_method_can_auto_translate>`\ (\ ) |const|                                                                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_process<class_Node_method_can_process>`\ (\ ) |const|                                                                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                                        | :ref:`create_tween<class_Node_method_create_tween>`\ (\ )                                                                                                                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                          | :ref:`duplicate<class_Node_method_duplicate>`\ (\ flags\: :ref:`int<class_int>` = 15\ ) |const|                                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                          | :ref:`find_child<class_Node_method_find_child>`\ (\ pattern\: :ref:`String<class_String>`, recursive\: :ref:`bool<class_bool>` = true, owned\: :ref:`bool<class_bool>` = true\ ) |const|                                                |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\]             | :ref:`find_children<class_Node_method_find_children>`\ (\ pattern\: :ref:`String<class_String>`, type\: :ref:`String<class_String>` = "", recursive\: :ref:`bool<class_bool>` = true, owned\: :ref:`bool<class_bool>` = true\ ) |const| |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                          | :ref:`find_parent<class_Node_method_find_parent>`\ (\ pattern\: :ref:`String<class_String>`\ ) |const|                                                                                                                                  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                            | :ref:`get_accessibility_element<class_Node_method_get_accessibility_element>`\ (\ ) |const|                                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                          | :ref:`get_child<class_Node_method_get_child>`\ (\ idx\: :ref:`int<class_int>`, include_internal\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                            |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_child_count<class_Node_method_get_child_count>`\ (\ include_internal\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\]             | :ref:`get_children<class_Node_method_get_children>`\ (\ include_internal\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_groups<class_Node_method_get_groups>`\ (\ ) |const|                                                                                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_index<class_Node_method_get_index>`\ (\ include_internal\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Window<class_Window>`                                      | :ref:`get_last_exclusive_window<class_Node_method_get_last_exclusive_window>`\ (\ ) |const|                                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_multiplayer_authority<class_Node_method_get_multiplayer_authority>`\ (\ ) |const|                                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                          | :ref:`get_node<class_Node_method_get_node>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                        | :ref:`get_node_and_resource<class_Node_method_get_node_and_resource>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ )                                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                          | :ref:`get_node_or_null<class_Node_method_get_node_or_null>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_node_rpc_config<class_Node_method_get_node_rpc_config>`\ (\ ) |const|                                                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]               | :ref:`get_orphan_node_ids<class_Node_method_get_orphan_node_ids>`\ (\ ) |static|                                                                                                                                                        |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                          | :ref:`get_parent<class_Node_method_get_parent>`\ (\ ) |const|                                                                                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                  | :ref:`get_path<class_Node_method_get_path>`\ (\ ) |const|                                                                                                                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                  | :ref:`get_path_to<class_Node_method_get_path_to>`\ (\ node\: :ref:`Node<class_Node>`, use_unique_path\: :ref:`bool<class_bool>` = false\ ) |const|                                                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_physics_process_delta_time<class_Node_method_get_physics_process_delta_time>`\ (\ ) |const|                                                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_process_delta_time<class_Node_method_get_process_delta_time>`\ (\ ) |const|                                                                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`get_scene_instance_load_placeholder<class_Node_method_get_scene_instance_load_placeholder>`\ (\ ) |const|                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SceneTree<class_SceneTree>`                                | :ref:`get_tree<class_Node_method_get_tree>`\ (\ ) |const|                                                                                                                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_tree_string<class_Node_method_get_tree_string>`\ (\ )                                                                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_tree_string_pretty<class_Node_method_get_tree_string_pretty>`\ (\ )                                                                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Viewport<class_Viewport>`                                  | :ref:`get_viewport<class_Node_method_get_viewport>`\ (\ ) |const|                                                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Window<class_Window>`                                      | :ref:`get_window<class_Node_method_get_window>`\ (\ ) |const|                                                                                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_node<class_Node_method_has_node>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_node_and_resource<class_Node_method_has_node_and_resource>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_ancestor_of<class_Node_method_is_ancestor_of>`\ (\ node\: :ref:`Node<class_Node>`\ ) |const|                                                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_displayed_folded<class_Node_method_is_displayed_folded>`\ (\ ) |const|                                                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_editable_instance<class_Node_method_is_editable_instance>`\ (\ node\: :ref:`Node<class_Node>`\ ) |const|                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_greater_than<class_Node_method_is_greater_than>`\ (\ node\: :ref:`Node<class_Node>`\ ) |const|                                                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_in_group<class_Node_method_is_in_group>`\ (\ group\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                            |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_inside_tree<class_Node_method_is_inside_tree>`\ (\ ) |const|                                                                                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_multiplayer_authority<class_Node_method_is_multiplayer_authority>`\ (\ ) |const|                                                                                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_node_ready<class_Node_method_is_node_ready>`\ (\ ) |const|                                                                                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_part_of_edited_scene<class_Node_method_is_part_of_edited_scene>`\ (\ ) |const|                                                                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_physics_interpolated<class_Node_method_is_physics_interpolated>`\ (\ ) |const|                                                                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_physics_interpolated_and_enabled<class_Node_method_is_physics_interpolated_and_enabled>`\ (\ ) |const|                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_physics_processing<class_Node_method_is_physics_processing>`\ (\ ) |const|                                                                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_physics_processing_internal<class_Node_method_is_physics_processing_internal>`\ (\ ) |const|                                                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_processing<class_Node_method_is_processing>`\ (\ ) |const|                                                                                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_processing_input<class_Node_method_is_processing_input>`\ (\ ) |const|                                                                                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_processing_internal<class_Node_method_is_processing_internal>`\ (\ ) |const|                                                                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_processing_shortcut_input<class_Node_method_is_processing_shortcut_input>`\ (\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_processing_unhandled_input<class_Node_method_is_processing_unhandled_input>`\ (\ ) |const|                                                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_processing_unhandled_key_input<class_Node_method_is_processing_unhandled_key_input>`\ (\ ) |const|                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`move_child<class_Node_method_move_child>`\ (\ child_node\: :ref:`Node<class_Node>`, to_index\: :ref:`int<class_int>`\ )                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`notify_deferred_thread_group<class_Node_method_notify_deferred_thread_group>`\ (\ what\: :ref:`int<class_int>`\ )                                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`notify_thread_safe<class_Node_method_notify_thread_safe>`\ (\ what\: :ref:`int<class_int>`\ )                                                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`print_orphan_nodes<class_Node_method_print_orphan_nodes>`\ (\ ) |static|                                                                                                                                                          |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`print_tree<class_Node_method_print_tree>`\ (\ )                                                                                                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`print_tree_pretty<class_Node_method_print_tree_pretty>`\ (\ )                                                                                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`propagate_call<class_Node_method_propagate_call>`\ (\ method\: :ref:`StringName<class_StringName>`, args\: :ref:`Array<class_Array>` = [], parent_first\: :ref:`bool<class_bool>` = false\ )                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`propagate_notification<class_Node_method_propagate_notification>`\ (\ what\: :ref:`int<class_int>`\ )                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`queue_accessibility_update<class_Node_method_queue_accessibility_update>`\ (\ )                                                                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`queue_free<class_Node_method_queue_free>`\ (\ )                                                                                                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_child<class_Node_method_remove_child>`\ (\ node\: :ref:`Node<class_Node>`\ )                                                                                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_from_group<class_Node_method_remove_from_group>`\ (\ group\: :ref:`StringName<class_StringName>`\ )                                                                                                                        |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`reparent<class_Node_method_reparent>`\ (\ new_parent\: :ref:`Node<class_Node>`, keep_global_transform\: :ref:`bool<class_bool>` = true\ )                                                                                         |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`replace_by<class_Node_method_replace_by>`\ (\ node\: :ref:`Node<class_Node>`, keep_groups\: :ref:`bool<class_bool>` = false\ )                                                                                                    |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`request_ready<class_Node_method_request_ready>`\ (\ )                                                                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`reset_physics_interpolation<class_Node_method_reset_physics_interpolation>`\ (\ )                                                                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`rpc<class_Node_method_rpc>`\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rpc_config<class_Node_method_rpc_config>`\ (\ method\: :ref:`StringName<class_StringName>`, config\: :ref:`Variant<class_Variant>`\ )                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`rpc_id<class_Node_method_rpc_id>`\ (\ peer_id\: :ref:`int<class_int>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                              |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_deferred_thread_group<class_Node_method_set_deferred_thread_group>`\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                              |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_display_folded<class_Node_method_set_display_folded>`\ (\ fold\: :ref:`bool<class_bool>`\ )                                                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_editable_instance<class_Node_method_set_editable_instance>`\ (\ node\: :ref:`Node<class_Node>`, is_editable\: :ref:`bool<class_bool>`\ )                                                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_multiplayer_authority<class_Node_method_set_multiplayer_authority>`\ (\ id\: :ref:`int<class_int>`, recursive\: :ref:`bool<class_bool>` = true\ )                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_physics_process<class_Node_method_set_physics_process>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_physics_process_internal<class_Node_method_set_physics_process_internal>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_process<class_Node_method_set_process>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_process_input<class_Node_method_set_process_input>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_process_internal<class_Node_method_set_process_internal>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_process_shortcut_input<class_Node_method_set_process_shortcut_input>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_process_unhandled_input<class_Node_method_set_process_unhandled_input>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_process_unhandled_key_input<class_Node_method_set_process_unhandled_key_input>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_scene_instance_load_placeholder<class_Node_method_set_scene_instance_load_placeholder>`\ (\ load_placeholder\: :ref:`bool<class_bool>`\ )                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_thread_safe<class_Node_method_set_thread_safe>`\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_translation_domain_inherited<class_Node_method_set_translation_domain_inherited>`\ (\ )                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`update_configuration_warnings<class_Node_method_update_configuration_warnings>`\ (\ )                                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_Node_signal_child_entered_tree:

.. rst-class:: classref-signal

**child_entered_tree**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_signal_child_entered_tree>`

Emesso quando il nodo figlio ``node`` entra nel :ref:`SceneTree<class_SceneTree>`, solitamente perché questo nodo è entrato nell'albero (vedi :ref:`tree_entered<class_Node_signal_tree_entered>`) o è stato chiamato :ref:`add_child()<class_Node_method_add_child>`.

Questo segnale viene emesso *dopo* :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>` e :ref:`tree_entered<class_Node_signal_tree_entered>` del nodo figlio.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_child_exiting_tree:

.. rst-class:: classref-signal

**child_exiting_tree**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_signal_child_exiting_tree>`

Emesso quando il figlio ``node`` sta per uscire dal :ref:`SceneTree<class_SceneTree>`, solitamente perché questo nodo sta uscendo dall'albero (vedi :ref:`tree_exiting<class_Node_signal_tree_exiting>`), o perché il figlio ``node`` sta per essere rimosso o liberato.

Quando viene ricevuto questo segnale, il figlio ``node`` è ancora accessibile all'interno dell'albero. Questo segnale viene emesso *dopo* :ref:`tree_exiting<class_Node_signal_tree_exiting>` e :ref:`NOTIFICATION_EXIT_TREE<class_Node_constant_NOTIFICATION_EXIT_TREE>` del figlio.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_child_order_changed:

.. rst-class:: classref-signal

**child_order_changed**\ (\ ) :ref:`🔗<class_Node_signal_child_order_changed>`

Emesso quando la lista dei figli viene cambiata. Ciò accade quando i nodi figli vengono aggiunti, spostati o rimossi.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_editor_description_changed:

.. rst-class:: classref-signal

**editor_description_changed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_signal_editor_description_changed>`

Emesso quando il campo della descrizione dell'editor del nodo cambia.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_editor_state_changed:

.. rst-class:: classref-signal

**editor_state_changed**\ (\ ) :ref:`🔗<class_Node_signal_editor_state_changed>`

Emesso quando un attributo del nodo rilevante per l'editor viene modificato. Emesso solo nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_ready:

.. rst-class:: classref-signal

**ready**\ (\ ) :ref:`🔗<class_Node_signal_ready>`

Emesso quando il nodo è considerato pronto, dopo che :ref:`_ready()<class_Node_private_method__ready>` è stato chiamato.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_renamed:

.. rst-class:: classref-signal

**renamed**\ (\ ) :ref:`🔗<class_Node_signal_renamed>`

Emesso quando il :ref:`name<class_Node_property_name>` del nodo viene cambiato, se il nodo si trova all'interno dell'albero.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_replacing_by:

.. rst-class:: classref-signal

**replacing_by**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_signal_replacing_by>`

Emesso quando questo nodo viene sostituito da ``node``, vedi :ref:`replace_by()<class_Node_method_replace_by>`.

Questo segnale viene emesso *dopo* che ``node`` è stato aggiunto come figlio del nodo padre originale, ma *prima* che tutti i nodi figlio originali siano stati riassegnati a ``node``.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_tree_entered:

.. rst-class:: classref-signal

**tree_entered**\ (\ ) :ref:`🔗<class_Node_signal_tree_entered>`

Emesso quando il nodo entra nell'albero.

Questo segnale viene emesso *dopo* la notifica corrispondente :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_tree_exited:

.. rst-class:: classref-signal

**tree_exited**\ (\ ) :ref:`🔗<class_Node_signal_tree_exited>`

Emesso dopo che il nodo esce dall'albero e non è più attivo.

Questo segnale viene emesso *dopo* la notifica corrispondente :ref:`NOTIFICATION_EXIT_TREE<class_Node_constant_NOTIFICATION_EXIT_TREE>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_tree_exiting:

.. rst-class:: classref-signal

**tree_exiting**\ (\ ) :ref:`🔗<class_Node_signal_tree_exiting>`

Emesso quando il nodo sta per uscire dall'albero. Il nodo è ancora valido. In quanto tale, questo è il posto giusto per la de-inizializzazione (o un "distruttore", se preferisci).

Questo segnale viene emesso *dopo* il metodo :ref:`_exit_tree()<class_Node_private_method__exit_tree>` del nodo e *prima* della notifica corrispondente :ref:`NOTIFICATION_EXIT_TREE<class_Node_constant_NOTIFICATION_EXIT_TREE>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Node_ProcessMode:

.. rst-class:: classref-enumeration

enum **ProcessMode**: :ref:`🔗<enum_Node_ProcessMode>`

.. _class_Node_constant_PROCESS_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Node_ProcessMode>` **PROCESS_MODE_INHERIT** = ``0``

Eredita :ref:`process_mode<class_Node_property_process_mode>` dal nodo padre. Questa è l'impostazione predefinita per qualsiasi nodo appena creato.

.. _class_Node_constant_PROCESS_MODE_PAUSABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Node_ProcessMode>` **PROCESS_MODE_PAUSABLE** = ``1``

Interrompe l'elaborazione quando :ref:`SceneTree.paused<class_SceneTree_property_paused>` è ``true``. Questo è l'inverso di :ref:`PROCESS_MODE_WHEN_PAUSED<class_Node_constant_PROCESS_MODE_WHEN_PAUSED>` e l'impostazione predefinita per il nodo radice.

.. _class_Node_constant_PROCESS_MODE_WHEN_PAUSED:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Node_ProcessMode>` **PROCESS_MODE_WHEN_PAUSED** = ``2``

Elabora **solo** quando :ref:`SceneTree.paused<class_SceneTree_property_paused>` è ``true``. Questo è l'inverso di :ref:`PROCESS_MODE_PAUSABLE<class_Node_constant_PROCESS_MODE_PAUSABLE>`.

.. _class_Node_constant_PROCESS_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Node_ProcessMode>` **PROCESS_MODE_ALWAYS** = ``3``

Elabora sempre. Continua a elaborare, ignorando :ref:`SceneTree.paused<class_SceneTree_property_paused>`. Questo è l'inverso di :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. _class_Node_constant_PROCESS_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Node_ProcessMode>` **PROCESS_MODE_DISABLED** = ``4``

Non elaborare mai. Disattiva completamente l'elaborazione, ignorando :ref:`SceneTree.paused<class_SceneTree_property_paused>`. Questo è l'inverso di :ref:`PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`.

.. rst-class:: classref-item-separator

----

.. _enum_Node_ProcessThreadGroup:

.. rst-class:: classref-enumeration

enum **ProcessThreadGroup**: :ref:`🔗<enum_Node_ProcessThreadGroup>`

.. _class_Node_constant_PROCESS_THREAD_GROUP_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **PROCESS_THREAD_GROUP_INHERIT** = ``0``

Elabora questo nodo in base alla modalità di gruppo thread del primo nodo genitore (o antenato) che ha una modalità di gruppo thread che non è ereditata. Vedi :ref:`process_thread_group<class_Node_property_process_thread_group>` per ulteriori informazioni.

.. _class_Node_constant_PROCESS_THREAD_GROUP_MAIN_THREAD:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **PROCESS_THREAD_GROUP_MAIN_THREAD** = ``1``

Elabora questo nodo (e i nodi figlio impostati per ereditare) sul thread principale. Vedi :ref:`process_thread_group<class_Node_property_process_thread_group>` per ulteriori informazioni.

.. _class_Node_constant_PROCESS_THREAD_GROUP_SUB_THREAD:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **PROCESS_THREAD_GROUP_SUB_THREAD** = ``2``

Elabora questo nodo (e i nodi figlio impostati per ereditare) su un thread secondario. Vedi :ref:`process_thread_group<class_Node_property_process_thread_group>` per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _enum_Node_ProcessThreadMessages:

.. rst-class:: classref-enumeration

flags **ProcessThreadMessages**: :ref:`🔗<enum_Node_ProcessThreadMessages>`

.. _class_Node_constant_FLAG_PROCESS_THREAD_MESSAGES:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>` **FLAG_PROCESS_THREAD_MESSAGES** = ``1``

Consente a questo nodo di elaborare messaggi da thread creati con :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` subito prima che sia chiamato :ref:`_process()<class_Node_private_method__process>`.

.. _class_Node_constant_FLAG_PROCESS_THREAD_MESSAGES_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>` **FLAG_PROCESS_THREAD_MESSAGES_PHYSICS** = ``2``

Consente a questo nodo di elaborare messaggi da thread creati con :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` subito prima che sia chiamato :ref:`_physics_process()<class_Node_private_method__physics_process>`.

.. _class_Node_constant_FLAG_PROCESS_THREAD_MESSAGES_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>` **FLAG_PROCESS_THREAD_MESSAGES_ALL** = ``3``

Consente a questo nodo di elaborare messaggi da thread creati con :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` subito prima che sia chiamato :ref:`_process()<class_Node_private_method__process>` o :ref:`_physics_process()<class_Node_private_method__physics_process>`.

.. rst-class:: classref-item-separator

----

.. _enum_Node_PhysicsInterpolationMode:

.. rst-class:: classref-enumeration

enum **PhysicsInterpolationMode**: :ref:`🔗<enum_Node_PhysicsInterpolationMode>`

.. _class_Node_constant_PHYSICS_INTERPOLATION_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` **PHYSICS_INTERPOLATION_MODE_INHERIT** = ``0``

Eredita :ref:`physics_interpolation_mode<class_Node_property_physics_interpolation_mode>` dal nodo padre. Questa è l'impostazione predefinita per qualsiasi nodo appena creato.

.. _class_Node_constant_PHYSICS_INTERPOLATION_MODE_ON:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` **PHYSICS_INTERPOLATION_MODE_ON** = ``1``

Abilita l'interpolazione fisica per questo nodo e per i figli impostati su :ref:`PHYSICS_INTERPOLATION_MODE_INHERIT<class_Node_constant_PHYSICS_INTERPOLATION_MODE_INHERIT>`. Questa è l'impostazione predefinita per il nodo radice.

.. _class_Node_constant_PHYSICS_INTERPOLATION_MODE_OFF:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` **PHYSICS_INTERPOLATION_MODE_OFF** = ``2``

Disabilita l'interpolazione fisica per questo nodo e per i nodi figlio impostati su :ref:`PHYSICS_INTERPOLATION_MODE_INHERIT<class_Node_constant_PHYSICS_INTERPOLATION_MODE_INHERIT>`.

.. rst-class:: classref-item-separator

----

.. _enum_Node_DuplicateFlags:

.. rst-class:: classref-enumeration

enum **DuplicateFlags**: :ref:`🔗<enum_Node_DuplicateFlags>`

.. _class_Node_constant_DUPLICATE_SIGNALS:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_SIGNALS** = ``1``

Duplica le connessioni dei segnali del nodo che sono connesse con il flag :ref:`Object.CONNECT_PERSIST<class_Object_constant_CONNECT_PERSIST>`.

.. _class_Node_constant_DUPLICATE_GROUPS:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_GROUPS** = ``2``

Duplica i gruppi del nodo.

.. _class_Node_constant_DUPLICATE_SCRIPTS:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_SCRIPTS** = ``4``

Duplica lo script del nodo (sovrascrivendo anche gli script dei figli duplicati, se combinato con :ref:`DUPLICATE_USE_INSTANTIATION<class_Node_constant_DUPLICATE_USE_INSTANTIATION>`).

.. _class_Node_constant_DUPLICATE_USE_INSTANTIATION:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_USE_INSTANTIATION** = ``8``

Duplica utilizzando :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`. Se il nodo proviene da una scena salvata su disco, riutilizza :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` come base per il nodo duplicato e i suoi figli.

.. _class_Node_constant_DUPLICATE_INTERNAL_STATE:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_INTERNAL_STATE** = ``16``

Duplicate also non-serializable variables (i.e. without :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>`).

.. _class_Node_constant_DUPLICATE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_DEFAULT** = ``15``

Duplicate using default flags. This constant is useful to add or remove a single flag.

::

    # Duplicate non-exported variables.
    var dupe = duplicate(DUPLICATE_DEFAULT | DUPLICATE_INTERNAL_STATE)

.. rst-class:: classref-item-separator

----

.. _enum_Node_InternalMode:

.. rst-class:: classref-enumeration

enum **InternalMode**: :ref:`🔗<enum_Node_InternalMode>`

.. _class_Node_constant_INTERNAL_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`InternalMode<enum_Node_InternalMode>` **INTERNAL_MODE_DISABLED** = ``0``

Il nodo non sarà interno.

.. _class_Node_constant_INTERNAL_MODE_FRONT:

.. rst-class:: classref-enumeration-constant

:ref:`InternalMode<enum_Node_InternalMode>` **INTERNAL_MODE_FRONT** = ``1``

Il nodo sarà posizionato all'inizio dei figli del genitore, prima di qualsiasi fratello non interno.

.. _class_Node_constant_INTERNAL_MODE_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`InternalMode<enum_Node_InternalMode>` **INTERNAL_MODE_BACK** = ``2``

Il nodo sarà posizionato alla fine dei figli del genitore, dopo qualsiasi fratello non interno.

.. rst-class:: classref-item-separator

----

.. _enum_Node_AutoTranslateMode:

.. rst-class:: classref-enumeration

enum **AutoTranslateMode**: :ref:`🔗<enum_Node_AutoTranslateMode>`

.. _class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **AUTO_TRANSLATE_MODE_INHERIT** = ``0``

Eredita :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>` dal nodo padre. Questa è l'impostazione predefinita per qualsiasi nodo appena creato.

.. _class_Node_constant_AUTO_TRANSLATE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **AUTO_TRANSLATE_MODE_ALWAYS** = ``1``

Traduci sempre automaticamente. Questo è l'inverso di :ref:`AUTO_TRANSLATE_MODE_DISABLED<class_Node_constant_AUTO_TRANSLATE_MODE_DISABLED>`, ed è l'impostazione predefinita per il nodo radice.

.. _class_Node_constant_AUTO_TRANSLATE_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **AUTO_TRANSLATE_MODE_DISABLED** = ``2``

Never automatically translate. This is the inverse of :ref:`AUTO_TRANSLATE_MODE_ALWAYS<class_Node_constant_AUTO_TRANSLATE_MODE_ALWAYS>`.

String parsing for translation template generation will be skipped for this node and children that are set to :ref:`AUTO_TRANSLATE_MODE_INHERIT<class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Costanti
----------------

.. _class_Node_constant_NOTIFICATION_ENTER_TREE:

.. rst-class:: classref-constant

**NOTIFICATION_ENTER_TREE** = ``10`` :ref:`🔗<class_Node_constant_NOTIFICATION_ENTER_TREE>`

Notifica ricevuta quando il nodo entra in uno :ref:`SceneTree<class_SceneTree>`. Vedi :ref:`_enter_tree()<class_Node_private_method__enter_tree>`.

Questa notifica viene ricevuta *prima* del segnale correlato :ref:`tree_entered<class_Node_signal_tree_entered>`.

.. _class_Node_constant_NOTIFICATION_EXIT_TREE:

.. rst-class:: classref-constant

**NOTIFICATION_EXIT_TREE** = ``11`` :ref:`🔗<class_Node_constant_NOTIFICATION_EXIT_TREE>`

Notification received when the node is about to exit a :ref:`SceneTree<class_SceneTree>`. See :ref:`_exit_tree()<class_Node_private_method__exit_tree>`.

This notification is received *after* the related :ref:`tree_exiting<class_Node_signal_tree_exiting>` signal.

This notification is sent in reversed order.

.. _class_Node_constant_NOTIFICATION_MOVED_IN_PARENT:

.. rst-class:: classref-constant

**NOTIFICATION_MOVED_IN_PARENT** = ``12`` :ref:`🔗<class_Node_constant_NOTIFICATION_MOVED_IN_PARENT>`

**Deprecato:** This notification is no longer sent by the engine. Use :ref:`NOTIFICATION_CHILD_ORDER_CHANGED<class_Node_constant_NOTIFICATION_CHILD_ORDER_CHANGED>` instead.



.. _class_Node_constant_NOTIFICATION_READY:

.. rst-class:: classref-constant

**NOTIFICATION_READY** = ``13`` :ref:`🔗<class_Node_constant_NOTIFICATION_READY>`

Notifica ricevuta quando il nodo è pronto. Vedi :ref:`_ready()<class_Node_private_method__ready>`.

.. _class_Node_constant_NOTIFICATION_PAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_PAUSED** = ``14`` :ref:`🔗<class_Node_constant_NOTIFICATION_PAUSED>`

Notifica ricevuta quando il nodo è messo in pausa. Vedi :ref:`process_mode<class_Node_property_process_mode>`.

.. _class_Node_constant_NOTIFICATION_UNPAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_UNPAUSED** = ``15`` :ref:`🔗<class_Node_constant_NOTIFICATION_UNPAUSED>`

Notifica ricevuta quando il nodo è ripreso. Vedi :ref:`process_mode<class_Node_property_process_mode>`.

.. _class_Node_constant_NOTIFICATION_PHYSICS_PROCESS:

.. rst-class:: classref-constant

**NOTIFICATION_PHYSICS_PROCESS** = ``16`` :ref:`🔗<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`

Notifica ricevuta dall'albero ogni frame di fisica quando :ref:`is_physics_processing()<class_Node_method_is_physics_processing>` restituisce ``true``. Vedi :ref:`_physics_process()<class_Node_private_method__physics_process>`.

.. _class_Node_constant_NOTIFICATION_PROCESS:

.. rst-class:: classref-constant

**NOTIFICATION_PROCESS** = ``17`` :ref:`🔗<class_Node_constant_NOTIFICATION_PROCESS>`

Notifica ricevuta dall'albero ogni frame renderizzato quando :ref:`is_processing()<class_Node_method_is_processing>` restituisce ``true``. Vedi :ref:`_process()<class_Node_private_method__process>`.

.. _class_Node_constant_NOTIFICATION_PARENTED:

.. rst-class:: classref-constant

**NOTIFICATION_PARENTED** = ``18`` :ref:`🔗<class_Node_constant_NOTIFICATION_PARENTED>`

Notifica ricevuta quando il nodo viene impostato come figlio di un altro nodo (vedi :ref:`add_child()<class_Node_method_add_child>` e :ref:`add_sibling()<class_Node_method_add_sibling>`).

\ **Nota:** Questo *non* significa che il nodo è entrato nel :ref:`SceneTree<class_SceneTree>`.

.. _class_Node_constant_NOTIFICATION_UNPARENTED:

.. rst-class:: classref-constant

**NOTIFICATION_UNPARENTED** = ``19`` :ref:`🔗<class_Node_constant_NOTIFICATION_UNPARENTED>`

Notifica ricevuta quando il nodo padre chiama :ref:`remove_child()<class_Node_method_remove_child>` su questo nodo.

\ **Nota:** Questo *non* significa che il nodo è uscito dal :ref:`SceneTree<class_SceneTree>`.

.. _class_Node_constant_NOTIFICATION_SCENE_INSTANTIATED:

.. rst-class:: classref-constant

**NOTIFICATION_SCENE_INSTANTIATED** = ``20`` :ref:`🔗<class_Node_constant_NOTIFICATION_SCENE_INSTANTIATED>`

Notifica ricevuta *solo* dal nodo radice appena istanziato da una scena, quando :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` è completato.

.. _class_Node_constant_NOTIFICATION_DRAG_BEGIN:

.. rst-class:: classref-constant

**NOTIFICATION_DRAG_BEGIN** = ``21`` :ref:`🔗<class_Node_constant_NOTIFICATION_DRAG_BEGIN>`

Notifica ricevuta quando inizia un'operazione di trascinamento. Tutti i nodi ricevono questa notifica, non solo quello trascinato.

Può essere attivata trascinando un :ref:`Control<class_Control>` che fornisce dati di trascinamento (vedi :ref:`Control._get_drag_data()<class_Control_private_method__get_drag_data>`) o tramite :ref:`Control.force_drag()<class_Control_method_force_drag>`.

Utilizza :ref:`Viewport.gui_get_drag_data()<class_Viewport_method_gui_get_drag_data>` per ottenere i dati trascinati.

.. _class_Node_constant_NOTIFICATION_DRAG_END:

.. rst-class:: classref-constant

**NOTIFICATION_DRAG_END** = ``22`` :ref:`🔗<class_Node_constant_NOTIFICATION_DRAG_END>`

Notifica ricevuta al termine di un'operazione di trascinamento.

Utilizza :ref:`Viewport.gui_is_drag_successful()<class_Viewport_method_gui_is_drag_successful>` per verificare se il trascinamento è riuscito.

.. _class_Node_constant_NOTIFICATION_PATH_RENAMED:

.. rst-class:: classref-constant

**NOTIFICATION_PATH_RENAMED** = ``23`` :ref:`🔗<class_Node_constant_NOTIFICATION_PATH_RENAMED>`

Notifica ricevuta quando il :ref:`name<class_Node_property_name>` del nodo o di uno dei :ref:`name<class_Node_property_name>` dei suoi antenati viene modificato. Questa notifica *non* viene ricevuta quando il nodo viene rimosso dal :ref:`SceneTree<class_SceneTree>`.

.. _class_Node_constant_NOTIFICATION_CHILD_ORDER_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_CHILD_ORDER_CHANGED** = ``24`` :ref:`🔗<class_Node_constant_NOTIFICATION_CHILD_ORDER_CHANGED>`

Notifica ricevuta quando la lista dei figli viene modificata. Ciò accade quando i nodi figli vengono aggiunti, spostati o rimossi.

.. _class_Node_constant_NOTIFICATION_INTERNAL_PROCESS:

.. rst-class:: classref-constant

**NOTIFICATION_INTERNAL_PROCESS** = ``25`` :ref:`🔗<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`

Notifica ricevuta dall'albero per ogni frame renderizzato quando :ref:`is_processing_internal()<class_Node_method_is_processing_internal>` restituisce ``true``.

.. _class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS:

.. rst-class:: classref-constant

**NOTIFICATION_INTERNAL_PHYSICS_PROCESS** = ``26`` :ref:`🔗<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`

Notifica ricevuta dall'albero per ogni frame di fisica quando :ref:`is_physics_processing_internal()<class_Node_method_is_physics_processing_internal>` restituisce ``true``.

.. _class_Node_constant_NOTIFICATION_POST_ENTER_TREE:

.. rst-class:: classref-constant

**NOTIFICATION_POST_ENTER_TREE** = ``27`` :ref:`🔗<class_Node_constant_NOTIFICATION_POST_ENTER_TREE>`

Notifica ricevuta quando il nodo entra nell'albero, appena prima che :ref:`NOTIFICATION_READY<class_Node_constant_NOTIFICATION_READY>` possa essere ricevuto. A differenza di quest'ultimo, viene inviato ogni volta che il nodo entra nell'albero, non solo una volta.

.. _class_Node_constant_NOTIFICATION_DISABLED:

.. rst-class:: classref-constant

**NOTIFICATION_DISABLED** = ``28`` :ref:`🔗<class_Node_constant_NOTIFICATION_DISABLED>`

Notifica ricevuta quando il nodo viene disabilitato. Vedi :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. _class_Node_constant_NOTIFICATION_ENABLED:

.. rst-class:: classref-constant

**NOTIFICATION_ENABLED** = ``29`` :ref:`🔗<class_Node_constant_NOTIFICATION_ENABLED>`

Notifica ricevuta quando il nodo viene nuovamente abilitato dopo essere stato disabilitato. Vedi :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. _class_Node_constant_NOTIFICATION_RESET_PHYSICS_INTERPOLATION:

.. rst-class:: classref-constant

**NOTIFICATION_RESET_PHYSICS_INTERPOLATION** = ``2001`` :ref:`🔗<class_Node_constant_NOTIFICATION_RESET_PHYSICS_INTERPOLATION>`

Notifica ricevuta quando viene chiamato :ref:`reset_physics_interpolation()<class_Node_method_reset_physics_interpolation>` sul nodo o sui suoi antenati.

.. _class_Node_constant_NOTIFICATION_EDITOR_PRE_SAVE:

.. rst-class:: classref-constant

**NOTIFICATION_EDITOR_PRE_SAVE** = ``9001`` :ref:`🔗<class_Node_constant_NOTIFICATION_EDITOR_PRE_SAVE>`

Notifica ricevuta subito prima che la scena con il nodo sia salvata nell'editor. Questa notifica è inviata solo nell'editor di Godot e non si verificherà nei progetti esportati.

.. _class_Node_constant_NOTIFICATION_EDITOR_POST_SAVE:

.. rst-class:: classref-constant

**NOTIFICATION_EDITOR_POST_SAVE** = ``9002`` :ref:`🔗<class_Node_constant_NOTIFICATION_EDITOR_POST_SAVE>`

Notifica ricevuta subito dopo che la scena con il nodo è stata salvata nell'editor. Questa notifica è inviata solo nell'editor di Godot e non si verificherà nei progetti esportati.

.. _class_Node_constant_NOTIFICATION_WM_MOUSE_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_WM_MOUSE_ENTER** = ``1002`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_MOUSE_ENTER>`

Notifica ricevuta quando il mouse entra nella finestra.

Implementato per finestre incorporate e su piattaforme desktop e web.

.. _class_Node_constant_NOTIFICATION_WM_MOUSE_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_MOUSE_EXIT** = ``1003`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_MOUSE_EXIT>`

Notifica ricevuta quando il mouse esce dalla finestra.

Implementato per finestre incorporate e su piattaforme desktop e web.

.. _class_Node_constant_NOTIFICATION_WM_WINDOW_FOCUS_IN:

.. rst-class:: classref-constant

**NOTIFICATION_WM_WINDOW_FOCUS_IN** = ``1004`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_WINDOW_FOCUS_IN>`

Notifica ricevuta dal sistema operativo quando l'antenato :ref:`Window<class_Window>` del nodo è focalizzato. Questo può essere da un cambio di focus tra due finestre della stessa istanza del motore, o dal desktop del sistema operativo o da un'applicazione di terze parti a una finestra del gioco (nel qual caso viene anche ricevuta :ref:`NOTIFICATION_APPLICATION_FOCUS_IN<class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_IN>`).

Un nodo :ref:`Window<class_Window>` riceve questa notifica quando è focalizzato.

.. _class_Node_constant_NOTIFICATION_WM_WINDOW_FOCUS_OUT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_WINDOW_FOCUS_OUT** = ``1005`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_WINDOW_FOCUS_OUT>`

Notifica ricevuta dal sistema operativo quando l'antenato :ref:`Window<class_Window>` del nodo è defocalizzato. Questo può essere da un cambio di focus tra due finestre della stessa istanza del motore, o da una finestra del gioco al desktop del sistema operativo o a un'applicazione di terze parti (nel qual caso viene anche ricevuta :ref:`NOTIFICATION_APPLICATION_FOCUS_OUT<class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_OUT>`).

Un nodo :ref:`Window<class_Window>` riceve questa notifica quando è defocalizzato.

.. _class_Node_constant_NOTIFICATION_WM_CLOSE_REQUEST:

.. rst-class:: classref-constant

**NOTIFICATION_WM_CLOSE_REQUEST** = ``1006`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_CLOSE_REQUEST>`

Notifica ricevuta dal sistema operativo quando viene inviata una richiesta di chiusura (ad esempio, chiusura della finestra con un pulsante "Chiudi" o :kbd:`Alt + F4`).

Implementato su piattaforme desktop.

.. _class_Node_constant_NOTIFICATION_WM_GO_BACK_REQUEST:

.. rst-class:: classref-constant

**NOTIFICATION_WM_GO_BACK_REQUEST** = ``1007`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_GO_BACK_REQUEST>`

Emesso quando viene inviata una richiesta di torno indietro (ad esempio premendo il pulsante "Indietro" su Android), subito dopo :ref:`NOTIFICATION_WM_GO_BACK_REQUEST<class_Node_constant_NOTIFICATION_WM_GO_BACK_REQUEST>`.

Implementato solo su Android.

.. _class_Node_constant_NOTIFICATION_WM_SIZE_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_WM_SIZE_CHANGED** = ``1008`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_SIZE_CHANGED>`

Notifica ricevuta quando la finestra viene ridimensionata.

\ **Nota:** Solo il nodo :ref:`Window<class_Window>` ridimensionato riceve questa notifica e non viene propagata ai nodi figlio.

.. _class_Node_constant_NOTIFICATION_WM_DPI_CHANGE:

.. rst-class:: classref-constant

**NOTIFICATION_WM_DPI_CHANGE** = ``1009`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_DPI_CHANGE>`

Notifica ricevuta dal sistema operativo quando la scala dei punti per pollice (DPI) dello schermo viene modificata. Implementata solo su macOS.

.. _class_Node_constant_NOTIFICATION_VP_MOUSE_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_VP_MOUSE_ENTER** = ``1010`` :ref:`🔗<class_Node_constant_NOTIFICATION_VP_MOUSE_ENTER>`

Notifica ricevuta quando il cursore del mouse entra nell'area visibile della :ref:`Viewport<class_Viewport>`, che non è nascosta dietro altri :ref:`Control<class_Control>` o :ref:`Window<class_Window>`, a condizione che il suo :ref:`Viewport.gui_disable_input<class_Viewport_property_gui_disable_input>` sia ``false`` e a prescindere dal fatto che sia attualmente focalizzata o meno.

.. _class_Node_constant_NOTIFICATION_VP_MOUSE_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_VP_MOUSE_EXIT** = ``1011`` :ref:`🔗<class_Node_constant_NOTIFICATION_VP_MOUSE_EXIT>`

Notifica ricevuta quando il cursore del mouse esce dall'area visibile della :ref:`Viewport<class_Viewport>`, che non è nascosta dietro altri :ref:`Control<class_Control>` o :ref:`Window<class_Window>`, a condizione che il suo :ref:`Viewport.gui_disable_input<class_Viewport_property_gui_disable_input>` sia ``false`` e a prescindere dal fatto che sia attualmente focalizzata o meno.

.. _class_Node_constant_NOTIFICATION_WM_POSITION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_WM_POSITION_CHANGED** = ``1012`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_POSITION_CHANGED>`

Notifica ricevuta quando la finestra viene mossa.

.. _class_Node_constant_NOTIFICATION_OS_MEMORY_WARNING:

.. rst-class:: classref-constant

**NOTIFICATION_OS_MEMORY_WARNING** = ``2009`` :ref:`🔗<class_Node_constant_NOTIFICATION_OS_MEMORY_WARNING>`

Notifica ricevuta dal sistema operativo quando l'applicazione sta eccedendo la sua memoria allocata.

Implementato solo su iOS.

.. _class_Node_constant_NOTIFICATION_TRANSLATION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSLATION_CHANGED** = ``2010`` :ref:`🔗<class_Node_constant_NOTIFICATION_TRANSLATION_CHANGED>`

Notifica ricevuta quando le traduzioni potrebbero essere cambiate. Può essere attivata dall'utente che cambia le impostazioni locali, cambiando :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>` o quando il nodo entra nell'albero di scene. Può essere utilizzata per rispondere alle modifiche della lingua, ad esempio per cambiare le stringhe dell'interfaccia utente al volo. Utile quando si lavora con il supporto di traduzione integrato, come :ref:`Object.tr()<class_Object_method_tr>`.

\ **Nota:** Questa notifica viene ricevuta insieme a :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>`, quindi se si sta creando un'istanza di una scena, i nodi figli non saranno ancora inizializzati. È possibile utilizzarla per impostare le traduzioni per questo nodo, i nodi figli creati dallo script o, se si desidera accedere ai nodi figli aggiunti nell'editor, assicurarsi che il nodo sia pronto tramite :ref:`is_node_ready()<class_Node_method_is_node_ready>`.

::

    func _notification(what):
        if what == NOTIFICATION_TRANSLATION_CHANGED:
            if not is_node_ready():
                await ready # Attendi il segnale ready.
            $Label.text = atr("%d Bananas") % banana_counter

.. _class_Node_constant_NOTIFICATION_WM_ABOUT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_ABOUT** = ``2011`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_ABOUT>`

Notifica ricevuta dal sistema operativo quando viene inviata una richiesta per le informazioni "About".

Implementato solo su macOS.

.. _class_Node_constant_NOTIFICATION_CRASH:

.. rst-class:: classref-constant

**NOTIFICATION_CRASH** = ``2012`` :ref:`🔗<class_Node_constant_NOTIFICATION_CRASH>`

Notifica ricevuta dal gestore dei crash di Godot quando il motore sta per arrestarsi.

Implementato su piattaforme desktop, se il gestore dei crash è abilitato.

.. _class_Node_constant_NOTIFICATION_OS_IME_UPDATE:

.. rst-class:: classref-constant

**NOTIFICATION_OS_IME_UPDATE** = ``2013`` :ref:`🔗<class_Node_constant_NOTIFICATION_OS_IME_UPDATE>`

Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).

Implemented on desktop and web platforms.

.. _class_Node_constant_NOTIFICATION_APPLICATION_RESUMED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_RESUMED** = ``2014`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_RESUMED>`

Notifica ricevuta dal sistema operativo quando l'applicazione viene ripresa.

Specifico per le piattaforme Android e iOS.

.. _class_Node_constant_NOTIFICATION_APPLICATION_PAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PAUSED** = ``2015`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_PAUSED>`

Notifica ricevuta dal sistema operativo quando l'applicazione è in pausa.

Specifico per le piattaforme Android e iOS.

\ **Nota:** Su iOS, hai solo circa 5 secondi per terminare un'attività avviata da questo segnale. Se superi questa soglia, iOS chiuderà l'app invece di metterla in pausa.

.. _class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_IN:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_IN** = ``2016`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_IN>`

Notifica ricevuta dal sistema operativo quando l'applicazione è focalizzata, ovvero quando si cambia il focus dal desktop del sistema operativo o da un'applicazione di terze parti a una finestra aperta dell'istanza di Godot.

Implementato su piattaforme desktop e mobili.

.. _class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_OUT:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_OUT** = ``2017`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_OUT>`

Notifica ricevuta dal sistema operativo quando l'applicazione è perde il focus, ovvero quando si cambia il focus dal desktop del sistema operativo o da un'applicazione di terze parti a una finestra aperta dell'istanza di Godot.

Implementato su piattaforme desktop e mobili.

.. _class_Node_constant_NOTIFICATION_TEXT_SERVER_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TEXT_SERVER_CHANGED** = ``2018`` :ref:`🔗<class_Node_constant_NOTIFICATION_TEXT_SERVER_CHANGED>`

Notifica ricevuta quando il :ref:`TextServer<class_TextServer>` viene modificato.

.. _class_Node_constant_NOTIFICATION_ACCESSIBILITY_UPDATE:

.. rst-class:: classref-constant

**NOTIFICATION_ACCESSIBILITY_UPDATE** = ``3000`` :ref:`🔗<class_Node_constant_NOTIFICATION_ACCESSIBILITY_UPDATE>`

Notifica ricevuta quando è necessario un aggiornamento delle informazioni di accessibilità.

.. _class_Node_constant_NOTIFICATION_ACCESSIBILITY_INVALIDATE:

.. rst-class:: classref-constant

**NOTIFICATION_ACCESSIBILITY_INVALIDATE** = ``3001`` :ref:`🔗<class_Node_constant_NOTIFICATION_ACCESSIBILITY_INVALIDATE>`

Notifica ricevuta quando gli elementi di accessibilità vengono invalidati. Tutti gli elementi di accessibilità del nodo vengono automaticamente eliminati dopo aver ricevuto di questo messaggio, pertanto è necessario eliminare tutti i riferimenti esistenti a tali elementi.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Node_property_auto_translate_mode:

.. rst-class:: classref-property

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **auto_translate_mode** = ``0`` :ref:`🔗<class_Node_property_auto_translate_mode>`

.. rst-class:: classref-property-setget

- |void| **set_auto_translate_mode**\ (\ value\: :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>`\ )
- :ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **get_auto_translate_mode**\ (\ )

Defines if any text should automatically change to its translated version depending on the current locale (for nodes such as :ref:`Label<class_Label>`, :ref:`RichTextLabel<class_RichTextLabel>`, :ref:`Window<class_Window>`, etc.). Also decides if the node's strings should be parsed for translation template generation.

\ **Note:** For the root node, auto translate mode can also be set via :ref:`ProjectSettings.internationalization/rendering/root_node_auto_translate<class_ProjectSettings_property_internationalization/rendering/root_node_auto_translate>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_editor_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **editor_description** = ``""`` :ref:`🔗<class_Node_property_editor_description>`

.. rst-class:: classref-property-setget

- |void| **set_editor_description**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_editor_description**\ (\ )

Una descrizione facoltativa per il nodo. Sarà visualizzata come suggerimento quando si passa il mouse sul nodo nel pannello di Scena nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_multiplayer:

.. rst-class:: classref-property

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **multiplayer** :ref:`🔗<class_Node_property_multiplayer>`

.. rst-class:: classref-property-setget

- :ref:`MultiplayerAPI<class_MultiplayerAPI>` **get_multiplayer**\ (\ )

L'istanza di :ref:`MultiplayerAPI<class_MultiplayerAPI>` associata a questo nodo. Vedi :ref:`SceneTree.get_multiplayer()<class_SceneTree_method_get_multiplayer>`.

\ **Nota:** Rinominare il nodo o spostarlo nell'albero non sposterà la :ref:`MultiplayerAPI<class_MultiplayerAPI>` nel nuovo percorso, sarà necessario aggiornarlo manualmente.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **name** :ref:`🔗<class_Node_property_name>`

.. rst-class:: classref-property-setget

- |void| **set_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_name**\ (\ )

Il nome del nodo. Questo nome deve essere univoco tra i fratelli (altri nodi figlio dello stesso genitore). Quando impostato sul nome di un fratello esistente, il nodo viene automaticamente rinominato.

\ **Nota:** Quando si modifica il nome, i seguenti caratteri saranno sostituiti con un trattino basso: (``.`` ``:`` ``@`` ``/`` ``"`` ``%``). In particolare, il carattere ``@`` è riservato ai nomi generati automaticamente. Vedere anche :ref:`String.validate_node_name()<class_String_method_validate_node_name>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_owner:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **owner** :ref:`🔗<class_Node_property_owner>`

.. rst-class:: classref-property-setget

- |void| **set_owner**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_owner**\ (\ )

The owner of this node. The owner must be an ancestor of this node. When packing the owner node in a :ref:`PackedScene<class_PackedScene>`, all the nodes it owns are also saved with it. See also :ref:`unique_name_in_owner<class_Node_property_unique_name_in_owner>`.

\ **Note:** In the editor, nodes not owned by the scene root are usually not displayed in the Scene dock, and will **not** be saved. To prevent this, remember to set the owner after calling :ref:`add_child()<class_Node_method_add_child>`.

\ **Note:** The owner needs to be the current scene root. See `Instancing scenes <../tutorials/plugins/running_code_in_the_editor.html#instancing-scenes>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_physics_interpolation_mode:

.. rst-class:: classref-property

:ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` **physics_interpolation_mode** = ``0`` :ref:`🔗<class_Node_property_physics_interpolation_mode>`

.. rst-class:: classref-property-setget

- |void| **set_physics_interpolation_mode**\ (\ value\: :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>`\ )
- :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` **get_physics_interpolation_mode**\ (\ )

La modalità di interpolazione fisica da utilizzare per questo nodo. Efficace solo se :ref:`ProjectSettings.physics/common/physics_interpolation<class_ProjectSettings_property_physics/common/physics_interpolation>` o :ref:`SceneTree.physics_interpolation<class_SceneTree_property_physics_interpolation>` è impostato su ``true``.

Come predefinito, i nodi ereditano la modalità di interpolazione fisica dal nodo genitore. Questa proprietà può abilitare o disabilitare l'interpolazione fisica individualmente per ciascun nodo, a prescindere dalla modalità di interpolazione fisica del nodo genitore.

\ **Nota:** Alcuni tipi di nodo, come :ref:`VehicleWheel3D<class_VehicleWheel3D>`, hanno l'interpolazione fisica disabilitata come predefinito, poiché si basano su un'implementazione personalizzata.

\ **Nota:** Quando si teletrasporta un nodo in una posizione distante, si consiglia di disabilitare temporaneamente l'interpolazione con :ref:`reset_physics_interpolation()<class_Node_method_reset_physics_interpolation>` *dopo* lo spostamento del nodo. Questo evita di creare una striscia visiva tra la vecchia e la nuova posizione.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_mode:

.. rst-class:: classref-property

:ref:`ProcessMode<enum_Node_ProcessMode>` **process_mode** = ``0`` :ref:`🔗<class_Node_property_process_mode>`

.. rst-class:: classref-property-setget

- |void| **set_process_mode**\ (\ value\: :ref:`ProcessMode<enum_Node_ProcessMode>`\ )
- :ref:`ProcessMode<enum_Node_ProcessMode>` **get_process_mode**\ (\ )

Il comportamento di elaborazione del nodo. Per verificare se il nodo può eseguire la sua elaborazione nella sua modalità attuale, usa :ref:`can_process()<class_Node_method_can_process>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_physics_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **process_physics_priority** = ``0`` :ref:`🔗<class_Node_property_process_physics_priority>`

.. rst-class:: classref-property-setget

- |void| **set_physics_process_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_process_priority**\ (\ )

Simile a :ref:`process_priority<class_Node_property_process_priority>` ma per :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`, :ref:`_physics_process()<class_Node_private_method__physics_process>` o :ref:`NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **process_priority** = ``0`` :ref:`🔗<class_Node_property_process_priority>`

.. rst-class:: classref-property-setget

- |void| **set_process_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_process_priority**\ (\ )

L'ordine di esecuzione dei callback di processo (:ref:`_process()<class_Node_private_method__process>`, :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>` e :ref:`NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`) del nodo. I nodi il cui valore di priorità è *inferiore* chiamano per primi i loro callback di processo, a prescindere dall'ordine nell'albero.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_thread_group:

.. rst-class:: classref-property

:ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **process_thread_group** = ``0`` :ref:`🔗<class_Node_property_process_thread_group>`

.. rst-class:: classref-property-setget

- |void| **set_process_thread_group**\ (\ value\: :ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>`\ )
- :ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **get_process_thread_group**\ (\ )

Imposta il gruppo di thread di processo per questo nodo (in pratica, se riceve :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>`, :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`, :ref:`_process()<class_Node_private_method__process>` o :ref:`_physics_process()<class_Node_private_method__physics_process>` (e le versioni interne) sul thread principale o in un sottothread.

Per impostazione predefinita, il gruppo di thread è :ref:`PROCESS_THREAD_GROUP_INHERIT<class_Node_constant_PROCESS_THREAD_GROUP_INHERIT>`, il che significa che questo nodo appartiene allo stesso gruppo del nodo genitore. I gruppi di thread indicano che i nodi in uno specifico gruppo saranno elaborati insieme, separati dagli altri gruppi (a seconda di :ref:`process_thread_group_order<class_Node_property_process_thread_group_order>`). Se il valore impostato è :ref:`PROCESS_THREAD_GROUP_SUB_THREAD<class_Node_constant_PROCESS_THREAD_GROUP_SUB_THREAD>`, questo gruppo di thread sarà elaborato su un thread secondario (non sul thread principale), altrimenti se impostato su :ref:`PROCESS_THREAD_GROUP_MAIN_THREAD<class_Node_constant_PROCESS_THREAD_GROUP_MAIN_THREAD>` sarà elaborato sul thread principale. Se non c'è un nodo genitore o nonno impostato su un valore diverso da "inherit", il nodo apparterrà al *gruppo di thread predefinito*. Questo gruppo predefinito sarà elaborato sul thread principale e il suo ordine di gruppo è 0.

Durante l'elaborazione in un thread secondario, non è possibile accedere alla maggior parte delle funzioni nei nodi al di fuori del gruppo di thread (e comporterà un errore in modalità debug). Usa :ref:`Object.call_deferred()<class_Object_method_call_deferred>`, :ref:`call_thread_safe()<class_Node_method_call_thread_safe>`, :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` e simili per comunicare dai gruppi di thread al thread principale (o ad altri gruppi di thread).

Per comprendere meglio i gruppi di thread di processo, l'idea è che qualsiasi nodo impostato su un valore diverso da :ref:`PROCESS_THREAD_GROUP_INHERIT<class_Node_constant_PROCESS_THREAD_GROUP_INHERIT>` includerà tutti i nodi figlio (e nipote) impostati per ereditare nel suo gruppo di thread di processo. Ciò significa che l'elaborazione di tutti i nodi nel gruppo avverrà insieme, allo stesso tempo del nodo che li include.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_thread_group_order:

.. rst-class:: classref-property

:ref:`int<class_int>` **process_thread_group_order** :ref:`🔗<class_Node_property_process_thread_group_order>`

.. rst-class:: classref-property-setget

- |void| **set_process_thread_group_order**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_process_thread_group_order**\ (\ )

Cambia l'ordine del gruppo di thread di processo. I gruppi con un ordine inferiore saranno elaborati prima dei gruppi con un ordine superiore. Questo è utile quando una grande quantità di nodi elabora in un thread secondario e, in seguito, un altro gruppo desidera raccogliere il loro risultato nel thread principale, ad esempio.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_thread_messages:

.. rst-class:: classref-property

|bitfield|\[:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>`\] **process_thread_messages** :ref:`🔗<class_Node_property_process_thread_messages>`

.. rst-class:: classref-property-setget

- |void| **set_process_thread_messages**\ (\ value\: |bitfield|\[:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>`\]\ )
- |bitfield|\[:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>`\] **get_process_thread_messages**\ (\ )

Imposta se il gruppo di thread attuale elaborerà i messaggi (chiamate a :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` sui thread) e se desidera riceverli durante i callback di processo regolare o della fisica.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_scene_file_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **scene_file_path** :ref:`🔗<class_Node_property_scene_file_path>`

.. rst-class:: classref-property-setget

- |void| **set_scene_file_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_scene_file_path**\ (\ )

Il percorso del file della scena originale, se il nodo è stato istanziato da un file :ref:`PackedScene<class_PackedScene>`. Solo i nodi radice della scena lo contengono.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_unique_name_in_owner:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unique_name_in_owner** = ``false`` :ref:`🔗<class_Node_property_unique_name_in_owner>`

.. rst-class:: classref-property-setget

- |void| **set_unique_name_in_owner**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_unique_name_in_owner**\ (\ )

Se ``true``, il nodo è accessibile da qualsiasi nodo che condivide lo stesso :ref:`owner<class_Node_property_owner>` o dal :ref:`owner<class_Node_property_owner>` stesso, con la sintassi speciale ``%Name`` nel metodo :ref:`get_node()<class_Node_method_get_node>`.

\ **Nota:** Se un altro nodo con lo stesso :ref:`owner<class_Node_property_owner>` condivide lo stesso :ref:`name<class_Node_property_name>` di questo nodo, l'altro nodo non sarà più accessibile come univoco.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Node_private_method__enter_tree:

.. rst-class:: classref-method

|void| **_enter_tree**\ (\ ) |virtual| :ref:`🔗<class_Node_private_method__enter_tree>`

Chiamato quando il nodo entra nello :ref:`SceneTree<class_SceneTree>` (ad esempio durante l'istanziazione, aver cambiato scena o dopo aver chiamato :ref:`add_child()<class_Node_method_add_child>` in uno script). Se il nodo ha figli, sarà chiamato prima il suo callback :ref:`_enter_tree()<class_Node_private_method__enter_tree>` e poi quello dei figli.

Corrisponde alla notifica :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>` in :ref:`Object._notification()<class_Object_private_method__notification>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__exit_tree:

.. rst-class:: classref-method

|void| **_exit_tree**\ (\ ) |virtual| :ref:`🔗<class_Node_private_method__exit_tree>`

Chiamato quando il nodo sta per lasciare il :ref:`SceneTree<class_SceneTree>` (ad esempio, dopo averlo liberato, aver cambiato scena o aver chiamato :ref:`remove_child()<class_Node_method_remove_child>` in uno script). Se il nodo ha dei figli, il suo callback :ref:`_exit_tree()<class_Node_private_method__exit_tree>` sarà chiamato per ultimo, dopo che tutti i suoi figli hanno lasciato l'albero.

Corrisponde alla notifica :ref:`NOTIFICATION_EXIT_TREE<class_Node_constant_NOTIFICATION_EXIT_TREE>` in :ref:`Object._notification()<class_Object_private_method__notification>` e al segnale :ref:`tree_exiting<class_Node_signal_tree_exiting>`. Per ricevere una notifica quando il nodo ha già lasciato l'albero attivo, connettiti a :ref:`tree_exited<class_Node_signal_tree_exited>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__get_accessibility_configuration_warnings:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_accessibility_configuration_warnings**\ (\ ) |virtual| |const| :ref:`🔗<class_Node_private_method__get_accessibility_configuration_warnings>`

Gli elementi nell'array restituiti da questo metodo sono visualizzati come avvisi nel pannello Scena se lo script che lo sovrascrive è uno script ``tool`` e gli avvisi di accessibilità sono abilitati nelle impostazioni dell'editor.

Restituire un array vuoto non produce avvisi.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__get_configuration_warnings:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_configuration_warnings**\ (\ ) |virtual| |const| :ref:`🔗<class_Node_private_method__get_configuration_warnings>`

Gli elementi nell'array restituiti da questo metodo sono visualizzati come avvisi nel pannello di Scena se lo script che lo sovrascrive è uno script ``tool``.

Restituire un array vuoto non produce avvisi.

Chiama :ref:`update_configuration_warnings()<class_Node_method_update_configuration_warnings>` quando è necessario aggiornare gli avvisi per questo nodo.

::

    @export var energia = 0:
        set(valore):
            energia = valore
            update_configuration_warnings()

    func _get_configuration_warnings():
        if energia < 0:
            return ["Energia deve essere maggiore o uguale a 0."]
        else:
            return []

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__get_focused_accessibility_element:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_focused_accessibility_element**\ (\ ) |virtual| |const| :ref:`🔗<class_Node_private_method__get_focused_accessibility_element>`

Chiamato durante gli aggiornamenti delle informazioni di accessibilità per determinare il sotto-elemento attualmente attivo, dovrebbe restituire un RID di sotto-elemento o il valore restituito da :ref:`get_accessibility_element()<class_Node_method_get_accessibility_element>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__input:

.. rst-class:: classref-method

|void| **_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Node_private_method__input>`

Chiamato quando è presente un evento di input. L'evento di input si propaga attraverso l'albero dei nodi finché un nodo non lo consuma.

È chiamato solo se l'elaborazione degli input è abilitata, il che avviene automaticamente se questo metodo è sovrascritto, oppure può essere abilitata con :ref:`set_process_input()<class_Node_method_set_process_input>`.

Per consumare l'evento di input e impedire che si propaghi ulteriormente ad altri nodi, è possibile chiamare :ref:`Viewport.set_input_as_handled()<class_Viewport_method_set_input_as_handled>`.

Per gli input che riguardano il gioco, :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>` e :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>` sono solitamente più adatti, in quanto consentono alla GUI di intercettare prima gli eventi.

\ **Nota:** Questo metodo è chiamato solo se il nodo è presente nell'albero di scene (ovvero se non è orfano).

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__physics_process:

.. rst-class:: classref-method

|void| **_physics_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_Node_private_method__physics_process>`

Chiamato una volta a ogni tick di fisica, consente ai nodi di sincronizzare la propria logica con i tick di fisica. ``delta`` è il tempo logico tra i tick di fisica in secondi ed è uguale a :ref:`Engine.time_scale<class_Engine_property_time_scale>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`.

È chiamato solo se è abilitata l'elaborazione della fisica, il che viene effettuato automaticamente se questo metodo è sovrascritto e si può cambiare con :ref:`set_physics_process()<class_Node_method_set_physics_process>`.

L'elaborazione avviene in base all'ordine di :ref:`process_physics_priority<class_Node_property_process_physics_priority>`, i valori con priorità più bassa vengono chiamati per primi. I nodi con la stessa priorità vengono elaborati in ordine ad albero, ovvero dall'alto verso il basso, come mostrato nell'editor (anche noto come attraversamento pre-ordine).

Corrisponde alla notifica :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>` in :ref:`Object._notification()<class_Object_private_method__notification>`.

\ **Nota:** Questo metodo viene chiamato solo se il nodo è presente nell'albero di scene (ovvero se non è orfano).

\ **Nota:** Il ``delta`` accumulato potrebbe deviare dai secondi reali.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__process:

.. rst-class:: classref-method

|void| **_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_Node_private_method__process>`

Chiamato a ogni frame inattivo, prima di renderizzare, e dopo l'elaborazione dei tick di fisica. ``delta`` è il tempo trascorso tra i frame, in secondi.

Viene chiamato solo se è abilitata l'elaborazione per questo nodo, il che viene effettuato automaticamente se questo metodo è sovrascritto e si può cambiare con :ref:`set_process()<class_Node_method_set_process>`.

L'elaborazione avviene in base all'ordine di :ref:`process_physics_priority<class_Node_property_process_physics_priority>`, i valori con priorità più bassa vengono chiamati per primi. I nodi con la stessa priorità vengono elaborati in ordine ad albero, ovvero dall'alto verso il basso, come mostrato nell'editor (anche noto come attraversamento pre-ordine).

Corrisponde alla notifica :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>` in :ref:`Object._notification()<class_Object_private_method__notification>`.

\ **Nota:** Questo metodo viene chiamato solo se il nodo è presente nell'albero di scene (ovvero se non è orfano).

\ **Nota:** Quando il motore è in difficoltà e la frequenza dei frame diminuisce, ``delta`` aumenterà. Quando ``delta`` è aumentato, il suo limite massimo è di :ref:`Engine.time_scale<class_Engine_property_time_scale>` \* :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Pertanto, il ``delta`` accumulato potrebbe non rappresentare il tempo reale.

\ **Nota:** Quando ``--fixed-fps`` è abilitato o il motore è in esecuzione in modalità Movie Maker (vedi :ref:`MovieWriter<class_MovieWriter>`), ``delta`` sarà sempre lo stesso per ogni frame, a prescindere dal tempo impiegato per renderizzare i frame.

\ **Nota:** Il delta dei frame potrebbe essere post-elaborato da :ref:`OS.delta_smoothing<class_OS_property_delta_smoothing>` se questa opzione è abilitata per il progetto.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__ready:

.. rst-class:: classref-method

|void| **_ready**\ (\ ) |virtual| :ref:`🔗<class_Node_private_method__ready>`

Chiamato quando il nodo è "pronto", ovvero quando sia il nodo sia i suoi figli sono entrati nell'albero di scene. Se il nodo ha figli, i loro callback :ref:`_ready()<class_Node_private_method__ready>` sono attivati per primi e il nodo genitore riceverà la notifica di pronto in seguito.

Corrisponde alla notifica :ref:`NOTIFICATION_READY<class_Node_constant_NOTIFICATION_READY>` in :ref:`Object._notification()<class_Object_private_method__notification>`. Vedi anche l'annotazione ``@onready`` per le variabili.

Solitamente usato per l'inizializzazione. Per un'inizializzazione ancora più anticipata, è possibile usare :ref:`Object._init()<class_Object_private_method__init>`. Vedi anche :ref:`_enter_tree()<class_Node_private_method__enter_tree>`.

\ **Nota:** Questo metodo può essere chiamato solo una volta per ogni nodo. Dopo aver rimosso un nodo dall'albero di scene e averlo aggiunto nuovamente, :ref:`_ready()<class_Node_private_method__ready>` non sarà **chiamato** una seconda volta. È possibile aggirare questa limitazione richiedendo un'altra chiamata con :ref:`request_ready()<class_Node_method_request_ready>`, che può essere chiamato ovunque prima di aggiungere nuovamente il nodo.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__shortcut_input:

.. rst-class:: classref-method

|void| **_shortcut_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Node_private_method__shortcut_input>`

Chiamato quando un :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventShortcut<class_InputEventShortcut>` o :ref:`InputEventJoypadButton<class_InputEventJoypadButton>` non è stato consumato da :ref:`_input()<class_Node_private_method__input>` o da qualsiasi elemento :ref:`Control<class_Control>`. È chiamato prima di :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>` e :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>`. L'evento di input si propaga attraverso l'albero dei nodi finché un nodo non lo consuma.

È chiamato solo se l'elaborazione delle scorciatoie è abilitata, il che avviene automaticamente se questo metodo è sovrascritto, oppure può essere abilitata con :ref:`set_process_shortcut_input()<class_Node_method_set_process_shortcut_input>`.

Per consumare l'evento di input e impedire che si propaghi ulteriormente ad altri nodi, è possibile chiamare :ref:`Viewport.set_input_as_handled()<class_Viewport_method_set_input_as_handled>`.

Questo metodo può essere utilizzato per gestire le scorciatoie. Per gli eventi generici dell'interfaccia utente, usa invece :ref:`_input()<class_Node_private_method__input>`. Gli eventi di gioco dovrebbero essere solitamente gestiti con :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>` o :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>`.

\ **Nota:** Questo metodo è chiamato solo se il nodo è presente nell'albero di scene (ovvero se non è orfano).

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__unhandled_input:

.. rst-class:: classref-method

|void| **_unhandled_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Node_private_method__unhandled_input>`

Chiamato quando un :ref:`InputEvent<class_InputEvent>` non è stato consumato da :ref:`_input()<class_Node_private_method__input>` o da qualsiasi elemento :ref:`Control<class_Control>`. È chiamato dopo :ref:`_shortcut_input()<class_Node_private_method__shortcut_input>` e dopo :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>`. L'evento di input si propaga attraverso l'albero dei nodi finché un nodo non lo consuma.

È chiamato solo se l'elaborazione degli input non gestiti è abilitata, il che avviene automaticamente se questo metodo è sovrascritto, oppure può essere abilitata con :ref:`set_process_unhandled_input()<class_Node_method_set_process_unhandled_input>`.

Per consumare l'evento di input e impedire che si propaghi ulteriormente ad altri nodi, è possibile chiamare :ref:`Viewport.set_input_as_handled()<class_Viewport_method_set_input_as_handled>`.

Per gli input di gioco, questo metodo è solitamente più adatto di :ref:`_input()<class_Node_private_method__input>`, poiché gli eventi dell'interfaccia utente necessitano di una priorità più alta. Per le scorciatoie da tastiera, considera di utilizzare :ref:`_shortcut_input()<class_Node_private_method__shortcut_input>`, poiché è chiamato prima di questo metodo. Infine, per gestire gli eventi della tastiera, considera di utilizzare :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>` per motivi di prestazioni.

\ **Nota:** Questo metodo è chiamato solo se il nodo è presente nell'albero di scene (ovvero se non è orfano).

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__unhandled_key_input:

.. rst-class:: classref-method

|void| **_unhandled_key_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Node_private_method__unhandled_key_input>`

Chiamato quando un :ref:`InputEventKey<class_InputEventKey>` non è stato consumato da :ref:`_input()<class_Node_private_method__input>` o da qualsiasi elemento :ref:`Control<class_Control>`. È chiamato dopo :ref:`_shortcut_input()<class_Node_private_method__shortcut_input>` ma prima di :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>`. L'evento di input si propaga attraverso l'albero dei nodi finché un nodo non lo consuma.

È chiamato solo se l'elaborazione degli input da tastiera non gestiti è abilitata, il che avviene automaticamente se questo metodo è sovrascritto, oppure può essere abilitata con :ref:`set_process_unhandled_key_input()<class_Node_method_set_process_unhandled_key_input>`.

Per consumare l'evento di input e impedire che si propaghi ulteriormente ad altri nodi, è possibile chiamare :ref:`Viewport.set_input_as_handled()<class_Viewport_method_set_input_as_handled>`.

Questo metodo può essere utilizzato per gestire l'input di caratteri Unicode con i modificatori :kbd:`Alt`, :kbd:`Alt + Ctrl` e :kbd:`Alt + Shift`, dopo che sono state gestite le scorciatoie.

Per l'input di gioco, questo metodo e :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>` sono solitamente più adatti di :ref:`_input()<class_Node_private_method__input>`, poiché gli eventi dell'interfaccia utente devono essere gestiti per primi. Questo metodo funziona anche meglio di :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>`, poiché gli eventi non correlati come :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` sono filtrati automaticamente. Per le scorciatoie, considera di usare :ref:`_shortcut_input()<class_Node_private_method__shortcut_input>`.

\ **Nota:** Questo metodo è chiamato solo se il nodo è presente nell'albero di scene (ovvero se non è orfano).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_add_child:

.. rst-class:: classref-method

|void| **add_child**\ (\ node\: :ref:`Node<class_Node>`, force_readable_name\: :ref:`bool<class_bool>` = false, internal\: :ref:`InternalMode<enum_Node_InternalMode>` = 0\ ) :ref:`🔗<class_Node_method_add_child>`

Aggiunge il nodo ``node`` come figlio. I nodi possono avere un numero qualsiasi di figli, ma ogni figlio deve avere un nome univoco. I nodi figlio sono eliminati automaticamente quando il nodo padre è eliminato, quindi un'intera scena si può rimuovere eliminando il suo nodo più in alto.

Se ``force_readable_name`` è ``true``, migliora la leggibilità del ``node`` aggiunto. Se non è denominato, ``node`` viene rinominato nel suo tipo. Inoltre, se condivide il suo :ref:`name<class_Node_property_name>` con un fratello, un numero viene accodato più correttamente. Questa operazione è molto lenta. Pertanto, si consiglia di lasciare questo su ``false``, che assegna un nome segnaposto con ``@`` in entrambe le situazioni.

Se ``internal`` è diverso da :ref:`INTERNAL_MODE_DISABLED<class_Node_constant_INTERNAL_MODE_DISABLED>`, il figlio verrà aggiunto come nodo interno. Questi nodi sono ignorati da metodi come :ref:`get_children()<class_Node_method_get_children>`, a meno che il loro parametro ``include_internal`` non sia ``true``. L'uso previsto è quello di nascondere i nodi interni all'utente, in modo che l'utente non li elimini o modifichi accidentalmente. Utilizzato da alcuni nodi dell'interfaccia utente, ad esempio :ref:`ColorPicker<class_ColorPicker>`.

\ **Nota:** Se ``node`` ha già un genitore, questo metodo fallirà. Usa prima :ref:`remove_child()<class_Node_method_remove_child>` per rimuovere ``node`` dal suo genitore attuale. Ad esempio:


.. tabs::

 .. code-tab:: gdscript

    var child_node = get_child(0)
    if child_node.get_parent():
        child_node.get_parent().remove_child(child_node)
    add_child(child_node)

 .. code-tab:: csharp

    Node childNode = GetChild(0);
    if (childNode.GetParent() != null)
    {
        childNode.GetParent().RemoveChild(childNode);
    }
    AddChild(childNode);



Se è necessario che il nodo figlio sia aggiunto sotto un nodo specifico nell'elenco dei figli, usa :ref:`add_sibling()<class_Node_method_add_sibling>` invece di questo metodo.

\ **Nota:** Se è necessario che un figlio sia reso persistente in un :ref:`PackedScene<class_PackedScene>`, imposta :ref:`owner<class_Node_property_owner>` oltre a chiamare :ref:`add_child()<class_Node_method_add_child>`. Questo è in genere importante per gli :doc:`script strumenti <../tutorials/plugins/running_code_in_the_editor>` e le :doc:`estensioni dell'editor <../tutorials/plugins/editor/index>`. Se :ref:`add_child()<class_Node_method_add_child>` viene chiamato senza impostare :ref:`owner<class_Node_property_owner>`, il **Node** appena aggiunto non sarà visibile nell'albero di scene, anche se sarà visibile nella vista 2D/3D.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_add_sibling:

.. rst-class:: classref-method

|void| **add_sibling**\ (\ sibling\: :ref:`Node<class_Node>`, force_readable_name\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node_method_add_sibling>`

Aggiunge il nodo ``sibling`` al nodo genitore di questo nodo e sposta il fratello aggiunto subito sotto questo nodo.

Se ``force_readable_name`` è ``true``, migliora la leggibilità del ``sibling`` aggiunto. Se non è denominato, ``sibling`` viene rinominato nel suo tipo. Inoltre, se condivide il suo :ref:`name<class_Node_property_name>` con un fratello, un numero viene accodato più correttamente. Questa operazione è molto lenta. Pertanto, si consiglia di lasciare questo su ``false``, che assegna un nome fittizio con ``@`` in entrambe le situazioni.

Usa :ref:`add_child()<class_Node_method_add_child>` invece di questo metodo se non c'è bisogno che il nodo figlio sia aggiunto sotto un nodo specifico nella lista dei figli.

\ **Nota:** Se questo nodo è interno, anche il fratello aggiunto sarà interno (vedi il parametro ``internal`` di :ref:`add_child()<class_Node_method_add_child>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_add_to_group:

.. rst-class:: classref-method

|void| **add_to_group**\ (\ group\: :ref:`StringName<class_StringName>`, persistent\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node_method_add_to_group>`

Adds the node to the ``group``. Groups can be helpful to organize a subset of nodes, for example ``"enemies"`` or ``"collectables"``. See notes in the description, and the group methods in :ref:`SceneTree<class_SceneTree>`.

If ``persistent`` is ``true``, the group will be stored when saved inside a :ref:`PackedScene<class_PackedScene>`. All groups created and displayed in the Groups dock are persistent.

\ **Note:** To improve performance, the order of group names is *not* guaranteed and may vary between project runs. Therefore, do not rely on the group order.

\ **Note:** :ref:`SceneTree<class_SceneTree>`'s group methods will *not* work on this node if not inside the tree (see :ref:`is_inside_tree()<class_Node_method_is_inside_tree>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_atr:

.. rst-class:: classref-method

:ref:`String<class_String>` **atr**\ (\ message\: :ref:`String<class_String>`, context\: :ref:`StringName<class_StringName>` = ""\ ) |const| :ref:`🔗<class_Node_method_atr>`

Traduce la stringa ``message``, utilizzando i cataloghi di traduzione configurati nelle Impostazioni del progetto. È possibile specificare un ulteriore contesto (``context``) per facilitare la traduzione. Nota che la maggior parte dei nodi :ref:`Control<class_Control>` traduce automaticamente le proprie stringhe, quindi questo metodo è utile soprattutto per stringhe formattate o testo disegnato personalizzato.

Questo metodo è simile a :ref:`Object.tr()<class_Object_method_tr>`, ma rispetta lo stato di :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>`.

Se :ref:`Object.can_translate_messages()<class_Object_method_can_translate_messages>` è ``false``, o non è disponibile alcuna traduzione, questo metodo restituisce ``message`` senza modifiche. Vedi :ref:`Object.set_message_translation()<class_Object_method_set_message_translation>`.

Per esempi dettagliati, vedi :doc:`Internazionalizzazione dei giochi <../tutorials/i18n/internationalizing_games>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_atr_n:

.. rst-class:: classref-method

:ref:`String<class_String>` **atr_n**\ (\ message\: :ref:`String<class_String>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = ""\ ) |const| :ref:`🔗<class_Node_method_atr_n>`

Traduce la stringa ``message`` o ``plural_message``, utilizzando i cataloghi di traduzione configurati nelle Impostazioni del progetto. È possibile specificare un ulteriore contesto (``context``) per facilitare la traduzione.

Questo metodo è simile a :ref:`Object.tr_n()<class_Object_method_tr_n>`, ma rispetta lo stato di :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>`.

Se :ref:`Object.can_translate_messages()<class_Object_method_can_translate_messages>` è ``false``, o non è disponibile alcuna traduzione, questo metodo restituisce ``message`` o ``plural_message``, senza modifiche. Vedi :ref:`Object.set_message_translation()<class_Object_method_set_message_translation>`.

\ ``n`` è il numero, o la quantità, del soggetto del messaggio. È utilizzato dal sistema di traduzione per recuperare la forma plurale corretta per la lingua attuale.

Per esempi dettagliati, vedi :doc:`Internazionalizzazione dei giochi <../tutorials/i18n/internationalizing_games>`.

\ **Nota:** I numeri negativi e :ref:`float<class_float>` potrebbero non essere applicati correttamente ad alcuni soggetti numerabili. Si consiglia di gestire questi casi con :ref:`atr()<class_Node_method_atr>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_call_deferred_thread_group:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call_deferred_thread_group**\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Node_method_call_deferred_thread_group>`

Questa funzione è simile a :ref:`Object.call_deferred()<class_Object_method_call_deferred>`, eccetto che la chiamata avrà luogo quando il gruppo di thread del nodo è elaborato. Se il gruppo di thread del nodo elabora in un thread secondario, la chiamata sarà eseguita su quel thread, subito prima che :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>` o :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`, :ref:`_process()<class_Node_private_method__process>` o :ref:`_physics_process()<class_Node_private_method__physics_process>` o le loro versioni interne siano chiamate.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_call_thread_safe:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call_thread_safe**\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Node_method_call_thread_safe>`

Questa funzione assicura che la chiamata di questa funzione avrà successo, a prescindere dal fatto che sia eseguita da un thread o meno. Se è chiamata da un thread a cui non è consentito chiamare la funzione, la chiamata sarà differita. Altrimenti, la chiamata sarà eseguita direttamente.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_can_auto_translate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_auto_translate**\ (\ ) |const| :ref:`🔗<class_Node_method_can_auto_translate>`

Restituisce ``true`` se il nodo può automaticamente tradurre i messaggi a seconda della lingua attuale. Vedi anche :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>`, :ref:`atr()<class_Node_method_atr>` e :ref:`atr_n()<class_Node_method_atr_n>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_can_process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_process**\ (\ ) |const| :ref:`🔗<class_Node_method_can_process>`

Restituisce ``true`` se il nodo può ricevere notifiche di elaborazione e callback di input (:ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>`, :ref:`_input()<class_Node_private_method__input>`, ecc.) dal :ref:`SceneTree<class_SceneTree>` e :ref:`Viewport<class_Viewport>`. Il valore restituito dipende da :ref:`process_mode<class_Node_property_process_mode>`:

- Se impostato su :ref:`PROCESS_MODE_PAUSABLE<class_Node_constant_PROCESS_MODE_PAUSABLE>`, restituisce ``true`` quando il gioco è in elaborazione, ovvero :ref:`SceneTree.paused<class_SceneTree_property_paused>` è ``false``;

- Se impostato su :ref:`PROCESS_MODE_WHEN_PAUSED<class_Node_constant_PROCESS_MODE_WHEN_PAUSED>`, restituisce ``true`` quando il gioco è in pausa, ovvero :ref:`SceneTree.paused<class_SceneTree_property_paused>` è ``true``;

- Se impostato su :ref:`PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`, restituisce sempre ``true``;

- Se impostato su :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, restituisce sempre ``false``;

- Se impostato su :ref:`PROCESS_MODE_INHERIT<class_Node_constant_PROCESS_MODE_INHERIT>`, usa :ref:`process_mode<class_Node_property_process_mode>` del nodo genitore per determinare il risultato.

Se il nodo non è all'interno dell'albero, restituisce ``false`` a prescindere dal valore di :ref:`process_mode<class_Node_property_process_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_create_tween:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **create_tween**\ (\ ) :ref:`🔗<class_Node_method_create_tween>`

Crea un nuovo :ref:`Tween<class_Tween>` e lo associa a questo nodo.

Ciò è equivalente a fare:


.. tabs::

 .. code-tab:: gdscript

    get_tree().create_tween().bind_node(self)

 .. code-tab:: csharp

    GetTree().CreateTween().BindNode(this);



Il Tween sarà avviato automaticamente sul frame di processo o frame di fisica successivo (a seconda di :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`). Vedi :ref:`Tween.bind_node()<class_Tween_method_bind_node>` per maggiori informazioni sui Tween associati ai nodi.

\ **Nota:** È possibile utilizzare questo metodo comunque quando il nodo non è all'interno di :ref:`SceneTree<class_SceneTree>`. Potrebbe non funzionare nel caso improbabile in cui si utilizzi un :ref:`MainLoop<class_MainLoop>` personalizzato.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_duplicate:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **duplicate**\ (\ flags\: :ref:`int<class_int>` = 15\ ) |const| :ref:`🔗<class_Node_method_duplicate>`

Duplicates the node, returning a new node with all of its properties, signals, groups, and children copied from the original, recursively. The behavior can be tweaked through the ``flags`` (see :ref:`DuplicateFlags<enum_Node_DuplicateFlags>`). Internal nodes are not duplicated.

\ **Note:** For nodes with a :ref:`Script<class_Script>` attached, if :ref:`Object._init()<class_Object_private_method__init>` has been defined with required parameters, the duplicated node will not have a :ref:`Script<class_Script>`.

\ **Note:** By default, this method will duplicate only properties marked for serialization (i.e. using :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>`, or in GDScript, :ref:`@GDScript.@export<class_@GDScript_annotation_@export>`). If you want to duplicate all properties, use :ref:`DUPLICATE_INTERNAL_STATE<class_Node_constant_DUPLICATE_INTERNAL_STATE>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_find_child:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **find_child**\ (\ pattern\: :ref:`String<class_String>`, recursive\: :ref:`bool<class_bool>` = true, owned\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Node_method_find_child>`

Trova il primo discendente di questo nodo il cui :ref:`name<class_Node_property_name>` corrisponde a ``pattern``, restituendo ``null`` se nessuna corrispondenza viene trovata. La corrispondenza viene effettuata sui nomi dei nodi, *non* sui loro percorsi, tramite :ref:`String.match()<class_String_method_match>`. Pertanto, è sensibile alle maiuscole e alle minuscole, ``"*"`` corrisponde a zero o più caratteri e ``"?"`` corrisponde a qualsiasi singolo carattere.

Se ``recursive`` è ``false``, solo i figli diretti di questo nodo sono controllati. I nodi sono controllati in ordine ad albero, quindi è controllato prima il primo figlio diretto di questo nodo, poi i suoi figli diretti, ecc., prima di passare al secondo figlio diretto e così via. Nella ricerca sono inclusi anche i figli interni (vedi il parametro ``internal`` in :ref:`add_child()<class_Node_method_add_child>`).

Se ``owned`` è ``true``, sono controllati solo i discendenti con un nodo :ref:`owner<class_Node_property_owner>` valido.

\ **Nota:** Questo metodo può essere molto lento. Considera di memorizzare un riferimento al nodo trovato in una variabile. In alternativa, usa :ref:`get_node()<class_Node_method_get_node>` con nomi univoci (vedi :ref:`unique_name_in_owner<class_Node_property_unique_name_in_owner>`).

\ **Nota:** Per trovare tutti i nodi discendenti che corrispondono a uno schema o a un tipo di classe, vedi :ref:`find_children()<class_Node_method_find_children>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_find_children:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **find_children**\ (\ pattern\: :ref:`String<class_String>`, type\: :ref:`String<class_String>` = "", recursive\: :ref:`bool<class_bool>` = true, owned\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Node_method_find_children>`

Trova tutti i discendenti di questo nodo i cui nomi corrispondono a ``pattern``, restituendo un :ref:`Array<class_Array>` vuoto se nessuna corrispondenza viene trovata. La corrispondenza viene effettuata sui nomi dei nodi, *non* sui loro percorsi, tramite :ref:`String.match()<class_String_method_match>`. Pertanto, è sensibile alle maiuscole e alle minuscole, ``"*"`` corrisponde a zero o più caratteri e ``"?"`` corrisponde a qualsiasi singolo carattere.

Se ``type`` non è vuoto, solo gli antenati che ereditano da ``type`` sono inclusi (vedi :ref:`Object.is_class()<class_Object_method_is_class>`).

Se ``recursive`` è ``false``, solo i figli diretti di questo nodo sono controllati. I nodi sono controllati in ordine ad albero, quindi è controllato prima il primo figlio diretto di questo nodo, poi i suoi figli diretti, ecc., prima di passare al secondo figlio diretto e così via. Nella ricerca sono inclusi anche i figli interni (vedi il parametro ``internal`` in :ref:`add_child()<class_Node_method_add_child>`).

Se ``owned`` è ``true``, sono controllati solo i discendenti con un nodo :ref:`owner<class_Node_property_owner>` valido.

\ **Nota:** Questo metodo può essere molto lento. Considera di memorizzare i riferimenti ai nodi trovati in una variabile

\ **Nota:** Per trovare un singolo nodo discendente che corrisponde a uno schema, vedi :ref:`find_child()<class_Node_method_find_child>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_find_parent:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **find_parent**\ (\ pattern\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Node_method_find_parent>`

Trova il primo antenato di questo nodo il cui :ref:`name<class_Node_property_name>` corrisponde a ``pattern``, restituendo ``null`` se nessuna corrispondenza viene trovata. La corrispondenza viene effettuata tramite :ref:`String.match()<class_String_method_match>`. Pertanto, è sensibile alle maiuscole e alle minuscole, ``"*"`` corrisponde a zero o più caratteri e ``"?"`` corrisponde a qualsiasi singolo carattere. Vedi anche :ref:`find_child()<class_Node_method_find_child>` e :ref:`find_children()<class_Node_method_find_children>`.

\ **Nota:** Man mano che questo metodo sale nell'albero della scena, può essere lento in nodi profondamente innestati. Considera di memorizzare un riferimento al nodo trovato in una variabile. In alternativa, utilizza :ref:`get_node()<class_Node_method_get_node>` con nomi univoci (vedi :ref:`unique_name_in_owner<class_Node_property_unique_name_in_owner>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_accessibility_element:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_accessibility_element**\ (\ ) |const| :ref:`🔗<class_Node_method_get_accessibility_element>`

Restituisce il RID dell'elemento principale di accessibilità.

\ **Nota:** Si dovrebbe chiamare questo metodo solo durante gli aggiornamenti delle informazioni di accessibilità (:ref:`NOTIFICATION_ACCESSIBILITY_UPDATE<class_Node_constant_NOTIFICATION_ACCESSIBILITY_UPDATE>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_child:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_child**\ (\ idx\: :ref:`int<class_int>`, include_internal\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_child>`

Recupera un nodo figlio tramite il suo indice. Ogni nodo figlio ha un indice relativo ai suoi fratelli (vedi :ref:`get_index()<class_Node_method_get_index>`). Il primo figlio è all'indice 0. Si possono anche usare valori negativi per partire dalla fine della lista. Questo metodo si può usare in combinazione con :ref:`get_child_count()<class_Node_method_get_child_count>` per iterare i figli di questo nodo. Se nessun figlio esiste all'indice specificato, questo metodo restituisce ``null`` e viene generato un errore.

Se ``include_internal`` è ``false``, i figli interni sono ignorati (vedi il parametro ``internal`` di :ref:`add_child()<class_Node_method_add_child>`).

::

    # Supponendo che i seguenti siano figli di questo nodo, in ordine:
    # Primo, Mezzo, Ultimo.

    var a = get_child(0).name  # a è "Primo"
    var b = get_child(1).name  # b è "Mezzo"
    var b = get_child(2).name  # b è "Ultimo"
    var c = get_child(-1).name # c è "Ultimo"

\ **Nota:** Per recuperare un nodo tramite :ref:`NodePath<class_NodePath>`, usa :ref:`get_node()<class_Node_method_get_node>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_child_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_child_count**\ (\ include_internal\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_child_count>`

Restituisce il numero di figli di questo nodo.

Se ``include_internal`` è ``false``, i figli interni non sono conteggiati (vedi il parametro ``internal`` di :ref:`add_child()<class_Node_method_add_child>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_children:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_children**\ (\ include_internal\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_children>`

Restituisce tutti i figli di questo nodo all'interno di un :ref:`Array<class_Array>`.

Se ``include_internal`` è ``false``, esclude i figli interni dall'array restituito (vedi il parametro ``internal`` di :ref:`add_child()<class_Node_method_add_child>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_groups:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_groups**\ (\ ) |const| :ref:`🔗<class_Node_method_get_groups>`

Restituisce un :ref:`Array<class_Array>` di nomi dei gruppi a cui è stato aggiunto il nodo.

\ **Nota:** Per migliorare le prestazioni, l'ordine dei nomi dei gruppi *non* è garantito e può variare tra le esecuzioni del progetto. Pertanto, non fare affidamento sull'ordine dei gruppi.

\ **Nota:** Questo metodo può anche restituire alcuni nomi di gruppi che iniziano con un trattino basso (``_``). Questi sono utilizzati internamente dal motore. Per evitare conflitti, non usare gruppi personalizzati che iniziano con trattini bassi. Per escludere i gruppi interni, vedi il seguente snippet di codice:


.. tabs::

 .. code-tab:: gdscript

    # Memorizza solo i gruppi non interni del nodo (come array di StringNames)
    var non_internal_groups = []
    for group in get_groups():
        if not str(group).begins_with("_"):
            non_internal_groups.push_back(group)

 .. code-tab:: csharp

    // Memorizza solo i gruppi non interni del nodo (come List di StringName).
    List<string> nonInternalGroups = new List<string>();
    foreach (string group in GetGroups())
    {
        if (!group.BeginsWith("_"))
            nonInternalGroups.Add(group);
    }



.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_index**\ (\ include_internal\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_index>`

Restituisce l'ordine di questo nodo tra i suoi fratelli. L'indice del primo nodo è ``0``. Vedi anche :ref:`get_child()<class_Node_method_get_child>`.

Se ``include_internal`` è ``false``, restituisce l'indice ignorando i figli interni. Il primo figlio non interno avrà un indice di ``0`` (vedi il parametro ``internal`` di :ref:`add_child()<class_Node_method_add_child>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_last_exclusive_window:

.. rst-class:: classref-method

:ref:`Window<class_Window>` **get_last_exclusive_window**\ (\ ) |const| :ref:`🔗<class_Node_method_get_last_exclusive_window>`

Restituisce la finestra (:ref:`Window<class_Window>`) che contiene questo nodo, oppure l'ultimo figlio esclusivo in una catena di finestre che inizia con quella che contiene questo nodo.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_multiplayer_authority:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_multiplayer_authority**\ (\ ) |const| :ref:`🔗<class_Node_method_get_multiplayer_authority>`

Restituisce l'ID peer dell'autorità multigiocatore per questo nodo. Vedi :ref:`set_multiplayer_authority()<class_Node_method_set_multiplayer_authority>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_node:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_node**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Node_method_get_node>`

Recupera un nodo. Il :ref:`NodePath<class_NodePath>` può essere un percorso relativo (da questo nodo) o un percorso assoluto (da :ref:`SceneTree.root<class_SceneTree_property_root>`) a un nodo. Se il percorso ``path`` non punta a un nodo valido, genera un errore e restituisce ``null``. I tentativi di accedere ai metodi sul valore restituito genereranno un errore *"Attempt to call <metodo> on a null instance."*.

\ **Nota:** Il recupero tramite percorso assoluto funziona solo quando il nodo è all'interno dell'albero della scena (vedi :ref:`is_inside_tree()<class_Node_method_is_inside_tree>`).

\ **Esempio:** Supponiamo che questo metodo venga chiamato dal nodo Personaggio, all'interno del seguente albero:

.. code:: text

     ┖╴root
        ┠╴Personaggio (sei qui!)
        ┃  ┠╴Spada
        ┃  ┖╴Zaino
        ┃     ┖╴Pugnale
        ┠╴MioGioco
        ┖╴Palude
           ┠╴Alligatore
           ┠╴Zanzara
           ┖╴Goblin

Le seguenti chiamate restituiranno un nodo valido:


.. tabs::

 .. code-tab:: gdscript

    get_node("Spada")
    get_node("Zaino/Pugnale")
    get_node("../Swamp/Alligator")
    get_node("/root/MioGioco")

 .. code-tab:: csharp

    GetNode("Spada");
    GetNode("Zaino/Pugnale");
    GetNode("../Palude/Alligatore");
    GetNode("/root/MioGioco");



.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_node_and_resource:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_node_and_resource**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_Node_method_get_node_and_resource>`

Recupera un nodo e la sua risorsa più innestata come specificato dal sotto-nome del :ref:`NodePath<class_NodePath>`. Restituisce un :ref:`Array<class_Array>` di dimensione ``3`` dove:

- L'elemento ``0`` è il **Node**, o ``null`` se non trovato;

- L'elemento ``1`` è l'ultima :ref:`Resource<class_Resource>` innestata del sotto-nome, o ``null`` se non trovata;

- L'elemento ``2`` è il :ref:`NodePath<class_NodePath>` rimanente, che si riferisce a una proprietà esistente, di tipo non :ref:`Resource<class_Resource>` (vedi :ref:`Object.get_indexed()<class_Object_method_get_indexed>`).

\ **Esempio:** Supponiamo che alla :ref:`Sprite2D.texture<class_Sprite2D_property_texture>` del figlio sia stata assegnata una :ref:`AtlasTexture<class_AtlasTexture>`:


.. tabs::

 .. code-tab:: gdscript

    var a = get_node_and_resource("Area2D/Sprite2D")
    print(a[0].name) # Stampa Sprite2D
    print(a[1])      # Stampa <null>
    print(a[2])      # Stampa ^""

    var b = get_node_and_resource("Area2D/Sprite2D:texture:atlas")
    print(b[0].name)        # Stampa Sprite2D
    print(b[1].get_class()) # Stampa AtlasTexture
    print(b[2])             # Stampa ^""

    var c = get_node_and_resource("Area2D/Sprite2D:texture:atlas:region")
    print(c[0].name)        # Stampa Sprite2D
    print(c[1].get_class()) # Stampa AtlasTexture
    print(c[2])             # Stampa ^":region"

 .. code-tab:: csharp

    var a = GetNodeAndResource(NodePath("Area2D/Sprite2D"));
    GD.Print(a[0].Name); // Stampa Sprite2D
    GD.Print(a[1]);      // Stampa <null>
    GD.Print(a[2]);      // Stampa ^"

    var b = GetNodeAndResource(NodePath("Area2D/Sprite2D:texture:atlas"));
    GD.Print(b[0].name);        // Stampa Sprite2D
    GD.Print(b[1].get_class()); // Stampa AtlasTexture
    GD.Print(b[2]);             // Stampa ^""

    var c = GetNodeAndResource(NodePath("Area2D/Sprite2D:texture:atlas:region"));
    GD.Print(c[0].name);        // Stampa Sprite2D
    GD.Print(c[1].get_class()); // Stampa  AtlasTexture
    GD.Print(c[2]);             // Stampa ^":region"



.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_node_or_null:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_node_or_null**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Node_method_get_node_or_null>`

Recupera un nodo tramite :ref:`NodePath<class_NodePath>`. Simile a :ref:`get_node()<class_Node_method_get_node>`, ma non genera un errore se il percorso ``path`` non punta a un nodo valido.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_node_rpc_config:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_node_rpc_config**\ (\ ) |const| :ref:`🔗<class_Node_method_get_node_rpc_config>`

Restituisce un :ref:`Dictionary<class_Dictionary>` che mappa i nomi dei metodi alla loro configurazione RPC definita per questo nodo tramite :ref:`rpc_config()<class_Node_method_rpc_config>`.

\ **Nota:** Questo metodo restituisce solo la configurazione RPC assegnata tramite :ref:`rpc_config()<class_Node_method_rpc_config>`. Consulta :ref:`Script.get_rpc_config()<class_Script_method_get_rpc_config>` per recuperare le RPC definite dallo :ref:`Script<class_Script>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_orphan_node_ids:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **get_orphan_node_ids**\ (\ ) |static| :ref:`🔗<class_Node_method_get_orphan_node_ids>`

Restituisce gli ID oggetto di tutti i nodi orfani (nodi al di fuori dello :ref:`SceneTree<class_SceneTree>`). Utile per il debug.

\ **Nota:** :ref:`get_orphan_node_ids()<class_Node_method_get_orphan_node_ids>` funziona solo nelle build di debug. Se richiamato in un progetto esportato in modalità rilascio, :ref:`get_orphan_node_ids()<class_Node_method_get_orphan_node_ids>` restituirà un array vuoto.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_parent:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_parent**\ (\ ) |const| :ref:`🔗<class_Node_method_get_parent>`

Restituisce il nodo genitore di questo nodo, o ``null`` se il nodo non ha un genitore.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_path**\ (\ ) |const| :ref:`🔗<class_Node_method_get_path>`

Restituisce il percorso assoluto del nodo, relativo al :ref:`SceneTree.root<class_SceneTree_property_root>`. Se il nodo non si trova all'interno dell'albero di scena, questo metodo fallisce e restituisce un :ref:`NodePath<class_NodePath>` vuoto.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_path_to:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_path_to**\ (\ node\: :ref:`Node<class_Node>`, use_unique_path\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_path_to>`

Restituisce il :ref:`NodePath<class_NodePath>` relativo da questo nodo al nodo ``node`` specificato. Entrambi i nodi devono essere presenti nello stesso :ref:`SceneTree<class_SceneTree>` o gerarchia di scena, altrimenti questo metodo fallisce e restituisce un :ref:`NodePath<class_NodePath>` vuoto.

Se ``use_unique_path`` è ``true``, restituisce il percorso più breve tenendo conto del nome univoco di questo nodo (vedi :ref:`unique_name_in_owner<class_Node_property_unique_name_in_owner>`).

\ **Nota:** Se si ottiene un percorso relativo che inizia da un nodo univoco, il percorso potrebbe essere più lungo di un normale percorso relativo, a causa dell'aggiunta del nome univoco del nodo.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_physics_process_delta_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_physics_process_delta_time**\ (\ ) |const| :ref:`🔗<class_Node_method_get_physics_process_delta_time>`

Restituisce il tempo trascorso (in secondi) dall'ultimo callback di fisica. Questo valore è identico al parametro ``delta`` di :ref:`_physics_process()<class_Node_private_method__physics_process>` ed è spesso coerente in fase di esecuzione, a meno che non venga modificato :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Vedi anche :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`.

\ **Nota:** Il valore restituito sarà maggiore del previsto se eseguito a un frame rate inferiore a :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` / :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` FPS. Questo viene fatto per evitare scenari di "spirale di morte" in cui le prestazioni crollerebbero a causa di un numero sempre crescente di passaggi di fisica per frame. Questo comportamento influisce sia su :ref:`_process()<class_Node_private_method__process>` sia su :ref:`_physics_process()<class_Node_private_method__physics_process>`. Perciò, evitare di utilizzare ``delta`` per misurare il tempo in secondi reali. Per questo scopo utilizzare invece i metodi del singleton :ref:`Time<class_Time>`, ad esempio :ref:`Time.get_ticks_usec()<class_Time_method_get_ticks_usec>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_process_delta_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_process_delta_time**\ (\ ) |const| :ref:`🔗<class_Node_method_get_process_delta_time>`

Restituisce il tempo trascorso (in secondi) dall'ultimo callback di processo. Questo valore è identico al parametro ``delta`` di :ref:`_process()<class_Node_private_method__process>` e può variare da frame a frame. Vedi anche :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>`.

\ **Nota:** Il valore restituito sarà maggiore del previsto se eseguito a un frame rate inferiore a :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` / :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` FPS. Questo viene fatto per evitare scenari di "spirale di morte" in cui le prestazioni crollerebbero a causa di un numero sempre crescente di passaggi di fisica per frame. Questo comportamento influisce sia su :ref:`_process()<class_Node_private_method__process>` sia su :ref:`_physics_process()<class_Node_private_method__physics_process>`. Perciò, evitare di utilizzare ``delta`` per misurare il tempo in secondi reali. Per questo scopo utilizzare invece i metodi del singleton :ref:`Time<class_Time>`, ad esempio :ref:`Time.get_ticks_usec()<class_Time_method_get_ticks_usec>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_scene_instance_load_placeholder:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_scene_instance_load_placeholder**\ (\ ) |const| :ref:`🔗<class_Node_method_get_scene_instance_load_placeholder>`

Restituisce ``true`` se questo nodo è un segnaposto di carico di istanza. Vedi :ref:`InstancePlaceholder<class_InstancePlaceholder>` e :ref:`set_scene_instance_load_placeholder()<class_Node_method_set_scene_instance_load_placeholder>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_tree:

.. rst-class:: classref-method

:ref:`SceneTree<class_SceneTree>` **get_tree**\ (\ ) |const| :ref:`🔗<class_Node_method_get_tree>`

Restituisce lo :ref:`SceneTree<class_SceneTree>` che contiene questo nodo. Se questo nodo non è all'interno dell'albero, genera un errore e restituisce ``null``. Vedi anche :ref:`is_inside_tree()<class_Node_method_is_inside_tree>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_tree_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tree_string**\ (\ ) :ref:`🔗<class_Node_method_get_tree_string>`

Restituisce l'albero come :ref:`String<class_String>`. Utilizzato principalmente per scopi di debug. Questa versione visualizza il percorso relativo al nodo attuale ed è utile per copiare/incollare nella funzione :ref:`get_node()<class_Node_method_get_node>`. Può anche essere utilizzato nell'interfaccia utente di gioco.

Può stampare, ad esempio:

.. code:: text

    TheGame
    TheGame/Menu
    TheGame/Menu/Label
    TheGame/Menu/Camera2D
    TheGame/SplashScreen
    TheGame/SplashScreen/Camera2D

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_tree_string_pretty:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tree_string_pretty**\ (\ ) :ref:`🔗<class_Node_method_get_tree_string_pretty>`

Simile a :ref:`get_tree_string()<class_Node_method_get_tree_string>`, restituisce l'albero come :ref:`String<class_String>`. Questa versione visualizza una rappresentazione più grafica simile a quella visualizzata nel pannello di Scena. È utile per ispezionare alberi più grandi.

Può stampare, ad esempio:

.. code:: text

    ┖╴TheGame
    ┠╴Menu
    ┃ ┠╴Label
    ┃ ┖╴Camera2D
    ┖╴SplashScreen
    ┖╴Camera2D

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_viewport:

.. rst-class:: classref-method

:ref:`Viewport<class_Viewport>` **get_viewport**\ (\ ) |const| :ref:`🔗<class_Node_method_get_viewport>`

Restituisce la :ref:`Viewport<class_Viewport>` progenitore più vicina a questo nodo, se il nodo è all'interno dell'albero. Altrimenti, restituisce ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_window:

.. rst-class:: classref-method

:ref:`Window<class_Window>` **get_window**\ (\ ) |const| :ref:`🔗<class_Node_method_get_window>`

Restituisce la finestra (:ref:`Window<class_Window>`) che contiene questo nodo. Se il nodo è nella finestra principale, ciò equivale a ottenere il nodo radice (``get_tree().get_root()``).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_has_node:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Node_method_has_node>`

Restituisce ``true`` se il percorso fornito ``path`` punta a un nodo valido. Vedi anche :ref:`get_node()<class_Node_method_get_node>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_has_node_and_resource:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node_and_resource**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Node_method_has_node_and_resource>`

Restituisce ``true`` se il percorso ``path`` punta a un nodo valido e i suoi sotto-nomi puntano a una :ref:`Resource<class_Resource>` valida, ad esempio ``Area2D/CollisionShape2D:shape``. Le proprietà che non sono di tipo :ref:`Resource<class_Resource>` (come i nodi o altri tipi :ref:`Variant<class_Variant>`) non sono considerate. Vedi anche :ref:`get_node_and_resource()<class_Node_method_get_node_and_resource>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_ancestor_of:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_ancestor_of**\ (\ node\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Node_method_is_ancestor_of>`

Restituisce ``true`` se il nodo fornito ``node`` è un figlio diretto o indiretto di questo nodo.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_displayed_folded:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_displayed_folded**\ (\ ) |const| :ref:`🔗<class_Node_method_is_displayed_folded>`

Restituisce ``true`` se il nodo è ridotto (minimizzato) nel pannello Scena. Questo metodo è destinato all'uso di estensioni e strumenti dell'editor . Vedi anche :ref:`set_display_folded()<class_Node_method_set_display_folded>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_editable_instance:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_editable_instance**\ (\ node\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Node_method_is_editable_instance>`

Restituisce ``true`` se ``node`` ha figli modificabili abilitati relativo a questo nodo. Questo metodo è destinato all'uso di estensioni e strumenti dell'editor . Vedi anche :ref:`set_editable_instance()<class_Node_method_set_editable_instance>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_greater_than:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_greater_than**\ (\ node\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Node_method_is_greater_than>`

Restituisce ``true`` se il nodo fornito ``node`` appare in seguito a questo nodo nella gerarchia della scena. Un nodo che appare in seguito è di solito elaborato per ultimo.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_in_group:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Node_method_is_in_group>`

Restituisce ``true`` se questo nodo è stato aggiunto al gruppo ``group`` specificato. Vedi :ref:`add_to_group()<class_Node_method_add_to_group>` e :ref:`remove_from_group()<class_Node_method_remove_from_group>`. Vedi anche le note nella descrizione e i metodi dei gruppi di :ref:`SceneTree<class_SceneTree>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_inside_tree:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_inside_tree**\ (\ ) |const| :ref:`🔗<class_Node_method_is_inside_tree>`

Restituisce ``true`` se questo nodo è attualmente all'interno di un :ref:`SceneTree<class_SceneTree>`. Vedi anche :ref:`get_tree()<class_Node_method_get_tree>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_multiplayer_authority:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_multiplayer_authority**\ (\ ) |const| :ref:`🔗<class_Node_method_is_multiplayer_authority>`

Restituisce ``true`` se il sistema locale è l'autorità multigiocatore di questo nodo.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_node_ready:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_node_ready**\ (\ ) |const| :ref:`🔗<class_Node_method_is_node_ready>`

Restituisce ``true`` se il nodo è pronto, cioè è all'interno dell'albero di scene e tutti i suoi figli sono inizializzati.

\ :ref:`request_ready()<class_Node_method_request_ready>` reimposta questo valore a ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_part_of_edited_scene:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_part_of_edited_scene**\ (\ ) |const| :ref:`🔗<class_Node_method_is_part_of_edited_scene>`

Restituisce ``true`` se il nodo fa parte della scena attualmente aperta nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_physics_interpolated:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_physics_interpolated**\ (\ ) |const| :ref:`🔗<class_Node_method_is_physics_interpolated>`

Restituisce ``true`` se l'interpolazione fisica è abilitata per questo nodo (vedi :ref:`physics_interpolation_mode<class_Node_property_physics_interpolation_mode>`).

\ **Nota:** L'interpolazione sarà attiva solo se il flag è impostato **e** l'interpolazione fisica è abilitata nello :ref:`SceneTree<class_SceneTree>`. Ciò può essere testato usando :ref:`is_physics_interpolated_and_enabled()<class_Node_method_is_physics_interpolated_and_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_physics_interpolated_and_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_physics_interpolated_and_enabled**\ (\ ) |const| :ref:`🔗<class_Node_method_is_physics_interpolated_and_enabled>`

Restituisce ``true`` se l'interpolazione fisica è abilitata (vedi :ref:`physics_interpolation_mode<class_Node_property_physics_interpolation_mode>`) **e** abilitata nello :ref:`SceneTree<class_SceneTree>`.

Questa è una versione conveniente di :ref:`is_physics_interpolated()<class_Node_method_is_physics_interpolated>` che controlla anche se l'interpolazione fisica è abilitata globalmente.

Vedi :ref:`SceneTree.physics_interpolation<class_SceneTree_property_physics_interpolation>` e :ref:`ProjectSettings.physics/common/physics_interpolation<class_ProjectSettings_property_physics/common/physics_interpolation>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_physics_processing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_physics_processing**\ (\ ) |const| :ref:`🔗<class_Node_method_is_physics_processing>`

Restituisce ``true`` se il processo di fisica è abilitato (vedi :ref:`set_physics_process()<class_Node_method_set_physics_process>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_physics_processing_internal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_physics_processing_internal**\ (\ ) |const| :ref:`🔗<class_Node_method_is_physics_processing_internal>`

Restituisce ``true`` se il processo interno di fisica è abilitato (vedi :ref:`set_physics_process()<class_Node_method_set_physics_process>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing>`

Restituisce ``true`` se il processo è abilitato (vedi :ref:`set_process()<class_Node_method_set_process>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_input**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_input>`

Restituisce ``true`` se il nodo sta elaborando gli input (vedi :ref:`set_process_input()<class_Node_method_set_process_input>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_internal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_internal**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_internal>`

Restituisce ``true`` se il processo interno è abilitato (vedi :ref:`set_process_internal()<class_Node_method_set_process_internal>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_shortcut_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_shortcut_input**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_shortcut_input>`

Restituisce ``true`` se il nodo sta elaborando scorciatoie (vedi :ref:`set_process_shortcut_input()<class_Node_method_set_process_shortcut_input>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_unhandled_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_unhandled_input**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_unhandled_input>`

Restituisce ``true`` se il nodo sta elaborando gli input non gestiti (vedi :ref:`set_process_unhandled_input()<class_Node_method_set_process_unhandled_input>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_unhandled_key_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_unhandled_key_input**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_unhandled_key_input>`

Restituisce ``true`` se il nodo sta elaborando gli input di tasti non gestiti (vedi :ref:`set_process_unhandled_key_input()<class_Node_method_set_process_unhandled_key_input>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_move_child:

.. rst-class:: classref-method

|void| **move_child**\ (\ child_node\: :ref:`Node<class_Node>`, to_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Node_method_move_child>`

Sposta il nodo figlio ``child_node`` all'indice specificato. L'indice di un nodo è l'ordine tra i suoi fratelli. Se ``to_index`` è negativo, l'indice è conteggiato dalla fine della lista. Vedi anche :ref:`get_child()<class_Node_method_get_child>` e :ref:`get_index()<class_Node_method_get_index>`.

\ **Nota:** L'ordine di elaborazione di diversi callback del motore (:ref:`_ready()<class_Node_private_method__ready>`, :ref:`_process()<class_Node_private_method__process>`, ecc.) e le notifiche inviate tramite :ref:`propagate_notification()<class_Node_method_propagate_notification>` sono influenzate dall'ordine di albero. Anche i nodi :ref:`CanvasItem<class_CanvasItem>` sono renderizzati nell'ordine di albero. Vedi anche :ref:`process_priority<class_Node_property_process_priority>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_notify_deferred_thread_group:

.. rst-class:: classref-method

|void| **notify_deferred_thread_group**\ (\ what\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Node_method_notify_deferred_thread_group>`

Simile a :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>`, ma per le notifiche.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_notify_thread_safe:

.. rst-class:: classref-method

|void| **notify_thread_safe**\ (\ what\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Node_method_notify_thread_safe>`

Simile a :ref:`call_thread_safe()<class_Node_method_call_thread_safe>`, ma per le notifiche.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_print_orphan_nodes:

.. rst-class:: classref-method

|void| **print_orphan_nodes**\ (\ ) |static| :ref:`🔗<class_Node_method_print_orphan_nodes>`

Prints all orphan nodes (nodes outside the :ref:`SceneTree<class_SceneTree>`). Useful for debugging.

\ **Note:** This method only works in debug builds. It does nothing in a project exported in release mode.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_print_tree:

.. rst-class:: classref-method

|void| **print_tree**\ (\ ) :ref:`🔗<class_Node_method_print_tree>`

Stampa il nodo e i suoi figli sulla console, ricorsivamente. Il nodo non deve essere all'interno dell'albero. Questo metodo restituisce :ref:`NodePath<class_NodePath>` relativi a questo nodo ed è utile per copiare/incollare in :ref:`get_node()<class_Node_method_get_node>`. Vedi anche :ref:`print_tree_pretty()<class_Node_method_print_tree_pretty>`.

Può stampare, ad esempio:

.. code:: text

    .
    Menu
    Menu/Label
    Menu/Camera2D
    SplashScreen
    SplashScreen/Camera2D

.. rst-class:: classref-item-separator

----

.. _class_Node_method_print_tree_pretty:

.. rst-class:: classref-method

|void| **print_tree_pretty**\ (\ ) :ref:`🔗<class_Node_method_print_tree_pretty>`

Stampa il nodo e i suoi figli sulla console, ricorsivamente. Il nodo non deve essere all'interno dell'albero. Simile a :ref:`print_tree()<class_Node_method_print_tree>`, ma la rappresentazione grafica è simile a quella visualizzata nel pannello di Scena nell'editor. È utile per ispezionare alberi più grandi.

Potrebbe stampare, ad esempio:

.. code:: text

    ┖╴TheGame
    ┠╴Menu
    ┃ ┠╴Label
    ┃ ┖╴Camera2D
    ┖╴SplashScreen
    ┖╴Camera2D

.. rst-class:: classref-item-separator

----

.. _class_Node_method_propagate_call:

.. rst-class:: classref-method

|void| **propagate_call**\ (\ method\: :ref:`StringName<class_StringName>`, args\: :ref:`Array<class_Array>` = [], parent_first\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node_method_propagate_call>`

Chiama il metodo con il nome ``method``, passando ``args`` come argomenti, su questo nodo e su tutti i suoi figli, ricorsivamente.

Se ``parent_first`` è ``true``, il metodo è chiamato prima su questo nodo, poi su tutti i suoi figli. Se ``false``, i metodi dei figli sono chiamati prima.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_propagate_notification:

.. rst-class:: classref-method

|void| **propagate_notification**\ (\ what\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Node_method_propagate_notification>`

Chiama :ref:`Object.notification()<class_Object_method_notification>` con ``what`` su questo nodo e tutti i suoi figli, ricorsivamente.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_queue_accessibility_update:

.. rst-class:: classref-method

|void| **queue_accessibility_update**\ (\ ) :ref:`🔗<class_Node_method_queue_accessibility_update>`

Accoda un aggiornamento delle informazioni di accessibilità per questo nodo.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_queue_free:

.. rst-class:: classref-method

|void| **queue_free**\ (\ ) :ref:`🔗<class_Node_method_queue_free>`

Accoda questo nodo per essere eliminato alla fine del frame attuale. Quando è eliminato, sono eliminati anche tutti i suoi figli e tutti i riferimenti al nodo e ai suoi figli diventano non validi.

A differenza di :ref:`Object.free()<class_Object_method_free>`, il nodo non è eliminato subito ed è ancora possibile accedervi prima dell'eliminazione. È anche sicuro chiamare :ref:`queue_free()<class_Node_method_queue_free>` più volte. Usa :ref:`Object.is_queued_for_deletion()<class_Object_method_is_queued_for_deletion>` per verificare se il nodo sarà eliminato alla fine del frame.

\ **Nota:** Il nodo sarà liberato solo dopo che tutte le altre chiamate differite saranno terminate. Usare questo metodo non è sempre equivalente a chiamare :ref:`Object.free()<class_Object_method_free>` tramite :ref:`Object.call_deferred()<class_Object_method_call_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_remove_child:

.. rst-class:: classref-method

|void| **remove_child**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_method_remove_child>`

Rimuove un nodo figlio ``node``. ``node``, insieme ai suoi figli, non sono **eliminati**. Per eliminare un nodo, vedi :ref:`queue_free()<class_Node_method_queue_free>`.

\ **Nota:** Quando questo nodo è all'interno dell'albero, questo metodo imposta il :ref:`owner<class_Node_property_owner>` del ``node`` rimosso (o dei suoi discendenti) su ``null``, se il loro :ref:`owner<class_Node_property_owner>` non è più un antenato (vedi :ref:`is_ancestor_of()<class_Node_method_is_ancestor_of>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_remove_from_group:

.. rst-class:: classref-method

|void| **remove_from_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Node_method_remove_from_group>`

Rimuove il nodo dal gruppo nominato ``group``. Non fa nulla se il nodo non è nel gruppo ``group``. Vedi anche le note nella descrizione e i metodi dei gruppi di :ref:`SceneTree<class_SceneTree>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_reparent:

.. rst-class:: classref-method

|void| **reparent**\ (\ new_parent\: :ref:`Node<class_Node>`, keep_global_transform\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Node_method_reparent>`

Cambia il genitore di questo **Node** al nuovo genitore ``new_parent``. Il nodo deve già avere un genitore. Il :ref:`owner<class_Node_property_owner>` del nodo è preservato se il suo proprietario è ancora raggiungibile dalla nuova posizione (ad esempio, il nodo è ancora un discendente del nuovo genitore dopo l'operazione).

Se ``keep_global_transform`` è ``true``, la trasformazione globale del nodo sarà preservata se supportata. :ref:`Node2D<class_Node2D>`, :ref:`Node3D<class_Node3D>` e :ref:`Control<class_Control>` supportano questo argomento (ma :ref:`Control<class_Control>` mantiene solo la posizione).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_replace_by:

.. rst-class:: classref-method

|void| **replace_by**\ (\ node\: :ref:`Node<class_Node>`, keep_groups\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node_method_replace_by>`

Sostituisce questo nodo con il nodo ``node`` specificato. Tutti i figli di questo nodo vengono spostati in ``node``.

Se ``keep_groups`` è ``true``, il ``node`` verrà aggiunto agli stessi gruppi in cui si trova il nodo sostituito (vedi :ref:`add_to_group()<class_Node_method_add_to_group>`).

\ **Attenzione:** Il nodo sostituito viene rimosso dall'albero, ma **non** viene eliminato. Per evitare perdite di memoria, memorizza un riferimento al nodo in una variabile o usa :ref:`Object.free()<class_Object_method_free>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_request_ready:

.. rst-class:: classref-method

|void| **request_ready**\ (\ ) :ref:`🔗<class_Node_method_request_ready>`

Richiede che :ref:`_ready()<class_Node_private_method__ready>` sia chiamato di nuovo la prossima volta che il nodo entra nell'albero. **Non** chiama immediatamente :ref:`_ready()<class_Node_private_method__ready>`.

\ **Nota:** Questo metodo ha effetto solo sul nodo attuale. Se anche i figli del nodo devono richiedere di essere pronti, questo metodo deve essere chiamato per ognuno di loro. Quando il nodo e i suoi figli entrano di nuovo nell'albero, l'ordine dei callback :ref:`_ready()<class_Node_private_method__ready>` sarà lo stesso del solito.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_reset_physics_interpolation:

.. rst-class:: classref-method

|void| **reset_physics_interpolation**\ (\ ) :ref:`🔗<class_Node_method_reset_physics_interpolation>`

Quando l'interpolazione della fisica è attiva, spostare un nodo in una trasformazione radicalmente diversa (ad esempio il posizionamento all'interno di un livello) può causare un evidente glitch mentre l'oggetto viene renderizzato spostandosi dalla vecchia alla nuova posizione sul tick di fisica.

Tale glitch può essere prevenuto chiamando questo metodo, che disabilita temporaneamente l'interpolazione fino al completamento del tick di fisica.

La notifica :ref:`NOTIFICATION_RESET_PHYSICS_INTERPOLATION<class_Node_constant_NOTIFICATION_RESET_PHYSICS_INTERPOLATION>` verrà ricevuta dal nodo e da tutti i figli in modo ricorsivo.

\ **Nota:** Questa funzione dovrebbe essere chiamata **dopo** lo spostamento del nodo, piuttosto che prima.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_rpc:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rpc**\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Node_method_rpc>`

Invia una richiesta di chiamata di procedura remota per il metodo ``method`` ai peer sulla rete (e localmente), inviando argomenti aggiuntivi al metodo chiamato dall'RPC. La richiesta di chiamata sarà ricevuta solo dai nodi con lo stesso :ref:`NodePath<class_NodePath>`, incluso lo stesso identico :ref:`name<class_Node_property_name>`. Il comportamento dipende dalla configurazione RPC per il ``method`` specificato (vedi :ref:`rpc_config()<class_Node_method_rpc_config>` e :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>`). Per impostazione predefinita, i metodi non sono esposti alle RPC.

Potrebbe restituire :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` se la chiamata ha esito positivo, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` se gli argomenti passati in ``method`` non corrispondono, :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` se il :ref:`multiplayer<class_Node_property_multiplayer>` del nodo non può essere recuperato (ad esempio quando il nodo non è all'interno dell'albero), :ref:`@GlobalScope.ERR_CONNECTION_ERROR<class_@GlobalScope_constant_ERR_CONNECTION_ERROR>` se la connessione di :ref:`multiplayer<class_Node_property_multiplayer>` non è disponibile

\ **Nota:** È possibile utilizzare le RPC in modo sicuro sui client solamente dopo aver ricevuto il segnale :ref:`MultiplayerAPI.connected_to_server<class_MultiplayerAPI_signal_connected_to_server>` da :ref:`MultiplayerAPI<class_MultiplayerAPI>`. È necessario anche tenere traccia dello stato della connessione, tramite i segnali della :ref:`MultiplayerAPI<class_MultiplayerAPI>` come :ref:`MultiplayerAPI.server_disconnected<class_MultiplayerAPI_signal_server_disconnected>` o verificando (``get_multiplayer().peer.get_connection_status() == CONNECTION_CONNECTED``).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_rpc_config:

.. rst-class:: classref-method

|void| **rpc_config**\ (\ method\: :ref:`StringName<class_StringName>`, config\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Node_method_rpc_config>`

Modifica la configurazione RPC per il metodo ``method``. ``config`` dovrebbe essere ``null`` per disabilitare la funzionalità (come predefinito) o un :ref:`Dictionary<class_Dictionary>` contenente le seguenti voci:

- ``rpc_mode``: vedi :ref:`RPCMode<enum_MultiplayerAPI_RPCMode>`;

- ``transfer_mode``: vedi :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`;

- ``call_local``: se ``true``, il metodo sarà chiamato anche localmente;

- ``channel``: un :ref:`int<class_int>` che rappresenta il canale su cui inviare l'RPC.

\ **Nota:** In GDScript, questo metodo corrisponde all'annotazione :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>`, con vari parametri passati (``@rpc(any)``, ``@rpc(authority)``...). Consulta anche il tutorial :doc:`multiplayer di alto livello <../tutorials/networking/high_level_multiplayer>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_rpc_id:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rpc_id**\ (\ peer_id\: :ref:`int<class_int>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Node_method_rpc_id>`

Invia un :ref:`rpc()<class_Node_method_rpc>` a un peer specifico identificato da ``peer_id`` (vedi :ref:`MultiplayerPeer.set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`).

Può restituire :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` se la chiamata ha esito positivo, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` se gli argomenti passati in ``method`` non corrispondono, :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` se il :ref:`multiplayer<class_Node_property_multiplayer>` del nodo non può essere recuperato (ad esempio quando il nodo non è all'interno dell'albero), :ref:`@GlobalScope.ERR_CONNECTION_ERROR<class_@GlobalScope_constant_ERR_CONNECTION_ERROR>` se la connessione del :ref:`multiplayer<class_Node_property_multiplayer>` non è disponibile.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_deferred_thread_group:

.. rst-class:: classref-method

|void| **set_deferred_thread_group**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Node_method_set_deferred_thread_group>`

Simile a :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>`, ma per impostare le proprietà.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_display_folded:

.. rst-class:: classref-method

|void| **set_display_folded**\ (\ fold\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_display_folded>`

Se impostato su ``true``, il nodo appare minimizzato nel pannello di Scena. Pertanto, tutti i suoi figli sono nascosti. Questo metodo è pensato all'uso nelle estensioni e negli strumenti dell'editor, ma funziona anche nelle build di rilascio. Vedi anche :ref:`is_displayed_folded()<class_Node_method_is_displayed_folded>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_editable_instance:

.. rst-class:: classref-method

|void| **set_editable_instance**\ (\ node\: :ref:`Node<class_Node>`, is_editable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_editable_instance>`

Imposta su ``true`` per consentire a tutti i nodi posseduti dal nodo ``node`` di essere disponibili e modificabili nel pannello di Scena, anche se il loro :ref:`owner<class_Node_property_owner>` non è la radice della scena. Questo metodo è pensato all'uso nelle estensioni e negli strumenti dell'editor, ma funziona anche nelle build di rilascio. Vedi anche :ref:`is_editable_instance()<class_Node_method_is_editable_instance>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_multiplayer_authority:

.. rst-class:: classref-method

|void| **set_multiplayer_authority**\ (\ id\: :ref:`int<class_int>`, recursive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Node_method_set_multiplayer_authority>`

Imposta l'autorità multigiocatore del nodo sul peer con l'``id`` specificato. L'autorità multigiocatore è il peer che ha autorità sul nodo sulla rete. Il valore predefinito è peer ID 1 (il server). Utile in combinazione con :ref:`rpc_config()<class_Node_method_rpc_config>` e la :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

Se ``recursive`` è ``true``, il peer specificato viene impostato ricorsivamente come autorità per tutti i figli di questo nodo.

\ **Attenzione:** Questo **non** replica automaticamente la nuova autorità ad altri peer. È responsabilità dello sviluppatore farlo. È possibile replicare le informazioni della nuova autorità usando :ref:`MultiplayerSpawner.spawn_function<class_MultiplayerSpawner_property_spawn_function>`, un RPC o un :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`. Inoltre, l'autorità del genitore **non** si propaga ai figli appena aggiunti.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_physics_process:

.. rst-class:: classref-method

|void| **set_physics_process**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_physics_process>`

Se impostato su ``true``, abilita il processo di fisica (framerate fisso). Quando un nodo viene processato, riceverà una :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>` a un intervallo fisso. (solitamente 60 FPS, vedi :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` per modificarlo) (e verrà chiamato il callback :ref:`_physics_process()<class_Node_private_method__physics_process>` se esiste).

\ **Nota:** Se :ref:`_physics_process()<class_Node_private_method__physics_process>` è sovrascritto, questo sarà automaticamente abilitato prima che :ref:`_ready()<class_Node_private_method__ready>` sia chiamato.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_physics_process_internal:

.. rst-class:: classref-method

|void| **set_physics_process_internal**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_physics_process_internal>`

Se impostato su ``true``, abilita la fisica interna per questo nodo. Il processo interno di fisica avviene in modo isolato dalle normali chiamate a :ref:`_physics_process()<class_Node_private_method__physics_process>` ed è utilizzata da alcuni nodi internamente per garantire il loro corretto funzionamento, anche se il nodo è in pausa o il processo di fisica è disabilitato per gli script (:ref:`set_physics_process()<class_Node_method_set_physics_process>`).

\ **Attenzione:** I nodi integrati si basano sull'elaborazione interna per la loro logica interna. Disabilitarla non è sicuro e potrebbe portare a comportamenti imprevisti. Utilizza questo metodo se sai cosa stai facendo.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process:

.. rst-class:: classref-method

|void| **set_process**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process>`

Se impostato su ``true``, abilita il processo. Quando un nodo viene processato, riceverà una :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>` su ogni frame disegnato (e verrà chiamato il callback :ref:`_process()<class_Node_private_method__process>` se esiste).

\ **Nota:** Se :ref:`_process()<class_Node_private_method__process>` è sovrascritto, questo sarà automaticamente abilitato prima che :ref:`_ready()<class_Node_private_method__ready>` sia chiamato.

\ **Nota:** Questo metodo influisce solo sul callback :ref:`_process()<class_Node_private_method__process>`, ovvero non ha effetto su altri callback come :ref:`_physics_process()<class_Node_private_method__physics_process>`. Se vuoi disabilitare tutta l'elaborazione per il nodo, imposta :ref:`process_mode<class_Node_property_process_mode>` su :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_input:

.. rst-class:: classref-method

|void| **set_process_input**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_input>`

Se impostato su ``true``, abilita l'elaborazione degli input.

\ **Nota:** Se :ref:`_input()<class_Node_private_method__input>` è sovrascritto, questo sarà automaticamente abilitato prima che :ref:`_ready()<class_Node_private_method__ready>` sia chiamato. L'elaborazione degli input è inoltre già abilitata per i controlli della GUI, come :ref:`Button<class_Button>` e :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_internal:

.. rst-class:: classref-method

|void| **set_process_internal**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_internal>`

Se impostato su ``true``, abilita il processo interno per questo nodo. Il processo interno avviene in modo isolato dalle normali chiamate a :ref:`_process()<class_Node_private_method__process>` ed è utilizzato da alcuni nodi internamente per garantire il loro corretto funzionamento, anche se il nodo è in pausa o il processo è disabilitato per gli script (:ref:`set_process()<class_Node_method_set_process>`).

\ **Attenzione:** I nodi integrati si basano sull'elaborazione interna per la loro logica interna. Disabilitarla non è sicuro e potrebbe portare a comportamenti imprevisti. Utilizza questo metodo se sai cosa stai facendo.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_shortcut_input:

.. rst-class:: classref-method

|void| **set_process_shortcut_input**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_shortcut_input>`

Se impostato su ``true``, abilita l'elaborazione delle scorciatoie per questo nodo.

\ **Nota:** Se :ref:`_shortcut_input()<class_Node_private_method__shortcut_input>` è sovrascritto, questo sarà automaticamente abilitato prima che :ref:`_ready()<class_Node_private_method__ready>` sia chiamato.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_unhandled_input:

.. rst-class:: classref-method

|void| **set_process_unhandled_input**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_unhandled_input>`

Se impostato su ``true``, abilita l'elaborazione degli input non gestiti. Consente al nodo di ricevere tutti gli input che non sono stati gestiti in precedenza (solitamente da un :ref:`Control<class_Control>`).

\ **Nota:** Se :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>` è sovrascritto, questo sarà automaticamente abilitato prima che :ref:`_ready()<class_Node_private_method__ready>` sia chiamato. L'elaborazione degli input non gestiti è inoltre già abilitata per i controlli della GUI, come :ref:`Button<class_Button>` e :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_unhandled_key_input:

.. rst-class:: classref-method

|void| **set_process_unhandled_key_input**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_unhandled_key_input>`

Se impostato su ``true``, abilita l'elaborazione degli input di tasti non gestiti.

\ **Nota:** Se :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>` è sovrascritto, questo sarà automaticamente abilitato prima che :ref:`_ready()<class_Node_private_method__ready>` sia chiamato.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_scene_instance_load_placeholder:

.. rst-class:: classref-method

|void| **set_scene_instance_load_placeholder**\ (\ load_placeholder\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_scene_instance_load_placeholder>`

Se impostato su ``true``, il nodo diventa un :ref:`InstancePlaceholder<class_InstancePlaceholder>` quando è impacchettato e istanziato da una :ref:`PackedScene<class_PackedScene>`. Vedi anche :ref:`get_scene_instance_load_placeholder()<class_Node_method_get_scene_instance_load_placeholder>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_thread_safe:

.. rst-class:: classref-method

|void| **set_thread_safe**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Node_method_set_thread_safe>`

Simile a :ref:`call_thread_safe()<class_Node_method_call_thread_safe>`, ma per impostare le proprietà.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_translation_domain_inherited:

.. rst-class:: classref-method

|void| **set_translation_domain_inherited**\ (\ ) :ref:`🔗<class_Node_method_set_translation_domain_inherited>`

Fa in modo che questo nodo erediti il dominio di traduzione dal suo nodo genitore. Se questo nodo non ha un genitore, verrà utilizzato il dominio di traduzione principale.

Questo è il comportamento predefinito per tutti i nodi. Chiamare :ref:`Object.set_translation_domain()<class_Object_method_set_translation_domain>` disabilita questo comportamento.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_update_configuration_warnings:

.. rst-class:: classref-method

|void| **update_configuration_warnings**\ (\ ) :ref:`🔗<class_Node_method_update_configuration_warnings>`

Aggiorna gli avvisi visualizzati per questo nodo nel pannello di Scena. Usa :ref:`_get_configuration_warnings()<class_Node_private_method__get_configuration_warnings>` per personalizzare i messaggi di avviso da visualizzare.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
