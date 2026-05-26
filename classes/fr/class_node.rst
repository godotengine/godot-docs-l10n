:github_url: hide

.. _class_Node:

Node
====

**Hérite de :** :ref:`Object<class_Object>`

**Hérité par :** :ref:`AnimationMixer<class_AnimationMixer>`, :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, :ref:`CanvasItem<class_CanvasItem>`, :ref:`CanvasLayer<class_CanvasLayer>`, :ref:`EditorFileSystem<class_EditorFileSystem>`, :ref:`EditorPlugin<class_EditorPlugin>`, :ref:`EditorResourcePreview<class_EditorResourcePreview>`, :ref:`HTTPRequest<class_HTTPRequest>`, :ref:`InstancePlaceholder<class_InstancePlaceholder>`, :ref:`MissingNode<class_MissingNode>`, :ref:`MultiplayerSpawner<class_MultiplayerSpawner>`, :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`, :ref:`NavigationAgent2D<class_NavigationAgent2D>`, :ref:`NavigationAgent3D<class_NavigationAgent3D>`, :ref:`Node3D<class_Node3D>`, :ref:`ResourcePreloader<class_ResourcePreloader>`, :ref:`ShaderGlobalsOverride<class_ShaderGlobalsOverride>`, :ref:`StatusIndicator<class_StatusIndicator>`, :ref:`Timer<class_Timer>`, :ref:`Viewport<class_Viewport>`, :ref:`WorldEnvironment<class_WorldEnvironment>`

Classe de base pour les objets de scène.

.. rst-class:: classref-introduction-group

Description
-----------

Les nœuds sont les blocs de construction de Godot. Ils peuvent être assignés comme enfant d'un autre nœud, ce qui résulte en un arrangement en arbre. Un nœud donné peut contenir n'importe quel nombre de nœuds enfants mais tous ces enfants doivent avoir des noms différents.

Une arborescence de nœuds est appelé une *scène*. Les scènes peuvent être sauvegardées sur le disque et ensuite instanciées dans d'autres scènes. Cela permet une très grande flexibilité dans l'architecture et le modèle de données des projets Godot.

\ **Arbre de scène :** Le :ref:`SceneTree<class_SceneTree>` contient l'arborescence des nœuds. Lorsqu'un nœud est ajouté à l'arborescence de scène, il reçoit la notification :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>` et sa méthode :ref:`_enter_tree()<class_Node_private_method__enter_tree>` est appelée. Les nœuds enfants sont toujours ajoutés *après* leur nœud parent, c'est-à-dire la méthode :ref:`_enter_tree()<class_Node_private_method__enter_tree>` d'un nœud parent sera appelée avant celle de son enfant.

Une fois que tous les nœuds ont été ajoutés dans l'arborescence de la scène, ils reçoivent la notification :ref:`NOTIFICATION_READY<class_Node_constant_NOTIFICATION_READY>` et leurs méthodes respectives :ref:`_ready()<class_Node_private_method__ready>` sont appelées. Pour les groupes de nœuds, la méthode :ref:`_ready()<class_Node_private_method__ready>` est appelée en un ordre inversé, en commençant par les enfants et en allant jusqu'aux nœuds parent.

Cela signifie qu'en ajoutant un nœud à l'arborescence de la scène, l'ordre suivant sera utilisé pour les callbacks : :ref:`_enter_tree()<class_Node_private_method__enter_tree>` du parent, :ref:`_enter_tree()<class_Node_private_method__enter_tree>` des enfants, :ref:`_ready()<class_Node_private_method__ready>` des enfants et enfin :ref:`_ready()<class_Node_private_method__ready>` du parent (récursivement pour l'arborescence complète de la scène).

\ **Traitement :** Les nœuds peuvent redéfinir l'état "traitement", de sorte qu'ils reçoivent un callback sur chaque trame leur demandant de traiter (faire quelque chose). Le traitement normal (callback :ref:`_process()<class_Node_private_method__process>`, associé à :ref:`set_process()<class_Node_method_set_process>`) se produit le plus rapidement possible et dépend du taux de rafraîchissement, de sorte que le temps de traitement *delta* (en secondes) est passé comme argument. Le traitement de la physique (callback :ref:`_physics_process()<class_Node_private_method__physics_process>`, activé avec :ref:`set_physics_process()<class_Node_method_set_physics_process>`) se produit un nombre fixe de fois par seconde (60 par défaut) et est utile pour du code lié au moteur physique.

Les nœuds peuvent également traiter les événements d'entrée. Lorsque présente, la fonction :ref:`_input()<class_Node_private_method__input>` sera appelée pour chaque entrée que le programme reçoit. Dans de nombreux cas, cela peut être overkill (sauf pour des projets simples), et la fonction :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>` pourrait être préférée. Elle est appelée lorsque l'événement d'entrée n'a pas été géré par quelqu'un d'autre (généralement les nœuds GUI :ref:`Control<class_Control>`), en veillant à ce que le nœud ne reçoive que les événements qui lui étaient destinés.

Pour suivre la hiérarchie de la scène (surtout lorsque des scènes s'instancient dans d'autres scènes), un « propriétaire » peut être défini pour le nœud avec la propriété :ref:`owner<class_Node_property_owner>`. Cela permet de savoir qui a instancié quoi. Ceci est surtout utile lors de l'écriture des éditeurs et des outils, cependant.

Enfin, lorsqu'un nœud est libéré avec :ref:`Object.free()<class_Object_method_free>` ou :ref:`queue_free()<class_Node_method_queue_free>`, il libérera également tous ses enfants.

\ **Groupes :** Les nœuds peuvent être ajoutés à autant de groupes que vous voulez pour être faciles à gérer, vous pouvez créer des groupes comme "ennemis" ou "collectables" par exemple, selon votre jeu. Voir :ref:`add_to_group()<class_Node_method_add_to_group>`, :ref:`is_in_group()<class_Node_method_is_in_group>` et :ref:`remove_from_group()<class_Node_method_remove_from_group>`. Vous pouvez alors récupérer tous les nœuds de ces groupes, itérer dessus et même appeler les méthodes sur les groupes via les méthodes sur :ref:`SceneTree<class_SceneTree>`.

\ **Réseau avec des nœuds :** Après la connexion à un serveur (ou la création d'un serveur, voir :ref:`ENetMultiplayerPeer<class_ENetMultiplayerPeer>`), il est possible d'utiliser le système RPC intégré (Remote Procedure Call, appel de procédure à distance) pour communiquer sur le réseau. En appelant :ref:`rpc()<class_Node_method_rpc>` avec un nom de méthode, elle sera appelée localement et dans tous les pairs connectés (pairs = clients et le serveur qui accepte les connexions). Pour identifier quel nœud reçoit l'appel RPC, Godot utilisera son :ref:`NodePath<class_NodePath>` (assurez vous que les noms de nœud sont les mêmes pour tous les pairs). De plus, jetez un coup d'œil au tutoriel de réseau de haut niveau et aux démos correspondantes.

\ **Note :** La propriété ``script`` fait partie de la classe :ref:`Object<class_Object>`, et non **Node**. Elle n'est pas exposée comme la plupart des propriétés mais a un setter et getter (voir :ref:`Object.set_script()<class_Object_method_set_script>` et :ref:`Object.get_script()<class_Object_method_get_script>`).

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Nœuds et scènes <../getting_started/step_by_step/nodes_and_scenes>`

- `Toutes les démos <https://github.com/godotengine/godot-demo-projects/>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Méthodes
----------------

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

Signaux
--------------

.. _class_Node_signal_child_entered_tree:

.. rst-class:: classref-signal

**child_entered_tree**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_signal_child_entered_tree>`

Émis lorsque le nœud enfant ``node`` entre dans le :ref:`SceneTree<class_SceneTree>`, parce qu'il est entré dans l'arborescence, parce que ce nœud est entré dans l'arborescence (voir :ref:`tree_entered<class_Node_signal_tree_entered>`), ou que :ref:`add_child()<class_Node_method_add_child>` a été appelée.

Ce signal est émis *après* la notification :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>` et le signal :ref:`tree_entered<class_Node_signal_tree_entered>` du nœud enfant.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_child_exiting_tree:

.. rst-class:: classref-signal

**child_exiting_tree**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_signal_child_exiting_tree>`

Émis lorsque le nœud enfant ``node`` va sortir du :ref:`SceneTree<class_SceneTree>`, parce que ce nœud va sortir de l'arborescence (voir :ref:`tree_exiting<class_Node_signal_tree_exiting>`) ou que ``node`` est supprimé ou libéré.

Lorsque ce signal est reçu, ``node`` est toujours accessible à l'intérieur de l'arborescence. Ce signal est émis *après* la notification :ref:`NOTIFICATION_EXIT_TREE<class_Node_constant_NOTIFICATION_EXIT_TREE>` et le signal :ref:`tree_exiting<class_Node_signal_tree_exiting>` du nœud enfant.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_child_order_changed:

.. rst-class:: classref-signal

**child_order_changed**\ (\ ) :ref:`🔗<class_Node_signal_child_order_changed>`

Émis lorsque la liste des enfants est modifiée. Cela se produit lorsque des nœuds enfants sont ajoutés, déplacés ou retirés.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_editor_description_changed:

.. rst-class:: classref-signal

**editor_description_changed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_signal_editor_description_changed>`

Émis quand le champ de description du nœud dans l'éditeur a changé.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_editor_state_changed:

.. rst-class:: classref-signal

**editor_state_changed**\ (\ ) :ref:`🔗<class_Node_signal_editor_state_changed>`

Émis lorsqu'un attribut du nœud qui est pertinent pour l'éditeur est modifié. Seulement émis dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_ready:

.. rst-class:: classref-signal

**ready**\ (\ ) :ref:`🔗<class_Node_signal_ready>`

Émis lorsque le nœud est considéré prêt, après que :ref:`_ready()<class_Node_private_method__ready>` soit appelée.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_renamed:

.. rst-class:: classref-signal

**renamed**\ (\ ) :ref:`🔗<class_Node_signal_renamed>`

Émis lorsque le nom :ref:`name<class_Node_property_name>` du nœud est changé, si le nœud est à l'intérieur de l'arborescence.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_replacing_by:

.. rst-class:: classref-signal

**replacing_by**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_signal_replacing_by>`

Émis lorsque ce nœud est remplacé par le nœud ``node``, voir :ref:`replace_by()<class_Node_method_replace_by>`.

Ce signal est émis *après* que ``node`` a été ajouté en tant qu'enfant du nœud parent d'origine, mais *avant* tous les nœuds enfants originaux ont été re-parentés avec ``node``.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_tree_entered:

.. rst-class:: classref-signal

**tree_entered**\ (\ ) :ref:`🔗<class_Node_signal_tree_entered>`

Émis quand le nœud entre dans l'arborescence.

Ce signal est émis *après* la notification correspondante :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_tree_exited:

.. rst-class:: classref-signal

**tree_exited**\ (\ ) :ref:`🔗<class_Node_signal_tree_exited>`

Émis après que le nœud sort de l'arborescence et n'est plus actif.

Ce signal est émis *après* la notification :ref:`NOTIFICATION_EXIT_TREE<class_Node_constant_NOTIFICATION_EXIT_TREE>` correspondante.

.. rst-class:: classref-item-separator

----

.. _class_Node_signal_tree_exiting:

.. rst-class:: classref-signal

**tree_exiting**\ (\ ) :ref:`🔗<class_Node_signal_tree_exiting>`

Émis quand le nœud est sur le point de sortir de l’arborescence. Le nœud est toujours valide. Ainsi, c'est le bon endroit pour la de-initialisation (ou un "destructeur", si vous préférez).

Ce signal est émis *après* la méthode :ref:`_exit_tree()<class_Node_private_method__exit_tree>` du nœud, et *avant* la notification liée :ref:`NOTIFICATION_EXIT_TREE<class_Node_constant_NOTIFICATION_EXIT_TREE>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Node_ProcessMode:

.. rst-class:: classref-enumeration

enum **ProcessMode**: :ref:`🔗<enum_Node_ProcessMode>`

.. _class_Node_constant_PROCESS_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessMode<enum_Node_ProcessMode>` **PROCESS_MODE_INHERIT** = ``0``

Hérite le :ref:`process_mode<class_Node_property_process_mode>` du parent du nœud. Il s'agit de la valeur par défaut pour tout nœud nouvellement créé.

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

Process this node based on the thread group mode of the first parent (or grandparent) node that has a thread group mode that is not inherit. See :ref:`process_thread_group<class_Node_property_process_thread_group>` for more information.

.. _class_Node_constant_PROCESS_THREAD_GROUP_MAIN_THREAD:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **PROCESS_THREAD_GROUP_MAIN_THREAD** = ``1``

Process this node (and child nodes set to inherit) on the main thread. See :ref:`process_thread_group<class_Node_property_process_thread_group>` for more information.

.. _class_Node_constant_PROCESS_THREAD_GROUP_SUB_THREAD:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **PROCESS_THREAD_GROUP_SUB_THREAD** = ``2``

Process this node (and child nodes set to inherit) on a sub-thread. See :ref:`process_thread_group<class_Node_property_process_thread_group>` for more information.

.. rst-class:: classref-item-separator

----

.. _enum_Node_ProcessThreadMessages:

.. rst-class:: classref-enumeration

flags **ProcessThreadMessages**: :ref:`🔗<enum_Node_ProcessThreadMessages>`

.. _class_Node_constant_FLAG_PROCESS_THREAD_MESSAGES:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>` **FLAG_PROCESS_THREAD_MESSAGES** = ``1``

Allows this node to process threaded messages created with :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` right before :ref:`_process()<class_Node_private_method__process>` is called.

.. _class_Node_constant_FLAG_PROCESS_THREAD_MESSAGES_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>` **FLAG_PROCESS_THREAD_MESSAGES_PHYSICS** = ``2``

Allows this node to process threaded messages created with :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` right before :ref:`_physics_process()<class_Node_private_method__physics_process>` is called.

.. _class_Node_constant_FLAG_PROCESS_THREAD_MESSAGES_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>` **FLAG_PROCESS_THREAD_MESSAGES_ALL** = ``3``

Allows this node to process threaded messages created with :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` right before either :ref:`_process()<class_Node_private_method__process>` or :ref:`_physics_process()<class_Node_private_method__physics_process>` are called.

.. rst-class:: classref-item-separator

----

.. _enum_Node_PhysicsInterpolationMode:

.. rst-class:: classref-enumeration

enum **PhysicsInterpolationMode**: :ref:`🔗<enum_Node_PhysicsInterpolationMode>`

.. _class_Node_constant_PHYSICS_INTERPOLATION_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` **PHYSICS_INTERPOLATION_MODE_INHERIT** = ``0``

Hérite :ref:`physics_interpolation_mode<class_Node_property_physics_interpolation_mode>` du parent du nœud. Il s'agit de la valeur par défaut pour tout nœud nouvellement créé.

.. _class_Node_constant_PHYSICS_INTERPOLATION_MODE_ON:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` **PHYSICS_INTERPOLATION_MODE_ON** = ``1``

Active l'interpolation de la physique pour ce nœud et pour les enfants définis à :ref:`PHYSICS_INTERPOLATION_MODE_INHERIT<class_Node_constant_PHYSICS_INTERPOLATION_MODE_INHERIT>`. Il s'agit de la valeur par défaut pour le nœud racine.

.. _class_Node_constant_PHYSICS_INTERPOLATION_MODE_OFF:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` **PHYSICS_INTERPOLATION_MODE_OFF** = ``2``

Désactive l'interpolation de la physique pour ce nœud et pour ses enfants définis à :ref:`PHYSICS_INTERPOLATION_MODE_INHERIT<class_Node_constant_PHYSICS_INTERPOLATION_MODE_INHERIT>`.

.. rst-class:: classref-item-separator

----

.. _enum_Node_DuplicateFlags:

.. rst-class:: classref-enumeration

enum **DuplicateFlags**: :ref:`🔗<enum_Node_DuplicateFlags>`

.. _class_Node_constant_DUPLICATE_SIGNALS:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_SIGNALS** = ``1``

Dupliquer les connexions de signal du nœud qui sont connectées avec le drapeau :ref:`Object.CONNECT_PERSIST<class_Object_constant_CONNECT_PERSIST>`.

.. _class_Node_constant_DUPLICATE_GROUPS:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_GROUPS** = ``2``

Dupliquer les groupes du nœud.

.. _class_Node_constant_DUPLICATE_SCRIPTS:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_SCRIPTS** = ``4``

Dupliquer le script du nœud (redéfinit également les scripts des enfants dupliqués, si combiné avec :ref:`DUPLICATE_USE_INSTANTIATION<class_Node_constant_DUPLICATE_USE_INSTANTIATION>`).

.. _class_Node_constant_DUPLICATE_USE_INSTANTIATION:

.. rst-class:: classref-enumeration-constant

:ref:`DuplicateFlags<enum_Node_DuplicateFlags>` **DUPLICATE_USE_INSTANTIATION** = ``8``

Dupliquer en utilisant :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`. Si le nœud vient d'une scène sauvegardée sur le disque, réutilise :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` comme base pour le nœud dupliqué et ses enfants.

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

Ce nœud ne sera pas interne.

.. _class_Node_constant_INTERNAL_MODE_FRONT:

.. rst-class:: classref-enumeration-constant

:ref:`InternalMode<enum_Node_InternalMode>` **INTERNAL_MODE_FRONT** = ``1``

Le nœud sera placé au début des enfants du parent, avant tout frère non interne.

.. _class_Node_constant_INTERNAL_MODE_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`InternalMode<enum_Node_InternalMode>` **INTERNAL_MODE_BACK** = ``2``

Le nœud sera placé à la fin des enfants du parent, après tout frère non interne.

.. rst-class:: classref-item-separator

----

.. _enum_Node_AutoTranslateMode:

.. rst-class:: classref-enumeration

enum **AutoTranslateMode**: :ref:`🔗<enum_Node_AutoTranslateMode>`

.. _class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **AUTO_TRANSLATE_MODE_INHERIT** = ``0``

Hérite :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>` du parent du nœud. Il s'agit de la valeur par défaut pour tout nœud nouvellement créé.

.. _class_Node_constant_AUTO_TRANSLATE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **AUTO_TRANSLATE_MODE_ALWAYS** = ``1``

Toujours traduire automatiquement. Il s'agit de l'inverse de :ref:`AUTO_TRANSLATE_MODE_DISABLED<class_Node_constant_AUTO_TRANSLATE_MODE_DISABLED>`, et la valeur par défaut pour le nœud racine.

.. _class_Node_constant_AUTO_TRANSLATE_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AutoTranslateMode<enum_Node_AutoTranslateMode>` **AUTO_TRANSLATE_MODE_DISABLED** = ``2``

Never automatically translate. This is the inverse of :ref:`AUTO_TRANSLATE_MODE_ALWAYS<class_Node_constant_AUTO_TRANSLATE_MODE_ALWAYS>`.

String parsing for translation template generation will be skipped for this node and children that are set to :ref:`AUTO_TRANSLATE_MODE_INHERIT<class_Node_constant_AUTO_TRANSLATE_MODE_INHERIT>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Node_constant_NOTIFICATION_ENTER_TREE:

.. rst-class:: classref-constant

**NOTIFICATION_ENTER_TREE** = ``10`` :ref:`🔗<class_Node_constant_NOTIFICATION_ENTER_TREE>`

Notification reçue lorsque le nœud entre dans un :ref:`SceneTree<class_SceneTree>`. Voir :ref:`_enter_tree()<class_Node_private_method__enter_tree>`.

Cette notification est reçue *avant* le signal :ref:`tree_entered<class_Node_signal_tree_entered>` correspondant.

.. _class_Node_constant_NOTIFICATION_EXIT_TREE:

.. rst-class:: classref-constant

**NOTIFICATION_EXIT_TREE** = ``11`` :ref:`🔗<class_Node_constant_NOTIFICATION_EXIT_TREE>`

La notification reçue quand le nœud va quitter le :ref:`SceneTree<class_SceneTree>`. Voir :ref:`_exit_tree()<class_Node_private_method__exit_tree>`.

Cette notification est émise *après* le :ref:`tree_exiting<class_Node_signal_tree_exiting>` correspondant.

Cette notification est envoyée en ordre inverse.

.. _class_Node_constant_NOTIFICATION_MOVED_IN_PARENT:

.. rst-class:: classref-constant

**NOTIFICATION_MOVED_IN_PARENT** = ``12`` :ref:`🔗<class_Node_constant_NOTIFICATION_MOVED_IN_PARENT>`

**Obsolète :** This notification is no longer sent by the engine. Use :ref:`NOTIFICATION_CHILD_ORDER_CHANGED<class_Node_constant_NOTIFICATION_CHILD_ORDER_CHANGED>` instead.



.. _class_Node_constant_NOTIFICATION_READY:

.. rst-class:: classref-constant

**NOTIFICATION_READY** = ``13`` :ref:`🔗<class_Node_constant_NOTIFICATION_READY>`

La notification reçue quand le nœud est prêt. Voir :ref:`_ready()<class_Node_private_method__ready>`.

.. _class_Node_constant_NOTIFICATION_PAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_PAUSED** = ``14`` :ref:`🔗<class_Node_constant_NOTIFICATION_PAUSED>`

Notification reçue lorsque le nœud est mis en pause. Voir :ref:`process_mode<class_Node_property_process_mode>`.

.. _class_Node_constant_NOTIFICATION_UNPAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_UNPAUSED** = ``15`` :ref:`🔗<class_Node_constant_NOTIFICATION_UNPAUSED>`

Notification reçue lorsque le nœud est sorti de la pause. Voir :ref:`process_mode<class_Node_property_process_mode>`.

.. _class_Node_constant_NOTIFICATION_PHYSICS_PROCESS:

.. rst-class:: classref-constant

**NOTIFICATION_PHYSICS_PROCESS** = ``16`` :ref:`🔗<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`

Notification reçue de l’arborescence à chaque trame de physique lorsque :ref:`is_physics_processing()<class_Node_method_is_physics_processing>` renvoie ``true``. Voir :ref:`_physics_process()<class_Node_private_method__physics_process>`.

.. _class_Node_constant_NOTIFICATION_PROCESS:

.. rst-class:: classref-constant

**NOTIFICATION_PROCESS** = ``17`` :ref:`🔗<class_Node_constant_NOTIFICATION_PROCESS>`

Notification reçue de l’arborescence à chaque trame rendue lorsque :ref:`is_processing()<class_Node_method_is_processing>` renvoie ``true``. Voir :ref:`_process()<class_Node_private_method__process>`.

.. _class_Node_constant_NOTIFICATION_PARENTED:

.. rst-class:: classref-constant

**NOTIFICATION_PARENTED** = ``18`` :ref:`🔗<class_Node_constant_NOTIFICATION_PARENTED>`

Notification reçue lorsque le nœud est défini comme un enfant d'un autre nœud (voir :ref:`add_child()<class_Node_method_add_child>` et :ref:`add_sibling()<class_Node_method_add_sibling>`).

\ **Note :** Cela ne signifie *pas* que le nœud est entré dans le :ref:`SceneTree<class_SceneTree>`.

.. _class_Node_constant_NOTIFICATION_UNPARENTED:

.. rst-class:: classref-constant

**NOTIFICATION_UNPARENTED** = ``19`` :ref:`🔗<class_Node_constant_NOTIFICATION_UNPARENTED>`

Notification reçue lorsque le nœud parent appelle :ref:`remove_child()<class_Node_method_remove_child>` sur ce nœud.

\ **Note :** Cela ne signifie *pas* que le nœud est sorti du :ref:`SceneTree<class_SceneTree>`.

.. _class_Node_constant_NOTIFICATION_SCENE_INSTANTIATED:

.. rst-class:: classref-constant

**NOTIFICATION_SCENE_INSTANTIATED** = ``20`` :ref:`🔗<class_Node_constant_NOTIFICATION_SCENE_INSTANTIATED>`

Notification reçue *seulement* par le nœud racine de la scène nouvellement instanciée, lorsque :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` est complétée.

.. _class_Node_constant_NOTIFICATION_DRAG_BEGIN:

.. rst-class:: classref-constant

**NOTIFICATION_DRAG_BEGIN** = ``21`` :ref:`🔗<class_Node_constant_NOTIFICATION_DRAG_BEGIN>`

Notification received when a drag operation begins. All nodes receive this notification, not only the dragged one.

Can be triggered either by dragging a :ref:`Control<class_Control>` that provides drag data (see :ref:`Control._get_drag_data()<class_Control_private_method__get_drag_data>`) or using :ref:`Control.force_drag()<class_Control_method_force_drag>`.

Use :ref:`Viewport.gui_get_drag_data()<class_Viewport_method_gui_get_drag_data>` to get the dragged data.

.. _class_Node_constant_NOTIFICATION_DRAG_END:

.. rst-class:: classref-constant

**NOTIFICATION_DRAG_END** = ``22`` :ref:`🔗<class_Node_constant_NOTIFICATION_DRAG_END>`

La notification reçue à la fin d'une opération de déposé-glissé.

Utilisez :ref:`Viewport.gui_is_drag_successful()<class_Viewport_method_gui_is_drag_successful>` pour vérifier si l'opération a réussi.

.. _class_Node_constant_NOTIFICATION_PATH_RENAMED:

.. rst-class:: classref-constant

**NOTIFICATION_PATH_RENAMED** = ``23`` :ref:`🔗<class_Node_constant_NOTIFICATION_PATH_RENAMED>`

Notification reçue lorsque le nom :ref:`name<class_Node_property_name>` du nœud ou le :ref:`name<class_Node_property_name>` d'un de ses ancêtres est modifié. Cette notification n'est *pas* reçue lorsque le nœud est retiré du :ref:`SceneTree<class_SceneTree>`.

.. _class_Node_constant_NOTIFICATION_CHILD_ORDER_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_CHILD_ORDER_CHANGED** = ``24`` :ref:`🔗<class_Node_constant_NOTIFICATION_CHILD_ORDER_CHANGED>`

Notification reçue lorsque la liste des enfants est modifiée. Cela se produit lorsque des nœuds enfants sont ajoutés, déplacés ou retirés.

.. _class_Node_constant_NOTIFICATION_INTERNAL_PROCESS:

.. rst-class:: classref-constant

**NOTIFICATION_INTERNAL_PROCESS** = ``25`` :ref:`🔗<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`

Notification reçue de l'arborescence à chaque trame rendue lorsque :ref:`is_processing_internal()<class_Node_method_is_processing_internal>` renvoie ``true``.

.. _class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS:

.. rst-class:: classref-constant

**NOTIFICATION_INTERNAL_PHYSICS_PROCESS** = ``26`` :ref:`🔗<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`

Notification reçue de l'arborescence à chaque trame rendue lorsque :ref:`is_physics_processing_internal()<class_Node_method_is_physics_processing_internal>` renvoie ``true``.

.. _class_Node_constant_NOTIFICATION_POST_ENTER_TREE:

.. rst-class:: classref-constant

**NOTIFICATION_POST_ENTER_TREE** = ``27`` :ref:`🔗<class_Node_constant_NOTIFICATION_POST_ENTER_TREE>`

Notification reçue lorsque le nœud entre dans l'arborescence, juste avant que :ref:`NOTIFICATION_READY<class_Node_constant_NOTIFICATION_READY>` soit reçue. Contrairement à cette dernière, cette notification est envoyée à chaque fois que le nœud entre dans l'arborescence, et pas juste une seule fois.

.. _class_Node_constant_NOTIFICATION_DISABLED:

.. rst-class:: classref-constant

**NOTIFICATION_DISABLED** = ``28`` :ref:`🔗<class_Node_constant_NOTIFICATION_DISABLED>`

Notification reçue lorsque le nœud est désactivé. Voir :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. _class_Node_constant_NOTIFICATION_ENABLED:

.. rst-class:: classref-constant

**NOTIFICATION_ENABLED** = ``29`` :ref:`🔗<class_Node_constant_NOTIFICATION_ENABLED>`

Notification reçue lorsque le nœud est activé à nouveau après avoir été désactivé. Voir :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. _class_Node_constant_NOTIFICATION_RESET_PHYSICS_INTERPOLATION:

.. rst-class:: classref-constant

**NOTIFICATION_RESET_PHYSICS_INTERPOLATION** = ``2001`` :ref:`🔗<class_Node_constant_NOTIFICATION_RESET_PHYSICS_INTERPOLATION>`

Notification reçue lorsque :ref:`reset_physics_interpolation()<class_Node_method_reset_physics_interpolation>` est appelée sur le nœud ou ses ancêtres.

.. _class_Node_constant_NOTIFICATION_EDITOR_PRE_SAVE:

.. rst-class:: classref-constant

**NOTIFICATION_EDITOR_PRE_SAVE** = ``9001`` :ref:`🔗<class_Node_constant_NOTIFICATION_EDITOR_PRE_SAVE>`

Notification reçue juste avant que la scène avec le nœud soit sauvegardée dans l'éditeur. Cette notification n'est envoyée que dans l'éditeur Godot et ne se produira pas dans des projets exportés.

.. _class_Node_constant_NOTIFICATION_EDITOR_POST_SAVE:

.. rst-class:: classref-constant

**NOTIFICATION_EDITOR_POST_SAVE** = ``9002`` :ref:`🔗<class_Node_constant_NOTIFICATION_EDITOR_POST_SAVE>`

Notification reçue juste après que la scène avec le nœud soit sauvegardée dans l'éditeur. Cette notification n'est envoyée que dans l'éditeur Godot et ne se produira pas dans des projets exportés.

.. _class_Node_constant_NOTIFICATION_WM_MOUSE_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_WM_MOUSE_ENTER** = ``1002`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_MOUSE_ENTER>`

Notification reçue lorsque la souris entre dans la fenêtre.

Implémenté pour les fenêtres intégrées et sur les plateformes de bureau et web.

.. _class_Node_constant_NOTIFICATION_WM_MOUSE_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_MOUSE_EXIT** = ``1003`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_MOUSE_EXIT>`

Notification reçue lorsque la souris quitte la fenêtre.

Implémenté pour les fenêtres intégrées et sur les plateformes de bureau et web.

.. _class_Node_constant_NOTIFICATION_WM_WINDOW_FOCUS_IN:

.. rst-class:: classref-constant

**NOTIFICATION_WM_WINDOW_FOCUS_IN** = ``1004`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_WINDOW_FOCUS_IN>`

Notification reçue du système d'exploitation lorsque l'ancêtre :ref:`Window<class_Window>` du nœud reçoit le focus. Il peut s'agir d'un changement de focus entre deux fenêtres de la même instance du moteur, ou du bureau du système ou d'une application tierce vers une fenêtre du jeu (dans ce cas :ref:`NOTIFICATION_APPLICATION_FOCUS_IN<class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_IN>` est également reçue).

Un nœud :ref:`Window<class_Window>` reçoit cette notification lorsqu'il reçoit le focus.

.. _class_Node_constant_NOTIFICATION_WM_WINDOW_FOCUS_OUT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_WINDOW_FOCUS_OUT** = ``1005`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_WINDOW_FOCUS_OUT>`

Notification reçue du système d'exploitation lorsque l'ancêtre :ref:`Window<class_Window>` du nœud perd le focus. Il peut s'agir d'un changement de focus entre deux fenêtres de la même instance du moteur, ou d'une fenêtre du jeu vers le bureau du système ou une application tierce (dans ce cas :ref:`NOTIFICATION_APPLICATION_FOCUS_OUT<class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_OUT>` est également reçue).

Un nœud :ref:`Window<class_Window>` reçoit cette notification lorsqu'il perd le focus.

.. _class_Node_constant_NOTIFICATION_WM_CLOSE_REQUEST:

.. rst-class:: classref-constant

**NOTIFICATION_WM_CLOSE_REQUEST** = ``1006`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_CLOSE_REQUEST>`

Notification reçue du système d'exploitation lorsqu'une requête de fermeture est envoyée (par exemple, fermer la fenêtre avec un bouton "Fermer" ou :kbd:`Alt + F4`).

Implémentée sur les plateformes de bureau.

.. _class_Node_constant_NOTIFICATION_WM_GO_BACK_REQUEST:

.. rst-class:: classref-constant

**NOTIFICATION_WM_GO_BACK_REQUEST** = ``1007`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_GO_BACK_REQUEST>`

Notification reçue de l'OS lorsqu'une demande de retour est envoyée (p. ex. appuyant sur le bouton « Retour » sur Android).

Implémentée uniquement sur Android.

.. _class_Node_constant_NOTIFICATION_WM_SIZE_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_WM_SIZE_CHANGED** = ``1008`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_SIZE_CHANGED>`

Notification reçue lorsque la fenêtre est redimensionnée.

\ **Note :** Seul le nœud :ref:`Window<class_Window>` redimensionné reçoit cette notification, et elle n'est pas propagée aux nœuds enfants.

.. _class_Node_constant_NOTIFICATION_WM_DPI_CHANGE:

.. rst-class:: classref-constant

**NOTIFICATION_WM_DPI_CHANGE** = ``1009`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_DPI_CHANGE>`

Notification reçue de l'OS lorsque l'échelle de points par pouce (DPI) de l'écran est modifiée. Seulement implémentée sur macOS.

.. _class_Node_constant_NOTIFICATION_VP_MOUSE_ENTER:

.. rst-class:: classref-constant

**NOTIFICATION_VP_MOUSE_ENTER** = ``1010`` :ref:`🔗<class_Node_constant_NOTIFICATION_VP_MOUSE_ENTER>`

Notification reçue lorsque le curseur de la souris pénètre dans la zone visible du :ref:`Viewport<class_Viewport>`, qui n'est pas occultée derrière d'autres :ref:`Control<class_Control>`\ s ou :ref:`Window<class_Window>`\ s, pourvu que son :ref:`Viewport.gui_disable_input<class_Viewport_property_gui_disable_input>` vaille ``false`` et peu importe s'il a le focus ou non.

.. _class_Node_constant_NOTIFICATION_VP_MOUSE_EXIT:

.. rst-class:: classref-constant

**NOTIFICATION_VP_MOUSE_EXIT** = ``1011`` :ref:`🔗<class_Node_constant_NOTIFICATION_VP_MOUSE_EXIT>`

Notification reçue lorsque le curseur de la souris sort de la zone visible du :ref:`Viewport<class_Viewport>`, qui n'est pas occultée derrière d'autres :ref:`Control<class_Control>`\ s ou :ref:`Window<class_Window>`\ s, pourvu que son :ref:`Viewport.gui_disable_input<class_Viewport_property_gui_disable_input>` vaille ``false`` et peu importe s'il a le focus ou non.

.. _class_Node_constant_NOTIFICATION_WM_POSITION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_WM_POSITION_CHANGED** = ``1012`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_POSITION_CHANGED>`

Notification reçue lorsque la fenêtre est déplacée.

.. _class_Node_constant_NOTIFICATION_WM_OUTPUT_MAX_LINEAR_VALUE_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_WM_OUTPUT_MAX_LINEAR_VALUE_CHANGED** = ``1013`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_OUTPUT_MAX_LINEAR_VALUE_CHANGED>`

Notification received when the output max linear value returned by :ref:`Window.get_output_max_linear_value()<class_Window_method_get_output_max_linear_value>` has changed.

This occurs when HDR output is enabled or disabled and when any HDR output luminance values of the window have changed, such as when the player adjusts their screen brightness setting or moves the window to a different screen.

.. _class_Node_constant_NOTIFICATION_OS_MEMORY_WARNING:

.. rst-class:: classref-constant

**NOTIFICATION_OS_MEMORY_WARNING** = ``2009`` :ref:`🔗<class_Node_constant_NOTIFICATION_OS_MEMORY_WARNING>`

Notification du système d'exploitation lorsque l'application dépasse sa mémoire allouée.

Implémentée seulement sur iOS.

.. _class_Node_constant_NOTIFICATION_TRANSLATION_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TRANSLATION_CHANGED** = ``2010`` :ref:`🔗<class_Node_constant_NOTIFICATION_TRANSLATION_CHANGED>`

Notification reçue lorsque les traductions ont peut-être changé. Peut être déclenché par l'utilisateur changeant la langue, changeant :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>` ou lorsque le nœud entre dans l'arborescence de la scène. Peut être utilisé pour répondre aux changements de langue, par exemple pour changer les chaînes de l'interface utilisateur à la volée. Utile pour travailler avec le support des traductions intégré, comme :ref:`Object.tr()<class_Object_method_tr>`.

\ **Note :** Cette notification est reçue avec :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>`, donc si vous instanciez une scène, les nœuds enfants ne seront pas encore initialisés. Vous pouvez l'utiliser pour configurer les traductions pour ce nœud et les nœuds enfants créés à partir d'un script, ou si vous voulez accéder aux nœuds enfants ajoutés dans l'éditeur, assurez-vous que le nœud est prêt en utilisant :ref:`is_node_ready()<class_Node_method_is_node_ready>`.

::

    func _notification(what):
        if what == NOTIFICATION_TRANSLATION_CHANGED:
            if not is_node_ready():
                await ready # Attendre le signal ready.
            $Label.text = atr("%d Bananes") % banana_counter

.. _class_Node_constant_NOTIFICATION_WM_ABOUT:

.. rst-class:: classref-constant

**NOTIFICATION_WM_ABOUT** = ``2011`` :ref:`🔗<class_Node_constant_NOTIFICATION_WM_ABOUT>`

Notification reçue de l'OS lorsqu'une demande d'information "À propos" est envoyée.

Implémentée uniquement sur macOS.

.. _class_Node_constant_NOTIFICATION_CRASH:

.. rst-class:: classref-constant

**NOTIFICATION_CRASH** = ``2012`` :ref:`🔗<class_Node_constant_NOTIFICATION_CRASH>`

Notification reçue du gestionnaire de plantage de Godot lorsque le moteur est sur le point de planter.

Implémenté sur les plateformes de bureau, si le gestionnaire de plantage est activé.

.. _class_Node_constant_NOTIFICATION_OS_IME_UPDATE:

.. rst-class:: classref-constant

**NOTIFICATION_OS_IME_UPDATE** = ``2013`` :ref:`🔗<class_Node_constant_NOTIFICATION_OS_IME_UPDATE>`

Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).

Implemented on desktop and web platforms.

.. _class_Node_constant_NOTIFICATION_APPLICATION_RESUMED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_RESUMED** = ``2014`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_RESUMED>`

Notification reçue du système d'exploitation une fois de retour sur l'application.

Spécifique aux plateformes Android et iOS.

.. _class_Node_constant_NOTIFICATION_APPLICATION_PAUSED:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_PAUSED** = ``2015`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_PAUSED>`

Notification reçue du système d'exploitation lorsque l'application est mise en pause.

Spécifique aux plateformes Android et iOS.

\ **Note :** Sur iOS, vous n'avez qu'environ 5 secondes pour terminer une tâche commencée par ce signal. Si vous dépassez ce temps attribué, iOS va tuer l'application au lieu de la mettre en pause.

.. _class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_IN:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_IN** = ``2016`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_IN>`

Notification reçue du système d'exploitation lorsque l'application prend le focus, c.à.d. lors du changement de focus du bureau de l'OS ou d'une application tierce vers n'importe quelle fenêtre de l'instance Godot.

Implémentée sur les plateformes mobiles et de bureau.

.. _class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_OUT:

.. rst-class:: classref-constant

**NOTIFICATION_APPLICATION_FOCUS_OUT** = ``2017`` :ref:`🔗<class_Node_constant_NOTIFICATION_APPLICATION_FOCUS_OUT>`

Notification reçue du système d'exploitation lorsque l'application perd le focus, c.à.d. lors du changement de focus de n'importe quelle fenêtre de l'instance Godot vers le bureau de l'OS ou une application tierce.

Implémentée sur les plateformes mobiles et de bureau.

.. _class_Node_constant_NOTIFICATION_TEXT_SERVER_CHANGED:

.. rst-class:: classref-constant

**NOTIFICATION_TEXT_SERVER_CHANGED** = ``2018`` :ref:`🔗<class_Node_constant_NOTIFICATION_TEXT_SERVER_CHANGED>`

Notification reçue lorsque le :ref:`TextServer<class_TextServer>` est changé.

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

Notification reçue lorsqu'une mise à jour d'information d'accessibilité est requise.

.. _class_Node_constant_NOTIFICATION_ACCESSIBILITY_INVALIDATE:

.. rst-class:: classref-constant

**NOTIFICATION_ACCESSIBILITY_INVALIDATE** = ``3001`` :ref:`🔗<class_Node_constant_NOTIFICATION_ACCESSIBILITY_INVALIDATE>`

Notification reçue lorsque les éléments d'accessibilité sont invalidés. Tous les éléments d'accessibilité du nœud sont automatiquement supprimés après avoir reçu ce message, donc toutes les références existantes à ces éléments devraient être supprimées.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
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

Une description facultative du nœud. Elle s'affichera sous forme d'info-bulle lors du survol du nœud dans le dock Scene de l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_multiplayer:

.. rst-class:: classref-property

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **multiplayer** :ref:`🔗<class_Node_property_multiplayer>`

.. rst-class:: classref-property-setget

- :ref:`MultiplayerAPI<class_MultiplayerAPI>` **get_multiplayer**\ (\ )

L'instance :ref:`MultiplayerAPI<class_MultiplayerAPI>` associée à ce nœud. Voir :ref:`SceneTree.get_multiplayer()<class_SceneTree_method_get_multiplayer>`.

\ **Note :** Renommer le nœud, ou le déplacer dans l'arborescence, ne déplacera pas le :ref:`MultiplayerAPI<class_MultiplayerAPI>` au nouveau chemin, vous devrez mettre à jour ceci manuellement.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **name** :ref:`🔗<class_Node_property_name>`

.. rst-class:: classref-property-setget

- |void| **set_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_name**\ (\ )

Le nom du nœud. Ce nom doit être unique parmi les frères (autres nœuds enfants du même parent). Lorsqu'il est défini au nom d'un frère existant, le nœud est automatiquement renommé.

\ **Note :** Lors de la modification du nom, les caractères suivants seront remplacés par un tiret-bas : (``.`` ``:`` ``@`` ``/`` ``"`` ``%``). En particulier, le caractère ``@`` est réservé aux noms autogénérés. Voir aussi :ref:`String.validate_node_name()<class_String_method_validate_node_name>`.

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

Le mode d'interpolation de la physique à utiliser pour ce nœud. Seulement effectif si :ref:`ProjectSettings.physics/common/physics_interpolation<class_ProjectSettings_property_physics/common/physics_interpolation>` ou :ref:`SceneTree.physics_interpolation<class_SceneTree_property_physics_interpolation>` vaut ``true``.

Par défaut, les nœuds héritent du mode d'interpolation de la physique de leur parent. Cette propriété peut activer ou désactiver l'interpolation de la physique individuellement pour chaque nœud, indépendamment du mode d'interpolation de la physique de leurs parents.

\ **Note :** Certains types de nœuds comme :ref:`VehicleWheel3D<class_VehicleWheel3D>` ont une interpolation de la physique désactivée par défaut, car ils se reposent sur leur propre solution personnalisée.

\ **Note :** Lors de la téléportation d'un nœud vers une position éloignée, il est recommandé de désactiver temporairement l'interpolation avec :ref:`reset_physics_interpolation()<class_Node_method_reset_physics_interpolation>` *après* le déplacement du nœud. Cela évite de créer un trait visuel entre l'ancienne et la nouvelle position.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_mode:

.. rst-class:: classref-property

:ref:`ProcessMode<enum_Node_ProcessMode>` **process_mode** = ``0`` :ref:`🔗<class_Node_property_process_mode>`

.. rst-class:: classref-property-setget

- |void| **set_process_mode**\ (\ value\: :ref:`ProcessMode<enum_Node_ProcessMode>`\ )
- :ref:`ProcessMode<enum_Node_ProcessMode>` **get_process_mode**\ (\ )

Le comportement de traitement du nœud. Pour vérifier si le nœud peut traiter dans son mode actuel, utilisez :ref:`can_process()<class_Node_method_can_process>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_physics_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **process_physics_priority** = ``0`` :ref:`🔗<class_Node_property_process_physics_priority>`

.. rst-class:: classref-property-setget

- |void| **set_physics_process_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physics_process_priority**\ (\ )

Similaire à :ref:`process_priority<class_Node_property_process_priority>` mais pour :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`, :ref:`_physics_process()<class_Node_private_method__physics_process>`, ou :ref:`NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **process_priority** = ``0`` :ref:`🔗<class_Node_property_process_priority>`

.. rst-class:: classref-property-setget

- |void| **set_process_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_process_priority**\ (\ )

L'ordre d'exécution du nœud des callbacks de traitement (:ref:`_process()<class_Node_private_method__process>`, :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>` et :ref:`NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`). Les nœuds dont la valeur de priorité est *plus basse* auront leurs callback de traitement appelés en premier, peu importe l'ordre de l'arborescence.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_thread_group:

.. rst-class:: classref-property

:ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **process_thread_group** = ``0`` :ref:`🔗<class_Node_property_process_thread_group>`

.. rst-class:: classref-property-setget

- |void| **set_process_thread_group**\ (\ value\: :ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>`\ )
- :ref:`ProcessThreadGroup<enum_Node_ProcessThreadGroup>` **get_process_thread_group**\ (\ )

Set the process thread group for this node (basically, whether it receives :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>`, :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`, :ref:`_process()<class_Node_private_method__process>` or :ref:`_physics_process()<class_Node_private_method__physics_process>` (and the internal versions) on the main thread or in a sub-thread.

By default, the thread group is :ref:`PROCESS_THREAD_GROUP_INHERIT<class_Node_constant_PROCESS_THREAD_GROUP_INHERIT>`, which means that this node belongs to the same thread group as the parent node. The thread groups means that nodes in a specific thread group will process together, separate to other thread groups (depending on :ref:`process_thread_group_order<class_Node_property_process_thread_group_order>`). If the value is set is :ref:`PROCESS_THREAD_GROUP_SUB_THREAD<class_Node_constant_PROCESS_THREAD_GROUP_SUB_THREAD>`, this thread group will occur on a sub thread (not the main thread), otherwise if set to :ref:`PROCESS_THREAD_GROUP_MAIN_THREAD<class_Node_constant_PROCESS_THREAD_GROUP_MAIN_THREAD>` it will process on the main thread. If there is not a parent or grandparent node set to something other than inherit, the node will belong to the *default thread group*. This default group will process on the main thread and its group order is 0.

During processing in a sub-thread, accessing most functions in nodes outside the thread group is forbidden (and it will result in an error in debug mode). Use :ref:`Object.call_deferred()<class_Object_method_call_deferred>`, :ref:`call_thread_safe()<class_Node_method_call_thread_safe>`, :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` and the likes in order to communicate from the thread groups to the main thread (or to other thread groups).

To better understand process thread groups, the idea is that any node set to any other value than :ref:`PROCESS_THREAD_GROUP_INHERIT<class_Node_constant_PROCESS_THREAD_GROUP_INHERIT>` will include any child (and grandchild) nodes set to inherit into its process thread group. This means that the processing of all the nodes in the group will happen together, at the same time as the node including them.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_thread_group_order:

.. rst-class:: classref-property

:ref:`int<class_int>` **process_thread_group_order** :ref:`🔗<class_Node_property_process_thread_group_order>`

.. rst-class:: classref-property-setget

- |void| **set_process_thread_group_order**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_process_thread_group_order**\ (\ )

Change l'ordre du groupe de thread de traitement. Les groupes avec un ordre inférieur traiteront avant les groupes avec un ordre plus élevé. Ceci est utile par exemple lorsqu'une grande quantité de nœuds se traitent dans un sous-thread et, par la suite, un autre groupe veut recueillir leur résultat dans le thread principal.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_process_thread_messages:

.. rst-class:: classref-property

|bitfield|\[:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>`\] **process_thread_messages** :ref:`🔗<class_Node_property_process_thread_messages>`

.. rst-class:: classref-property-setget

- |void| **set_process_thread_messages**\ (\ value\: |bitfield|\[:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>`\]\ )
- |bitfield|\[:ref:`ProcessThreadMessages<enum_Node_ProcessThreadMessages>`\] **get_process_thread_messages**\ (\ )

Définit si le groupe de thread actuel traitera les messages (appels à :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>` sur les threads), et s'il veut les recevoir lors des callbacks de traitement régulier ou de traitement de la physique.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_scene_file_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **scene_file_path** :ref:`🔗<class_Node_property_scene_file_path>`

.. rst-class:: classref-property-setget

- |void| **set_scene_file_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_scene_file_path**\ (\ )

Le chemin de fichier de la scène originale, si le nœud a été instancié à partir d'un fichier :ref:`PackedScene<class_PackedScene>`. Seuls les nœuds racine de scène contiennent ceci.

.. rst-class:: classref-item-separator

----

.. _class_Node_property_unique_name_in_owner:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unique_name_in_owner** = ``false`` :ref:`🔗<class_Node_property_unique_name_in_owner>`

.. rst-class:: classref-property-setget

- |void| **set_unique_name_in_owner**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_unique_name_in_owner**\ (\ )

Si ``true``, le nœud peut être accessible à partir de n'importe quel nœud partageant le même :ref:`owner<class_Node_property_owner>` ou de l':ref:`owner<class_Node_property_owner>` lui-même, avec la syntaxe spéciale ``%Nom`` dans :ref:`get_node()<class_Node_method_get_node>`.

\ **Note :** Si un autre nœud avec le même :ref:`owner<class_Node_property_owner>` partage le même :ref:`name<class_Node_property_name>` que ce nœud, l'autre nœud ne sera plus accessible en tant que nœud unique.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Node_private_method__enter_tree:

.. rst-class:: classref-method

|void| **_enter_tree**\ (\ ) |virtual| :ref:`🔗<class_Node_private_method__enter_tree>`

Appelé lorsque le nœud entre dans la :ref:`SceneTree<class_SceneTree>` (par exemple en étant instancié, au changement de scène, ou après avoir appelé :ref:`add_child()<class_Node_method_add_child>` dans un script). Si le nœud a des enfants, sa méthode :ref:`_enter_tree()<class_Node_private_method__enter_tree>` sera appelée d'abord, puis ensuite celle de ses enfants.

Correspond à la notification :ref:`NOTIFICATION_ENTER_TREE<class_Node_constant_NOTIFICATION_ENTER_TREE>` dans :ref:`Object._notification()<class_Object_private_method__notification>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__exit_tree:

.. rst-class:: classref-method

|void| **_exit_tree**\ (\ ) |virtual| :ref:`🔗<class_Node_private_method__exit_tree>`

Appelée lorsque le nœud va quitter la :ref:`SceneTree<class_SceneTree>` (par exemple sur la suppression, au changement de scène, ou après avoir appelé :ref:`remove_child()<class_Node_method_remove_child>` dans un script). Si le nœud a des enfants, sa méthode :ref:`_exit_tree()<class_Node_private_method__exit_tree>` sera appelée en dernier, quand tous ses enfants auront quitté l'arborescence.

Correspond à la notification :ref:`NOTIFICATION_EXIT_TREE<class_Node_constant_NOTIFICATION_EXIT_TREE>` dans :ref:`Object._notification()<class_Object_private_method__notification>` et signal :ref:`tree_exiting<class_Node_signal_tree_exiting>`. Pour être notifié lorsque le nœud a déjà quitté l'arborescence active, connectez-vous à :ref:`tree_exited<class_Node_signal_tree_exited>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__get_accessibility_configuration_warnings:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_accessibility_configuration_warnings**\ (\ ) |virtual| |const| :ref:`🔗<class_Node_private_method__get_accessibility_configuration_warnings>`

Les éléments du tableau renvoyé de cette méthode sont affichés comme avertissements dans le dock Scène si le script qui la redéfinit est un script ``tool``, et les avertissements d'accessibilité sont activés dans les paramètres de l'éditeur.

Renvoyer un tableau vide ne produit aucun avertissement.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__get_configuration_warnings:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_configuration_warnings**\ (\ ) |virtual| |const| :ref:`🔗<class_Node_private_method__get_configuration_warnings>`

Les éléments du tableau renvoyé par cette méthode sont affichés comme avertissements dans le dock Scène si le script qui le redéfinit est un script ``tool``.

Le renvoi d'un tableau vide ne produit aucun avertissement.

Appelez :ref:`update_configuration_warnings()<class_Node_method_update_configuration_warnings>` lorsque les avertissements doivent être mis à jour pour ce nœud.

::

    @export var energie = 0:
        set(valeur):
            energie = valeur
            update_configuration_warnings()

    func _get_configuration_warnings():
        if energie < 0:
            return ["L'énergie doit être supérieure ou égale à 0."]
        else:
            return []

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__get_focused_accessibility_element:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_focused_accessibility_element**\ (\ ) |virtual| |const| :ref:`🔗<class_Node_private_method__get_focused_accessibility_element>`

Appelée lors des mises à jour d'information sur l'accessibilité pour déterminer le sous-élément ayant actuellement le focus, devait renvoyer un RID de sous-élément ou la valeur renvoyée par :ref:`get_accessibility_element()<class_Node_method_get_accessibility_element>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__input:

.. rst-class:: classref-method

|void| **_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Node_private_method__input>`

Appelée quand il y a un événement d'entrée. Cet événement se propage vers le haut de l'arborescence jusqu'à ce qu'un nœud le consomme.

Elle n'est appelée que si le traitement des entrées est activé, ce qui est fait automatiquement quand cette méthode est redéfinie, et peut être activé avec :ref:`set_process_input()<class_Node_method_set_process_input>`.

Pour consommer l'événement d'entrée et arrêter sa propagation vers les autres nœuds, la méthode :ref:`Viewport.set_input_as_handled()<class_Viewport_method_set_input_as_handled>` peut être appelée.

Pour les entrées de jeu, les méthodes :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>` et :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>` sont généralement plus adaptées puisqu'elles permettent aux éléments d'interface d'intercepter les événements en premier.

\ **Note :** Cette méthode n'est seulement appelé que si le nœud est présent dans l'arborescence (c-à-d n'est pas un orphelin).

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__physics_process:

.. rst-class:: classref-method

|void| **_physics_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_Node_private_method__physics_process>`

Called once on each physics tick, and allows Nodes to synchronize their logic with physics ticks. ``delta`` is the logical time between physics ticks in seconds and is equal to :ref:`Engine.time_scale<class_Engine_property_time_scale>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`.

It is only called if physics processing is enabled for this Node, which is done automatically if this method is overridden, and can be toggled with :ref:`set_physics_process()<class_Node_method_set_physics_process>`.

Processing happens in order of :ref:`process_physics_priority<class_Node_property_process_physics_priority>`, lower priority values are called first. Nodes with the same priority are processed in tree order, or top to bottom as seen in the editor (also known as pre-order traversal).

Corresponds to the :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>` notification in :ref:`Object._notification()<class_Object_private_method__notification>`.

\ **Note:** This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).

\ **Note:** Accumulated ``delta`` may diverge from real world seconds.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__process:

.. rst-class:: classref-method

|void| **_process**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_Node_private_method__process>`

Called on each idle frame, prior to rendering, and after physics ticks have been processed. ``delta`` is the time between frames in seconds.

It is only called if processing is enabled for this Node, which is done automatically if this method is overridden, and can be toggled with :ref:`set_process()<class_Node_method_set_process>`.

Processing happens in order of :ref:`process_priority<class_Node_property_process_priority>`, lower priority values are called first. Nodes with the same priority are processed in tree order, or top to bottom as seen in the editor (also known as pre-order traversal).

Corresponds to the :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>` notification in :ref:`Object._notification()<class_Object_private_method__notification>`.

\ **Note:** This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).

\ **Note:** When the engine is struggling and the frame rate is lowered, ``delta`` will increase. When ``delta`` is increased, it's capped at a maximum of :ref:`Engine.time_scale<class_Engine_property_time_scale>` \* :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` / :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`. As a result, accumulated ``delta`` may not represent real world time.

\ **Note:** When ``--fixed-fps`` is enabled or the engine is running in Movie Maker mode (see :ref:`MovieWriter<class_MovieWriter>`), process ``delta`` will always be the same for every frame, regardless of how much time the frame took to render.

\ **Note:** Frame delta may be post-processed by :ref:`OS.delta_smoothing<class_OS_property_delta_smoothing>` if this is enabled for the project.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__ready:

.. rst-class:: classref-method

|void| **_ready**\ (\ ) |virtual| :ref:`🔗<class_Node_private_method__ready>`

Appelée lorsque le nœud est « prêt », c'est-à-dire lorsque le nœud et ses enfants sont entrés dans l'arborescence de la scène. Si le nœud a des enfants, leurs callbacks :ref:`_ready()<class_Node_private_method__ready>` seront appelés en premier, et le nœud parent recevra la notification « prêt » après cela.

Correspond à la notification :ref:`NOTIFICATION_READY<class_Node_constant_NOTIFICATION_READY>` dans :ref:`Object._notification()<class_Object_private_method__notification>`. Voir aussi l'annotation ``@onready`` pour les variables.

Habituellement utilisé pour l'initialisation. Pour une initialisation encore plus précoce, :ref:`Object._init()<class_Object_private_method__init>` peut être utilisé. Voir aussi :ref:`_enter_tree()<class_Node_private_method__enter_tree>`.

\ **Note :** Cette méthode ne peut être appelée qu'une seule fois pour chaque nœud. Après avoir retiré un nœud de l'arborescence de scène et l'ajouté à nouveau, :ref:`_ready()<class_Node_private_method__ready>` ne sera **pas** appelé une deuxième fois. Cela peut être changé en demandant un autre appel avec :ref:`request_ready()<class_Node_method_request_ready>`, qui peut être appelé n'importe où avant d'ajouter le nœud à nouveau.

.. rst-class:: classref-item-separator

----

.. _class_Node_private_method__shortcut_input:

.. rst-class:: classref-method

|void| **_shortcut_input**\ (\ event\: :ref:`InputEvent<class_InputEvent>`\ ) |virtual| :ref:`🔗<class_Node_private_method__shortcut_input>`

Appelée quand un :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventShortcut<class_InputEventShortcut>` ou :ref:`InputEventJoypadButton<class_InputEventJoypadButton>` n'a pas été traité par :ref:`_input()<class_Node_private_method__input>` ou n'importe quel élément :ref:`Control<class_Control>` du GUI. Elle est appelée avant :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>` et :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>`. L'événement d'entrée se propage vers le haut de l'arborescence jusqu'à ce qu'un nœud le consomme.

Elle n'est appelée que si le processus de traitement des entrées est activé, ce qui est fait automatiquement si cette méthode est redéfinie, et peut être activé par :ref:`set_process_shortcut_input()<class_Node_method_set_process_shortcut_input>`.

Pour consommer l'événement d'entrée et arrêter sa propagation vers les autres nœuds, la méthode :ref:`Viewport.set_input_as_handled()<class_Viewport_method_set_input_as_handled>` peut être appelée.

Cette méthode peut-être utilisée pour gérer les raccourcis. Pour les envenimements GUI génériques, utilisez plutôt :ref:`_input()<class_Node_private_method__input>`. Les évènement de gameplay devraient plutôt être gérés avec :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>` ou :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>`.

\ **Note :** Cette méthode n'est seulement appelé que si le nœud est présent dans l'arborescence (c-à-d n'est pas un orphelin).

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

Ajoute un nœud enfant ``node``. Les nœuds peuvent avoir n'importe quel nombre d'enfants, mais chaque enfant doit avoir un nom unique. Les nœuds enfants sont automatiquement supprimés lorsque le nœud parent est supprimé, de sorte qu'une scène entière peut être supprimée en supprimant son nœud le plus haut.

Si ``force_readable_name`` vaut ``true``, améliore la lisibilité du ``node`` ajouté. S'il n'est pas nommé, le ``node`` est renommé à son type, et s'il partage :ref:`name<class_Node_property_name>` avec un frère, un nombre est ajouté en suffixe. Cette opération est très lente. Il est donc recommandé de laisser cela à ``false``, ce qui attribue un nom factice comportant ``@`` dans les deux cas.

Si ``internal`` est différent de :ref:`INTERNAL_MODE_DISABLED<class_Node_constant_INTERNAL_MODE_DISABLED>`, l'enfant sera ajouté comme nœud interne. Ces nœuds sont ignorés par des méthodes comme :ref:`get_children()<class_Node_method_get_children>`, sauf si leur paramètre ``include_internal`` vaut ``true``. Cela empêche également que ces nœuds soient dupliqués avec leur parent. L'usage prévu est de cacher les nœuds internes à l'utilisateur, pour que l'utilisateur ne les supprime pas accidentellement ou les modifie. Utilisé par certains nœuds de GUI, par exemple :ref:`ColorPicker<class_ColorPicker>`.

\ **Note :** Si ``node`` a déjà un parent, cette méthode échouera. Utilisez :ref:`remove_child()<class_Node_method_remove_child>` d'abord pour supprimer ``node`` de son parent actuel. Par exemple :


.. tabs::

 .. code-tab:: gdscript

    var noeud_enfant = get_child(0)
    if noeud_enfant.get_parent():
        noeud_enfant.get_parent().remove_child(noeud_enfant)
    add_child(noeud_enfant)

 .. code-tab:: csharp

    Node noeudEnfant = GetChild(0);
    if (noeudEnfant.GetParent() != null)
    {
        noeudEnfant.GetParent().RemoveChild(noeudEnfant);
    }
    AddChild(noeudEnfant);



Si vous avez besoin que le noeud enfant soit ajouté sous un nœud spécifique dans la liste des enfants, utilisez :ref:`add_sibling()<class_Node_method_add_sibling>` au lieu de cette méthode.

\ **Note :** Si vous voulez qu'un enfant persiste dans une :ref:`PackedScene<class_PackedScene>`, vous devez définir :ref:`owner<class_Node_property_owner>` en plus d'appeler :ref:`add_child()<class_Node_method_add_child>`. Ceci est généralement pertinent pour les :doc:`scripts d'outil <../tutorials/plugins/running_code_in_the_editor>` et les :doc:`plugins éditeur <../tutorials/plugins/editor/index>`. Si :ref:`add_child()<class_Node_method_add_child>` est appelé sans définir :ref:`owner<class_Node_property_owner>`, le **Node** nouvellement ajouté ne sera pas visible dans l'arborescence de scène, bien qu'il sera visible dans la vue 2D/3D.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_add_sibling:

.. rst-class:: classref-method

|void| **add_sibling**\ (\ sibling\: :ref:`Node<class_Node>`, force_readable_name\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node_method_add_sibling>`

Ajoute un nœud frère ``sibling`` au parent de ce nœud, et déplace le frère ajouté juste en dessous de ce nœud.

Si ``force_readable_name`` vaut ``true``, améliore la lisibilité du nom de ``sibling``. S'il n'est pas nommé, ``sibling`` est renommé à son type, et s'il partage :ref:`name<class_Node_property_name>` avec un frère, un nombre est suffixé de manière plus appropriée. Cette opération est très lente. Il est donc recommandé de laisser cela à ``false``, ce qui attribue un nom factice comportant ``@`` dans les deux cas.

Utilisez :ref:`add_child()<class_Node_method_add_child>` au lieu de cette méthode si vous n'avez pas besoin que le nœud enfant soit ajouté sous un nœud spécifique dans la liste des enfants.

\ **Note :** Si ce nœud est interne, le frère ajouté sera aussi interne (voir le paramètre ``internal`` de :ref:`add_child()<class_Node_method_add_child>`).

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

Traduit un ``message``, en utilisant les catalogues de traduction configurés dans les Paramètres du projet. De plus, du contexte ``context`` peut être spécifié pour aider à la traduction. Notez que la plupart des nœuds :ref:`Control<class_Control>` traduisent automatiquement leurs chaînes, ainsi cette méthode est surtout utile pour les chaînes formatées ou du texte dessiné de manière personnalisée.

Cette méthode fonctionne de la même manière que :ref:`Object.tr()<class_Object_method_tr>`, avec l'ajout du respect de l'état de :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>`.

Si :ref:`Object.can_translate_messages()<class_Object_method_can_translate_messages>` vaut ``false``, ou qu'aucune traduction n'est disponible, cette méthode renverra le ``message`` sans modifications. Voir :ref:`Object.set_message_translation()<class_Object_method_set_message_translation>`.

Pour des exemples détaillés, voir :doc:`Internationaliser des jeux <../tutorials/i18n/internationalizing_games>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_atr_n:

.. rst-class:: classref-method

:ref:`String<class_String>` **atr_n**\ (\ message\: :ref:`String<class_String>`, plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = ""\ ) |const| :ref:`🔗<class_Node_method_atr_n>`

Traduit un ``message`` ou plusieurs messages (``plural_message``), en utilisant les catalogues de traduction configurés dans les Paramètres du projet. De plus, du contexte ``context`` peut être spécifié pour aider à la traduction.

Cette méthode fonctionne de la même manière que :ref:`Object.tr_n()<class_Object_method_tr_n>`, avec l'ajout du respect de l'état de :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>`.

Si :ref:`Object.can_translate_messages()<class_Object_method_can_translate_messages>` vaut ``false``, ou qu'aucune traduction n'est disponible, cette méthode renverra le ``message`` ou ``plural_message`` sans modifications. Voir :ref:`Object.set_message_translation()<class_Object_method_set_message_translation>`.

\ ``n`` est le nombre, ou la quantité, du sujet du message. Il est utilisé par le système de traduction pour obtenir la bonne forme plurielle pour la langue actuelle.

Pour des exemples détaillés, voir :doc:`Localisation à l'aide de gettext <../tutorials/i18n/localization_using_gettext>`.

\ **Note :** Les nombres négatifs et les :ref:`float<class_float>` peuvent ne pas s'appliquer correctement à certains sujets comptables. Il est recommandé de traiter ces cas avec :ref:`atr()<class_Node_method_atr>`.

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

Cette fonction assure que l'appel de cette fonction réussira, peu importe si elle est faite à partir d'un thread ou non. Si appelée d'un thread qui n'est pas autorisé à appeler la fonction, l'appel sera reporté. Sinon, l'appel passera directement.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_can_auto_translate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_auto_translate**\ (\ ) |const| :ref:`🔗<class_Node_method_can_auto_translate>`

Renvoie ``true`` si ce nœud peut automatiquement traduire des messages en fonction de la langue actuelle. Voir :ref:`auto_translate_mode<class_Node_property_auto_translate_mode>`, :ref:`atr()<class_Node_method_atr>`, et :ref:`atr_n()<class_Node_method_atr_n>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_can_process:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_process**\ (\ ) |const| :ref:`🔗<class_Node_method_can_process>`

Renvoie ``true`` si le nœud peut recevoir des notifications de traitement et des callbacks d'entrée (:ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>`, :ref:`_input()<class_Node_private_method__input>`, etc.) du :ref:`SceneTree<class_SceneTree>` et d'un :ref:`Viewport<class_Viewport>`. La valeur renvoyée dépend de :ref:`process_mode<class_Node_property_process_mode>`\  :

- Si défini à :ref:`PROCESS_MODE_PAUSABLE<class_Node_constant_PROCESS_MODE_PAUSABLE>`, renvoie ``true`` lorsque le jeu est en cours de traitement, c-à-d que :ref:`SceneTree.paused<class_SceneTree_property_paused>` vaut ``false``;

- Si défini à :ref:`PROCESS_MODE_WHEN_PAUSED<class_Node_constant_PROCESS_MODE_WHEN_PAUSED>`, renvoie ``true`` lorsque le jeu est en pause, c-à-d que :ref:`SceneTree.paused<class_SceneTree_property_paused>` vaut ``true``;

- Si défini à :ref:`PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`, renvoie toujours ``true``;

- Si défini à :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`, renvoie toujours ``false``;

- Si défini à :ref:`PROCESS_MODE_INHERIT<class_Node_constant_PROCESS_MODE_INHERIT>`, utilise le :ref:`process_mode<class_Node_property_process_mode>` du nœud parent pour déterminer le résultat.

Si le nœud n'est pas à l'intérieur de l'arborescence, renvoie ``false``, peu importe la valeur de :ref:`process_mode<class_Node_property_process_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_create_tween:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **create_tween**\ (\ ) :ref:`🔗<class_Node_method_create_tween>`

Crée un nouveau :ref:`Tween<class_Tween>` et le lie à ce nœud.

C'est l'équivalent de faire :


.. tabs::

 .. code-tab:: gdscript

    get_tree().create_tween().bind_node(self)

 .. code-tab:: csharp

    GetTree().CreateTween().BindNode(this);



Le Tween commencera automatiquement sur le prochain trame de traitement ou de physique (selon :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`). Voir :ref:`Tween.bind_node()<class_Tween_method_bind_node>` pour plus d'informations sur les Tweens lié à des nœuds.

\ **Note :** La méthode peut encore être utilisée lorsque le nœud n'est pas à l'intérieur de :ref:`SceneTree<class_SceneTree>`. Elle peut échouer dans un cas improbable d'utilisation d'une boucle de traitement :ref:`MainLoop<class_MainLoop>` personnalisée.

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

Trouve le premier descendant de ce nœud dont le nom :ref:`name<class_Node_property_name>` correspond à ``pattern``, renvoyant ``null`` si aucune correspondance n'est trouvée. La correspondance est faite sur les noms des nœuds, *pas* sur leurs chemins, avec :ref:`String.match()<class_String_method_match>`. Ainsi, elle est sensible à la casse, ``"*"`` correspond à zéro ou plus de caractères, et ``"?"`` correspond à tout caractère unique.

Si ``recursive`` vaut ``false``, seuls les enfants directs de ce nœud sont vérifiés. Les nœuds sont contrôlés dans l'ordre de l'arborescence, de sorte que le premier enfant direct de ce nœud est vérifié en premier, puis ses propres enfants directs, etc., avant de passer au deuxième enfant direct, etc. Les enfants internes sont également inclus dans la recherche (voir le paramètre ``internal`` dans :ref:`add_child()<class_Node_method_add_child>`).

Si ``owned`` vaut ``true``, seuls les descendants ayant un nœud :ref:`owner<class_Node_property_owner>` valide sont vérifiés.

\ **Note :** Cette méthode peut être très lente. Envisagez de stocker une référence au nœud trouvé dans une variable. Alternativement, utilisez :ref:`get_node()<class_Node_method_get_node>` avec des noms uniques (voir :ref:`unique_name_in_owner<class_Node_property_unique_name_in_owner>`).

\ **Note :** Pour trouver tous les nœuds descendants correspondant à un motif ou un type de classe, voir :ref:`find_children()<class_Node_method_find_children>`.

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

Trouve le premier ancêtre de ce nœud dont le nom :ref:`name<class_Node_property_name>` correspond à ``pattern``, renvoyant ``null`` si aucune correspondance n'est trouvée. La correspondance est faite avec :ref:`String.match()<class_String_method_match>`. Ainsi, elle est sensible à la casse, ``"*"`` correspond à zéro ou plus de caractères, et ``"?"`` correspond à tout caractère unique. Voir aussi :ref:`find_child()<class_Node_method_find_child>` et :ref:`find_children()<class_Node_method_find_children>`.

\ **Note :** Comme cette méthode remonte l'arborescence de scène, elle peut être lente dans des nœuds profondément nichés. Envisagez de stocker une référence au nœud trouvé dans une variable. Alternativement, utilisez :ref:`get_node()<class_Node_method_get_node>` avec des noms uniques (voir :ref:`unique_name_in_owner<class_Node_property_unique_name_in_owner>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_accessibility_element:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_accessibility_element**\ (\ ) |const| :ref:`🔗<class_Node_method_get_accessibility_element>`

Renvoie le RID de l'élément d'accessibilité principal.

\ **Note :** Cette méthode ne devrait être appelée que lors des mises à jour d'information d'accessibilité (:ref:`NOTIFICATION_ACCESSIBILITY_UPDATE<class_Node_constant_NOTIFICATION_ACCESSIBILITY_UPDATE>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_child:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_child**\ (\ idx\: :ref:`int<class_int>`, include_internal\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_child>`

Récupère un nœud enfant par son index. Chaque nœud enfant a un index par rapport à ses frères (voir :ref:`get_index()<class_Node_method_get_index>`). Le premier enfant est à l'index 0. Des valeurs négatives peuvent également être utilisées pour commencer à partir de la fin de la liste. Cette méthode peut être utilisée en combinaison avec :ref:`get_child_count()<class_Node_method_get_child_count>` pour itérer sur les enfants de ce nœud. Si aucun enfant n'existe à l'index donné, cette méthode renvoie ``null`` et une erreur est générée.

Si ``include_internal`` vaut ``false``, les enfants internes sont ignorés (voir le paramètre ``internal`` de :ref:`add_child()<class_Node_method_add_child>`).

::

    # En supposant ce qui suit représente des enfants de ce nœud, dans l'ordre :
    # Premier, Milieu, Dernier.

    var a = get_child(0).name  # a vaut "Premier"
    var b = get_child(1).name  # b vaut "Milieu"
    var b = get_child(2).name  # b vaut "Dernier"
    var c = get_child(-1).name # c vaut "Dernier"

\ **Note :** Pour récupérer un nœud par son :ref:`NodePath<class_NodePath>`, utilisez :ref:`get_node()<class_Node_method_get_node>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_child_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_child_count**\ (\ include_internal\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_child_count>`

Renvoie le nombre d'enfants de ce nœud.

Si ``include_internal`` vaut ``false``, les enfants internes ne sont pas comptés (voir le paramètre ``internal`` de :ref:`add_child()<class_Node_method_add_child>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_children:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_children**\ (\ include_internal\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_children>`

Renvoie tous les enfants de ce nœud dans un :ref:`Array<class_Array>`.

Si ``include_internal`` vaut ``false``, exclut les enfants internes du tableau renvoyé (voir le paramètre ``internal`` de :ref:`add_child()<class_Node_method_add_child>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_groups:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_groups**\ (\ ) |const| :ref:`🔗<class_Node_method_get_groups>`

Renvoie un :ref:`Array<class_Array>` des noms de groupe auxquels le nœud a été ajouté.

\ **Note :** Pour améliorer la performance, l'ordre des noms de groupe n'est *pas* garanti et peut varier entre les exécutions du projet. Par conséquent, ne comptez pas sur l'ordre des groupes.

\ **Note :** Cette méthode peut également renvoyer certains noms de groupe commençant par un tiret-bas (``_``). Ils sont utilisés en interne par le moteur. Pour éviter les conflits, n'utilisez pas de groupes personnalisés commençant par des tirets-bas. Pour exclure les groupes internes, voir le bout de code suivant :


.. tabs::

 .. code-tab:: gdscript

    # Stocke les groupes non internes du nœud seulement (en tant que tableau de StringNames).
    var groupes_non_internes = []
    for groupe in get_groups():
        if not str(groupe).begins_with("_"):
            groupes_non_internes.push_back(groupe)

 .. code-tab:: csharp

    // Stocke les groupes non internes du nœud seulement (en tant que List de StringNames).
    List<string> groupesNonInternes = new List<string>();
    foreach (string groupe in GetGroups())
    {
        if (!groupe.BeginsWith("_"))
            groupesNonInternes.Add(groupe);
    }



.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_index**\ (\ include_internal\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_index>`

Renvoie l'ordre de ce nœud parmi ses frères. L'index du premier nœud est ``0``. Voir aussi :ref:`get_child()<class_Node_method_get_child>`.

Si ``include_internal`` vaut ``false``, renvoie l'index en ignorant les enfants internes. Le premier enfant non interne aura un indice de ``0`` (voir le paramètre ``internal`` de :ref:`add_child()<class_Node_method_add_child>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_last_exclusive_window:

.. rst-class:: classref-method

:ref:`Window<class_Window>` **get_last_exclusive_window**\ (\ ) |const| :ref:`🔗<class_Node_method_get_last_exclusive_window>`

Renvoie la :ref:`Window<class_Window>` qui contient ce nœud, ou le dernier enfant exclusif dans une chaîne de fenêtres commençant par celle qui contient ce nœud.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_multiplayer_authority:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_multiplayer_authority**\ (\ ) |const| :ref:`🔗<class_Node_method_get_multiplayer_authority>`

Renvoie l'identifiant du pair de l'autorité multijoueur pour ce nœud. Voir :ref:`set_multiplayer_authority()<class_Node_method_set_multiplayer_authority>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_node:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_node**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Node_method_get_node>`

Récupère un nœud. Le :ref:`NodePath<class_NodePath>` peut être un chemin relatif (depuis le nœud actuel) ou absolu (depuis le :ref:`SceneTree.root<class_SceneTree_property_root>`) vers un nœud. Si le ``path`` ne pointe pas vers un nœud valide, ``null`` est renvoyé et une erreur est générée. Appeler une méthode sur la valeur retournée si le nœud n'existe pas lancera une erreur comme *"Attempt to call <method> on a null instance."*.

\ **Note :** Récupérer un nœud avec un chemin absolu ne fonctionne que si ce nœud est dans l'arborescence (voir :ref:`is_inside_tree()<class_Node_method_is_inside_tree>`).

\ **Exemple :** En assumant que le nœud actuel soit "Personnage" et que l'arborescence soit la suivante :

.. code:: text

     ┖╴root
        ┠╴Personnage (vous êtes ici !)
        ┃  ┠╴Épée
        ┃  ┖╴Sac-à-dos
        ┃     ┖╴Dague
        ┠╴MonJeu
        ┖╴Bassin
           ┠╴Alligator
           ┠╴Moustique
           ┖╴Goblin

Les chemins possibles sont :


.. tabs::

 .. code-tab:: gdscript

    get_node("Épée")
    get_node("Sac-à-dos/Dague")
    get_node("../Bassin/Alligator")
    get_node("/root/MonJeu")

 .. code-tab:: csharp

    GetNode("Épée");
    GetNode("Sac-à-dos/Dague");
    GetNode("../Bassin/Alligator");
    GetNode("/root/MonJeu");



.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_node_and_resource:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_node_and_resource**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_Node_method_get_node_and_resource>`

Récupère un nœud et sa ressource la plus imbriquée comme spécifié par le sous-nom du :ref:`NodePath<class_NodePath>`. Renvoie un :ref:`Array<class_Array>` de taille ``3`` où :

- L'élément ``0`` est le **Node**, ou ``null`` si non trouvé;

- L'élément ``1`` est la dernière :ref:`Resource<class_Resource>` imbriquée du sous-nom, ou ``null`` si non trouvée;

- L'élément ``2`` est le :ref:`NodePath<class_NodePath>` restant, se référant à une propriété non-:ref:`Resource<class_Resource>` existante (voir :ref:`Object.get_indexed()<class_Object_method_get_indexed>`).

\ **Exemple :** Supposons que la :ref:`Sprite2D.texture<class_Sprite2D_property_texture>` de l'enfant a été assignée une :ref:`AtlasTexture<class_AtlasTexture>`\  :


.. tabs::

 .. code-tab:: gdscript

    var a = get_node_and_resource("Area2D/Sprite2D")
    print(a[0].name) # Affiche Sprite2D
    print(a[1])      # Affiche <null>
    print(a[2])      # Affiche ^""

    var b = get_node_and_resource("Area2D/Sprite2D:texture:atlas")
    print(b[0].name)        # Affiche Sprite2D
    print(b[1].get_class()) # Affiche AtlasTexture
    print(b[2])             # Affiche ^""

    var c = get_node_and_resource("Area2D/Sprite2D:texture:atlas:region")
    print(c[0].name)        # Affiche Sprite2D
    print(c[1].get_class()) # Affiche AtlasTexture
    print(c[2])             # Affiche ^":region"

 .. code-tab:: csharp

    var a = GetNodeAndResource(NodePath("Area2D/Sprite2D"));
    GD.Print(a[0].Name); // Affiche Sprite2D
    GD.Print(a[1]);      // Affiche <null>
    GD.Print(a[2]);      // Affiche ^"

    var b = GetNodeAndResource(NodePath("Area2D/Sprite2D:texture:atlas"));
    GD.Print(b[0].name);        // Affiche Sprite2D
    GD.Print(b[1].get_class()); // Affiche AtlasTexture
    GD.Print(b[2]);             // Affiche ^""

    var c = GetNodeAndResource(NodePath("Area2D/Sprite2D:texture:atlas:region"));
    GD.Print(c[0].name);        // Affiche Sprite2D
    GD.Print(c[1].get_class()); // Affiche AtlasTexture
    GD.Print(c[2]);             // Affiche ^":region"



.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_node_or_null:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_node_or_null**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Node_method_get_node_or_null>`

Récupère un nœud par son :ref:`NodePath<class_NodePath>`. Semblable à :ref:`get_node()<class_Node_method_get_node>`, mais ne génère pas d'erreur si ``path`` ne pointe pas vers un nœud valide.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_node_rpc_config:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_node_rpc_config**\ (\ ) |const| :ref:`🔗<class_Node_method_get_node_rpc_config>`

Renvoie un :ref:`Dictionary<class_Dictionary>` associant des noms de méthodes à leur configuration RPC définie pour ce nœud en utilisant :ref:`rpc_config()<class_Node_method_rpc_config>`.

\ **Note :** Cette méthode ne renvoie que la configuration RPC assignée via :ref:`rpc_config()<class_Node_method_rpc_config>`. Voir :ref:`Script.get_rpc_config()<class_Script_method_get_rpc_config>` pour récupérer les RPCs définis par le :ref:`Script<class_Script>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_orphan_node_ids:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **get_orphan_node_ids**\ (\ ) |static| :ref:`🔗<class_Node_method_get_orphan_node_ids>`

Renvoie les identifiants d'objet de tous les nœuds orphelins (nœuds en dehors du :ref:`SceneTree<class_SceneTree>`). Utilisé pour le débogage.

\ **Note :** :ref:`get_orphan_node_ids()<class_Node_method_get_orphan_node_ids>` ne fonctionne que dans les compilations de débogage. Lorsqu'appelé dans un projet exporté en mode release, :ref:`get_orphan_node_ids()<class_Node_method_get_orphan_node_ids>` renverra un tableau vide.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_parent:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_parent**\ (\ ) |const| :ref:`🔗<class_Node_method_get_parent>`

Renvoie le nœud parent de ce nœud, ou ``null`` si le nœud n'a pas de parent.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_path**\ (\ ) |const| :ref:`🔗<class_Node_method_get_path>`

Renvoie le chemin absolu du nœud actuel, relatif à :ref:`SceneTree.root<class_SceneTree_property_root>`. Si le nœud actuel n'est pas à l'intérieur de l'arborescence de la scène, cette méthode échoue et renvoie un :ref:`NodePath<class_NodePath>` vide.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_path_to:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_path_to**\ (\ node\: :ref:`Node<class_Node>`, use_unique_path\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Node_method_get_path_to>`

Renvoie le :ref:`NodePath<class_NodePath>` relatif de ce nœud vers le nœud ``node`` spécifié. Les deux nœuds doivent être dans le même :ref:`SceneTree<class_SceneTree>` ou hiérarchie de scène, sinon cette méthode échoue et renvoie un :ref:`NodePath<class_NodePath>` vide.

Si ``use_unique_path`` vaut ``true``, renvoie le chemin le plus court correspondant au nom unique de ce nœud (voir :ref:`unique_name_in_owner<class_Node_property_unique_name_in_owner>`).

\ **Note :** Si vous obtenez un chemin relatif qui part d'un nœud unique, le chemin peut être plus long qu'un chemin relatif normal, à cause de l'ajout du nom unique du nœud.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_physics_process_delta_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_physics_process_delta_time**\ (\ ) |const| :ref:`🔗<class_Node_method_get_physics_process_delta_time>`

Renvoie le temps écoulé (en secondes) depuis le dernier callback de physique. Cette valeur est identique au paramètre ``delta`` de :ref:`_physics_process()<class_Node_private_method__physics_process>`, et elle est souvent consistante durant l'exécution, à moins que :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` ne soit modifié. Voir aussi :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>`.

\ **Note :** La valeur renvoyée sera plus grande que prévu lors de l'exécution à un framerate inférieur à :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` / :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` FPS. Ceci est fait pour éviter les scénarios de « spirale de la mort » où la performance chuterait en raison d'un nombre en augmentation constante d'étapes de physique par trame. Ce comportement affecte à la fois :ref:`_process()<class_Node_private_method__process>` et :ref:`_physics_process()<class_Node_private_method__physics_process>`. Par conséquent, évitez d'utiliser ``delta`` pour les mesures de temps en secondes réelles. Utilisez les méthodes du singleton :ref:`Time<class_Time>` à cette fin, comme :ref:`Time.get_ticks_usec()<class_Time_method_get_ticks_usec>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_process_delta_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_process_delta_time**\ (\ ) |const| :ref:`🔗<class_Node_method_get_process_delta_time>`

Renvoie le temps écoulé (en secondes) depuis le dernier callback de traitement. Cette valeur est identique au paramètre ``delta`` de :ref:`_process()<class_Node_private_method__process>` et peut varier d'une trame à l'autre. Voir aussi :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>`.

\ **Note :** La valeur renvoyée sera plus grande que prévu lors de l'exécution à un framerate inférieur à :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` / :ref:`Engine.max_physics_steps_per_frame<class_Engine_property_max_physics_steps_per_frame>` FPS. Ceci est fait pour éviter les scénarios de « spirale de la mort » où la performance chuterait en raison d'un nombre en augmentation constante d'étapes de physique par trame. Ce comportement affecte à la fois :ref:`_process()<class_Node_private_method__process>` et :ref:`_physics_process()<class_Node_private_method__physics_process>`. Par conséquent, évitez d'utiliser ``delta`` pour les mesures de temps en secondes réelles. Utilisez les méthodes du singleton :ref:`Time<class_Time>` à cette fin, comme :ref:`Time.get_ticks_usec()<class_Time_method_get_ticks_usec>`.

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

Renvoie le :ref:`SceneTree<class_SceneTree>` qui contient ce nœud. Si ce nœud n'est pas à l'intérieur de l'arborescence, génère une erreur et renvoie ``null``. Voir aussi :ref:`is_inside_tree()<class_Node_method_is_inside_tree>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_tree_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tree_string**\ (\ ) :ref:`🔗<class_Node_method_get_tree_string>`

Renvoie l’arborescence en tant que :ref:`String<class_String>`. Utilisée principalement à des fins de débogage. Cette version affiche le chemin par rapport au nœud actuel, et est pratique pour copier/coller dans la fonction :ref:`get_node()<class_Node_method_get_node>`. Elle peut également être utilisé dans l'UI/UX du jeu.

Peut afficher, par exemple :

.. code:: text

    LeJeu
    LeJeu/Menu
    LeJeu/Menu/Label
    LeJeu/Menu/Camera2D
    LeJeu/EcranDemarrage
    LeJeu/EcranDemarrage/Camera2D

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_tree_string_pretty:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_tree_string_pretty**\ (\ ) :ref:`🔗<class_Node_method_get_tree_string_pretty>`

Comme :ref:`get_tree_string()<class_Node_method_get_tree_string>`, cela renvoie l’arborescence en tant que :ref:`String<class_String>`. Cette version affiche une représentation plus graphique semblable à ce qui est affiché dans le Dock Scène. Elle est utile pour inspecter de grandes arborescences.

Peut afficher, par exemple:

.. code:: text

     ┖╴LeJeu
        ┠╴Menu
        ┃  ┠╴Label
        ┃  ┖╴Camera2D
        ┖╴EcranDemarrage
           ┖╴Camera2D

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_viewport:

.. rst-class:: classref-method

:ref:`Viewport<class_Viewport>` **get_viewport**\ (\ ) |const| :ref:`🔗<class_Node_method_get_viewport>`

Renvoie l'ancêtre :ref:`Viewport<class_Viewport>` le plus proche du nœud, si le nœud est à l'intérieur de l'arborescence. Sinon, renvoie ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_get_window:

.. rst-class:: classref-method

:ref:`Window<class_Window>` **get_window**\ (\ ) |const| :ref:`🔗<class_Node_method_get_window>`

Renvoie la :ref:`Window<class_Window>` qui contient ce nœud. Si le nœud est dans la fenêtre principale, cela équivaut à obtenir le nœud racine (``get_tree().get_root()``).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_has_node:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Node_method_has_node>`

Renvoie ``true`` si le chemin ``path`` pointe vers un nœud valide. Voir aussi :ref:`get_node()<class_Node_method_get_node>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_has_node_and_resource:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node_and_resource**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_Node_method_has_node_and_resource>`

Renvoie ``true`` si le chemin ``path`` désigne un nœud valide et que son sous-nom désigne une :ref:`Resource<class_Resource>` valide, par exemple ``Area2D/CollisionShape2D:shape``. Les propriétés avec un type qui n'est pas une :ref:`Resource<class_Resource>` (par exemple les nœuds ou les autres types :ref:`Variant<class_Variant>`) ne sont pas considérées. Voir aussi :ref:`get_node_and_resource()<class_Node_method_get_node_and_resource>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_ancestor_of:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_ancestor_of**\ (\ node\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Node_method_is_ancestor_of>`

Renvoie ``true`` si le nœud ``node`` donné est un enfant direct ou indirect de ce nœud.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_displayed_folded:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_displayed_folded**\ (\ ) |const| :ref:`🔗<class_Node_method_is_displayed_folded>`

Renvoie ``true`` si le nœud est replié (réduit) dans le dock Scène. Cette méthode est destinée à être utilisée dans les plugins et outils de l'éditeur. Voir aussi :ref:`set_display_folded()<class_Node_method_set_display_folded>`.

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

Renvoie ``true`` si le nœud ``node`` donné apparaît plus tard dans la hiérarchie de la scène que ce nœud. Un nœud survenant plus tard est généralement traité plus tard.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_in_group:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_Node_method_is_in_group>`

Renvoie ``true`` si ce nœud a été ajouté au groupe ``group`` donné. Voir :ref:`add_to_group()<class_Node_method_add_to_group>` et :ref:`remove_from_group()<class_Node_method_remove_from_group>`. Voir aussi les notes dans la description, et les méthodes de groupe de :ref:`SceneTree<class_SceneTree>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_inside_tree:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_inside_tree**\ (\ ) |const| :ref:`🔗<class_Node_method_is_inside_tree>`

Renvoie ``true`` si ce nœud est actuellement dans un :ref:`SceneTree<class_SceneTree>`. Voir aussi :ref:`get_tree()<class_Node_method_get_tree>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_multiplayer_authority:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_multiplayer_authority**\ (\ ) |const| :ref:`🔗<class_Node_method_is_multiplayer_authority>`

Renvoie ``true`` si le système local est l'autorité multijoueur de ce nœud.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_node_ready:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_node_ready**\ (\ ) |const| :ref:`🔗<class_Node_method_is_node_ready>`

Renvoie ``true`` si le nœud est prêt, c'est-à-dire qu'il est dans l'arborescence de la scène et que tous ses enfants sont initialisés.

\ :ref:`request_ready()<class_Node_method_request_ready>` le réinitialise à ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_part_of_edited_scene:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_part_of_edited_scene**\ (\ ) |const| :ref:`🔗<class_Node_method_is_part_of_edited_scene>`

Renvoie ``true`` si le nœud fait partie de la scène actuellement ouverte dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_physics_interpolated:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_physics_interpolated**\ (\ ) |const| :ref:`🔗<class_Node_method_is_physics_interpolated>`

Renvoie ``true`` si l'interpolation de la physique est activée pour ce nœud (voir :ref:`physics_interpolation_mode<class_Node_property_physics_interpolation_mode>`).

\ **Note :** L'interpolation ne sera active que si le drapeau est défini **et** que l'interpolation de la physique est activée dans :ref:`SceneTree<class_SceneTree>`. Ceci peut être testé en utilisant :ref:`is_physics_interpolated_and_enabled()<class_Node_method_is_physics_interpolated_and_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_physics_interpolated_and_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_physics_interpolated_and_enabled**\ (\ ) |const| :ref:`🔗<class_Node_method_is_physics_interpolated_and_enabled>`

Renvoie ``true`` si l'interpolation de la physique est activée (voir :ref:`physics_interpolation_mode<class_Node_property_physics_interpolation_mode>`) **et** activée dans le :ref:`SceneTree<class_SceneTree>`.

Il s'agit d'une version pratique de :ref:`is_physics_interpolated()<class_Node_method_is_physics_interpolated>` qui vérifie également si l'interpolation de la physique est activée globalement.

Voir :ref:`SceneTree.physics_interpolation<class_SceneTree_property_physics_interpolation>` et :ref:`ProjectSettings.physics/common/physics_interpolation<class_ProjectSettings_property_physics/common/physics_interpolation>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_physics_processing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_physics_processing**\ (\ ) |const| :ref:`🔗<class_Node_method_is_physics_processing>`

Renvoie ``true`` si le traitement physique est activé (voir :ref:`set_physics_process()<class_Node_method_set_physics_process>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_physics_processing_internal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_physics_processing_internal**\ (\ ) |const| :ref:`🔗<class_Node_method_is_physics_processing_internal>`

Renvoie ``true`` si le traitement physique interne est activé (voir :ref:`set_physics_process_internal()<class_Node_method_set_physics_process_internal>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing>`

Renvoie ``true`` si le traitement est activé (voir :ref:`set_process()<class_Node_method_set_process>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_input**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_input>`

Renvoie ``true`` si le nœud gère les entrées (voir :ref:`set_process_input()<class_Node_method_set_process_input>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_internal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_internal**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_internal>`

Renvoie ``true`` si le traitement interne est activé (voir :ref:`set_process_internal()<class_Node_method_set_process_internal>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_shortcut_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_shortcut_input**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_shortcut_input>`

Renvoie ``true`` si le nœud traite des raccourcis (voir :ref:`set_process_shortcut_input()<class_Node_method_set_process_shortcut_input>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_unhandled_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_unhandled_input**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_unhandled_input>`

Renvoie ``true`` si le nœud gère les entrées non traitées (voir :ref:`set_process_unhandled_input()<class_Node_method_set_process_unhandled_input>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_is_processing_unhandled_key_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_processing_unhandled_key_input**\ (\ ) |const| :ref:`🔗<class_Node_method_is_processing_unhandled_key_input>`

Renvoie ``true`` si le nœud gère les entrées de touche non traitée (voir :ref:`set_process_unhandled_key_input()<class_Node_method_set_process_unhandled_key_input>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_move_child:

.. rst-class:: classref-method

|void| **move_child**\ (\ child_node\: :ref:`Node<class_Node>`, to_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Node_method_move_child>`

Déplace le nœud enfant ``child_node`` vers l'index donné. L'index d'un nœud est l'ordre parmi ses frères. Si ``to_index`` est négatif, l'index est compté à partir de la fin de la liste. Voir aussi :ref:`get_child()<class_Node_method_get_child>` et :ref:`get_index()<class_Node_method_get_index>`.

\ **Note :** L'ordre de traitement de plusieurs callbacks du moteur (:ref:`_ready()<class_Node_private_method__ready>`, :ref:`_process()<class_Node_private_method__process>`, etc.) et les notifications envoyées à travers :ref:`propagate_notification()<class_Node_method_propagate_notification>` sont affectées par l'ordre de l'arbre. Les nœuds :ref:`CanvasItem<class_CanvasItem>` sont également rendus dans l'ordre de l'arbre. Voir aussi :ref:`process_priority<class_Node_property_process_priority>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_notify_deferred_thread_group:

.. rst-class:: classref-method

|void| **notify_deferred_thread_group**\ (\ what\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Node_method_notify_deferred_thread_group>`

Similaire à :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>`, mais pour les notifications.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_notify_thread_safe:

.. rst-class:: classref-method

|void| **notify_thread_safe**\ (\ what\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Node_method_notify_thread_safe>`

Similaire à :ref:`call_thread_safe()<class_Node_method_call_thread_safe>`, mais pour les notifications.

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

Affiche le nœud et ses enfants dans la console, récursivement. Le nœud ne doit pas forcément être à l'intérieur de l'arbre. Cette méthode produit des :ref:`NodePath<class_NodePath>` relatifs à ce nœud, et est bon pour copier/coller dans :ref:`get_node()<class_Node_method_get_node>`. Voir aussi :ref:`print_tree_pretty()<class_Node_method_print_tree_pretty>`.

Peut afficher, par exemple :

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

Affiche le nœud et ses enfants dans la console, récursivement. Le nœud ne doit forcément pas être à l'intérieur de l'arborescence. Semblable à :ref:`print_tree()<class_Node_method_print_tree>`, mais la représentation graphique ressemble à ce qui est affiché dans le dock Scène de l'éditeur. Elle est utile pour inspecter les grands arbres.

Peut afficher, par exemple :

.. code:: text

     ┖╴LeJeu
        ┠╴Menu
        ┃  ┠╴Etiquette
        ┃  ┖╴Camera2D
        ┖╴SplashScreen
           ┖╴Camera2D

.. rst-class:: classref-item-separator

----

.. _class_Node_method_propagate_call:

.. rst-class:: classref-method

|void| **propagate_call**\ (\ method\: :ref:`StringName<class_StringName>`, args\: :ref:`Array<class_Array>` = [], parent_first\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Node_method_propagate_call>`

Appelle le nom de méthode ``method`` donné, en passant ``args`` comme arguments, sur ce nœud et tous ses enfants, de façon récursive.

Si ``parent_first`` vaut ``true``, la méthode est appelée d'abord sur ce nœud, puis sur tous ses enfants. Si ``false``, les méthodes des enfants sont appelées en premier.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_propagate_notification:

.. rst-class:: classref-method

|void| **propagate_notification**\ (\ what\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Node_method_propagate_notification>`

Appelle :ref:`Object.notification()<class_Object_method_notification>` avec ``what`` sur ce nœud et tous ses enfants, récursivement.

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

Place le nœud dans une file d'attente pour le supprimer à la fin de la trame actuelle. Lorsque supprimé, tous ses nœuds enfants seront supprimés aussi, et toutes les références au nœud et ses enfants deviennent invalides.

Contrairement à :ref:`Object.free()<class_Object_method_free>`, le nœud n'est pas supprimé instantanément, et il peut encore être accédé avant la suppression. Il est également sûr d'appeler plusieurs fois :ref:`queue_free()<class_Node_method_queue_free>`. Utilisez :ref:`Object.is_queued_for_deletion()<class_Object_method_is_queued_for_deletion>` pour vérifier si le nœud sera supprimé à la fin de la trame.

\ **Note :** Le nœud ne sera libéré qu'après la fin de tous les autres appels différés. Utiliser cette méthode n'est pas toujours identique à l'appel de :ref:`Object.free()<class_Object_method_free>` à travers :ref:`Object.call_deferred()<class_Object_method_call_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_remove_child:

.. rst-class:: classref-method

|void| **remove_child**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_Node_method_remove_child>`

Retire un nœud ``node`` enfant. Le ``node``, ainsi que ses enfants, ne sont **pas** supprimés. Pour supprimer un nœud, voir :ref:`queue_free()<class_Node_method_queue_free>`.

\ **Note :** Lorsque ce nœud se trouve à l'intérieur de l'arborescence, cette méthode définit le :ref:`owner<class_Node_property_owner>` du ``node`` retiré (ou ses descendants) à ``null``, si leur :ref:`owner<class_Node_property_owner>` n'est plus un ancêtre (voir :ref:`is_ancestor_of()<class_Node_method_is_ancestor_of>`).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_remove_from_group:

.. rst-class:: classref-method

|void| **remove_from_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Node_method_remove_from_group>`

Retire le nœud du groupe ``group`` donné. Ne fait rien si le nœud n'est pas dans le ``group``\ e. Voir aussi les notes dans la description, et les méthodes de groupe de :ref:`SceneTree<class_SceneTree>`.

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

Remplace ce nœud par le nœud ``node`` donné. Tous les enfants de ce nœud sont déplacés vers ``node``.

Si ``keep_groups`` vaut ``true``, le nœud ``node`` est ajouté aux mêmes groupes dans lesquels se trouvait le nœud remplacé (voir :ref:`add_to_group()<class_Node_method_add_to_group>`).

\ **Attention :** Le nœud remplacé est retiré de l'arbre, mais il n'est **pas** supprimé. Pour éviter les fuites de mémoire, stockez une référence au nœud dans une variable, ou utilisez :ref:`Object.free()<class_Object_method_free>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_request_ready:

.. rst-class:: classref-method

|void| **request_ready**\ (\ ) :ref:`🔗<class_Node_method_request_ready>`

Demande à ce que :ref:`_ready()<class_Node_private_method__ready>` soit appelée à nouveau la prochaine fois que le nœud entre dans l'arborescence. N'appelle **pas** immédiatement :ref:`_ready()<class_Node_private_method__ready>`.

\ **Note :** Cette méthode n'affecte que le nœud actuel. Si les enfants du nœud ont également besoin d'appeler ready, cette méthode doit être appelée pour chacun d'eux. Lorsque le nœud et ses enfants entrent à nouveau dans l'arborescence, l'ordre des callbacks de :ref:`_ready()<class_Node_private_method__ready>` sera le même qu'habituellement.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_reset_physics_interpolation:

.. rst-class:: classref-method

|void| **reset_physics_interpolation**\ (\ ) :ref:`🔗<class_Node_method_reset_physics_interpolation>`

Lorsque l'interpolation de la physique est activée, déplacer un nœud vers une transformation radicalement différente (comme le placement dans un niveau) peut résulter en un glitch visible car l'objet est rendu se déplaçant de l'ancienne à la nouvelle position pendant la tic de physique.

Ce glitch peut être empêché en appelant cette méthode, qui désactive temporairement l'interpolation jusqu'à ce que le tic de physique soit fini.

La notification :ref:`NOTIFICATION_RESET_PHYSICS_INTERPOLATION<class_Node_constant_NOTIFICATION_RESET_PHYSICS_INTERPOLATION>` sera reçue par le nœud et tous ses enfants de manière récursive.

\ **Note :** Cette fonction doit être appelée **après** le déplacement du nœud, plutôt qu'avant.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_rpc:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rpc**\ (\ method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Node_method_rpc>`

Sends a remote procedure call request for the given ``method`` to peers on the network (and locally), sending additional arguments to the method called by the RPC. The call request will only be received by nodes with the same :ref:`NodePath<class_NodePath>`, including the exact same :ref:`name<class_Node_property_name>`. Behavior depends on the RPC configuration for the given ``method`` (see :ref:`rpc_config()<class_Node_method_rpc_config>` and :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>`). By default, methods are not exposed to RPCs.

May return :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` if the call is successful, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` if the arguments passed in the ``method`` do not match, :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` if the node's :ref:`multiplayer<class_Node_property_multiplayer>` cannot be fetched (such as when the node is not inside the tree), :ref:`@GlobalScope.ERR_CONNECTION_ERROR<class_@GlobalScope_constant_ERR_CONNECTION_ERROR>` if :ref:`multiplayer<class_Node_property_multiplayer>`'s connection is not available.

\ **Note:** You can only safely use RPCs on clients after you received the :ref:`MultiplayerAPI.connected_to_server<class_MultiplayerAPI_signal_connected_to_server>` signal from the :ref:`MultiplayerAPI<class_MultiplayerAPI>`. You also need to keep track of the connection state, either by the :ref:`MultiplayerAPI<class_MultiplayerAPI>` signals like :ref:`MultiplayerAPI.server_disconnected<class_MultiplayerAPI_signal_server_disconnected>` or by checking (``get_multiplayer().peer.get_connection_status() == CONNECTION_CONNECTED``).

.. rst-class:: classref-item-separator

----

.. _class_Node_method_rpc_config:

.. rst-class:: classref-method

|void| **rpc_config**\ (\ method\: :ref:`StringName<class_StringName>`, config\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Node_method_rpc_config>`

Change la configuration RPC pour la méthode ``method`` donnée. ``config`` doit valoir soit ``null`` pour désactiver la fonctionnalité (par défaut), soit un :ref:`Dictionary<class_Dictionary>` contenant les entrées suivantes :

- ``rpc_mode``\  : voir :ref:`RPCMode<enum_MultiplayerAPI_RPCMode>`;

- ``transfer_mode``\  : voir :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`;

- ``call_local``\  : si ``true``, la méthode sera également appelée localement;

- ``channel``\  : un :ref:`int<class_int>` représentant le canal auquel envoyer la RPC.

\ **Note :** En GDScript, cette méthode correspond à l'annotation :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>`, avec divers paramètres passés (``@rpc(any)``, ``@rpc(authority)``...). Voir aussi le tutoriel :doc:`API multijoueur de haut niveau <../tutorials/networking/high_level_multiplayer>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_rpc_id:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rpc_id**\ (\ peer_id\: :ref:`int<class_int>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_Node_method_rpc_id>`

Envoie une :ref:`rpc()<class_Node_method_rpc>` à un pair spécifique identifié par ``peer_id`` (voir :ref:`MultiplayerPeer.set_target_peer()<class_MultiplayerPeer_method_set_target_peer>`).

Peut renvoyer :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si l'appel est un succès, :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` si les arguments passés dans ``method`` ne correspondent pas, :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` si le :ref:`multiplayer<class_Node_property_multiplayer>` du nœud ne peut être récupéré (comme lorsque le nœudn'est pas dans l'arborescence), :ref:`@GlobalScope.ERR_CONNECTION_ERROR<class_@GlobalScope_constant_ERR_CONNECTION_ERROR>` si la connexion de :ref:`multiplayer<class_Node_property_multiplayer>` n'est pas disponible.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_deferred_thread_group:

.. rst-class:: classref-method

|void| **set_deferred_thread_group**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Node_method_set_deferred_thread_group>`

Similaire à :ref:`call_deferred_thread_group()<class_Node_method_call_deferred_thread_group>`, mais pour définir des propriétés.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_display_folded:

.. rst-class:: classref-method

|void| **set_display_folded**\ (\ fold\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_display_folded>`

Si défini à ``true``, le nœud apparaît replié dans le dock Scène. En conséquence, tous ses enfants sont cachés. Cette méthode est destinée à être utilisée dans les plugins et les outils d'éditeur, mais elle fonctionne également dans les compilations de release. Voir aussi :ref:`is_displayed_folded()<class_Node_method_is_displayed_folded>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_editable_instance:

.. rst-class:: classref-method

|void| **set_editable_instance**\ (\ node\: :ref:`Node<class_Node>`, is_editable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_editable_instance>`

Défini à ``true`` pour permettre à tous les nœuds appartenant à ``node`` d'être disponibles, et modifiables, dans le dock Scène, même si leur propriétaire :ref:`owner<class_Node_property_owner>` n'est pas la racine de scène. Cette méthode est destinée à être utilisée dans les plugins et les outils d'éditeur, mais elle fonctionne également dans les compilations de release. Voir aussi :ref:`is_editable_instance()<class_Node_method_is_editable_instance>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_multiplayer_authority:

.. rst-class:: classref-method

|void| **set_multiplayer_authority**\ (\ id\: :ref:`int<class_int>`, recursive\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_Node_method_set_multiplayer_authority>`

Définit l'autorité multijoueur du nœud au pair avec l'identifiant de pair ``id`` donné. L'autorité multijoueur est le pair qui a autorité sur le nœud sur le réseau. Vaut par défaut l'identifiant de pair 1 (le serveur). Utile en conjonction avec :ref:`rpc_config()<class_Node_method_rpc_config>` et :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

Si ``recursive`` vaut ``true``, le pair donné est défini de façon récursive comme autorité sur tous les enfants de ce nœud.

\ **Attention :** Cela ne réplique **pas** automatiquement la nouvelle autorité à d'autres pairs. La responsabilité de le faire est sur le développeur. Vous pouvez répliquer les informations de la nouvelle autorité en utilisant :ref:`MultiplayerSpawner.spawn_function<class_MultiplayerSpawner_property_spawn_function>`, une RPC, ou un :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`. De plus, l'autorité du parent ne se propage **pas** aux enfants nouvellement ajoutés.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_physics_process:

.. rst-class:: classref-method

|void| **set_physics_process**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_physics_process>`

Si défini à ``true``, active le traitement de la physique (à framerate fixe). Lorsqu'un nœud est traité, il recevra une notification :ref:`NOTIFICATION_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_PHYSICS_PROCESS>` à un intervalle fixe (généralement 60 FPS, voir :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>` pour changer) (et le callback :ref:`_physics_process()<class_Node_private_method__physics_process>` sera appelé s'il existe).

\ **Note :** Si :ref:`_physics_process()<class_Node_private_method__physics_process>` est redéfinie, cela sera automatiquement activé avant que :ref:`_ready()<class_Node_private_method__ready>` soit appelée.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_physics_process_internal:

.. rst-class:: classref-method

|void| **set_physics_process_internal**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_physics_process_internal>`

Si défini à ``true``, active la physique en interne pour ce nœud. Le traitement de la physique en interne se produit séparément des appels normaux de :ref:`_physics_process()<class_Node_private_method__physics_process>` et est utilisé par certains nœuds en interne pour garantir le bon fonctionnement même si le nœud est mis ou en pause ou que le traitement de la physique est désactivé pour le scripting (:ref:`set_physics_process()<class_Node_method_set_physics_process>`).

\ **Attention :** Les nœuds intégrés s'appuient sur du traitement interne pour leur logique interne. Désactiver cela est dangereux et peut conduire à un comportement inattendu. Utilisez cette méthode si vous savez ce que vous faites.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process:

.. rst-class:: classref-method

|void| **set_process**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process>`

Si défini à ``true``, active le traitement. Lorsqu'un nœud est en cours de traitement, il recevra un :ref:`NOTIFICATION_PROCESS<class_Node_constant_NOTIFICATION_PROCESS>` à chaque trame dessinée (et le callback :ref:`_process()<class_Node_private_method__process>` sera appelé s'il existe).

\ **Note :** Si :ref:`_process()<class_Node_private_method__process>` est redéfinie, cela sera automatiquement activé avant que :ref:`_ready()<class_Node_private_method__ready>` soit appelée.

\ **Note :** Cette méthode n'affecte que le callback :ref:`_process()<class_Node_private_method__process>`, c'est-à-dire qu'elle n'a aucun effet sur d'autres callbacks comme :ref:`_physics_process()<class_Node_private_method__physics_process>`. Si vous voulez désactiver tout traitement pour le nœud, définissez :ref:`process_mode<class_Node_property_process_mode>` à :ref:`PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_input:

.. rst-class:: classref-method

|void| **set_process_input**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_input>`

Si défini à ``true``, active le traitement des entrées.

\ **Note :** Si :ref:`_input()<class_Node_private_method__input>` est redéfinie, cela sera automatiquement activé avant que :ref:`_ready()<class_Node_private_method__ready>` soir appelée. Le traitement des entrées est également déjà activé pour les contrôles de GUI, tels que :ref:`Button<class_Button>` et :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_internal:

.. rst-class:: classref-method

|void| **set_process_internal**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_internal>`

Si défini à ``true``, active la traitement en interne pour ce nœud. Le traitement en interne se produit séparément des appels normaux de :ref:`_process()<class_Node_private_method__process>` et est utilisé par certains nœuds en interne pour garantir un bon fonctionnement même si le nœud est mis ou en pause ou que le traitement est désactivé pour le scripting (:ref:`set_process()<class_Node_method_set_process>`).

\ **Attention :** Les nœuds intégrés s'appuient sur du traitement interne pour leur logique interne. Désactiver cela est dangereux et peut conduire à un comportement inattendu. Utilisez cette méthode si vous savez ce que vous faites.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_shortcut_input:

.. rst-class:: classref-method

|void| **set_process_shortcut_input**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_shortcut_input>`

Si défini à ``true``, active le traitement des raccourcis pour ce nœud.

\ **Note :** Si :ref:`_shortcut_input()<class_Node_private_method__shortcut_input>` est redéfinie, cela sera automatiquement activé avant que :ref:`_ready()<class_Node_private_method__ready>` soit appelée.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_unhandled_input:

.. rst-class:: classref-method

|void| **set_process_unhandled_input**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_unhandled_input>`

Si défini à ``true``, active le traitement des entrées non gérées. Cela permet au nœud de recevoir toutes les entrées qui n'ont pas été gérées précédemment (généralement par un :ref:`Control<class_Control>`).

\ **Note :** Si :ref:`_unhandled_input()<class_Node_private_method__unhandled_input>` est redéfinie, cela sera automatiquement activé avant que :ref:`_ready()<class_Node_private_method__ready>` soit appelée. Le traitement des entrées non gérées est généralement déjà activé pour les contrôles GUI tels que :ref:`Button<class_Button>` et :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_process_unhandled_key_input:

.. rst-class:: classref-method

|void| **set_process_unhandled_key_input**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_process_unhandled_key_input>`

Si défini à ``true``, active le traitement des entrées de touche non traitées.

\ **Note :** Si :ref:`_unhandled_key_input()<class_Node_private_method__unhandled_key_input>` est redéfinie, cela sera automatiquement activé avant que :ref:`_ready()<class_Node_private_method__ready>` soit appelée.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_scene_instance_load_placeholder:

.. rst-class:: classref-method

|void| **set_scene_instance_load_placeholder**\ (\ load_placeholder\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Node_method_set_scene_instance_load_placeholder>`

Si défini à ``true``, le nœud devient un :ref:`InstancePlaceholder<class_InstancePlaceholder>` lorsqu'il est compacté et instancié depuis une :ref:`PackedScene<class_PackedScene>`. Voir aussi :ref:`get_scene_instance_load_placeholder()<class_Node_method_get_scene_instance_load_placeholder>`.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_thread_safe:

.. rst-class:: classref-method

|void| **set_thread_safe**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_Node_method_set_thread_safe>`

Similaire à :ref:`call_thread_safe()<class_Node_method_call_thread_safe>`, mais pour définir des propriétés.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_set_translation_domain_inherited:

.. rst-class:: classref-method

|void| **set_translation_domain_inherited**\ (\ ) :ref:`🔗<class_Node_method_set_translation_domain_inherited>`

Fait hériter ce nœud du domaine de traduction de son nœud parent. Si ce nœud n'a pas de parent, le domaine de traduction principal sera utilisé.

Il s'agit du comportement par défaut pour tous les nœuds. Appeler :ref:`Object.set_translation_domain()<class_Object_method_set_translation_domain>` désactive ce comportement.

.. rst-class:: classref-item-separator

----

.. _class_Node_method_update_configuration_warnings:

.. rst-class:: classref-method

|void| **update_configuration_warnings**\ (\ ) :ref:`🔗<class_Node_method_update_configuration_warnings>`

Rafraîchit les avertissements affichés pour ce nœud dans le dock Scène. Utilisez :ref:`_get_configuration_warnings()<class_Node_private_method__get_configuration_warnings>` pour personnaliser les messages d'avertissement à afficher.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
