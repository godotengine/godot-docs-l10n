:github_url: hide

.. _class_Node:

Node
====

**Hereda:** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AnimationMixer<class_AnimationMixer>`, :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, :ref:`CanvasItem<class_CanvasItem>`, :ref:`CanvasLayer<class_CanvasLayer>`, :ref:`EditorFileSystem<class_EditorFileSystem>`, :ref:`EditorPlugin<class_EditorPlugin>`, :ref:`EditorResourcePreview<class_EditorResourcePreview>`, :ref:`HTTPRequest<class_HTTPRequest>`, :ref:`InstancePlaceholder<class_InstancePlaceholder>`, :ref:`MissingNode<class_MissingNode>`, :ref:`MultiplayerSpawner<class_MultiplayerSpawner>`, :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`, :ref:`NavigationAgent2D<class_NavigationAgent2D>`, :ref:`NavigationAgent3D<class_NavigationAgent3D>`, :ref:`Node3D<class_Node3D>`, :ref:`ResourcePreloader<class_ResourcePreloader>`, :ref:`ShaderGlobalsOverride<class_ShaderGlobalsOverride>`, :ref:`StatusIndicator<class_StatusIndicator>`, :ref:`Timer<class_Timer>`, :ref:`Viewport<class_Viewport>`, :ref:`WorldEnvironment<class_WorldEnvironment>`

Clase base para todos los objetos de escena.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los nodos son componentes fundamentales en Godot. Pueden asignarse como hijos de otros nodos, formando una disposición jerárquica en forma de árbol. Un nodo dado puede contener cualquier cantidad de nodos como hijos, con la condición de que todos los nodos hermanos (hijos directos de un nodo) tengan nombres únicos.

Un árbol de nodos se denomina *escena*. Las escenas pueden guardarse en el disco y luego instanciarse dentro de otras escenas, lo que permite una gran flexibilidad en la arquitectura y el modelo de datos de los proyectos en Godot.

\ **Árbol de escenas:** El :ref:`SceneTree<class_SceneTree>` contiene el árbol activo de nodos. Cuando un nodo se añade al árbol de escenas, recibe la notificación :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>` y se activa su callback :ref:`_enter_tree()<class_Node_private_method__enter_tree>`. Los nodos hijos siempre se añaden *después* de su nodo padre, es decir, el callback :ref:`_enter_tree()<class_Node_private_method__enter_tree>` del nodo padre se ejecutará antes que el del nodo hijo.

Una vez que todos los nodos se han añadido al árbol de escenas, reciben la notificación :ref:`NOTIFICATION_READY<class_Node_constant_NOTIFICATION_READY>` y se activa su callback :ref:`_ready()<class_Node_private_method__ready>`. Para los grupos de nodos, el callback :ref:`_ready()<class_Node_private_method__ready>` se ejecuta en orden inverso, comenzando con los nodos hijos y avanzando hacia los nodos padre.

Esto significa que al agregar un nodo al árbol de escenas, el orden será el siguiente: :ref:`_enter_tree()<class_Node_private_method__enter_tree>` del padre, :ref:`_enter_tree()<class_Node_private_method__enter_tree>` de los hijos, :ref:`_ready()<class_Node_private_method__ready>` de los hijos y, finalmente, :ref:`_ready()<class_Node_private_method__ready>` del padre (de manera recursiva para todo el árbol de escenas).

\ **Procesamiento:** Los nodos pueden sobrescribir el estado de "proceso" para recibir un callback en cada fotograma que solicite realizar alguna acción. El procesamiento normal (:ref:`_process()<class_Node_private_method__process>`, activado con :ref:`set_process()<class_Node_method_set_process>`) se ejecuta lo más rápido posible y depende de la tasa de fotogramas, por lo que el tiempo de procesamiento (*delta* en segundos) se pasa como argumento. El procesamiento físico (:ref:`_physics_process()<class_Node_private_method__physics_process>`, activado con :ref:`set_physics_process()<class_Node_method_set_physics_process>`) ocurre un número fijo de veces por segundo (60 por defecto) y es útil para el código relacionado con el motor físico.

Los nodos también pueden procesar eventos de entrada. Cuando está presente, la función :ref:`_input()<class_Node_private_method__input>` se llamará para cada entrada que reciba el programa. En muchos casos, esto puede ser excesivo (a menos que se use en proyectos simples), y puede preferirse la función :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>`, que se activa cuando el evento de entrada no fue manejado por otros nodos (típicamente, los nodos de GUI como :ref:`Control<class_Control>`), asegurando que el nodo solo reciba los eventos destinados a él.

Para realizar un seguimiento de la jerarquía de la escena (especialmente al instanciar escenas dentro de otras), se puede asignar un "propietario" al nodo mediante la propiedad :ref:`owner<class_Node_property_owner>`. Esto permite saber quién instanció qué nodo, lo cual es útil principalmente al escribir editores y herramientas.

Finalmente, cuando un nodo se libera mediante :ref:`Object.free()<class_Object_method_free>` o :ref:`queue_free()<class_Node_method_queue_free>`, también libera a todos sus nodos hijos.

\ **Grupos:** Los nodos pueden añadirse a tantos grupos como sea necesario para facilitar su gestión. Por ejemplo, podrías crear grupos como "enemigos" o "coleccionables" dependiendo de tu juego. Véase :ref:`add_to_group()<class_Node_method_add_to_group>`, :ref:`is_in_group()<class_Node_method_is_in_group>` y :ref:`remove_from_group()<class_Node_method_remove_from_group>`. Luego puedes recuperar todos los nodos en estos grupos, iterarlos e incluso llamar métodos a los grupos a través de los métodos del :ref:`SceneTree<class_SceneTree>`.

\ **Networking con nodos:** Después de conectarte a un servidor (o crear uno, Véase :ref:`ENetMultiplayerPeer<class_ENetMultiplayerPeer>`), es posible utilizar el sistema incorporado de RPC (llamada de procedimiento remoto) para comunicarse a través de la red. Al llamar a :ref:`rpc()<class_Node_method_rpc>` con un nombre de método, este será llamado localmente y en todos los pares conectados (pares = clientes y el servidor que acepta conexiones). Para identificar qué nodo recibe la llamada RPC, Godot usará su :ref:`NodePath<class_NodePath>` (asegúrate de que los nombres de los nodos sean iguales en todos los pares). También te recomiendo revisar el tutorial de networking avanzado y sus demos correspondientes.

\ **Nota:** La propiedad ``script`` forma parte de la clase :ref:`Object<class_Object>`, no de **Node**. No está expuesta como la mayoría de las propiedades, pero tiene setter y getter (véase :ref:`Object.set_script()<class_Object_method_set_script>` y :ref:`Object.get_script()<class_Object_method_get_script>`).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Nodos y escenas <../getting_started/step_by_step/nodes_and_scenes>`

- `Todos los Demos <https://github.com/godotengine/godot-demo-projects/>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
--------------

.. _class_Node_signal_child_entered_tree:

.. rst-class:: classref-signal

**child_entered_tree**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_signal_child_entered_tree>`

Emitida cuando el nodo hijo ``node`` entra en el :ref:`SceneTree<class_SceneTree>`, generalmente porque este nodo entró en el árbol (ver :ref:`tree_entered<class_Node_signal_tree_entered>`), o se ha llamado a :ref:`add_child()<class_Node_method_add_child>`.

Esta señal se emite *después* de las propias :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>` y :ref:`tree_entered<class_Node_signal_tree_entered>` del nodo hijo.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_child_exiting_tree:

.. rst-class:: classref-signal

**child_exiting_tree**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_signal_child_exiting_tree>`

Emitida cuando el nodo hijo ``node`` está a punto de salir del :ref:`SceneTree<class_SceneTree>`, generalmente porque este nodo está saliendo del árbol (ver :ref:`tree_exiting<class_Node_signal_tree_exiting>`), o porque el nodo hijo ``node`` está siendo eliminado o liberado.

Cuando se recibe esta señal, el nodo hijo ``node`` aún es accesible dentro del árbol. Esta señal se emite *después* de las propias :ref:`tree_exiting<class_Node_signal_tree_exiting>` y :ref:`NOTIFICATION_EXIT_TREE<class_Node_constant_NOTIFICATION_EXIT_TREE>` del nodo hijo.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_child_order_changed:

.. rst-class:: classref-signal

**child_order_changed**\ (\ ) :ref:`🔗<class_Node_signal_child_order_changed>`

Emitida cuando cambia la lista de hijos. Esto sucede cuando se añaden, mueven o eliminan nodos hijos.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_editor_description_changed:

.. rst-class:: classref-signal

**editor_description_changed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_signal_editor_description_changed>`

Emitida cuando el campo de descripción del editor del nodo cambia.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_editor_state_changed:

.. rst-class:: classref-signal

**editor_state_changed**\ (\ ) :ref:`🔗<class_Node_signal_editor_state_changed>`

Emitida cuando se modifica un atributo del nodo relevante para el editor. Solo se emite en el editor.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_ready:

.. rst-class:: classref-signal

**ready**\ (\ ) :ref:`🔗<class_Node_signal_ready>`

Se emite cuando el nodo se considera listo, después de llamar a :ref:`_ready()<class_Node_private_method__ready>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_renamed:

.. rst-class:: classref-signal

**renamed**\ (\ ) :ref:`🔗<class_Node_signal_renamed>`

Emitida cuando se cambia el :ref:`name<class_Node_property_name>` del nodo, si el nodo está dentro del árbol.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_replacing_by:

.. rst-class:: classref-signal

**replacing_by**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_signal_replacing_by>`

Emitida cuando este nodo está siendo reemplazado por el ``node``, ver :ref:`replace_by()<class_Node_method_replace_by>`.

Esta señal se emite *después* de que ``node`` haya sido añadido como hijo del nodo padre original, pero *antes* de que todos los nodos hijos originales hayan sido reasignados a ``node``.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_tree_entered:

.. rst-class:: classref-signal

**tree_entered**\ (\ ) :ref:`🔗<class_Node_signal_tree_entered>`

Emitida cuando el nodo entra en el árbol.

Esta señal se emite *después* de la notificación :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>` correspondiente.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_tree_exited:

.. rst-class:: classref-signal

**tree_exited**\ (\ ) :ref:`🔗<class_Node_signal_tree_exited>`

Emitida después de que el nodo sale del árbol y ya no está activo.

Esta señal se emite *después* de la notificación :ref:`NOTIFICATION_EXIT_TREE<class_Node_constant_NOTIFICATION_EXIT_TREE>` correspondiente.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_tree_exiting:

.. rst-class:: classref-signal

**tree_exiting**\ (\ ) :ref:`🔗<class_Node_signal_tree_exiting>`

Emitida cuando el nodo está a punto de salir del árbol. El nodo todavía es válido. Como tal, este es el lugar adecuado para la des-inicialización (o un "destructor", si se prefiere).

Esta señal se emite *después* del :ref:`_exit_tree()<class_Node_private_method__exit_tree>` del nodo, y *antes* de la notificación :ref:`NOTIFICATION_EXIT_TREE<class_Node_constant_NOTIFICATION_EXIT_TREE>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_Node_ProcessMode:

.. rst-class:: classref-enumeration

enum **ProcessMode**: :ref:`🔗<enum_Node_ProcessMode>`

.. _class_Node_constant_PROCESS_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Node_ProcessMode>` **PROCESS_MODE_INHERIT** = ``0``

Hereda :ref:`process_mode<class_Node_property_process_mode>` del padre del nodo. Este es el valor predeterminado para cualquier nodo recién creado.

.. _class_Node_constant_PROCESS_MODE_PAUSABLE:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Node_ProcessMode>` **PROCESS_MODE_PAUSABLE** = ``1``

Processes when :ref:`SceneTree.paused<class_SceneTree_property_paused>` is ``false``. This is the inverse of :ref:`PROCESS_MODE_WHEN_PAUSED<class_Node_constant_PROCESS_MODE_WHEN_PAUSED>`, and the default for the root node.

.. _class_Node_constant_PROCESS_MODE_WHEN_PAUSED:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Node_ProcessMode>` **PROCESS_MODE_WHEN_PAUSED** = ``2``

Processes **only** when :ref:`SceneTree.paused<class_SceneTree_property_paused>` is ``true``. This is the inverse of :ref:`PROCESS_MODE_PAUSABLE<class_Node_constant_PROCESS_MODE_PAUSABLE>`.

.. _class_Node_constant_PROCESS_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Node_ProcessMode>` **PROCESS_MODE_ALWAYS** = ``3``

Always processes. Keeps processing, ignoring :ref:`SceneTree.paused<class_SceneTree_property_paused>`. This is the inverse of :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. _class_Node_constant_PROCESS_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Node_ProcessMode>` **PROCESS_MODE_DISABLED** = ``4``

Never processes. Completely disables processing, ignoring :ref:`SceneTree.paused<class_SceneTree_property_paused>`. This is the inverse of :ref:`PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`.

.. rst-class:: classref-item-separator

----

.. _enum_Node_ProcessThreadGroup:

.. rst-class:: classref-enumeration

enum **ProcessThreadGroup**: :ref:`🔗<enum_Node_ProcessThreadGroup>`

.. _class_Node_constant_PROCESS_THREAD_GROUP_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **PROCESS_THREAD_GROUP_INHERIT** = ``0``

Procesa este nodo basándose en el modo de grupo de hilos del primer nodo padre (o abuelo) que tenga un modo de grupo de hilos que no sea heredado. Véase :ref:`process_thread_group<class_Node_property_process_thread_group>` para más información.

.. _class_Node_constant_PROCESS_THREAD_GROUP_MAIN_THREAD:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **PROCESS_THREAD_GROUP_MAIN_THREAD** = ``1``

Procesa este nodo (y los nodos hijos configurados para heredar) en el hilo principal. Véase :ref:`process_thread_group<class_Node_property_process_thread_group>` para más información.

.. _class_Node_constant_PROCESS_THREAD_GROUP_SUB_THREAD:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **PROCESS_THREAD_GROUP_SUB_THREAD** = ``2``

Procesa este nodo (y los nodos hijos configurados para heredar) en un subhilo. Véase :ref:`process_thread_group<class_Node_property_process_thread_group>` para más información.

.. rst-class:: classref-item-separator

----

.. _enum_Node_ProcessThreadMessages:

.. rst-class:: classref-enumeration

flags **ProcessThreadMessages**: :ref:`🔗<enum_Node_ProcessThreadMessages>`

.. _class_Node_constant_FLAG_PROCESS_THREAD_MESSAGES:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>` **FLAG_PROCESS_THREAD_MESSAGES** = ``1``

Permite que este nodo procese mensajes multihilo creados con :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` justo antes de que se llame a :ref:`_process()<class_Node_private_method__process>`.

.. _class_Node_constant_FLAG_PROCESS_THREAD_MESSAGES_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>` **FLAG_PROCESS_THREAD_MESSAGES_PHYSICS** = ``2``

Permite que este nodo procese mensajes multihilo creados con :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` justo antes de que se llame a :ref:`_physics_process()<class_Node_private_method__physics_process>`.

.. _class_Node_constant_FLAG_PROCESS_THREAD_MESSAGES_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>` **FLAG_PROCESS_THREAD_MESSAGES_ALL** = ``3``

Permite que este nodo procese mensajes multihilo creados con :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` justo antes de que se llamen a :ref:`_process()<class_Node_private_method__process>` o :ref:`_physics_process()<class_Node_private_method__physics_process>`.

.. rst-class:: classref-item-separator

----

.. _enum_Node_PhysicsInterpolationMode:

.. rst-class:: classref-enumeration

enum **PhysicsInterpolationMode**: :ref:`🔗<enum_Node_PhysicsInterpolationMode>`

.. _class_Node_constant_PHYSICS_INTERPOLATION_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` **PHYSICS_INTERPOLATION_MODE_INHERIT** = ``0``

Hereda :ref:`physics_interpolation_mode<class_Node_property_physics_interpolation_mode>` del padre del nodo. Este es el valor por defecto para cualquier nodo recién creado.

.. _class_Node_constant_PHYSICS_INTERPOLATION_MODE_ON:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` **PHYSICS_INTERPOLATION_MODE_ON** = ``1``

Habilita la interpolación física para este nodo y para los hijos configurados en :ref:`PHYSICS_INTERPOLATION_MODE_INHERIT<class_Node_constant_PHYSICS_INTERPOLATION_MODE_INHERIT>`. Este es el valor por defecto para el nodo raíz.

.. _class_Node_constant_PHYSICS_INTERPOLATION_MODE_OFF:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` **PHYSICS_INTERPOLATION_MODE_OFF** = ``2``

Deshabilita la interpolación física para este nodo y para los hijos configurados en :ref:`PHYSICS_INTERPOLATION_MODE_INHERIT<class_Node_constant_PHYSICS_INTERPOLATION_MODE_INHERIT>`.

.. rst-class:: classref-item-separator

----

.. _enum_Node_DuplicateFlags:

.. rst-class:: classref-enumeration

enum **DuplicateFlags**: :ref:`🔗<enum_Node_DuplicateFlags>`

.. _class_Node_constant_DUPLICATE_SIGNALS:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_SIGNALS** = ``1``

Duplica las conexiones de señal del nodo que están conectadas con la bandera :ref:`Object.CONNECT_PERSIST<class_Object_constant_CONNECT_PERSIST>`.

.. _class_Node_constant_DUPLICATE_GROUPS:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_GROUPS** = ``2``

Duplica los grupos del nodo.

.. _class_Node_constant_DUPLICATE_SCRIPTS:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_SCRIPTS** = ``4``

Duplica el script del nodo (también sobrescribiendo los scripts de los hijos duplicados, si se combina con :ref:`DUPLICATE_USE_INSTANTIATION<class_Node_constant_DUPLICATE_USE_INSTANTIATION>`).

.. _class_Node_constant_DUPLICATE_USE_INSTANTIATION:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_USE_INSTANTIATION** = ``8``

Duplica usando :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`. Si el nodo proviene de una escena guardada en disco, reutiliza :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` como base para el nodo duplicado y sus hijos.

.. _class_Node_constant_DUPLICATE_INTERNAL_STATE:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_INTERNAL_STATE** = ``16``

Duplica también las variables no serializables (es decir, sin :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>`).

.. _class_Node_constant_DUPLICATE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_DEFAULT** = ``15``

Duplica usando las banderas por defecto. Esta constante es útil para añadir o quitar una sola bandera.

::

    # Duplicar variables no exportadas.
    var dupe = duplicate(DUPLICATE_DEFAULT | DUPLICATE_INTERNAL_STATE)

.. rst-class:: classref-item-separator

----

.. _enum_Node_InternalMode:

.. rst-class:: classref-enumeration

enum **InternalMode**: :ref:`🔗<enum_Node_InternalMode>`

.. _class_Node_constant_INTERNAL_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`InternalMode<enum_Node_InternalMode>` **INTERNAL_MODE_DISABLED** = ``0``

El nodo no será interno.

.. _class_Node_constant_INTERNAL_MODE_FRONT:

.. rst-class:: classref-enumeration-constant

:ref:`InternalMode<enum_Node_InternalMode>` **INTERNAL_MODE_FRONT** = ``1``

El nodo se colocará al principio de los hijos del padre, antes de cualquier hermano no interno.

.. _class_Node_constant_INTERNAL_MODE_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`InternalMode<enum_Node_InternalMode>` **INTERNAL_MODE_BACK** = ``2``

El nodo se colocará al final de los hijos del padre, después de cualquier hermano no interno.

.. rst-class:: classref-item-separator

----

.. _enum_Node_AutoTranslateMode:

.. rst-class:: classref-enumeration

enum **AutoTranslateMode**: :ref:`🔗<enum_Node_AutoTranslateMode>`

.. _class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **AUTO_TRANSLATE_MODE_INHERIT** = ``0``

Hereda :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>` del padre del nodo. Este es el valor por defecto para cualquier nodo recién creado.

.. _class_Node_constant_AUTO_TRANSLATE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **AUTO_TRANSLATE_MODE_ALWAYS** = ``1``

Siempre traducir automáticamente. Esta es la inversa de :ref:`AUTO_TRANSLATE_MODE_DISABLED<class_Node_constant_AUTO_TRANSLATE_MODE_DISABLED>`, y el valor por defecto para el nodo raíz.

.. _class_Node_constant_AUTO_TRANSLATE_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **AUTO_TRANSLATE_MODE_DISABLED** = ``2``

Nunca traducir automáticamente. Esto es lo inverso de :ref:`AUTO_TRANSLATE_MODE_ALWAYS<class_Node_constant_AUTO_TRANSLATE_MODE_ALWAYS>`.

El análisis de strings para la generación de plantillas de traducción se omitirá para este nodo y los hijos que estén configurados como :ref:`AUTO_TRANSLATE_MODE_INHERIT<class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Node_constant_NOTIFICATION_ENTER_TREE:

.. rst-class:: classref-constant

**NOTIFICATION_ENTER_TREE** = ``10`` :ref:`🔗<class_Node_constant_NOTIFICATION_ENTER_TREE>`

Notificación recibida cuando el nodo entra en un :ref:`SceneTree<class_SceneTree>`. Véase :ref:`_enter_tree()<class_Node_private_method__enter_tree>`.

Esta notificación se recibe *antes* de la señal :ref:`tree_entered<class_Node_signal_tree_entered>` relacionada.

.. _class_Node_constant_NOTIFICATION_EXIT_TREE:

.. rst-class:: classref-constant

**NOTIFICATION_EXIT_TREE** = ``11`` :ref:`🔗<class_Node_constant_NOTIFICATION_EXIT_TREE>`

Notification received when the node is about to exit a :ref:`SceneTree<class_SceneTree>`. See :ref:`_exit_tree()<class_Node_private_method__exit_tree>`.

This notification is received *after* the related :ref:`tree_exiting<class_Node_signal_tree_exiting>` signal.

This notification is sent in reversed order.

.. _class_Node_constant_NOTIFICATION_MOVED_IN_PARENT:

.. rst-class:: classref-constant

**NOTIFICATION_MOVED_IN_PARENT** = ``12`` :ref:`🔗<class_Node_constant_NOTIFICATION_MOVED_IN_PARENT>`

**Obsoleto:** This notification is no longer sent by the engine. Use :ref:`NOTIFICATION_CHILD_ORDER_CHANGED<class_Node_constant_NOTIFICATION_CHILD_ORDER_CHANGED>` instead.



.. _class_Node_constant_NOTIFICATION_READY:

.. rst-class:: classref-constant

**NOTIFICATION_READY** = ``13`` :ref:`🔗<class_Node_constant_NOTIFICATION_READY>`

Notificación recibida cuando el nodo esté listo. Véase :ref:`_ready()<class_Node_private_method__ready>`.

.. _class_Node_constant_NOTIFICATION_PAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_PAUSED** = ``14`` :ref:`🔗<class_Node_constant_NOTIFICATION_PAUSED>`

Notificación recibida cuando el nodo está en pausa. Véase :ref:`process_mode<class_Node_property_process_mode>`.

.. _class_Node_constant_NOTIFICATION_UNPAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_UNPAUSED** = ``15`` :ref:`🔗<class_Node_constant_NOTIFICATION_UNPAUSED>`

Notificación recibida cuando se reanuda la pausa del nodo. Véase :ref:`process_mode<class_Node_property_process_mode>`.

.. _class_Node_constant_NOTIFICATION_PHYSICS_PROCESS:

.. rst-class:: classref-constant

**NOTIFICATION_PHYSICS_PROCESS** = ``16`` :ref:`🔗<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`

Notificación recibida del árbol en cada cuadro de física cuando :ref:`is_physics_processing()<class_Node_method_is_physics_processing>` devuelve ``true``. Véase :ref:`_physics_process()<class_Node_private_method__physics_process>`.

.. _class_Node_constant_NOTIFICATION_PROCESS:

.. rst-class:: classref-constant

**NOTIFICATION_PROCESS** = ``17`` :ref:`🔗<class_Node_constant_NOTIFICATION_PROCESS>`

Notification received from the tree every rendered frame when :ref:`is_processing()<class_Node_method_is_processing>` returns ``true``. See :ref:`_process()<class_Node_private_method__process>`.

.. _class_Node_constant_NOTIFICATION_PARENTED:

.. rst-class:: classref-constant

**NOTIFICATION_PARENTED** = ``18`` :ref:`🔗<class_Node_constant_NOTIFICATION_PARENTED>`

Notification received when the node is set as a child of another node (see :ref:`add_child()<class_Node_method_add_child>` and :ref:`add_sibling()<class_Node_method_add_sibling>`).

\ **Note:** This does *not* mean that the node entered the :ref:`SceneTree<class_SceneTree>`.

.. _class_Node_constant_NOTIFICATION_UNPARENTED:

.. rst-class:: classref-constant

**NOTIFICATION_UNPARENTED** = ``19`` :ref:`🔗<class_Node_constant_NOTIFICATION_UNPARENTED>`

Notification received when the parent node calls :ref:`remove_child()<class_Node_method_remove_child>` on this node.

\ **Note:** This does *not* mean that the node exited the :ref:`SceneTree<class_SceneTree>`.

.. _class_Node_constant_NOTIFICATION_SCENE_INSTANTIATED:

.. rst-class:: classref-constant

**NOTIFICATION_SCENE_INSTANTIATED** = ``20`` :ref:`🔗<class_Node_constant_NOTIFICATION_SCENE_INSTANTIATED>`

Notification received *only* by the newly instantiated scene root node, when :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` is completed.

.. _class_Node_constant_NOTIFICATION_DRAG_BEGIN:

.. rst-class:: classref-constant

**NOTIFICATION_DRAG_BEGIN** = ``21`` :ref:`🔗<class_Node_constant_NOTIFICATION_DRAG_BEGIN>`

Notification received when a drag operation begins. All nodes receive this notification, not only the dragged one.

Can be triggered either by dragging a :ref:`Control<class_Control>` that provides drag data (see :ref:`Control._get_drag_data()<class_Control_private_method__get_drag_data>`) or using :ref:`Control.force_drag()<class_Control_method_force_drag>`.

Use :ref:`Viewport.gui_get_drag_data()<class_Viewport_method_gui_get_drag_data>` to get the dragged data.

.. _class_Node_constant_NOTIFICATION_DRAG_END:

.. rst-class:: classref-constant

**NOTIFICATION_DRAG_END** = ``22`` :ref:`🔗<class_Node_constant_NOTIFICATION_DRAG_END>`

Notification received when a drag operation ends.

Use :ref:`Viewport.gui_is_drag_successful()<class_Viewport_method_gui_is_drag_successful>` to check if the drag succeeded.

.. _class_Node_constant_NOTIFICATION_PATH_RENAMED:

.. rst-class:: classref-constant

**NOTIFICATION_PATH_RENAMED** = ``23`` :ref:`🔗<class_Node_constant_NOTIFICATION_PATH_RENAMED>`

Notification received when the node's :ref:`name<class_Node_property_name>` or one of its ancestors' :ref:`name<class_Node_property_name>` is changed. This notification is *not* received when the node is removed from the :ref:`SceneTree<class_SceneTree>`.

.. _class_Node_constant_NOTIFICATION_CHILD_ORDER_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_CHILD_ORDER_CHANGED** = ``24`` :ref:`🔗<class_Node_constant_NOTIFICATION_CHILD_ORDER_CHANGED>`

Notification received when the list of children is changed. This happens when child nodes are added, moved or removed.

.. _class_Node_constant_NOTIFICATION_INTERNAL_PROCESS:

.. rst-class:: classref-constant

**NOTIFICATION_INTERNAL_PROCESS** = ``25`` :ref:`🔗<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`

Notification received from the tree every rendered frame when :ref:`is_processing_internal()<class_Node_method_is_processing_internal>` returns ``true``.

.. _class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS:

.. rst-class:: classref-constant

**NOTIFICATION_INTERNAL_PHYSICS_PROCESS** = ``26`` :ref:`🔗<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`

Notification received from the tree every physics frame when :ref:`is_physics_processing_internal()<class_Node_method_is_physics_processing_internal>` returns ``true``.

.. _class_Node_constant_NOTIFICATION_POST_ENTER_TREE:

.. rst-class:: classref-constant

**NOTIFICATION_POST_ENTER_TREE** = ``27`` :ref:`🔗<class_Node_constant_NOTIFICATION_POST_ENTER_TREE>`

Notification received when the node enters the tree, just before :ref:`NOTIFICATION_READY<class_Node_constant_NOTIFICATION_READY>` may be received. Unlike the latter, it is sent every time the node enters tree, not just once.

.. _class_Node_constant_NOTIFICATION_DISABLED:

.. rst-class:: classref-constant

**NOTIFICATION_DISABLED** = ``28`` :ref:`🔗<class_Node_constant_NOTIFICATION_DISABLED>`

Notificación recibida cuando el nodo está deshabilitado. Véase :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. _class_Node_constant_NOTIFICATION_ENABLED:

.. rst-class:: classref-constant

**NOTIFICATION_ENABLED** = ``29`` :ref:`🔗<class_Node_constant_NOTIFICATION_ENABLED>`

Notification received when the node is enabled again after being disabled. See :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. _class_Node_constant_NOTIFICATION_RESET_PHYSICS_INTERPOLATION:

.. rst-class:: classref-constant

**NOTIFICATION_RESET_PHYSICS_INTERPOLATION** = ``2001`` :ref:`🔗<class_Node_constant_NOTIFICATION_RESET_PHYSICS_INTERPOLATION>`

Notification received when :ref:`reset_physics_interpolation()<class_Node_method_reset_physics_interpolation>` is called on the node or its ancestors.

.. _class_Node_constant_NOTIFICATION_EDITOR_PRE_SAVE:

.. rst-class:: classref-constant

**NOTIFICATION_EDITOR_PRE_SAVE** = ``9001`` :ref:`🔗<class_Node_constant_NOTIFICATION_EDITOR_PRE_SAVE>`

Notification received right before the scene with the node is saved in the editor. This notification is only sent in the Godot editor and will not occur in exported projects.

.. _class_Node_constant_NOTIFICATION_EDITOR_POST_SAVE:

.. rst-class:: classref-constant

**NOTIFICATION_EDITOR_POST_SAVE** = ``9002`` :ref:`🔗<class_Node_constant_NOTIFICATION_EDITOR_POST_SAVE>`

Notification received right after the scene with the node is saved in the editor. This notification is only sent in the Godot editor and will not occur in exported projects.

.. _class_Node_constant_NOTIFICATION_WM_MOUSE_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_WM_MOUSE_ENTER** = ``1002`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_MOUSE_ENTER>`

Notification received when the mouse enters the window.

Implemented for embedded windows and on desktop and web platforms.

.. _class_Node_constant_NOTIFICATION_WM_MOUSE_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_MOUSE_EXIT** = ``1003`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_MOUSE_EXIT>`

Notification received when the mouse leaves the window.

Implemented for embedded windows and on desktop and web platforms.

.. _class_Node_constant_NOTIFICATION_WM_WINDOW_FOCUS_IN:

.. rst-class:: classref-constant

**NOTIFICATION_WM_WINDOW_FOCUS_IN** = ``1004`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_WINDOW_FOCUS_IN>`

Notification received from the OS when the node's :ref:`Window<class_Window>` ancestor is focused. This may be a change of focus between two windows of the same engine instance, or from the OS desktop or a third-party application to a window of the game (in which case :ref:`NOTIFICATION_APPLICATION_FOCUS_IN<class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_IN>` is also received).

A :ref:`Window<class_Window>` node receives this notification when it is focused.

.. _class_Node_constant_NOTIFICATION_WM_WINDOW_FOCUS_OUT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_WINDOW_FOCUS_OUT** = ``1005`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_WINDOW_FOCUS_OUT>`

Notification received from the OS when the node's :ref:`Window<class_Window>` ancestor is defocused. This may be a change of focus between two windows of the same engine instance, or from a window of the game to the OS desktop or a third-party application (in which case :ref:`NOTIFICATION_APPLICATION_FOCUS_OUT<class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_OUT>` is also received).

A :ref:`Window<class_Window>` node receives this notification when it is defocused.

.. _class_Node_constant_NOTIFICATION_WM_CLOSE_REQUEST:

.. rst-class:: classref-constant

**NOTIFICATION_WM_CLOSE_REQUEST** = ``1006`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_CLOSE_REQUEST>`

Notification received from the OS when a close request is sent (e.g. closing the window with a "Close" button or :kbd:`Alt + F4`).

Implemented on desktop platforms.

.. _class_Node_constant_NOTIFICATION_WM_GO_BACK_REQUEST:

.. rst-class:: classref-constant

**NOTIFICATION_WM_GO_BACK_REQUEST** = ``1007`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_GO_BACK_REQUEST>`

Notificación recibida del sistema operativo cuando se envía una solicitud de retroceso (por ejemplo, al pulsar el botón "Atrás" en Android).

Implementado solo en Android.

.. _class_Node_constant_NOTIFICATION_WM_SIZE_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_WM_SIZE_CHANGED** = ``1008`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_SIZE_CHANGED>`

Notificación recibida cuando la ventana es redimensionada.

\ **Nota:** Solo el nodo :ref:`Window<class_Window>` redimensionado recibe esta notificación, y no se propaga a los nodos hijos.

.. _class_Node_constant_NOTIFICATION_WM_DPI_CHANGE:

.. rst-class:: classref-constant

**NOTIFICATION_WM_DPI_CHANGE** = ``1009`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_DPI_CHANGE>`

Notificación recibida del sistema operativo cuando la escala de puntos por pulgada (DPI) de la pantalla cambia. Solo implementado en macOS.

.. _class_Node_constant_NOTIFICATION_VP_MOUSE_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_VP_MOUSE_ENTER** = ``1010`` :ref:`🔗<class_Node_constant_NOTIFICATION_VP_MOUSE_ENTER>`

Notificación recibida cuando el cursor del ratón entra en el área visible del :ref:`Viewport<class_Viewport>`, que no está ocluida detrás de otros :ref:`Control<class_Control>`\ s o :ref:`Window<class_Window>`\ s, siempre que su :ref:`Viewport.gui_disable_input<class_Viewport_property_gui_disable_input>` sea ``false`` e independientemente de si está actualmente enfocado o no.

.. _class_Node_constant_NOTIFICATION_VP_MOUSE_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_VP_MOUSE_EXIT** = ``1011`` :ref:`🔗<class_Node_constant_NOTIFICATION_VP_MOUSE_EXIT>`

Notificación recibida cuando el cursor del ratón abandona el área visible del :ref:`Viewport<class_Viewport>`, que no está ocluida detrás de otros :ref:`Control<class_Control>`\ s o :ref:`Window<class_Window>`\ s, siempre que su :ref:`Viewport.gui_disable_input<class_Viewport_property_gui_disable_input>` sea ``false`` e independientemente de si está actualmente enfocado o no.

.. _class_Node_constant_NOTIFICATION_WM_POSITION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_WM_POSITION_CHANGED** = ``1012`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_POSITION_CHANGED>`

Notificación recibida cuando la ventana es movida.

.. _class_Node_constant_NOTIFICATION_WM_OUTPUT_MAX_LINEAR_VALUE_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_WM_OUTPUT_MAX_LINEAR_VALUE_CHANGED** = ``1013`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_OUTPUT_MAX_LINEAR_VALUE_CHANGED>`

Notification received when the output max linear value returned by :ref:`Window.get_output_max_linear_value()<class_Window_method_get_output_max_linear_value>` has changed.

This occurs when HDR output is enabled or disabled and when any HDR output luminance values of the window have changed, such as when the player adjusts their screen brightness setting or moves the window to a different screen.

.. _class_Node_constant_NOTIFICATION_OS_MEMORY_WARNING:

.. rst-class:: classref-constant

**NOTIFICATION_OS_MEMORY_WARNING** = ``2009`` :ref:`🔗<class_Node_constant_NOTIFICATION_OS_MEMORY_WARNING>`

Notificación recibida del sistema operativo cuando la aplicación supera su memoria asignada.

Implementado solo en iOS.

.. _class_Node_constant_NOTIFICATION_TRANSLATION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSLATION_CHANGED** = ``2010`` :ref:`🔗<class_Node_constant_NOTIFICATION_TRANSLATION_CHANGED>`

Notificación recibida cuando las traducciones pueden haber cambiado. Puede ser activada por el usuario al cambiar la configuración regional, al cambiar :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>` o cuando el nodo entra en el árbol de la escena. Puede utilizarse para responder a cambios de idioma, por ejemplo, para cambiar las cadenas de la interfaz de usuario sobre la marcha. Útil cuando se trabaja con el soporte de traducción integrado, como :ref:`Object.tr()<class_Object_method_tr>`.

\ **Nota:** Esta notificación se recibe junto con :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>`, así que si estás instanciando una escena, los nodos hijos aún no estarán inicializados. Puedes usarla para configurar las traducciones de este nodo, de los nodos hijos creados a partir de script, o si quieres acceder a los nodos hijos añadidos en el editor, asegúrate de que el nodo esté listo usando :ref:`is_node_ready()<class_Node_method_is_node_ready>`.

::

    func _notification(what):
        if what == NOTIFICATION_TRANSLATION_CHANGED:
            if not is_node_ready():
                await ready # Esperar hasta la señal de ready.
            $Label.text = atr("%d Bananas") % banana_counter

.. _class_Node_constant_NOTIFICATION_WM_ABOUT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_ABOUT** = ``2011`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_ABOUT>`

Notificación recibida del sistema operativo cuando se envía una solicitud de información "Acerca de".

Implementado solo en macOS.

.. _class_Node_constant_NOTIFICATION_CRASH:

.. rst-class:: classref-constant

**NOTIFICATION_CRASH** = ``2012`` :ref:`🔗<class_Node_constant_NOTIFICATION_CRASH>`

Notificación recibida del controlador de fallos de Godot cuando el motor está a punto de fallar.

Implementado en las plataformas de escritorio si el manejador de fallos está habilitado.

.. _class_Node_constant_NOTIFICATION_OS_IME_UPDATE:

.. rst-class:: classref-constant

**NOTIFICATION_OS_IME_UPDATE** = ``2013`` :ref:`🔗<class_Node_constant_NOTIFICATION_OS_IME_UPDATE>`

Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).

Implemented on desktop and web platforms.

.. _class_Node_constant_NOTIFICATION_APPLICATION_RESUMED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_RESUMED** = ``2014`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_RESUMED>`

Notificación recibida del sistema operativo cuando se reanuda la aplicación.

Específica de las plataformas Android e iOS.

.. _class_Node_constant_NOTIFICATION_APPLICATION_PAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PAUSED** = ``2015`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_PAUSED>`

Notificación recibida del sistema operativo cuando la aplicación se pausa.

Específica de las plataformas Android e iOS.

\ **Nota:** En iOS, solo tienes aproximadamente 5 segundos para finalizar una tarea iniciada por esta señal. Si superas esta asignación, iOS cerrará la aplicación en lugar de pausarla.

.. _class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_IN:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_IN** = ``2016`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_IN>`

Notificación recibida del sistema operativo cuando la aplicación está enfocada, es decir, cuando se cambia el foco del escritorio del sistema operativo o de una aplicación de terceros a cualquier ventana abierta de la instancia de Godot.

Implementado en plataformas de escritorio y móviles.

.. _class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_OUT:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_OUT** = ``2017`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_OUT>`

Notificación recibida del sistema operativo cuando la aplicación pierde el foco, es decir, cuando se cambia el foco de cualquier ventana abierta de la instancia de Godot al escritorio del sistema operativo o a una aplicación de terceros.

Implementado en plataformas de escritorio y móviles.

.. _class_Node_constant_NOTIFICATION_TEXT_SERVER_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TEXT_SERVER_CHANGED** = ``2018`` :ref:`🔗<class_Node_constant_NOTIFICATION_TEXT_SERVER_CHANGED>`

Notificación recibida cuando el :ref:`TextServer<class_TextServer>` es cambiado.

.. _class_Node_constant_NOTIFICATION_APPLICATION_PIP_MODE_ENTERED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PIP_MODE_ENTERED** = ``2019`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_PIP_MODE_ENTERED>`

Notification received when the application enters picture-in-picture mode.

.. _class_Node_constant_NOTIFICATION_APPLICATION_PIP_MODE_EXITED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PIP_MODE_EXITED** = ``2020`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_PIP_MODE_EXITED>`

Notification received when the application exits picture-in-picture mode.

.. _class_Node_constant_NOTIFICATION_ACCESSIBILITY_UPDATE:

.. rst-class:: classref-constant

**NOTIFICATION_ACCESSIBILITY_UPDATE** = ``3000`` :ref:`🔗<class_Node_constant_NOTIFICATION_ACCESSIBILITY_UPDATE>`

Notificación recibida cuando se requiere una actualización de la información de accesibilidad.

.. _class_Node_constant_NOTIFICATION_ACCESSIBILITY_INVALIDATE:

.. rst-class:: classref-constant

**NOTIFICATION_ACCESSIBILITY_INVALIDATE** = ``3001`` :ref:`🔗<class_Node_constant_NOTIFICATION_ACCESSIBILITY_INVALIDATE>`

Notificación recibida cuando los elementos de accesibilidad son invalidados. Todos los elementos de accesibilidad del nodo son eliminados automáticamente después de recibir este mensaje, por lo tanto, todas las referencias existentes a dichos elementos deben ser descartadas.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

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

An optional description to the node. It will be displayed as a tooltip when hovering over the node in the editor's Scene dock.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_multiplayer:

.. rst-class:: classref-property

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **multiplayer** :ref:`🔗<class_Node_property_multiplayer>`

.. rst-class:: classref-property-setget

- :ref:`MultiplayerAPI<class_MultiplayerAPI>` **get_multiplayer**\ (\ )

The :ref:`MultiplayerAPI<class_MultiplayerAPI>` instance associated with this node. See :ref:`SceneTree.get_multiplayer()<class_SceneTree_method_get_multiplayer>`.

\ **Note:** Renaming the node, or moving it in the tree, will not move the :ref:`MultiplayerAPI<class_MultiplayerAPI>` to the new path, you will have to update this manually.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **name** :ref:`🔗<class_Node_property_name>`

.. rst-class:: classref-property-setget

- |void| **set_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_name**\ (\ )

The name of the node. This name must be unique among the siblings (other child nodes from the same parent). When set to an existing sibling's name, the node is automatically renamed.

\ **Note:** When changing the name, the following characters will be replaced with an underscore: (``.`` ``:`` ``@`` ``/`` ``"`` ``%``). In particular, the ``@`` character is reserved for auto-generated names. See also :ref:`String.validate_node_name()<class_String_method_validate_node_name>`.

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

The physics interpolation mode to use for this node. Only effective if :ref:`ProjectSettings.physics/common/physics_interpolation<class_ProjectSettings_property_physics/common/physics_interpolation>` or :ref:`SceneTree.physics_interpolation<class_SceneTree_property_physics_interpolation>` is ``true``.

By default, nodes inherit the physics interpolation mode from their parent. This property can enable or disable physics interpolation individually for each node, regardless of their parents' physics interpolation mode.

\ **Note:** Some node types like :ref:`VehicleWheel3D<class_VehicleWheel3D>` have physics interpolation disabled by default, as they rely on their own custom solution.

\ **Note:** When teleporting a node to a distant position, it's recommended to temporarily disable interpolation with :ref:`reset_physics_interpolation()<class_Node_method_reset_physics_interpolation>` *after* moving the node. This avoids creating a visual streak between the old and new positions.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_mode:

.. rst-class:: classref-property

:ref:`ProcessMode<enum_Node_ProcessMode>` **process_mode** = ``0`` :ref:`🔗<class_Node_property_process_mode>`

.. rst-class:: classref-property-setget

- |void| **set_process_mode**\ (\ value\: :ref:`ProcessMode<enum_Node_ProcessMode>`\ )
- :ref:`ProcessMode<enum_Node_ProcessMode>` **get_process_mode**\ (\ )

The node's processing behavior. To check if the node can process in its current mode, use :ref:`can_process()<class_Node_method_can_process>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_physics_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **process_physics_priority** = ``0`` :ref:`🔗<class_Node_property_process_physics_priority>`

.. rst-class:: classref-property-setget

- |void| **set_physics_process_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_process_priority**\ (\ )

Similar to :ref:`process_priority<class_Node_property_process_priority>` but for :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`, :ref:`_physics_process()<class_Node_private_method__physics_process>`, or :ref:`NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **process_priority** = ``0`` :ref:`🔗<class_Node_property_process_priority>`

.. rst-class:: classref-property-setget

- |void| **set_process_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_process_priority**\ (\ )

The node's execution order of the process callbacks (:ref:`_process()<class_Node_private_method__process>`, :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>`, and :ref:`NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`). Nodes whose priority value is *lower* call their process callbacks first, regardless of tree order.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_thread_group:

.. rst-class:: classref-property

:ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **process_thread_group** = ``0`` :ref:`🔗<class_Node_property_process_thread_group>`

.. rst-class:: classref-property-setget

- |void| **set_process_thread_group**\ (\ value\: :ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>`\ )
- :ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **get_process_thread_group**\ (\ )

Establece el grupo de hilos de procesamiento para este nodo; básicamente, si recibe :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>`, :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`, :ref:`_process()<class_Node_private_method__process>` o :ref:`_physics_process()<class_Node_private_method__physics_process>` (y sus versiones internas) en el hilo principal o en un sub-hilo.

Por defecto, el grupo de hilos es :ref:`PROCESS_THREAD_GROUP_INHERIT<class_Node_constant_PROCESS_THREAD_GROUP_INHERIT>`, lo que significa que este nodo pertenece al mismo grupo de hilos que el nodo padre. Los grupos de hilos permiten que los nodos de un grupo específico se procesen juntos, separados de otros grupos (dependiendo de :ref:`process_thread_group_order<class_Node_property_process_thread_group_order>`). Si el valor establecido es :ref:`PROCESS_THREAD_GROUP_SUB_THREAD<class_Node_constant_PROCESS_THREAD_GROUP_SUB_THREAD>`, este grupo de hilos se ejecutará en un sub-hilo (no en el principal); de lo contrario, si se establece en :ref:`PROCESS_THREAD_GROUP_MAIN_THREAD<class_Node_constant_PROCESS_THREAD_GROUP_MAIN_THREAD>`, se procesará en el hilo principal. Si no hay un nodo padre o abuelo con un valor distinto a "inherit", el nodo pertenecerá al *grupo de hilos predeterminado*. Este grupo predeterminado se procesará en el hilo principal y su orden de grupo es 0.

Durante el procesamiento en un sub-hilo, está prohibido acceder a la mayoría de las funciones de nodos fuera del grupo de hilos (y resultará en un error en modo depuración). Usa :ref:`Object.call_deferred()<class_Object_method_call_deferred>`, :ref:`call_thread_safe()<class_Node_method_call_thread_safe>`, :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` y similares para comunicarte desde los grupos de hilos con el hilo principal (o con otros grupos de hilos).

Para entender mejor los grupos de hilos de procesamiento, la idea es que cualquier nodo configurado con un valor distinto de :ref:`PROCESS_THREAD_GROUP_INHERIT<class_Node_constant_PROCESS_THREAD_GROUP_INHERIT>` incluirá a cualquier nodo hijo (y nieto) configurado como "inherit" dentro de su grupo de hilos de procesamiento. Esto significa que el procesamiento de todos los nodos del grupo ocurrirá a la vez, al mismo tiempo que el nodo que los incluye.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_thread_group_order:

.. rst-class:: classref-property

:ref:`int<class_int>` **process_thread_group_order** :ref:`🔗<class_Node_property_process_thread_group_order>`

.. rst-class:: classref-property-setget

- |void| **set_process_thread_group_order**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_process_thread_group_order**\ (\ )

Change the process thread group order. Groups with a lesser order will process before groups with a greater order. This is useful when a large amount of nodes process in sub thread and, afterwards, another group wants to collect their result in the main thread, as an example.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_thread_messages:

.. rst-class:: classref-property

|bitfield|\[:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>`\] **process_thread_messages** :ref:`🔗<class_Node_property_process_thread_messages>`

.. rst-class:: classref-property-setget

- |void| **set_process_thread_messages**\ (\ value\: |bitfield|\[:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>`\]\ )
- |bitfield|\[:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>`\] **get_process_thread_messages**\ (\ )

Set whether the current thread group will process messages (calls to :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` on threads), and whether it wants to receive them during regular process or physics process callbacks.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_scene_file_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **scene_file_path** :ref:`🔗<class_Node_property_scene_file_path>`

.. rst-class:: classref-property-setget

- |void| **set_scene_file_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_scene_file_path**\ (\ )

The original scene's file path, if the node has been instantiated from a :ref:`PackedScene<class_PackedScene>` file. Only scene root nodes contains this.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_unique_name_in_owner:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unique_name_in_owner** = ``false`` :ref:`🔗<class_Node_property_unique_name_in_owner>`

.. rst-class:: classref-property-setget

- |void| **set_unique_name_in_owner**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_unique_name_in_owner**\ (\ )

If ``true``, the node can be accessed from any node sharing the same :ref:`owner<class_Node_property_owner>` or from the :ref:`owner<class_Node_property_owner>` itself, with special ``%Name`` syntax in :ref:`get_node()<class_Node_method_get_node>`.

\ **Note:** If another node with the same :ref:`owner<class_Node_property_owner>` shares the same :ref:`name<class_Node_property_name>` as this node, the other node will no longer be accessible as unique.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Node_private_method__enter_tree:

.. rst-class:: classref-method

|void| **_enter_tree**\ (\ ) |virtual| :ref:`🔗<class_Node_private_method__enter_tree>`

Se llama cuando el nodo entra en el :ref:`SceneTree<class_SceneTree>` (por ejemplo, al instanciar, cambiar de escena o después de llamar a :ref:`add_child()<class_Node_method_add_child>` en un script). Si el nodo tiene hijos, su callback :ref:`_enter_tree()<class_Node_private_method__enter_tree>` se llamará primero, y luego la de los hijos.

Corresponde a la notificación :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>` en :ref:`Object._notification()<class_Object_private_method__notification>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__exit_tree:

.. rst-class:: classref-method

|void| **_exit_tree**\ (\ ) |virtual| :ref:`🔗<class_Node_private_method__exit_tree>`

Llamado cuando el nodo está a punto de salir del :ref:`SceneTree<class_SceneTree>` (por ejemplo, al liberarse, al cambiar de escena o después de llamar a :ref:`remove_child()<class_Node_method_remove_child>` en un script). Si el nodo tiene hijos, su llamada a :ref:`_exit_tree()<class_Node_private_method__exit_tree>` se llamará al final, después de que todos sus hijos hayan dejado el árbol.

Corresponde a la notificación :ref:`NOTIFICATION_EXIT_TREE<class_Node_constant_NOTIFICATION_EXIT_TREE>` en :ref:`Object._notification()<class_Object_private_method__notification>` y a la señal :ref:`tree_exiting<class_Node_signal_tree_exiting>`. Para ser notificado cuando el nodo ya ha dejado el árbol activo, conéctese al :ref:`tree_exited<class_Node_signal_tree_exited>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__get_accessibility_configuration_warnings:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_accessibility_configuration_warnings**\ (\ ) |virtual| |const| :ref:`🔗<class_Node_private_method__get_accessibility_configuration_warnings>`

Los elementos en el array devuelto por este método se muestran como advertencias en el dock de la escena si el script que lo sobrescribe es un script ``tool``, y las advertencias de accesibilidad están habilitadas en la configuración del editor.

Devolver un array vacío no produce advertencias.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__get_configuration_warnings:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_configuration_warnings**\ (\ ) |virtual| |const| :ref:`🔗<class_Node_private_method__get_configuration_warnings>`

Los elementos del array devuelto por este método se muestran como advertencias en el dock Escena si el script que lo sobrescribe es un script ``tool``.

Devolver un array vacío no produce advertencias.

Llama a :ref:`update_configuration_warnings()<class_Node_method_update_configuration_warnings>` cuando sea necesario actualizar las advertencias de configuración de este nodo.

::

    @export var energy = 0:
        set(value):
            energy = value
            update_configuration_warnings()

    func _get_configuration_warnings():
        if energy < 0:
            return ["La energía debe ser 0 o mayor."]
        else:
            return []

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__get_focused_accessibility_element:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_focused_accessibility_element**\ (\ ) |virtual| |const| :ref:`🔗<class_Node_private_method__get_focused_accessibility_element>`

Se llama durante las actualizaciones de la información de accesibilidad para determinar el subelemento actualmente enfocado; debe devolver un RID de subelemento o el valor devuelto por :ref:`get_accessibility_element()<class_Node_method_get_accessibility_element>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__input:

.. rst-class:: classref-method

|void| **_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Node_private_method__input>`

Se llama cuando hay un evento de entrada. El evento de entrada se propaga a través del árbol de nodos hasta que un nodo lo consume.

Solo se llama si el procesamiento de entrada está habilitado, lo que se hace automáticamente si se sobrescribe este método y se puede alternar con :ref:`set_process_input()<class_Node_method_set_process_input>`.

Para consumir el evento de entrada y evitar que se propague a otros nodos, se puede llamar a :ref:`Viewport.set_input_as_handled()<class_Viewport_method_set_input_as_handled>`.

Para la entrada de juego, :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>` y :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>` suelen ser una mejor opción, ya que permiten que la GUI intercepte los eventos primero.

\ **Nota:** Este método solo se llama si el nodo está presente en el árbol de escenas (es decir, si no es huérfano).

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__physics_process:

.. rst-class:: classref-method

|void| **_physics_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_Node_private_method__physics_process>`

Se llama una vez en cada ciclo de física y permite a los Nodos sincronizar su lógica con los ciclos de física. ``delta`` es el tiempo lógico entre ciclos de física en segundos y es igual a :ref:`Engine.time_scale<class_Engine_property_time_scale>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`.

Solo se llama si el procesamiento de físicas está habilitado para este Nodo, lo que se hace automáticamente si se sobrescribe este método y se puede alternar con :ref:`set_physics_process()<class_Node_method_set_physics_process>`.

El procesamiento se realiza en orden de :ref:`process_physics_priority<class_Node_property_process_physics_priority>`, los valores de prioridad más bajos se llaman primero. Los nodos con la misma prioridad se procesan en orden de árbol, o de arriba a abajo como se ve en el editor (también conocido como recorrido de preorden).

Corresponde a la notificación :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>` en :ref:`Object._notification()<class_Object_private_method__notification>`.

\ **Nota:** Este método solo se llama si el nodo está presente en el árbol de escenas (es decir, si no es huérfano).

\ **Nota:** El ``delta`` acumulado puede diferir de los segundos del mundo real.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__process:

.. rst-class:: classref-method

|void| **_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_Node_private_method__process>`

Se llama en cada fotograma inactivo, antes de la renderización y después de que se hayan procesado los ciclos de física. ``delta`` es el tiempo entre fotogramas en segundos.

Solo se llama si el procesamiento está habilitado para este Nodo, lo que se hace automáticamente si se sobrescribe este método y se puede alternar con :ref:`set_process()<class_Node_method_set_process>`.

El procesamiento se realiza en orden de :ref:`process_priority<class_Node_property_process_priority>`, los valores de prioridad más bajos se llaman primero. Los nodos con la misma prioridad se procesan en orden de árbol, o de arriba a abajo como se ve en el editor (también conocido como recorrido de preorden).

Corresponde a la notificación :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>` en :ref:`Object._notification()<class_Object_private_method__notification>`.

\ **Nota:** Este método solo se llama si el nodo está presente en el árbol de escenas (es decir, si no es huérfano).

\ **Nota:** Cuando el motor está teniendo dificultades y la velocidad de fotogramas se reduce, ``delta`` aumentará. Cuando ``delta`` aumenta, se limita a un máximo de :ref:`Engine.time_scale<class_Engine_property_time_scale>` \* :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. Como resultado, el ``delta`` acumulado puede no representar el tiempo del mundo real.

\ **Nota:** Cuando ``--fixed-fps`` está habilitado o el motor se está ejecutando en modo Movie Maker (ver :ref:`MovieWriter<class_MovieWriter>`), el proceso ``delta`` siempre será el mismo para cada fotograma, independientemente de cuánto tiempo tarde el fotograma en renderizarse.

\ **Nota:** El delta de fotogramas puede ser post-procesado por :ref:`OS.delta_smoothing<class_OS_property_delta_smoothing>` si esto está habilitado para el proyecto.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__ready:

.. rst-class:: classref-method

|void| **_ready**\ (\ ) |virtual| :ref:`🔗<class_Node_private_method__ready>`

Se llama cuando el nodo está "listo", es decir, cuando tanto el nodo como sus hijos han entrado en el árbol de escenas. Si el nodo tiene hijos, sus callbacks :ref:`_ready()<class_Node_private_method__ready>` se activan primero, y el nodo padre recibirá la notificación de listo después.

Corresponde a la notificación :ref:`NOTIFICATION_READY<class_Node_constant_NOTIFICATION_READY>` en :ref:`Object._notification()<class_Object_private_method__notification>`. Véase también la anotación ``@onready`` para las variables.

Normalmente se usa para la inicialización. Para una inicialización aún más temprana, se puede usar :ref:`Object._init()<class_Object_private_method__init>`. Véase también :ref:`_enter_tree()<class_Node_private_method__enter_tree>`.

\ **Nota:** Este método se puede llamar solo una vez para cada nodo. Después de eliminar un nodo del árbol de escenas y volver a agregarlo, :ref:`_ready()<class_Node_private_method__ready>` **no** se llamará una segunda vez. Esto se puede evitar solicitando otra llamada con :ref:`request_ready()<class_Node_method_request_ready>`, que se puede llamar en cualquier lugar antes de volver a agregar el nodo.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__shortcut_input:

.. rst-class:: classref-method

|void| **_shortcut_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Node_private_method__shortcut_input>`

Se llama cuando un :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventShortcut<class_InputEventShortcut>` o :ref:`InputEventJoypadButton<class_InputEventJoypadButton>` no ha sido consumido por :ref:`_input()<class_Node_private_method__input>` o cualquier elemento :ref:`Control<class_Control>` de la GUI. Se llama antes de :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>` y :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>`. El evento de entrada se propaga a través del árbol de nodos hasta que un nodo lo consume.

Solo se llama si el procesamiento de atajos está habilitado, lo que se hace automáticamente si se sobrescribe este método y se puede alternar con :ref:`set_process_shortcut_input()<class_Node_method_set_process_shortcut_input>`.

Para consumir el evento de entrada y evitar que se propague a otros nodos, se puede llamar a :ref:`Viewport.set_input_as_handled()<class_Viewport_method_set_input_as_handled>`.

Este método se puede usar para manejar atajos. Para eventos genéricos de la GUI, usa :ref:`_input()<class_Node_private_method__input>` en su lugar. Los eventos de juego generalmente deben manejarse con :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>` o :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>`.

\ **Nota:** Este método solo se llama si el nodo está presente en el árbol de escenas (es decir, si no es huérfano).

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__unhandled_input:

.. rst-class:: classref-method

|void| **_unhandled_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Node_private_method__unhandled_input>`

Called when an :ref:`InputEvent<class_InputEvent>` hasn't been consumed by :ref:`_input()<class_Node_private_method__input>` or any GUI :ref:`Control<class_Control>` item. It is called after :ref:`_shortcut_input()<class_Node_private_method__shortcut_input>` and after :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>`. The input event propagates up through the node tree until a node consumes it.

It is only called if unhandled input processing is enabled, which is done automatically if this method is overridden, and can be toggled with :ref:`set_process_unhandled_input()<class_Node_method_set_process_unhandled_input>`.

To consume the input event and stop it propagating further to other nodes, :ref:`Viewport.set_input_as_handled()<class_Viewport_method_set_input_as_handled>` can be called.

For gameplay input, this method is usually a better fit than :ref:`_input()<class_Node_private_method__input>`, as GUI events need a higher priority. For keyboard shortcuts, consider using :ref:`_shortcut_input()<class_Node_private_method__shortcut_input>` instead, as it is called before this method. Finally, to handle keyboard events, consider using :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>` for performance reasons.

\ **Note:** This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__unhandled_key_input:

.. rst-class:: classref-method

|void| **_unhandled_key_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Node_private_method__unhandled_key_input>`

Called when an :ref:`InputEventKey<class_InputEventKey>` hasn't been consumed by :ref:`_input()<class_Node_private_method__input>` or any GUI :ref:`Control<class_Control>` item. It is called after :ref:`_shortcut_input()<class_Node_private_method__shortcut_input>` but before :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>`. The input event propagates up through the node tree until a node consumes it.

It is only called if unhandled key input processing is enabled, which is done automatically if this method is overridden, and can be toggled with :ref:`set_process_unhandled_key_input()<class_Node_method_set_process_unhandled_key_input>`.

To consume the input event and stop it propagating further to other nodes, :ref:`Viewport.set_input_as_handled()<class_Viewport_method_set_input_as_handled>` can be called.

This method can be used to handle Unicode character input with :kbd:`Alt`, :kbd:`Alt + Ctrl`, and :kbd:`Alt + Shift` modifiers, after shortcuts were handled.

For gameplay input, this and :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>` are usually a better fit than :ref:`_input()<class_Node_private_method__input>`, as GUI events should be handled first. This method also performs better than :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>`, since unrelated events such as :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` are automatically filtered. For shortcuts, consider using :ref:`_shortcut_input()<class_Node_private_method__shortcut_input>` instead.

\ **Note:** This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_add_child:

.. rst-class:: classref-method

|void| **add_child**\ (\ node\: :ref:`Node<class_Node>`, force_readable_name\: :ref:`bool<class_bool>` = false, internal\: :ref:`InternalMode<enum_Node_InternalMode>` = 0\ ) :ref:`🔗<class_Node_method_add_child>`

Adds a child ``node``. Nodes can have any number of children, but every child must have a unique name. Child nodes are automatically deleted when the parent node is deleted, so an entire scene can be removed by deleting its topmost node.

If ``force_readable_name`` is ``true``, improves the readability of the added ``node``. If not named, the ``node`` is renamed to its type, and if it shares :ref:`name<class_Node_property_name>` with a sibling, a number is suffixed more appropriately. This operation is very slow. As such, it is recommended leaving this to ``false``, which assigns a dummy name featuring ``@`` in both situations.

If ``internal`` is different than :ref:`INTERNAL_MODE_DISABLED<class_Node_constant_INTERNAL_MODE_DISABLED>`, the child will be added as internal node. These nodes are ignored by methods like :ref:`get_children()<class_Node_method_get_children>`, unless their parameter ``include_internal`` is ``true``. It also prevents these nodes being duplicated with their parent. The intended usage is to hide the internal nodes from the user, so the user won't accidentally delete or modify them. Used by some GUI nodes, e.g. :ref:`ColorPicker<class_ColorPicker>`.

\ **Note:** If ``node`` already has a parent, this method will fail. Use :ref:`remove_child()<class_Node_method_remove_child>` first to remove ``node`` from its current parent. For example:


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



If you need the child node to be added below a specific node in the list of children, use :ref:`add_sibling()<class_Node_method_add_sibling>` instead of this method.

\ **Note:** If you want a child to be persisted to a :ref:`PackedScene<class_PackedScene>`, you must set :ref:`owner<class_Node_property_owner>` in addition to calling :ref:`add_child()<class_Node_method_add_child>`. This is typically relevant for :doc:`tool scripts <../tutorials/plugins/running_code_in_the_editor>` and :doc:`editor plugins <../tutorials/plugins/editor/index>`. If :ref:`add_child()<class_Node_method_add_child>` is called without setting :ref:`owner<class_Node_property_owner>`, the newly added **Node** will not be visible in the scene tree, though it will be visible in the 2D/3D view.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_add_sibling:

.. rst-class:: classref-method

|void| **add_sibling**\ (\ sibling\: :ref:`Node<class_Node>`, force_readable_name\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node_method_add_sibling>`

Adds a ``sibling`` node to this node's parent, and moves the added sibling right below this node.

If ``force_readable_name`` is ``true``, improves the readability of the added ``sibling``. If not named, the ``sibling`` is renamed to its type, and if it shares :ref:`name<class_Node_property_name>` with a sibling, a number is suffixed more appropriately. This operation is very slow. As such, it is recommended leaving this to ``false``, which assigns a dummy name featuring ``@`` in both situations.

Use :ref:`add_child()<class_Node_method_add_child>` instead of this method if you don't need the child node to be added below a specific node in the list of children.

\ **Note:** If this node is internal, the added sibling will be internal too (see :ref:`add_child()<class_Node_method_add_child>`'s ``internal`` parameter).

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

Translates a ``message``, using the translation catalogs configured in the Project Settings. Further ``context`` can be specified to help with the translation. Note that most :ref:`Control<class_Control>` nodes automatically translate their strings, so this method is mostly useful for formatted strings or custom drawn text.

This method works the same as :ref:`Object.tr()<class_Object_method_tr>`, with the addition of respecting the :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>` state.

If :ref:`Object.can_translate_messages()<class_Object_method_can_translate_messages>` is ``false``, or no translation is available, this method returns the ``message`` without changes. See :ref:`Object.set_message_translation()<class_Object_method_set_message_translation>`.

For detailed examples, see :doc:`Internationalizing games <../tutorials/i18n/internationalizing_games>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_atr_n:

.. rst-class:: classref-method

:ref:`String<class_String>` **atr_n**\ (\ message\: :ref:`String<class_String>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = ""\ ) |const| :ref:`🔗<class_Node_method_atr_n>`

Translates a ``message`` or ``plural_message``, using the translation catalogs configured in the Project Settings. Further ``context`` can be specified to help with the translation.

This method works the same as :ref:`Object.tr_n()<class_Object_method_tr_n>`, with the addition of respecting the :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>` state.

If :ref:`Object.can_translate_messages()<class_Object_method_can_translate_messages>` is ``false``, or no translation is available, this method returns ``message`` or ``plural_message``, without changes. See :ref:`Object.set_message_translation()<class_Object_method_set_message_translation>`.

The ``n`` is the number, or amount, of the message's subject. It is used by the translation system to fetch the correct plural form for the current language.

For detailed examples, see :doc:`Localization using gettext <../tutorials/i18n/localization_using_gettext>`.

\ **Note:** Negative and :ref:`float<class_float>` numbers may not properly apply to some countable subjects. It's recommended to handle these cases with :ref:`atr()<class_Node_method_atr>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_call_deferred_thread_group:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call_deferred_thread_group**\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Node_method_call_deferred_thread_group>`

This function is similar to :ref:`Object.call_deferred()<class_Object_method_call_deferred>` except that the call will take place when the node thread group is processed. If the node thread group processes in sub-threads, then the call will be done on that thread, right before :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>` or :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`, the :ref:`_process()<class_Node_private_method__process>` or :ref:`_physics_process()<class_Node_private_method__physics_process>` or their internal versions are called.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_call_thread_safe:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call_thread_safe**\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Node_method_call_thread_safe>`

This function ensures that the calling of this function will succeed, no matter whether it's being done from a thread or not. If called from a thread that is not allowed to call the function, the call will become deferred. Otherwise, the call will go through directly.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_can_auto_translate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_auto_translate**\ (\ ) |const| :ref:`🔗<class_Node_method_can_auto_translate>`

Returns ``true`` if this node can automatically translate messages depending on the current locale. See :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>`, :ref:`atr()<class_Node_method_atr>`, and :ref:`atr_n()<class_Node_method_atr_n>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_can_process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_process**\ (\ ) |const| :ref:`🔗<class_Node_method_can_process>`

Returns ``true`` if the node can receive processing notifications and input callbacks (:ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>`, :ref:`_input()<class_Node_private_method__input>`, etc.) from the :ref:`SceneTree<class_SceneTree>` and :ref:`Viewport<class_Viewport>`. The returned value depends on :ref:`process_mode<class_Node_property_process_mode>`:

- If set to :ref:`PROCESS_MODE_PAUSABLE<class_Node_constant_PROCESS_MODE_PAUSABLE>`, returns ``true`` when the game is processing, i.e. :ref:`SceneTree.paused<class_SceneTree_property_paused>` is ``false``;

- If set to :ref:`PROCESS_MODE_WHEN_PAUSED<class_Node_constant_PROCESS_MODE_WHEN_PAUSED>`, returns ``true`` when the game is paused, i.e. :ref:`SceneTree.paused<class_SceneTree_property_paused>` is ``true``;

- If set to :ref:`PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`, always returns ``true``;

- If set to :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, always returns ``false``;

- If set to :ref:`PROCESS_MODE_INHERIT<class_Node_constant_PROCESS_MODE_INHERIT>`, use the parent node's :ref:`process_mode<class_Node_property_process_mode>` to determine the result.

If the node is not inside the tree, returns ``false`` no matter the value of :ref:`process_mode<class_Node_property_process_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_create_tween:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **create_tween**\ (\ ) :ref:`🔗<class_Node_method_create_tween>`

Creates a new :ref:`Tween<class_Tween>` and binds it to this node.

This is the equivalent of doing:


.. tabs::

 .. code-tab:: gdscript

    get_tree().create_tween().bind_node(self)

 .. code-tab:: csharp

    GetTree().CreateTween().BindNode(this);



The Tween will start automatically on the next process frame or physics frame (depending on :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`). See :ref:`Tween.bind_node()<class_Tween_method_bind_node>` for more info on Tweens bound to nodes.

\ **Note:** The method can still be used when the node is not inside :ref:`SceneTree<class_SceneTree>`. It can fail in an unlikely case of using a custom :ref:`MainLoop<class_MainLoop>`.

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

Finds the first descendant of this node whose :ref:`name<class_Node_property_name>` matches ``pattern``, returning ``null`` if no match is found. The matching is done against node names, *not* their paths, through :ref:`String.match()<class_String_method_match>`. As such, it is case-sensitive, ``"*"`` matches zero or more characters, and ``"?"`` matches any single character.

If ``recursive`` is ``false``, only this node's direct children are checked. Nodes are checked in tree order, so this node's first direct child is checked first, then its own direct children, etc., before moving to the second direct child, and so on. Internal children are also included in the search (see ``internal`` parameter in :ref:`add_child()<class_Node_method_add_child>`).

If ``owned`` is ``true``, only descendants with a valid :ref:`owner<class_Node_property_owner>` node are checked.

\ **Note:** This method can be very slow. Consider storing a reference to the found node in a variable. Alternatively, use :ref:`get_node()<class_Node_method_get_node>` with unique names (see :ref:`unique_name_in_owner<class_Node_property_unique_name_in_owner>`).

\ **Note:** To find all descendant nodes matching a pattern or a class type, see :ref:`find_children()<class_Node_method_find_children>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_find_children:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **find_children**\ (\ pattern\: :ref:`String<class_String>`, type\: :ref:`String<class_String>` = "", recursive\: :ref:`bool<class_bool>` = true, owned\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Node_method_find_children>`

Finds all descendants of this node whose names match ``pattern``, returning an empty :ref:`Array<class_Array>` if no match is found. The matching is done against node names, *not* their paths, through :ref:`String.match()<class_String_method_match>`. As such, it is case-sensitive, ``"*"`` matches zero or more characters, and ``"?"`` matches any single character.

If ``type`` is not empty, only descendants inheriting from ``type`` are included (see :ref:`Object.is_class()<class_Object_method_is_class>`).

If ``recursive`` is ``false``, only this node's direct children are checked. Nodes are checked in tree order, so this node's first direct child is checked first, then its own direct children, etc., before moving to the second direct child, and so on. Internal children are also included in the search (see ``internal`` parameter in :ref:`add_child()<class_Node_method_add_child>`).

If ``owned`` is ``true``, only descendants with a valid :ref:`owner<class_Node_property_owner>` node are checked.

\ **Note:** This method can be very slow. Consider storing references to the found nodes in a variable.

\ **Note:** To find a single descendant node matching a pattern, see :ref:`find_child()<class_Node_method_find_child>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_find_parent:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **find_parent**\ (\ pattern\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Node_method_find_parent>`

Finds the first ancestor of this node whose :ref:`name<class_Node_property_name>` matches ``pattern``, returning ``null`` if no match is found. The matching is done through :ref:`String.match()<class_String_method_match>`. As such, it is case-sensitive, ``"*"`` matches zero or more characters, and ``"?"`` matches any single character. See also :ref:`find_child()<class_Node_method_find_child>` and :ref:`find_children()<class_Node_method_find_children>`.

\ **Note:** As this method walks upwards in the scene tree, it can be slow in large, deeply nested nodes. Consider storing a reference to the found node in a variable. Alternatively, use :ref:`get_node()<class_Node_method_get_node>` with unique names (see :ref:`unique_name_in_owner<class_Node_property_unique_name_in_owner>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_accessibility_element:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_accessibility_element**\ (\ ) |const| :ref:`🔗<class_Node_method_get_accessibility_element>`

Returns main accessibility element RID.

\ **Note:** This method should be called only during accessibility information updates (:ref:`NOTIFICATION_ACCESSIBILITY_UPDATE<class_Node_constant_NOTIFICATION_ACCESSIBILITY_UPDATE>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_child:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_child**\ (\ idx\: :ref:`int<class_int>`, include_internal\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_child>`

Fetches a child node by its index. Each child node has an index relative to its siblings (see :ref:`get_index()<class_Node_method_get_index>`). The first child is at index 0. Negative values can also be used to start from the end of the list. This method can be used in combination with :ref:`get_child_count()<class_Node_method_get_child_count>` to iterate over this node's children. If no child exists at the given index, this method returns ``null`` and an error is generated.

If ``include_internal`` is ``false``, internal children are ignored (see :ref:`add_child()<class_Node_method_add_child>`'s ``internal`` parameter).

::

    # Assuming the following are children of this node, in order:
    # First, Middle, Last.

    var a = get_child(0).name  # a is "First"
    var b = get_child(1).name  # b is "Middle"
    var b = get_child(2).name  # b is "Last"
    var c = get_child(-1).name # c is "Last"

\ **Note:** To fetch a node by :ref:`NodePath<class_NodePath>`, use :ref:`get_node()<class_Node_method_get_node>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_child_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_child_count**\ (\ include_internal\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_child_count>`

Returns the number of children of this node.

If ``include_internal`` is ``false``, internal children are not counted (see :ref:`add_child()<class_Node_method_add_child>`'s ``internal`` parameter).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_children:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_children**\ (\ include_internal\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_children>`

Returns all children of this node inside an :ref:`Array<class_Array>`.

If ``include_internal`` is ``false``, excludes internal children from the returned array (see :ref:`add_child()<class_Node_method_add_child>`'s ``internal`` parameter).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_groups:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_groups**\ (\ ) |const| :ref:`🔗<class_Node_method_get_groups>`

Returns an :ref:`Array<class_Array>` of group names that the node has been added to.

\ **Note:** To improve performance, the order of group names is *not* guaranteed and may vary between project runs. Therefore, do not rely on the group order.

\ **Note:** This method may also return some group names starting with an underscore (``_``). These are internally used by the engine. To avoid conflicts, do not use custom groups starting with underscores. To exclude internal groups, see the following code snippet:


.. tabs::

 .. code-tab:: gdscript

    # Stores the node's non-internal groups only (as an array of StringNames).
    var non_internal_groups = []
    for group in get_groups():
        if not str(group).begins_with("_"):
            non_internal_groups.push_back(group)

 .. code-tab:: csharp

    // Stores the node's non-internal groups only (as a List of StringNames).
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

Returns this node's order among its siblings. The first node's index is ``0``. See also :ref:`get_child()<class_Node_method_get_child>`.

If ``include_internal`` is ``false``, returns the index ignoring internal children. The first, non-internal child will have an index of ``0`` (see :ref:`add_child()<class_Node_method_add_child>`'s ``internal`` parameter).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_last_exclusive_window:

.. rst-class:: classref-method

:ref:`Window<class_Window>` **get_last_exclusive_window**\ (\ ) |const| :ref:`🔗<class_Node_method_get_last_exclusive_window>`

Returns the :ref:`Window<class_Window>` that contains this node, or the last exclusive child in a chain of windows starting with the one that contains this node.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_multiplayer_authority:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_multiplayer_authority**\ (\ ) |const| :ref:`🔗<class_Node_method_get_multiplayer_authority>`

Returns the peer ID of the multiplayer authority for this node. See :ref:`set_multiplayer_authority()<class_Node_method_set_multiplayer_authority>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_node:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_node**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Node_method_get_node>`

Obtiene un nodo. La :ref:`NodePath<class_NodePath>` puede ser una ruta relativa (desde este nodo) o una ruta absoluta (desde el :ref:`SceneTree.root<class_SceneTree_property_root>`) a un nodo. Si ``path`` no apunta a un nodo válido, genera un error y devuelve ``null``. Los intentos de acceder a métodos sobre el valor de retorno resultarán en un error *"Intento de llamar a"*.

\ **Nota:** La obtención por ruta absoluta solo funciona cuando el nodo está dentro del árbol de escenas (véase :ref:`is_inside_tree()<class_Node_method_is_inside_tree>`).

\ **Ejemplo:** Asume que este método es llamado desde el nodo Character, dentro del siguiente árbol:

.. code:: text

     ┖╴root
        ┠╴Character (¡estás aquí!)
        ┃  ┠╴Sword
        ┃  ┖╴Backpack
        ┃     ┖╴Dagger
        ┠╴MyGame
        ┖╴Swamp
           ┠╴Alligator
           ┠╴Mosquito
           ┖╴Goblin

Las siguientes llamadas devolverán un nodo válido:


.. tabs::

 .. code-tab:: gdscript

    get_node("Sword")
    get_node("Backpack/Dagger")
    get_node("../Swamp/Alligator")
    get_node("/root/MyGame")

 .. code-tab:: csharp

    GetNode("Sword");
    GetNode("Backpack/Dagger");
    GetNode("../Swamp/Alligator");
    GetNode("/root/MyGame");



.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_node_and_resource:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_node_and_resource**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_Node_method_get_node_and_resource>`

Fetches a node and its most nested resource as specified by the :ref:`NodePath<class_NodePath>`'s subname. Returns an :ref:`Array<class_Array>` of size ``3`` where:

- Element ``0`` is the **Node**, or ``null`` if not found;

- Element ``1`` is the subname's last nested :ref:`Resource<class_Resource>`, or ``null`` if not found;

- Element ``2`` is the remaining :ref:`NodePath<class_NodePath>`, referring to an existing, non-:ref:`Resource<class_Resource>` property (see :ref:`Object.get_indexed()<class_Object_method_get_indexed>`).

\ **Example:** Assume that the child's :ref:`Sprite2D.texture<class_Sprite2D_property_texture>` has been assigned an :ref:`AtlasTexture<class_AtlasTexture>`:


.. tabs::

 .. code-tab:: gdscript

    var a = get_node_and_resource("Area2D/Sprite2D")
    print(a[0].name) # Prints Sprite2D
    print(a[1])      # Prints <null>
    print(a[2])      # Prints ^""

    var b = get_node_and_resource("Area2D/Sprite2D:texture:atlas")
    print(b[0].name)        # Prints Sprite2D
    print(b[1].get_class()) # Prints AtlasTexture
    print(b[2])             # Prints ^""

    var c = get_node_and_resource("Area2D/Sprite2D:texture:atlas:region")
    print(c[0].name)        # Prints Sprite2D
    print(c[1].get_class()) # Prints AtlasTexture
    print(c[2])             # Prints ^":region"

 .. code-tab:: csharp

    var a = GetNodeAndResource(NodePath("Area2D/Sprite2D"));
    GD.Print(a[0].Name); // Prints Sprite2D
    GD.Print(a[1]);      // Prints <null>
    GD.Print(a[2]);      // Prints ^"

    var b = GetNodeAndResource(NodePath("Area2D/Sprite2D:texture:atlas"));
    GD.Print(b[0].name);        // Prints Sprite2D
    GD.Print(b[1].get_class()); // Prints AtlasTexture
    GD.Print(b[2]);             // Prints ^""

    var c = GetNodeAndResource(NodePath("Area2D/Sprite2D:texture:atlas:region"));
    GD.Print(c[0].name);        // Prints Sprite2D
    GD.Print(c[1].get_class()); // Prints AtlasTexture
    GD.Print(c[2]);             // Prints ^":region"



.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_node_or_null:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_node_or_null**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Node_method_get_node_or_null>`

Fetches a node by :ref:`NodePath<class_NodePath>`. Similar to :ref:`get_node()<class_Node_method_get_node>`, but does not generate an error if ``path`` does not point to a valid node.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_node_rpc_config:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_node_rpc_config**\ (\ ) |const| :ref:`🔗<class_Node_method_get_node_rpc_config>`

Returns a :ref:`Dictionary<class_Dictionary>` mapping method names to their RPC configuration defined for this node using :ref:`rpc_config()<class_Node_method_rpc_config>`.

\ **Note:** This method only returns the RPC configuration assigned via :ref:`rpc_config()<class_Node_method_rpc_config>`. See :ref:`Script.get_rpc_config()<class_Script_method_get_rpc_config>` to retrieve the RPCs defined by the :ref:`Script<class_Script>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_orphan_node_ids:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **get_orphan_node_ids**\ (\ ) |static| :ref:`🔗<class_Node_method_get_orphan_node_ids>`

Returns object IDs of all orphan nodes (nodes outside the :ref:`SceneTree<class_SceneTree>`). Used for debugging.

\ **Note:** :ref:`get_orphan_node_ids()<class_Node_method_get_orphan_node_ids>` only works in debug builds. When called in a project exported in release mode, :ref:`get_orphan_node_ids()<class_Node_method_get_orphan_node_ids>` will return an empty array.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_parent:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_parent**\ (\ ) |const| :ref:`🔗<class_Node_method_get_parent>`

Returns this node's parent node, or ``null`` if the node doesn't have a parent.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_path**\ (\ ) |const| :ref:`🔗<class_Node_method_get_path>`

Returns the node's absolute path, relative to the :ref:`SceneTree.root<class_SceneTree_property_root>`. If the node is not inside the scene tree, this method fails and returns an empty :ref:`NodePath<class_NodePath>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_path_to:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_path_to**\ (\ node\: :ref:`Node<class_Node>`, use_unique_path\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_path_to>`

Returns the relative :ref:`NodePath<class_NodePath>` from this node to the specified ``node``. Both nodes must be in the same :ref:`SceneTree<class_SceneTree>` or scene hierarchy, otherwise this method fails and returns an empty :ref:`NodePath<class_NodePath>`.

If ``use_unique_path`` is ``true``, returns the shortest path accounting for this node's unique name (see :ref:`unique_name_in_owner<class_Node_property_unique_name_in_owner>`).

\ **Note:** If you get a relative path which starts from a unique node, the path may be longer than a normal relative path, due to the addition of the unique node's name.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_physics_process_delta_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_physics_process_delta_time**\ (\ ) |const| :ref:`🔗<class_Node_method_get_physics_process_delta_time>`

Returns the time elapsed (in seconds) since the last physics callback. This value is identical to :ref:`_physics_process()<class_Node_private_method__physics_process>`'s ``delta`` parameter, and is often consistent at run-time, unless :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` is changed. See also :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`.

\ **Note:** The returned value will be larger than expected if running at a framerate lower than :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` / :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` FPS. This is done to avoid "spiral of death" scenarios where performance would plummet due to an ever-increasing number of physics steps per frame. This behavior affects both :ref:`_process()<class_Node_private_method__process>` and :ref:`_physics_process()<class_Node_private_method__physics_process>`. As a result, avoid using ``delta`` for time measurements in real-world seconds. Use the :ref:`Time<class_Time>` singleton's methods for this purpose instead, such as :ref:`Time.get_ticks_usec()<class_Time_method_get_ticks_usec>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_process_delta_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_process_delta_time**\ (\ ) |const| :ref:`🔗<class_Node_method_get_process_delta_time>`

Returns the time elapsed (in seconds) since the last process callback. This value is identical to :ref:`_process()<class_Node_private_method__process>`'s ``delta`` parameter, and may vary from frame to frame. See also :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>`.

\ **Note:** The returned value will be larger than expected if running at a framerate lower than :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` / :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` FPS. This is done to avoid "spiral of death" scenarios where performance would plummet due to an ever-increasing number of physics steps per frame. This behavior affects both :ref:`_process()<class_Node_private_method__process>` and :ref:`_physics_process()<class_Node_private_method__physics_process>`. As a result, avoid using ``delta`` for time measurements in real-world seconds. Use the :ref:`Time<class_Time>` singleton's methods for this purpose instead, such as :ref:`Time.get_ticks_usec()<class_Time_method_get_ticks_usec>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_scene_instance_load_placeholder:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_scene_instance_load_placeholder**\ (\ ) |const| :ref:`🔗<class_Node_method_get_scene_instance_load_placeholder>`

Returns ``true`` if this node is an instance load placeholder. See :ref:`InstancePlaceholder<class_InstancePlaceholder>` and :ref:`set_scene_instance_load_placeholder()<class_Node_method_set_scene_instance_load_placeholder>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_tree:

.. rst-class:: classref-method

:ref:`SceneTree<class_SceneTree>` **get_tree**\ (\ ) |const| :ref:`🔗<class_Node_method_get_tree>`

Returns the :ref:`SceneTree<class_SceneTree>` that contains this node. If this node is not inside the tree, generates an error and returns ``null``. See also :ref:`is_inside_tree()<class_Node_method_is_inside_tree>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_tree_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tree_string**\ (\ ) :ref:`🔗<class_Node_method_get_tree_string>`

Returns the tree as a :ref:`String<class_String>`. Used mainly for debugging purposes. This version displays the path relative to the current node, and is good for copy/pasting into the :ref:`get_node()<class_Node_method_get_node>` function. It also can be used in game UI/UX.

May print, for example:

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

Similar to :ref:`get_tree_string()<class_Node_method_get_tree_string>`, this returns the tree as a :ref:`String<class_String>`. This version displays a more graphical representation similar to what is displayed in the Scene Dock. It is useful for inspecting larger trees.

May print, for example:

.. code:: text

     ┖╴TheGame
        ┠╴Menu
        ┃  ┠╴Label
        ┃  ┖╴Camera2D
        ┖╴SplashScreen
           ┖╴Camera2D

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_viewport:

.. rst-class:: classref-method

:ref:`Viewport<class_Viewport>` **get_viewport**\ (\ ) |const| :ref:`🔗<class_Node_method_get_viewport>`

Returns the node's closest :ref:`Viewport<class_Viewport>` ancestor, if the node is inside the tree. Otherwise, returns ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_window:

.. rst-class:: classref-method

:ref:`Window<class_Window>` **get_window**\ (\ ) |const| :ref:`🔗<class_Node_method_get_window>`

Returns the :ref:`Window<class_Window>` that contains this node. If the node is in the main window, this is equivalent to getting the root node (``get_tree().get_root()``).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_has_node:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Node_method_has_node>`

Returns ``true`` if the ``path`` points to a valid node. See also :ref:`get_node()<class_Node_method_get_node>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_has_node_and_resource:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node_and_resource**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Node_method_has_node_and_resource>`

Returns ``true`` if ``path`` points to a valid node and its subnames point to a valid :ref:`Resource<class_Resource>`, e.g. ``Area2D/CollisionShape2D:shape``. Properties that are not :ref:`Resource<class_Resource>` types (such as nodes or other :ref:`Variant<class_Variant>` types) are not considered. See also :ref:`get_node_and_resource()<class_Node_method_get_node_and_resource>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_ancestor_of:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_ancestor_of**\ (\ node\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Node_method_is_ancestor_of>`

Returns ``true`` if the given ``node`` is a direct or indirect child of this node.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_displayed_folded:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_displayed_folded**\ (\ ) |const| :ref:`🔗<class_Node_method_is_displayed_folded>`

Returns ``true`` if the node is folded (collapsed) in the Scene dock. This method is intended to be used in editor plugins and tools. See also :ref:`set_display_folded()<class_Node_method_set_display_folded>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_editable_instance:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_editable_instance**\ (\ node\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Node_method_is_editable_instance>`

Returns ``true`` if ``node`` has editable children enabled relative to this node. This method is intended to be used in editor plugins and tools. See also :ref:`set_editable_instance()<class_Node_method_set_editable_instance>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_greater_than:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_greater_than**\ (\ node\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Node_method_is_greater_than>`

Returns ``true`` if the given ``node`` occurs later in the scene hierarchy than this node. A node occurring later is usually processed last.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_in_group:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Node_method_is_in_group>`

Returns ``true`` if this node has been added to the given ``group``. See :ref:`add_to_group()<class_Node_method_add_to_group>` and :ref:`remove_from_group()<class_Node_method_remove_from_group>`. See also notes in the description, and the :ref:`SceneTree<class_SceneTree>`'s group methods.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_inside_tree:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_inside_tree**\ (\ ) |const| :ref:`🔗<class_Node_method_is_inside_tree>`

Returns ``true`` if this node is currently inside a :ref:`SceneTree<class_SceneTree>`. See also :ref:`get_tree()<class_Node_method_get_tree>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_multiplayer_authority:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_multiplayer_authority**\ (\ ) |const| :ref:`🔗<class_Node_method_is_multiplayer_authority>`

Returns ``true`` if the local system is the multiplayer authority of this node.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_node_ready:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_node_ready**\ (\ ) |const| :ref:`🔗<class_Node_method_is_node_ready>`

Returns ``true`` if the node is ready, i.e. it's inside scene tree and all its children are initialized.

\ :ref:`request_ready()<class_Node_method_request_ready>` resets it back to ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_part_of_edited_scene:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_part_of_edited_scene**\ (\ ) |const| :ref:`🔗<class_Node_method_is_part_of_edited_scene>`

Returns ``true`` if the node is part of the scene currently opened in the editor.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_physics_interpolated:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_physics_interpolated**\ (\ ) |const| :ref:`🔗<class_Node_method_is_physics_interpolated>`

Returns ``true`` if physics interpolation is enabled for this node (see :ref:`physics_interpolation_mode<class_Node_property_physics_interpolation_mode>`).

\ **Note:** Interpolation will only be active if both the flag is set **and** physics interpolation is enabled within the :ref:`SceneTree<class_SceneTree>`. This can be tested using :ref:`is_physics_interpolated_and_enabled()<class_Node_method_is_physics_interpolated_and_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_physics_interpolated_and_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_physics_interpolated_and_enabled**\ (\ ) |const| :ref:`🔗<class_Node_method_is_physics_interpolated_and_enabled>`

Returns ``true`` if physics interpolation is enabled (see :ref:`physics_interpolation_mode<class_Node_property_physics_interpolation_mode>`) **and** enabled in the :ref:`SceneTree<class_SceneTree>`.

This is a convenience version of :ref:`is_physics_interpolated()<class_Node_method_is_physics_interpolated>` that also checks whether physics interpolation is enabled globally.

See :ref:`SceneTree.physics_interpolation<class_SceneTree_property_physics_interpolation>` and :ref:`ProjectSettings.physics/common/physics_interpolation<class_ProjectSettings_property_physics/common/physics_interpolation>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_physics_processing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_physics_processing**\ (\ ) |const| :ref:`🔗<class_Node_method_is_physics_processing>`

Devuelve ``true`` si el procesamiento de físicas está activado (véase :ref:`set_physics_process()<class_Node_method_set_physics_process>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_physics_processing_internal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_physics_processing_internal**\ (\ ) |const| :ref:`🔗<class_Node_method_is_physics_processing_internal>`

Devuelve ``true`` si el procesamiento de físicas interno está activado (véase :ref:`set_physics_process_internal()<class_Node_method_set_physics_process_internal>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing>`

Devuelve ``true`` si el procesamiento está activado (véase :ref:`set_process()<class_Node_method_set_process>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_input**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_input>`

Devuelve ``true`` si el nodo está procesando la entrada (ver :ref:`set_process_input()<class_Node_method_set_process_input>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_internal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_internal**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_internal>`

Devuelve ``true`` si el procesamiento interno está activado (véase :ref:`set_process_internal()<class_Node_method_set_process_internal>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_shortcut_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_shortcut_input**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_shortcut_input>`

Returns ``true`` if the node is processing shortcuts (see :ref:`set_process_shortcut_input()<class_Node_method_set_process_shortcut_input>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_unhandled_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_unhandled_input**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_unhandled_input>`

Devuelve ``true`` si el nodo está procesando una entrada no manejada (véase :ref:`set_process_unhandled_input()<class_Node_method_set_process_unhandled_input>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_unhandled_key_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_unhandled_key_input**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_unhandled_key_input>`

Devuelve ``true`` si el nodo está procesando una entrada de clave no manejada (véase :ref:`set_process_unhandled_key_input()<class_Node_method_set_process_unhandled_key_input>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_move_child:

.. rst-class:: classref-method

|void| **move_child**\ (\ child_node\: :ref:`Node<class_Node>`, to_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Node_method_move_child>`

Moves ``child_node`` to the given index. A node's index is the order among its siblings. If ``to_index`` is negative, the index is counted from the end of the list. See also :ref:`get_child()<class_Node_method_get_child>` and :ref:`get_index()<class_Node_method_get_index>`.

\ **Note:** The processing order of several engine callbacks (:ref:`_ready()<class_Node_private_method__ready>`, :ref:`_process()<class_Node_private_method__process>`, etc.) and notifications sent through :ref:`propagate_notification()<class_Node_method_propagate_notification>` is affected by tree order. :ref:`CanvasItem<class_CanvasItem>` nodes are also rendered in tree order. See also :ref:`process_priority<class_Node_property_process_priority>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_notify_deferred_thread_group:

.. rst-class:: classref-method

|void| **notify_deferred_thread_group**\ (\ what\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Node_method_notify_deferred_thread_group>`

Similar to :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>`, but for notifications.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_notify_thread_safe:

.. rst-class:: classref-method

|void| **notify_thread_safe**\ (\ what\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Node_method_notify_thread_safe>`

Similar to :ref:`call_thread_safe()<class_Node_method_call_thread_safe>`, but for notifications.

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

Imprime el nodo y sus hijos en la consola, recursivamente. El nodo no tiene que estar dentro del árbol. Este método imprime :ref:`NodePath<class_NodePath>`\ s relativas a este nodo, y es útil para copiar/pegar en :ref:`get_node()<class_Node_method_get_node>`. Mira también :ref:`print_tree_pretty()<class_Node_method_print_tree_pretty>`.

Puede imprimir, por ejemplo:

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

Imprime este nodo y todos sus hijos en la consola, uno por uno. No hace falta que el nodo esté conectado a la escena principal para usarlo. Es muy parecido a :ref:`print_tree()<class_Node_method_print_tree>`, pero el dibujo que genera se ve igual a la lista de nodos que ves en el editor. Es ideal para revisar cómo están organizados los grupos de nodos grandes.

Por ejemplo, se vería así:

.. code:: text

    ┖╴ElJuego
    ┠╴Menu
    ┃  ┠╴Etiqueta
    ┃  ┖╴Camara2D
    ┖╴PantallaDeInicio
    ┖╴Camara2D

.. rst-class:: classref-item-separator

----

.. _class_Node_method_propagate_call:

.. rst-class:: classref-method

|void| **propagate_call**\ (\ method\: :ref:`StringName<class_StringName>`, args\: :ref:`Array<class_Array>` = [], parent_first\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node_method_propagate_call>`

Calls the given ``method`` name, passing ``args`` as arguments, on this node and all of its children, recursively.

If ``parent_first`` is ``true``, the method is called on this node first, then on all of its children. If ``false``, the children's methods are called first.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_propagate_notification:

.. rst-class:: classref-method

|void| **propagate_notification**\ (\ what\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Node_method_propagate_notification>`

Calls :ref:`Object.notification()<class_Object_method_notification>` with ``what`` on this node and all of its children, recursively.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_queue_accessibility_update:

.. rst-class:: classref-method

|void| **queue_accessibility_update**\ (\ ) :ref:`🔗<class_Node_method_queue_accessibility_update>`

Queues an accessibility information update for this node.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_queue_free:

.. rst-class:: classref-method

|void| **queue_free**\ (\ ) :ref:`🔗<class_Node_method_queue_free>`

Queues this node to be deleted at the end of the current frame. When deleted, all of its children are deleted as well, and all references to the node and its children become invalid.

Unlike with :ref:`Object.free()<class_Object_method_free>`, the node is not deleted instantly, and it can still be accessed before deletion. It is also safe to call :ref:`queue_free()<class_Node_method_queue_free>` multiple times. Use :ref:`Object.is_queued_for_deletion()<class_Object_method_is_queued_for_deletion>` to check if the node will be deleted at the end of the frame.

\ **Note:** The node will only be freed after all other deferred calls are finished. Using this method is not always the same as calling :ref:`Object.free()<class_Object_method_free>` through :ref:`Object.call_deferred()<class_Object_method_call_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_remove_child:

.. rst-class:: classref-method

|void| **remove_child**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_method_remove_child>`

Removes a child ``node``. The ``node``, along with its children, are **not** deleted. To delete a node, see :ref:`queue_free()<class_Node_method_queue_free>`.

\ **Note:** When this node is inside the tree, this method sets the :ref:`owner<class_Node_property_owner>` of the removed ``node`` (or its descendants) to ``null``, if their :ref:`owner<class_Node_property_owner>` is no longer an ancestor (see :ref:`is_ancestor_of()<class_Node_method_is_ancestor_of>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_remove_from_group:

.. rst-class:: classref-method

|void| **remove_from_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Node_method_remove_from_group>`

Removes the node from the given ``group``. Does nothing if the node is not in the ``group``. See also notes in the description, and the :ref:`SceneTree<class_SceneTree>`'s group methods.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_reparent:

.. rst-class:: classref-method

|void| **reparent**\ (\ new_parent\: :ref:`Node<class_Node>`, keep_global_transform\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Node_method_reparent>`

Changes the parent of this **Node** to the ``new_parent``. The node needs to already have a parent. The node's :ref:`owner<class_Node_property_owner>` is preserved if its owner is still reachable from the new location (i.e., the node is still a descendant of the new parent after the operation).

If ``keep_global_transform`` is ``true``, the node's global transform will be preserved if supported. :ref:`Node2D<class_Node2D>`, :ref:`Node3D<class_Node3D>` and :ref:`Control<class_Control>` support this argument (but :ref:`Control<class_Control>` keeps only position).

\ **Warning:** If :ref:`ProjectSettings.physics/common/physics_interpolation<class_ProjectSettings_property_physics/common/physics_interpolation>` is enabled and reparenting causes a large change in global transform, the object may appear to move from its old position to its new one over the next physics tick. To avoid this, call :ref:`reset_physics_interpolation()<class_Node_method_reset_physics_interpolation>` after reparenting.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_replace_by:

.. rst-class:: classref-method

|void| **replace_by**\ (\ node\: :ref:`Node<class_Node>`, keep_groups\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node_method_replace_by>`

Replaces this node by the given ``node``. All children of this node are moved to ``node``.

If ``keep_groups`` is ``true``, the ``node`` is added to the same groups that the replaced node is in (see :ref:`add_to_group()<class_Node_method_add_to_group>`).

\ **Warning:** The replaced node is removed from the tree, but it is **not** deleted. To prevent memory leaks, store a reference to the node in a variable, or use :ref:`Object.free()<class_Object_method_free>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_request_ready:

.. rst-class:: classref-method

|void| **request_ready**\ (\ ) :ref:`🔗<class_Node_method_request_ready>`

Requests :ref:`_ready()<class_Node_private_method__ready>` to be called again the next time the node enters the tree. Does **not** immediately call :ref:`_ready()<class_Node_private_method__ready>`.

\ **Note:** This method only affects the current node. If the node's children also need to request ready, this method needs to be called for each one of them. When the node and its children enter the tree again, the order of :ref:`_ready()<class_Node_private_method__ready>` callbacks will be the same as normal.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_reset_physics_interpolation:

.. rst-class:: classref-method

|void| **reset_physics_interpolation**\ (\ ) :ref:`🔗<class_Node_method_reset_physics_interpolation>`

When physics interpolation is active, moving a node to a radically different transform (such as placement within a level) can result in a visible glitch as the object is rendered moving from the old to new position over the physics tick.

That glitch can be prevented by calling this method, which temporarily disables interpolation until the physics tick is complete.

The notification :ref:`NOTIFICATION_RESET_PHYSICS_INTERPOLATION<class_Node_constant_NOTIFICATION_RESET_PHYSICS_INTERPOLATION>` will be received by the node and all children recursively.

\ **Note:** This function should be called **after** moving the node, rather than before.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_rpc:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rpc**\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Node_method_rpc>`

Envía una solicitud de llamada a procedimiento remoto (RPC) para el ``method`` dado a los pares (peers) en la red (y localmente), enviando argumentos adicionales al método llamado por la RPC. La solicitud de llamada solo será recibida por nodos con el mismo :ref:`NodePath<class_NodePath>`, incluyendo exactamente el mismo :ref:`name<class_Node_property_name>`. El comportamiento depende de la configuración de RPC para el ``method`` dado (ver :ref:`rpc_config()<class_Node_method_rpc_config>` y :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>`). Por defecto, los métodos no están expuestos a las RPCs.

Puede devolver :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si la llamada es exitosa, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` si los argumentos pasados en el ``method`` no coinciden, :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` si no se puede obtener el :ref:`multiplayer<class_Node_property_multiplayer>` del nodo (como cuando el nodo no está dentro del árbol), o :ref:`@GlobalScope.ERR_CONNECTION_ERROR<class_@GlobalScope_constant_ERR_CONNECTION_ERROR>` si la conexión de :ref:`multiplayer<class_Node_property_multiplayer>` no está disponible.

\ **Nota:** Solo puedes usar RPCs de forma segura en los clientes después de haber recibido la señal :ref:`MultiplayerAPI.connected_to_server<class_MultiplayerAPI_signal_connected_to_server>` de la :ref:`MultiplayerAPI<class_MultiplayerAPI>`. También es necesario realizar un seguimiento del estado de la conexión, ya sea mediante las señales de la :ref:`MultiplayerAPI<class_MultiplayerAPI>` como :ref:`MultiplayerAPI.server_disconnected<class_MultiplayerAPI_signal_server_disconnected>` o comprobando (``get_multiplayer().peer.get_connection_status() == CONNECTION_CONNECTED``).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_rpc_config:

.. rst-class:: classref-method

|void| **rpc_config**\ (\ method\: :ref:`StringName<class_StringName>`, config\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Node_method_rpc_config>`

Changes the RPC configuration for the given ``method``. ``config`` should either be ``null`` to disable the feature (as by default), or a :ref:`Dictionary<class_Dictionary>` containing the following entries:

- ``rpc_mode``: see :ref:`RPCMode<enum_MultiplayerAPI_RPCMode>`;

- ``transfer_mode``: see :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`;

- ``call_local``: if ``true``, the method will also be called locally;

- ``channel``: an :ref:`int<class_int>` representing the channel to send the RPC on.

\ **Note:** In GDScript, this method corresponds to the :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>` annotation, with various parameters passed (``@rpc(any)``, ``@rpc(authority)``...). See also the :doc:`high-level multiplayer <../tutorials/networking/high_level_multiplayer>` tutorial.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_rpc_id:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rpc_id**\ (\ peer_id\: :ref:`int<class_int>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Node_method_rpc_id>`

Sends a :ref:`rpc()<class_Node_method_rpc>` to a specific peer identified by ``peer_id`` (see :ref:`MultiplayerPeer.set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`).

May return :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` if the call is successful, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` if the arguments passed in the ``method`` do not match, :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` if the node's :ref:`multiplayer<class_Node_property_multiplayer>` cannot be fetched (such as when the node is not inside the tree), :ref:`@GlobalScope.ERR_CONNECTION_ERROR<class_@GlobalScope_constant_ERR_CONNECTION_ERROR>` if :ref:`multiplayer<class_Node_property_multiplayer>`'s connection is not available.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_deferred_thread_group:

.. rst-class:: classref-method

|void| **set_deferred_thread_group**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Node_method_set_deferred_thread_group>`

Similar to :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>`, but for setting properties.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_display_folded:

.. rst-class:: classref-method

|void| **set_display_folded**\ (\ fold\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_display_folded>`

If set to ``true``, the node appears folded in the Scene dock. As a result, all of its children are hidden. This method is intended to be used in editor plugins and tools, but it also works in release builds. See also :ref:`is_displayed_folded()<class_Node_method_is_displayed_folded>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_editable_instance:

.. rst-class:: classref-method

|void| **set_editable_instance**\ (\ node\: :ref:`Node<class_Node>`, is_editable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_editable_instance>`

Set to ``true`` to allow all nodes owned by ``node`` to be available, and editable, in the Scene dock, even if their :ref:`owner<class_Node_property_owner>` is not the scene root. This method is intended to be used in editor plugins and tools, but it also works in release builds. See also :ref:`is_editable_instance()<class_Node_method_is_editable_instance>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_multiplayer_authority:

.. rst-class:: classref-method

|void| **set_multiplayer_authority**\ (\ id\: :ref:`int<class_int>`, recursive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Node_method_set_multiplayer_authority>`

Sets the node's multiplayer authority to the peer with the given peer ``id``. The multiplayer authority is the peer that has authority over the node on the network. Defaults to peer ID 1 (the server). Useful in conjunction with :ref:`rpc_config()<class_Node_method_rpc_config>` and the :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

If ``recursive`` is ``true``, the given peer is recursively set as the authority for all children of this node.

\ **Warning:** This does **not** automatically replicate the new authority to other peers. It is the developer's responsibility to do so. You may replicate the new authority's information using :ref:`MultiplayerSpawner.spawn_function<class_MultiplayerSpawner_property_spawn_function>`, an RPC, or a :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`. Furthermore, the parent's authority does **not** propagate to newly added children.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_physics_process:

.. rst-class:: classref-method

|void| **set_physics_process**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_physics_process>`

If set to ``true``, enables physics (fixed framerate) processing. When a node is being processed, it will receive a :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>` at a fixed (usually 60 FPS, see :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` to change) interval (and the :ref:`_physics_process()<class_Node_private_method__physics_process>` callback will be called if it exists).

\ **Note:** If :ref:`_physics_process()<class_Node_private_method__physics_process>` is overridden, this will be automatically enabled before :ref:`_ready()<class_Node_private_method__ready>` is called.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_physics_process_internal:

.. rst-class:: classref-method

|void| **set_physics_process_internal**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_physics_process_internal>`

If set to ``true``, enables internal physics for this node. Internal physics processing happens in isolation from the normal :ref:`_physics_process()<class_Node_private_method__physics_process>` calls and is used by some nodes internally to guarantee proper functioning even if the node is paused or physics processing is disabled for scripting (:ref:`set_physics_process()<class_Node_method_set_physics_process>`).

\ **Warning:** Built-in nodes rely on internal processing for their internal logic. Disabling it is unsafe and may lead to unexpected behavior. Use this method if you know what you are doing.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process:

.. rst-class:: classref-method

|void| **set_process**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process>`

If set to ``true``, enables processing. When a node is being processed, it will receive a :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>` on every drawn frame (and the :ref:`_process()<class_Node_private_method__process>` callback will be called if it exists).

\ **Note:** If :ref:`_process()<class_Node_private_method__process>` is overridden, this will be automatically enabled before :ref:`_ready()<class_Node_private_method__ready>` is called.

\ **Note:** This method only affects the :ref:`_process()<class_Node_private_method__process>` callback, i.e. it has no effect on other callbacks like :ref:`_physics_process()<class_Node_private_method__physics_process>`. If you want to disable all processing for the node, set :ref:`process_mode<class_Node_property_process_mode>` to :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_input:

.. rst-class:: classref-method

|void| **set_process_input**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_input>`

If set to ``true``, enables input processing.

\ **Note:** If :ref:`_input()<class_Node_private_method__input>` is overridden, this will be automatically enabled before :ref:`_ready()<class_Node_private_method__ready>` is called. Input processing is also already enabled for GUI controls, such as :ref:`Button<class_Button>` and :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_internal:

.. rst-class:: classref-method

|void| **set_process_internal**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_internal>`

If set to ``true``, enables internal processing for this node. Internal processing happens in isolation from the normal :ref:`_process()<class_Node_private_method__process>` calls and is used by some nodes internally to guarantee proper functioning even if the node is paused or processing is disabled for scripting (:ref:`set_process()<class_Node_method_set_process>`).

\ **Warning:** Built-in nodes rely on internal processing for their internal logic. Disabling it is unsafe and may lead to unexpected behavior. Use this method if you know what you are doing.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_shortcut_input:

.. rst-class:: classref-method

|void| **set_process_shortcut_input**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_shortcut_input>`

If set to ``true``, enables shortcut processing for this node.

\ **Note:** If :ref:`_shortcut_input()<class_Node_private_method__shortcut_input>` is overridden, this will be automatically enabled before :ref:`_ready()<class_Node_private_method__ready>` is called.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_unhandled_input:

.. rst-class:: classref-method

|void| **set_process_unhandled_input**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_unhandled_input>`

Si se establece en ``true``, habilita el procesamiento de entrada no manejada. Esto permite que el nodo reciba todas las entradas que no hayan sido manejadas previamente (usualmente por un :ref:`Control<class_Control>`).

\ **Nota:** Si se sobrescribe :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>`, esto se habilitará automáticamente antes de que se llame a :ref:`_ready()<class_Node_private_method__ready>`. El procesamiento de entrada no manejada también está ya habilitado para los controles de GUI, tales como :ref:`Button<class_Button>` y :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_unhandled_key_input:

.. rst-class:: classref-method

|void| **set_process_unhandled_key_input**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_unhandled_key_input>`

If set to ``true``, enables unhandled key input processing.

\ **Note:** If :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>` is overridden, this will be automatically enabled before :ref:`_ready()<class_Node_private_method__ready>` is called.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_scene_instance_load_placeholder:

.. rst-class:: classref-method

|void| **set_scene_instance_load_placeholder**\ (\ load_placeholder\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_scene_instance_load_placeholder>`

If set to ``true``, the node becomes an :ref:`InstancePlaceholder<class_InstancePlaceholder>` when packed and instantiated from a :ref:`PackedScene<class_PackedScene>`. See also :ref:`get_scene_instance_load_placeholder()<class_Node_method_get_scene_instance_load_placeholder>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_thread_safe:

.. rst-class:: classref-method

|void| **set_thread_safe**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Node_method_set_thread_safe>`

Similar to :ref:`call_thread_safe()<class_Node_method_call_thread_safe>`, but for setting properties.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_translation_domain_inherited:

.. rst-class:: classref-method

|void| **set_translation_domain_inherited**\ (\ ) :ref:`🔗<class_Node_method_set_translation_domain_inherited>`

Makes this node inherit the translation domain from its parent node. If this node has no parent, the main translation domain will be used.

This is the default behavior for all nodes. Calling :ref:`Object.set_translation_domain()<class_Object_method_set_translation_domain>` disables this behavior.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_update_configuration_warnings:

.. rst-class:: classref-method

|void| **update_configuration_warnings**\ (\ ) :ref:`🔗<class_Node_method_update_configuration_warnings>`

Refreshes the warnings displayed for this node in the Scene dock. Use :ref:`_get_configuration_warnings()<class_Node_private_method__get_configuration_warnings>` to customize the warning messages to display.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
